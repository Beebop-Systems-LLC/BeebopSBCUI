/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.plugins.add('dialog',{requires:['dialogui']});CKEDITOR.DIALOG_RESIZE_NONE=0;CKEDITOR.DIALOG_RESIZE_WIDTH=1;CKEDITOR.DIALOG_RESIZE_HEIGHT=2;CKEDITOR.DIALOG_RESIZE_BOTH=3;(function(){function a(A){return!!this._.tabs[A][0].$.offsetHeight;};function b(){var E=this;var A=E._.currentTabId,B=E._.tabIdList.length,C=CKEDITOR.tools.indexOf(E._.tabIdList,A)+B;for(var D=C-1;D>C-B;D--)if(a.call(E,E._.tabIdList[D%B]))return E._.tabIdList[D%B];return null;};function c(){var E=this;var A=E._.currentTabId,B=E._.tabIdList.length,C=CKEDITOR.tools.indexOf(E._.tabIdList,A);for(var D=C+1;D<C+B;D++)if(a.call(E,E._.tabIdList[D%B]))return E._.tabIdList[D%B];return null;};var d={};CKEDITOR.dialog=function(A,B){var C=CKEDITOR.dialog._.dialogDefinitions[B];if(!C){console.log('Error: The dialog "'+B+'" is not defined.');return;}C=CKEDITOR.tools.extend(C(A),f);C=CKEDITOR.tools.clone(C);C=new j(this,C);this.definition=C=CKEDITOR.fire('dialogDefinition',{name:B,definition:C},A).definition;var D=CKEDITOR.document,E=A.theme.buildDialog(A);this._={editor:A,element:E.element,name:B,contentSize:{width:0,height:0},size:{width:0,height:0},updateSize:false,contents:{},buttons:{},accessKeyMap:{},tabs:{},tabIdList:[],currentTabId:null,currentTabIndex:null,pageCount:0,lastTab:null,tabBarMode:false,focusList:[],currentFocusIndex:0,hasFocus:false};this.parts=E.parts;this.parts.dialog.setStyles({position:CKEDITOR.env.ie6Compat?'absolute':'fixed',top:0,left:0,visibility:'hidden'});CKEDITOR.event.call(this);if(C.onLoad)this.on('load',C.onLoad);if(C.onShow)this.on('show',C.onShow);if(C.onHide)this.on('hide',C.onHide);if(C.onOk)this.on('ok',function(O){if(C.onOk.call(this,O)===false)O.data.hide=false;});if(C.onCancel)this.on('cancel',function(O){if(C.onCancel.call(this,O)===false)O.data.hide=false;});var F=this,G=function(O){var P=F._.contents,Q=false;for(var R in P)for(var S in P[R]){Q=O.call(this,P[R][S]);if(Q)return;}};this.on('ok',function(O){G(function(P){if(P.validate){var Q=P.validate(this);if(typeof Q=='string'){alert(Q);Q=false;}if(Q===false){if(P.select)P.select();else P.focus();O.data.hide=false;O.stop();return true;}}});},this,null,0);this.on('cancel',function(O){G(function(P){if(P.isChanged()){if(!confirm(A.lang.common.confirmCancel))O.data.hide=false;return true;}});},this,null,0);this.parts.close.on('click',function(O){if(this.fire('cancel',{hide:true}).hide!==false)this.hide();},this);function H(O){var P=F._.focusList,Q=O?1:-1;if(P.length<1)return;var R=(F._.currentFocusIndex+Q+P.length)%(P.length);
while(!P[R].isFocusable()){R=(R+Q+P.length)%(P.length);if(R==F._.currentFocusIndex)break;}P[R].focus();if(P[R].type=='text')P[R].select();};function I(O){if(F!=CKEDITOR.dialog._.currentTop)return;var P=O.data.getKeystroke(),Q=false;if(P==9||P==CKEDITOR.SHIFT+9){var R=P==CKEDITOR.SHIFT+9;if(F._.tabBarMode){var S=R?b.call(F):c.call(F);F.selectPage(S);F._.tabs[S][0].focus();}else H(!R);Q=true;}else if(P==CKEDITOR.ALT+121&&!F._.tabBarMode){F._.tabBarMode=true;F._.tabs[F._.currentTabId][0].focus();Q=true;}else if((P==37||P==39)&&(F._.tabBarMode)){S=P==37?b.call(F):c.call(F);F.selectPage(S);F._.tabs[S][0].focus();Q=true;}if(Q){O.stop();O.data.preventDefault();}};this.on('show',function(){CKEDITOR.document.on('keydown',I,this,null,0);if(CKEDITOR.env.ie6Compat){var O=o.getChild(0).getFrameDocument();O.on('keydown',I,this,null,0);}});this.on('hide',function(){CKEDITOR.document.removeListener('keydown',I);});this.on('iframeAdded',function(O){var P=new CKEDITOR.dom.document(O.data.iframe.$.contentWindow.document);P.on('keydown',I,this,null,0);});this.on('show',function(){var R=this;if(!R._.hasFocus){R._.currentFocusIndex=-1;H(true);if(R._.editor.mode=='wysiwyg'&&CKEDITOR.env.ie){var O=A.document.$.selection,P=O.createRange();if(P)if(P.parentElement&&P.parentElement().ownerDocument==A.document.$||P.item&&P.item(0).ownerDocument==A.document.$){var Q=document.body.createTextRange();Q.moveToElementText(R.getElement().getFirst().$);Q.collapse(true);Q.select();}}}},this,null,4294967295);if(CKEDITOR.env.ie6Compat)this.on('load',function(O){var P=this.getElement(),Q=P.getFirst();Q.remove();Q.appendTo(P);},this);l(this);m(this);new CKEDITOR.dom.text(C.title,CKEDITOR.document).appendTo(this.parts.title);for(var J=0;J<C.contents.length;J++)this.addPage(C.contents[J]);var K=/cke_dialog_tab(\s|$|_)/,L=/cke_dialog_tab(\s|$)/;this.parts.tabs.on('click',function(O){var T=this;var P=O.data.getTarget(),Q=P,R,S;if(!(K.test(P.$.className)||P.getName()=='a'))return;R=P.$.id.substr(0,P.$.id.lastIndexOf('_'));T.selectPage(R);if(T._.tabBarMode){T._.tabBarMode=false;T._.currentFocusIndex=-1;H(true);}O.data.preventDefault();},this);var M=[],N=CKEDITOR.dialog._.uiElementBuilders.hbox.build(this,{type:'hbox',className:'cke_dialog_footer_buttons',widths:[],children:C.buttons},M).getChild();this.parts.footer.setHtml(M.join(''));for(J=0;J<N.length;J++)this._.buttons[N[J].id]=N[J];CKEDITOR.skins.load(A,'dialog');};function e(A,B,C){this.element=B;this.focusIndex=C;this.isFocusable=function(){return true;
};this.focus=function(){A._.currentFocusIndex=this.focusIndex;this.element.focus();};B.on('keydown',function(D){if(D.data.getKeystroke() in {32:1,13:1})this.fire('click');});B.on('focus',function(){this.fire('mouseover');});B.on('blur',function(){this.fire('mouseout');});};CKEDITOR.dialog.prototype={resize:(function(){return function(A,B){var C=this;if(C._.contentSize&&C._.contentSize.width==A&&C._.contentSize.height==B)return;CKEDITOR.dialog.fire('resize',{dialog:C,skin:C._.editor.skinName,width:A,height:B},C._.editor);C._.contentSize={width:A,height:B};C._.updateSize=true;};})(),getSize:function(){var C=this;if(!C._.updateSize)return C._.size;var A=C._.element.getFirst(),B=C._.size={width:A.$.offsetWidth||0,height:A.$.offsetHeight||0};C._.updateSize=!B.width||!B.height;return B;},move:(function(){var A;return function(B,C){var F=this;var D=F._.element.getFirst();if(A===undefined)A=D.getComputedStyle('position')=='fixed';if(A&&F._.position&&F._.position.x==B&&F._.position.y==C)return;F._.position={x:B,y:C};if(!A){var E=CKEDITOR.document.getWindow().getScrollPosition();B+=E.x;C+=E.y;}D.setStyles({left:(B>0?B:0)+('px'),top:(C>0?C:0)+('px')});};})(),getPosition:function(){return CKEDITOR.tools.extend({},this._.position);},show:function(){if(this._.editor.mode=='wysiwyg'&&CKEDITOR.env.ie)this._.editor.getSelection().lock();var A=this._.element,B=this.definition;if(!(A.getParent()&&A.getParent().equals(CKEDITOR.document.getBody())))A.appendTo(CKEDITOR.document.getBody());else return;if(CKEDITOR.env.gecko&&CKEDITOR.env.version<10900){var C=this.parts.dialog;C.setStyle('position','absolute');setTimeout(function(){C.setStyle('position','fixed');},0);}this.resize(B.minWidth,B.minHeight);this.selectPage(this.definition.contents[0].id);this.reset();if(CKEDITOR.dialog._.currentZIndex===null)CKEDITOR.dialog._.currentZIndex=this._.editor.config.baseFloatZIndex;this._.element.getFirst().setStyle('z-index',CKEDITOR.dialog._.currentZIndex+=10);if(CKEDITOR.dialog._.currentTop===null){CKEDITOR.dialog._.currentTop=this;this._.parentDialog=null;p(this._.editor);CKEDITOR.document.on('keydown',s);CKEDITOR.document.on('keyup',t);for(var D in {keyup:1,keydown:1,keypress:1})CKEDITOR.document.on(D,z);}else{this._.parentDialog=CKEDITOR.dialog._.currentTop;var E=this._.parentDialog.getElement().getFirst();E.$.style.zIndex-=Math.floor(this._.editor.config.baseFloatZIndex/2);CKEDITOR.dialog._.currentTop=this;}u(this,this,'\x1b',null,function(){this.getButton('cancel')&&this.getButton('cancel').click();
});this._.hasFocus=false;CKEDITOR.tools.setTimeout(function(){var F=CKEDITOR.document.getWindow().getViewPaneSize(),G=this.getSize();this.move((F.width-B.minWidth)/(2),(F.height-G.height)/(2));this.parts.dialog.setStyle('visibility','');this.fireOnce('load',{});this.fire('show',{});this.foreach(function(H){H.setInitValue&&H.setInitValue();});},100,this);},foreach:function(A){var D=this;for(var B in D._.contents)for(var C in D._.contents[B])A(D._.contents[B][C]);return D;},reset:(function(){var A=function(B){if(B.reset)B.reset();};return function(){this.foreach(A);return this;};})(),setupContent:function(){var A=arguments;this.foreach(function(B){if(B.setup)B.setup.apply(B,A);});},commitContent:function(){var A=arguments;this.foreach(function(B){if(B.commit)B.commit.apply(B,A);});},hide:function(){this.fire('hide',{});var A=this._.element;if(!A.getParent())return;A.remove();this.parts.dialog.setStyle('visibility','hidden');v(this);if(!this._.parentDialog)q();else{var B=this._.parentDialog.getElement().getFirst();B.setStyle('z-index',parseInt(B.$.style.zIndex,10)+Math.floor(this._.editor.config.baseFloatZIndex/2));}CKEDITOR.dialog._.currentTop=this._.parentDialog;if(!this._.parentDialog){CKEDITOR.dialog._.currentZIndex=null;CKEDITOR.document.removeListener('keydown',s);CKEDITOR.document.removeListener('keyup',t);CKEDITOR.document.removeListener('keypress',t);for(var C in {keyup:1,keydown:1,keypress:1})CKEDITOR.document.removeListener(C,z);var D=this._.editor;D.focus();if(D.mode=='wysiwyg'&&CKEDITOR.env.ie)D.getSelection().unlock(true);}else CKEDITOR.dialog._.currentZIndex-=10;this.foreach(function(E){E.resetInitValue&&E.resetInitValue();});},addPage:function(A){var K=this;var B=[],C=A.label?' title="'+CKEDITOR.tools.htmlEncode(A.label)+'"':'',D=A.elements,E=CKEDITOR.dialog._.uiElementBuilders.vbox.build(K,{type:'vbox',className:'cke_dialog_page_contents',children:A.elements,expand:!!A.expand,padding:A.padding,style:A.style||'width: 100%; height: 100%;'},B),F=CKEDITOR.dom.element.createFromHtml(B.join('')),G=CKEDITOR.dom.element.createFromHtml(['<a class="cke_dialog_tab"',K._.pageCount>0?' cke_last':'cke_first',C,!!A.hidden?' style="display:none"':'',' id="',A.id+'_',CKEDITOR.tools.getNextNumber(),'" href="javascript:void(0)"',' hidefocus="true">',A.label,'</a>'].join(''));if(K._.pageCount===0)K.parts.dialog.addClass('cke_single_page');else K.parts.dialog.removeClass('cke_single_page');K._.tabs[A.id]=[G,F];K._.tabIdList.push(A.id);K._.pageCount++;K._.lastTab=G;
var H=K._.contents[A.id]={},I,J=E.getChild();while(I=J.shift()){H[I.id]=I;if(typeof I.getChild=='function')J.push.apply(J,I.getChild());}F.setAttribute('name',A.id);F.appendTo(K.parts.contents);G.unselectable();K.parts.tabs.append(G);if(A.accessKey){u(K,K,'CTRL+'+A.accessKey,x,w);K._.accessKeyMap['CTRL+'+A.accessKey]=A.id;}},selectPage:function(A){var F=this;for(var B in F._.tabs){var C=F._.tabs[B][0],D=F._.tabs[B][1];if(B!=A){C.removeClass('cke_dialog_tab_selected');D.hide();}}var E=F._.tabs[A];E[0].addClass('cke_dialog_tab_selected');E[1].show();F._.currentTabId=A;F._.currentTabIndex=CKEDITOR.tools.indexOf(F._.tabIdList,A);},hidePage:function(A){var B=this._.tabs[A]&&this._.tabs[A][0];if(!B)return;B.hide();},showPage:function(A){var B=this._.tabs[A]&&this._.tabs[A][0];if(!B)return;B.show();},getElement:function(){return this._.element;},getName:function(){return this._.name;},getContentElement:function(A,B){return this._.contents[A][B];},getValueOf:function(A,B){return this.getContentElement(A,B).getValue();},setValueOf:function(A,B,C){return this.getContentElement(A,B).setValue(C);},getButton:function(A){return this._.buttons[A];},click:function(A){return this._.buttons[A].click();},disableButton:function(A){return this._.buttons[A].disable();},enableButton:function(A){return this._.buttons[A].enable();},getPageCount:function(){return this._.pageCount;},getParentEditor:function(){return this._.editor;},getSelectedElement:function(){return this.getParentEditor().getSelection().getSelectedElement();},addFocusable:function(A,B){var D=this;if(typeof B=='undefined'){B=D._.focusList.length;D._.focusList.push(new e(D,A,B));}else{D._.focusList.splice(B,0,new e(D,A,B));for(var C=B+1;C<D._.focusList.length;C++)D._.focusList[C].focusIndex++;}}};CKEDITOR.tools.extend(CKEDITOR.dialog,{add:function(A,B){if(!this._.dialogDefinitions[A]||typeof B=='function')this._.dialogDefinitions[A]=B;},exists:function(A){return!!this._.dialogDefinitions[A];},getCurrent:function(){return CKEDITOR.dialog._.currentTop;},okButton:(function(){var A=function(B,C){C=C||{};return CKEDITOR.tools.extend({id:'ok',type:'button',label:B.lang.common.ok,'class':'cke_dialog_ui_button_ok',onClick:function(D){var E=D.data.dialog;if(E.fire('ok',{hide:true}).hide!==false)E.hide();}},C,true);};A.type='button';A.override=function(B){return CKEDITOR.tools.extend(function(C){return A(C,B);},{type:'button'},true);};return A;})(),cancelButton:(function(){var A=function(B,C){C=C||{};return CKEDITOR.tools.extend({id:'cancel',type:'button',label:B.lang.common.cancel,'class':'cke_dialog_ui_button_cancel',onClick:function(D){var E=D.data.dialog;
if(E.fire('cancel',{hide:true}).hide!==false)E.hide();}},C,true);};A.type='button';A.override=function(B){return CKEDITOR.tools.extend(function(C){return A(C,B);},{type:'button'},true);};return A;})(),addUIElement:function(A,B){this._.uiElementBuilders[A]=B;}});CKEDITOR.dialog._={uiElementBuilders:{},dialogDefinitions:{},currentTop:null,currentZIndex:null};CKEDITOR.event.implementOn(CKEDITOR.dialog);CKEDITOR.event.implementOn(CKEDITOR.dialog.prototype,true);var f={resizable:CKEDITOR.DIALOG_RESIZE_NONE,minWidth:600,minHeight:400,buttons:[CKEDITOR.dialog.okButton,CKEDITOR.dialog.cancelButton]},g=function(A,B,C){for(var D=0,E;E=A[D];D++){if(E.id==B)return E;if(C&&E[C]){var F=g(E[C],B,C);if(F)return F;}}return null;},h=function(A,B,C,D,E){if(C){for(var F=0,G;G=A[F];F++){if(G.id==C){A.splice(F,0,B);return B;}if(D&&G[D]){var H=h(G[D],B,C,D,true);if(H)return H;}}if(E)return null;}A.push(B);return B;},i=function(A,B,C){for(var D=0,E;E=A[D];D++){if(E.id==B)return A.splice(D,1);if(C&&E[C]){var F=i(E[C],B,C);if(F)return F;}}return null;},j=function(A,B){this.dialog=A;var C=B.contents;for(var D=0,E;E=C[D];D++)C[D]=new k(A,E);CKEDITOR.tools.extend(this,B);};j.prototype={getContents:function(A){return g(this.contents,A);},getButton:function(A){return g(this.buttons,A);},addContents:function(A,B){return h(this.contents,A,B);},addButton:function(A,B){return h(this.buttons,A,B);},removeContents:function(A){i(this.contents,A);},removeButton:function(A){i(this.buttons,A);}};function k(A,B){this._={dialog:A};CKEDITOR.tools.extend(this,B);};k.prototype={get:function(A){return g(this.elements,A,'children');},add:function(A,B){return h(this.elements,A,B,'children');},remove:function(A){i(this.elements,A,'children');}};function l(A){var B=null,C=null,D=A.getElement().getFirst(),E=A.getParentEditor(),F=E.config.dialog_magnetDistance,G=d[E.skinName].margins||[0,0,0,0];if(typeof F=='undefined')F=20;function H(J){var K=A.getSize(),L=CKEDITOR.document.getWindow().getViewPaneSize(),M=J.data.$.screenX,N=J.data.$.screenY,O=M-B.x,P=N-B.y,Q,R;B={x:M,y:N};C.x+=O;C.y+=P;if(C.x+G[3]<F)Q=-G[3];else if(C.x-G[1]>L.width-K.width-F)Q=L.width-K.width+G[1];else Q=C.x;if(C.y+G[0]<F)R=-G[0];else if(C.y-G[2]>L.height-K.height-F)R=L.height-K.height+G[2];else R=C.y;A.move(Q,R);J.data.preventDefault();};function I(J){CKEDITOR.document.removeListener('mousemove',H);CKEDITOR.document.removeListener('mouseup',I);if(CKEDITOR.env.ie6Compat){var K=o.getChild(0).getFrameDocument();K.removeListener('mousemove',H);
K.removeListener('mouseup',I);}};A.parts.title.on('mousedown',function(J){A._.updateSize=true;B={x:J.data.$.screenX,y:J.data.$.screenY};CKEDITOR.document.on('mousemove',H);CKEDITOR.document.on('mouseup',I);C=A.getPosition();if(CKEDITOR.env.ie6Compat){var K=o.getChild(0).getFrameDocument();K.on('mousemove',H);K.on('mouseup',I);}J.data.preventDefault();},A);};function m(A){var B=A.definition,C=B.minWidth||0,D=B.minHeight||0,E=B.resizable,F=d[A.getParentEditor().skinName].margins||[0,0,0,0];function G(R,S){R.y+=S;};function H(R,S){R.x2+=S;};function I(R,S){R.y2+=S;};function J(R,S){R.x+=S;};var K=null,L=null,M=A._.editor.config.magnetDistance,N=['tl','t','tr','l','r','bl','b','br'];function O(R){var S=R.listenerData.part,T=A.getSize();L=A.getPosition();CKEDITOR.tools.extend(L,{x2:L.x+T.width,y2:L.y+T.height});K={x:R.data.$.screenX,y:R.data.$.screenY};CKEDITOR.document.on('mousemove',P,A,{part:S});CKEDITOR.document.on('mouseup',Q,A,{part:S});if(CKEDITOR.env.ie6Compat){var U=o.getChild(0).getFrameDocument();U.on('mousemove',P,A,{part:S});U.on('mouseup',Q,A,{part:S});}R.data.preventDefault();};function P(R){var S=R.data.$.screenX,T=R.data.$.screenY,U=S-K.x,V=T-K.y,W=CKEDITOR.document.getWindow().getViewPaneSize(),X=R.listenerData.part;if(X.search('t')!=-1)G(L,V);if(X.search('l')!=-1)J(L,U);if(X.search('b')!=-1)I(L,V);if(X.search('r')!=-1)H(L,U);K={x:S,y:T};var Y,Z,aa,ab;if(L.x+F[3]<M)Y=-F[3];else if(X.search('l')!=-1&&L.x2-L.x<C+M)Y=L.x2-C;else Y=L.x;if(L.y+F[0]<M)Z=-F[0];else if(X.search('t')!=-1&&L.y2-L.y<D+M)Z=L.y2-D;else Z=L.y;if(L.x2-F[1]>W.width-M)aa=W.width+F[1];else if(X.search('r')!=-1&&L.x2-L.x<C+M)aa=L.x+C;else aa=L.x2;if(L.y2-F[2]>W.height-M)ab=W.height+F[2];else if(X.search('b')!=-1&&L.y2-L.y<D+M)ab=L.y+D;else ab=L.y2;A.move(Y,Z);A.resize(aa-Y,ab-Z);R.data.preventDefault();};function Q(R){CKEDITOR.document.removeListener('mouseup',Q);CKEDITOR.document.removeListener('mousemove',P);if(CKEDITOR.env.ie6Compat){var S=o.getChild(0).getFrameDocument();S.removeListener('mouseup',Q);S.removeListener('mousemove',P);}};};var n,o,p=function(A){var B=CKEDITOR.document.getWindow();if(!o){var C=['<div style="position: ',CKEDITOR.env.ie6Compat?'absolute':'fixed','; z-index: ',A.config.baseFloatZIndex,'; top: 0px; left: 0px; ','background-color: ',A.config.dialog_backgroundCoverColor||'white','" id="cke_dialog_background_cover">'];if(CKEDITOR.env.ie6Compat){var D=CKEDITOR.env.isCustomDomain();C.push('<iframe hidefocus="true" frameborder="0" id="cke_dialog_background_iframe" src="javascript:');
C.push(D?"void((function(){document.open();document.domain='"+document.domain+"';"+'document.close();'+'})())':"''");C.push('" style="position:absolute;left:0;top:0;width:100%;height: 100%;progid:DXImageTransform.Microsoft.Alpha(opacity=0)"></iframe>');}C.push('</div>');o=CKEDITOR.dom.element.createFromHtml(C.join(''));}var E=o,F=function(){var J=B.getViewPaneSize();E.setStyles({width:J.width+'px',height:J.height+'px'});},G=function(){var J=B.getScrollPosition(),K=CKEDITOR.dialog._.currentTop;E.setStyles({left:J.x+'px',top:J.y+'px'});do{var L=K.getPosition();K.move(L.x,L.y);}while(K=K._.parentDialog)};n=F;B.on('resize',F);F();if(CKEDITOR.env.ie6Compat){var H=function(){G();arguments.callee.prevScrollHandler.apply(this,arguments);};B.$.setTimeout(function(){H.prevScrollHandler=window.onscroll||(function(){});window.onscroll=H;},0);G();}var I=A.config.dialog_backgroundCoverOpacity;E.setOpacity(typeof I!='undefined'?I:0.5);E.appendTo(CKEDITOR.document.getBody());},q=function(){if(!o)return;var A=CKEDITOR.document.getWindow();o.remove();A.removeListener('resize',n);if(CKEDITOR.env.ie6Compat)A.$.setTimeout(function(){var B=window.onscroll&&window.onscroll.prevScrollHandler;window.onscroll=B||null;},0);n=null;},r={},s=function(A){var B=A.data.$.ctrlKey||A.data.$.metaKey,C=A.data.$.altKey,D=A.data.$.shiftKey,E=String.fromCharCode(A.data.$.keyCode),F=r[(B?'CTRL+':'')+(C?'ALT+':'')+(D?'SHIFT+':'')+E];if(!F||!F.length)return;F=F[F.length-1];F.keydown&&F.keydown.call(F.uiElement,F.dialog,F.key);A.data.preventDefault();},t=function(A){var B=A.data.$.ctrlKey||A.data.$.metaKey,C=A.data.$.altKey,D=A.data.$.shiftKey,E=String.fromCharCode(A.data.$.keyCode),F=r[(B?'CTRL+':'')+(C?'ALT+':'')+(D?'SHIFT+':'')+E];if(!F||!F.length)return;F=F[F.length-1];F.keyup&&F.keyup.call(F.uiElement,F.dialog,F.key);A.data.preventDefault();},u=function(A,B,C,D,E){var F=r[C]||(r[C]=[]);F.push({uiElement:A,dialog:B,key:C,keyup:E||A.accessKeyUp,keydown:D||A.accessKeyDown});},v=function(A){for(var B in r){var C=r[B];for(var D=C.length-1;D>=0;D--)if(C[D].dialog==A||C[D].uiElement==A)C.splice(D,1);if(C.length===0)delete r[B];}},w=function(A,B){if(A._.accessKeyMap[B])A.selectPage(A._.accessKeyMap[B]);},x=function(A,B){},y={27:1,13:1},z=function(A){if(A.data.getKeystroke() in y)A.data.stopPropagation();};(function(){CKEDITOR.ui.dialog={uiElement:function(A,B,C,D,E,F,G){if(arguments.length<4)return;var H=(D.call?D(B):D)||('div'),I=['<',H,' '],J=(E&&E.call?E(B):E)||({}),K=(F&&F.call?F(B):F)||({}),L=(G&&G.call?G(A,B):G)||(''),M=this.domId=K.id||CKEDITOR.tools.getNextNumber()+'_uiElement',N=this.id=B.id,O;
K.id=M;var P={};if(B.type)P['cke_dialog_ui_'+B.type]=1;if(B.className)P[B.className]=1;var Q=K['class']&&K['class'].split?K['class'].split(' '):[];for(O=0;O<Q.length;O++)if(Q[O])P[Q[O]]=1;var R=[];for(O in P)R.push(O);K['class']=R.join(' ');if(B.title)K.title=B.title;var S=(B.style||'').split(';');for(O in J)S.push(O+':'+J[O]);if(B.hidden)S.push('display:none');for(O=S.length-1;O>=0;O--)if(S[O]==='')S.splice(O,1);if(S.length>0)K.style=(K.style?K.style+'; ':'')+(S.join('; '));for(O in K)I.push(O+'="'+CKEDITOR.tools.htmlEncode(K[O])+'" ');I.push('>',L,'</',H,'>');C.push(I.join(''));(this._||(this._={})).dialog=A;if(typeof B.isChanged=='boolean')this.isChanged=function(){return B.isChanged;};if(typeof B.isChanged=='function')this.isChanged=B.isChanged;CKEDITOR.event.implementOn(this);this.registerEvents(B);if(this.accessKeyUp&&this.accessKeyDown&&B.accessKey)u(this,A,'CTRL+'+B.accessKey);var T=this;A.on('load',function(){if(T.getInputElement())T.getInputElement().on('focus',function(){A._.tabBarMode=false;A._.hasFocus=true;T.fire('focus');},T);});if(this.keyboardFocusable){this.focusIndex=A._.focusList.push(this)-1;this.on('focus',function(){A._.currentFocusIndex=T.focusIndex;});}CKEDITOR.tools.extend(this,B);},hbox:function(A,B,C,D,E){if(arguments.length<4)return;this._||(this._={});var F=this._.children=B,G=E&&E.widths||null,H=E&&E.height||null,I={},J,K=function(){var L=['<tbody><tr class="cke_dialog_ui_hbox">'];for(J=0;J<C.length;J++){var M='cke_dialog_ui_hbox_child',N=[];if(J===0)M='cke_dialog_ui_hbox_first';if(J==C.length-1)M='cke_dialog_ui_hbox_last';L.push('<td class="',M,'" ');if(G){if(G[J])N.push('width:'+CKEDITOR.tools.cssLength(G[J]));}else N.push('width:'+Math.floor(100/C.length)+'%');if(H)N.push('height:'+CKEDITOR.tools.cssLength(H));if(E&&E.padding!=undefined)N.push('padding:'+CKEDITOR.tools.cssLength(E.padding));if(N.length>0)L.push('style="'+N.join('; ')+'" ');L.push('>',C[J],'</td>');}L.push('</tr></tbody>');return L.join('');};CKEDITOR.ui.dialog.uiElement.call(this,A,E||{type:'hbox'},D,'table',I,E&&E.align&&{align:E.align}||null,K);},vbox:function(A,B,C,D,E){if(arguments.length<3)return;this._||(this._={});var F=this._.children=B,G=E&&E.width||null,H=E&&E.heights||null,I=function(){var J=['<table cellspacing="0" border="0" '];J.push('style="');if(E&&E.expand)J.push('height:100%;');J.push('width:'+CKEDITOR.tools.cssLength(G||'100%'),';');J.push('"');J.push('align="',CKEDITOR.tools.htmlEncode(E&&E.align||(A.getParentEditor().lang.dir=='ltr'?'left':'right')),'" ');
J.push('><tbody>');for(var K=0;K<C.length;K++){var L=[];J.push('<tr><td ');if(G)L.push('width:'+CKEDITOR.tools.cssLength(G||'100%'));if(H)L.push('height:'+CKEDITOR.tools.cssLength(H[K]));else if(E&&E.expand)L.push('height:'+Math.floor(100/C.length)+'%');if(E&&E.padding!=undefined)L.push('padding:'+CKEDITOR.tools.cssLength(E.padding));if(L.length>0)J.push('style="',L.join('; '),'" ');J.push(' class="cke_dialog_ui_vbox_child">',C[K],'</td></tr>');}J.push('</tbody></table>');return J.join('');};CKEDITOR.ui.dialog.uiElement.call(this,A,E||{type:'vbox'},D,'div',null,null,I);}};})();CKEDITOR.ui.dialog.uiElement.prototype={getElement:function(){return CKEDITOR.document.getById(this.domId);},getInputElement:function(){return this.getElement();},getDialog:function(){return this._.dialog;},setValue:function(A){this.getInputElement().setValue(A);this.fire('change',{value:A});return this;},getValue:function(){return this.getInputElement().getValue();},isChanged:function(){return false;},selectParentTab:function(){var D=this;var A=D.getInputElement(),B=A,C;while((B=B.getParent())&&(B.$.className.search('cke_dialog_page_contents')==-1)){}if(!B)return D;C=B.getAttribute('name');if(D._.dialog._.currentTabId!=C)D._.dialog.selectPage(C);return D;},focus:function(){this.selectParentTab().getInputElement().focus();return this;},registerEvents:function(A){var B=/^on([A-Z]\w+)/,C,D=function(F,G,H,I){G.on('load',function(){F.getInputElement().on(H,I,F);});};for(var E in A){if(!(C=E.match(B)))continue;if(this.eventProcessors[E])this.eventProcessors[E].call(this,this._.dialog,A[E]);else D(this,this._.dialog,C[1].toLowerCase(),A[E]);}return this;},eventProcessors:{onLoad:function(A,B){A.on('load',B,this);},onShow:function(A,B){A.on('show',B,this);},onHide:function(A,B){A.on('hide',B,this);}},accessKeyDown:function(A,B){this.focus();},accessKeyUp:function(A,B){},disable:function(){var A=this.getInputElement();A.setAttribute('disabled','true');A.addClass('cke_disabled');},enable:function(){var A=this.getInputElement();A.removeAttribute('disabled');A.removeClass('cke_disabled');},isEnabled:function(){return!this.getInputElement().getAttribute('disabled');},isVisible:function(){return!!this.getInputElement().$.offsetHeight;},isFocusable:function(){if(!this.isEnabled()||!this.isVisible())return false;return true;}};CKEDITOR.ui.dialog.hbox.prototype=CKEDITOR.tools.extend(new CKEDITOR.ui.dialog.uiElement(),{getChild:function(A){var B=this;if(arguments.length<1)return B._.children.concat();
if(!A.splice)A=[A];if(A.length<2)return B._.children[A[0]];else return B._.children[A[0]]&&B._.children[A[0]].getChild?B._.children[A[0]].getChild(A.slice(1,A.length)):null;}},true);CKEDITOR.ui.dialog.vbox.prototype=new CKEDITOR.ui.dialog.hbox();(function(){var A={build:function(B,C,D){var E=C.children,F,G=[],H=[];for(var I=0;I<E.length&&(F=E[I]);I++){var J=[];G.push(J);H.push(CKEDITOR.dialog._.uiElementBuilders[F.type].build(B,F,J));}return new CKEDITOR.ui.dialog[C.type](B,H,G,D,C);}};CKEDITOR.dialog.addUIElement('hbox',A);CKEDITOR.dialog.addUIElement('vbox',A);})();CKEDITOR.dialogCommand=function(A){this.dialogName=A;};CKEDITOR.dialogCommand.prototype={exec:function(A){A.openDialog(this.dialogName);},canUndo:false};(function(){var A=/^([a]|[^a])+$/,B=/^\d*$/,C=/^\d*(?:\.\d+)?$/;CKEDITOR.VALIDATE_OR=1;CKEDITOR.VALIDATE_AND=2;CKEDITOR.dialog.validate={functions:function(){return function(){var J=this;var D=J&&J.getValue?J.getValue():arguments[0],E=undefined,F=CKEDITOR.VALIDATE_AND,G=[],H;for(H=0;H<arguments.length;H++)if(typeof arguments[H]=='function')G.push(arguments[H]);else break;if(H<arguments.length&&typeof arguments[H]=='string'){E=arguments[H];H++;}if(H<arguments.length&&typeof arguments[H]=='number')F=arguments[H];var I=F==CKEDITOR.VALIDATE_AND?true:false;for(H=0;H<G.length;H++)if(F==CKEDITOR.VALIDATE_AND)I=I&&G[H](D);else I=I||G[H](D);if(!I){if(E!==undefined)alert(E);if(J&&(J.select||J.focus))J.select||J.focus();return false;}return true;};},regex:function(D,E){return function(){var G=this;var F=G&&G.getValue?G.getValue():arguments[0];if(!D.test(F)){if(E!==undefined)alert(E);if(G&&(G.select||G.focus))if(G.select)G.select();else G.focus();return false;}return true;};},notEmpty:function(D){return this.regex(A,D);},integer:function(D){return this.regex(B,D);},number:function(D){return this.regex(C,D);},equals:function(D,E){return this.functions(function(F){return F==D;},E);},notEqual:function(D,E){return this.functions(function(F){return F!=D;},E);}};})();CKEDITOR.skins.add=(function(){var A=CKEDITOR.skins.add;return function(B,C){d[B]={margins:C.margins};return A.apply(this,arguments);};})();})();CKEDITOR.tools.extend(CKEDITOR.editor.prototype,{openDialog:function(a){var b=CKEDITOR.dialog._.dialogDefinitions[a];if(typeof b=='function'){var c=this._.storedDialogs||(this._.storedDialogs={}),d=c[a]||(c[a]=new CKEDITOR.dialog(this,a));d.show();return d;}else if(b=='failed')throw new Error('[CKEDITOR.dialog.openDialog] Dialog "'+a+'" failed when loading definition.');
var e=CKEDITOR.document.getBody(),f=e.$.style.cursor,g=this;e.setStyle('cursor','wait');CKEDITOR.scriptLoader.load(CKEDITOR.getUrl(b),function(){if(typeof CKEDITOR.dialog._.dialogDefinitions[a]!='function')CKEDITOR.dialog._.dialogDefinitions[a]='failed';g.openDialog(a);e.setStyle('cursor',f);});return null;}});
