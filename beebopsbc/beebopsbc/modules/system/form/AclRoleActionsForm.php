<?php
class AclRoleActionsForm extends EasyForm
{
	protected $_roleId;
	
	public function getSessionVars($sessionContext)
    {
        parent::getSessionVars($sessionContext);
        $sessionContext->getObjVar($this->m_Name, "_roleId", $this->_roleId);
    }

    public function setSessionVars($sessionContext)
    {
        parent::setSessionVars($sessionContext);
        $sessionContext->setObjVar($this->m_Name, "_roleId", $this->_roleId);
    }
    
	public function sortRecord($sortCol, $order='asc')
    {
        $element = $this->getElement($sortCol);
        // turn off the OnSort flag of the old onsort field
        $element->setSortFlag(null);
        // turn on the OnSort flag of the new onsort field
        if ($order == "ASC")
            $order = "DESC";
        else
            $order = "ASC";
        $element->setSortFlag($order);

        // change the sort rule and issue the query
        $do = BizSystem::getObject("system.do.AclActionDO");
        $do->setSortRule("[" . $element->m_FieldName . "] " . $order);

        // move to 1st page
        $this->m_CurrentPage = 1;

        $this->rerender();
    }
	
	public function fetchDataSet()
    {
        $roleId = $this->GetRoleId();
        
        // fetch acl_action records
        $do = BizSystem::getObject("system.do.AclActionDO");
        $do->setLimit($this->m_Range, ($this->m_CurrentPage-1)*$this->m_Range);
        $rs = $do->fetch();
        $this->m_TotalRecords = $do->count();
        if ($this->m_Range && $this->m_Range > 0)
            $this->m_TotalPages = ceil($this->m_TotalRecords/$this->m_Range);
        
        // fetch role and access
        $this->getDataObj()->setSearchRule("[role_id]=$roleId");
        $rs1 = $this->getDataObj()->fetch();
        foreach ($rs1 as $rec)
        {
            $actionRoleAccess[$rec['action_id']] = $rec;
        }
        //print_r($actionRoleAccess);
        // merge 2 rs
        for ($i=0; $i<count($rs); $i++)
        {
            $actionId = $rs[$i]['Id'];
            $rs[$i]['access_level'] = "";
            if (isset($actionRoleAccess[$actionId]))
                $rs[$i]['access_level'] = $actionRoleAccess[$actionId]['access_level'];
        }
        return $rs;
    }
    
	public function saveAccessLevel()
	{
        $roleId = $this->GetRoleId();
        // read the all access_level-actionid
        $accessLevels = BizSystem::clientProxy()->getFormInputs('access_level', false);
        $actionIds = BizSystem::clientProxy()->getFormInputs('action_id', false);
        
        for ($i=0; $i<count($actionIds); $i++)
        {
            $actionId = $actionIds[$i];
            $accessLevel = $accessLevels[$i];
            // if find the record, update it, or insert a new one
            try {
                $rs = $this->getDataObj()->directFetch("[role_id]=$roleId AND [action_id]=$actionId", 1);
                if (count($rs) == 1)
                {
                    if ($rs[0]['access_level'] != $accessLevel) // update
                    {
                        $recArr = $rs[0];
                        $recArr['access_level'] = $accessLevel;
                        $this->getDataObj()->updateRecord($recArr, $rs[0]);
                    }
                }
                else    // insert
                {                	
                    if ($accessLevel !== null && $accessLevel !== "")
                    {
                        $recArr = array("role_id"=>$roleId, "action_id"=>$actionId, "access_level"=>$accessLevel);
                        $this->getDataObj()->insertRecord($recArr);
                    }
                }
            }
            catch (BDOException $e) {
                $this->processBDOException($e);
                return;
            }
        }
        BizSystem::clientProxy()->showClientAlert($this->getMessage("ACCESS_SAVED"));
    }
    
    protected function GetRoleId()
    {
    	if ($_GET['fld:Id'])
        	$this->_roleId = $_GET['fld:Id'];
        return $this->_roleId;
    }
}
?>