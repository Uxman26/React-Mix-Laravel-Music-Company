import{cY as me,aG as je,r as p,j as u,c as O,U as te,au as Re,i as Ne,cO as ge,n as pe,$ as be,de as Fe,df as ce,b4 as Pe,dg as ue,f as _e,l as re,cq as De,w as $e,x as Ae,z as Le,I as se,V as Ke,K as Be,ac as Ue,bb as He,aR as ve,Z as Ve,a0 as Ge,h as We,a1 as qe,a2 as xe,bd as Qe,aI as ye,az as Je}from"./main-0876e57f.js";import{A as Ye,n as Ze,K as Xe}from"./theme-value-to-hex-bf3f886b.js";const J="filters";function et(t){if(!t)return[];let o=[];try{o=JSON.parse(atob(decodeURIComponent(t))),o.map(e=>(e.valueKey!=null&&(e.value=e.valueKey),e))}catch{}return o}function tt(t,o){return!t||(t=o?t.filter(e=>e.value!=="").map(e=>st(e,o)):t,t=t.filter(e=>!e.isInactive),!t.length)?"":encodeURIComponent(btoa(JSON.stringify(t)))}function st(t,o){var s;const e=o.find(n=>n.key===t.key);if((e==null?void 0:e.control.type)==="select"){const n=(e.control.options||[]).find(r=>r.key===t.value);if(n)return{...t,value:n.value,valueKey:n.key}}return(s=e==null?void 0:e.extraFilters)!=null&&s.length&&(t.extraFilters=e.extraFilters),t}function nt(t,o){const[e]=me(),s=je(),n=e.get(J),r=p.useMemo(()=>{if(!t)return[];const d=et(n);return(o||[]).forEach(h=>{if(!d.find(f=>f.key===h)){const f=t.find(v=>v.key===h);d.push({key:h,value:f.control.defaultValue,operator:f.defaultOperator,isInactive:!0})}}),d.sort((h,f)=>t.findIndex(v=>v.key===h.key)-t.findIndex(v=>v.key===f.key)),d},[n,o,t]),i=p.useCallback(d=>{const h=[...r];return d.forEach(f=>{const v=typeof f=="object"?f.key:f,x=h.findIndex(z=>z.key===v);x>-1&&h.splice(x,1)}),h},[r]),l=p.useCallback(d=>{const h=tt(d,t);h?e.set(J,h):e.delete(J),s({search:`?${e}`},{replace:!0})},[t,s,e]),c=p.useCallback(d=>{const f=[...i(d),...d];l(f)},[i,l]),m=p.useCallback(d=>l(i([d])),[i,l]);return{add:c,remove:m,replaceAll:l,decodedFilters:r,encodedFilters:n}}const Nt={pagination:{data:[],from:0,to:0,per_page:15,current_page:1}};function Ft(t){return"next_cursor"in t?t.next_cursor!=null:"last_page"in t?t.current_page<t.last_page:t.data.length>0&&t.data.length>=t.per_page}function Pt({image:t,label:o,description:e,labelClassName:s,avatarSize:n="md"}){return u.jsxs("div",{className:"flex items-center gap-12",children:[t&&u.jsx(Ye,{size:n,className:"flex-shrink-0",src:t}),u.jsxs("div",{className:"min-w-0 overflow-hidden",children:[u.jsx("div",{className:O(s,"overflow-hidden overflow-ellipsis"),children:o}),e&&u.jsx("div",{className:"overflow-hidden overflow-ellipsis text-xs text-muted",children:e})]})]})}function _t({labelClassName:t,showDescription:o}){return u.jsxs("div",{className:"flex w-full max-w-4/5 items-center gap-12",children:[u.jsx(te,{size:"w-40 h-40 md:w-32 md:h-32",variant:"rect"}),u.jsxs("div",{className:"flex-auto",children:[u.jsx("div",{className:O(t,"leading-3"),children:u.jsx(te,{})}),o&&u.jsx("div",{className:"mt-4 leading-3 text-muted",children:u.jsx(te,{})})]})]})}function rt(t){const{size:o="md",inline:e,label:s,showValueLabel:n=!!s,className:r,width:i="w-full",slider:l,children:c,trackColor:m="primary",fillColor:d="primary"}=t,{domProps:h,trackRef:f,getThumbPercent:v,getThumbValueLabel:x,labelId:z,groupId:S,thumbIds:T,isDisabled:I,numberFormatter:b,minValue:L,maxValue:y,step:K,values:_,getValueLabel:w}=l;let N="",C=Math.max([...b.format(L)].length,[...b.format(y)].length,[...b.format(K)].length);w?N=w(_[0]):_.length===1?N=x(0):_.length===2&&(N=`${x(0)} – ${x(1)}`,C=3+2*Math.max(C,[...b.format(L)].length,[...b.format(y)].length));const B=Re({size:o,disabled:I,labelDisplay:"flex"}),D=O("touch-none",r,i,{"flex items-center":e});return u.jsxs("div",{className:D,role:"group",id:S,children:[(s||n)&&u.jsxs("div",{className:O(B.label,"select-none"),children:[s&&u.jsx("label",{onClick:()=>{var $;($=document.getElementById(T[0]))==null||$.focus()},id:z,htmlFor:S,children:s}),n&&u.jsx("output",{htmlFor:T[0],className:"ml-auto text-right","aria-live":"off",style:C?{width:`${C}ch`,minWidth:`${C}ch`}:void 0,children:N})]}),u.jsxs("div",{ref:f,className:O("relative",ot(t)),...h,role:"presentation",children:[u.jsx("div",{className:O("absolute inset-0 m-auto rounded",it(m,I),de(o))}),u.jsx("div",{className:O("absolute inset-0 my-auto rounded",lt(d,I),de(o)),style:{width:`${Math.max(v(0)*100,0)}%`}}),c]})]})}function ot({size:t,wrapperHeight:o}){if(o)return o;switch(t){case"xs":return"h-14";case"sm":return"h-20";default:return"h-30"}}function de(t){switch(t){case"xs":return"h-2";case"sm":return"h-3";default:return"h-4"}}function it(t,o){switch(o&&(t="disabled"),t){case"disabled":return"bg-slider-disabled/60";case"primary":return"bg-primary-light";case"neutral":return"bg-divider";default:return t}}function lt(t,o){switch(o&&(t="disabled"),t){case"disabled":return"bg-slider-disabled";case"primary":return"bg-primary";default:return t}}function at({minValue:t=0,maxValue:o=100,isDisabled:e=!1,step:s=1,formatOptions:n,onChangeEnd:r,onPointerDown:i,label:l,getValueLabel:c,showThumbOnHoverOnly:m,thumbSize:d,onPointerMove:h,...f}){const[v,x]=p.useState(!1),z=Ne(n),{addGlobalListener:S,removeGlobalListener:T}=ge(),I=p.useRef(null),[b,L]=pe(f.value?f.value:void 0,f.defaultValue??[t],f.onChange),y=p.useRef(null);y.current=b;const[K,_]=p.useState(new Array(b.length).fill(!1)),w=p.useRef(null);w.current=K;function N(a){return z.format(a)}const C=a=>{var g;return((g=w.current)==null?void 0:g[a])||!1},B=a=>N(b[a]),D=a=>a===0?t:b[a-1],$=a=>a===b.length-1?o:b[a+1],F=(a,g)=>{if(e||!Y(a)||!y.current)return;const k=D(a),P=$(a);g=Fe(g,k,P,s),y.current=he(y.current,a,g),L(y.current)},j=(a,g)=>{var P;if(e||!Y(a))return;const k=(P=w.current)==null?void 0:P[a];w.current=he(w.current||[],a,g),_(w.current),r&&k&&!w.current.some(Boolean)&&r(y.current||[])},[G,U]=p.useState(void 0),W=a=>{const g=Math.min(1,(a-t)/(o-t));return isNaN(g)?0:g},q=a=>W(y.current[a]),M=(a,g)=>{F(a,oe(g))},Te=a=>Math.round((a-t)/s)*s+t,oe=a=>{const g=a*(o-t)+t;return ce(Te(g),t,o)},ie=p.useRef(new Array(b.length).fill(!0)),Y=a=>ie.current[a],we=(a,g)=>{ie.current[a]=g},E=p.useRef(null),le=p.useRef(void 0),Me=a=>{if(!(a.pointerType==="mouse"&&(a.button!==0||a.altKey||a.ctrlKey||a.metaKey))&&(i==null||i(),I.current&&!e&&b.every((g,k)=>!K[k]))){const g=I.current.offsetWidth,k=I.current.getBoundingClientRect().left,X=(a.clientX-k)/g,Q=oe(X);let R;const A=b.findIndex(ee=>Q-ee<0);if(A===0)R=A;else if(A===-1)R=b.length-1;else{const ee=b[A-1],Oe=b[A];Math.abs(ee-Q)<Math.abs(Oe-Q)?R=A-1:R=A}R>=0&&Y(R)?(a.preventDefault(),E.current=R,U(R),le.current=a.pointerId,j(E.current,!0),F(R,Q),S(window,"pointerup",ae,!1)):E.current=null}},H=p.useRef(null),{domProps:ze}=Ze({onPointerDown:Me,onMoveStart(){H.current=null},onMove(a,g){var P;const k=((P=I.current)==null?void 0:P.offsetWidth)||0;if(H.current==null&&(H.current=q(E.current||0)*k),H.current+=g,E.current!=null&&I.current){const X=ce(H.current/k,0,1);M(E.current,X)}},onMoveEnd(){E.current!=null&&(j(E.current,!1),E.current=null)}}),Ee=be(ze,{onPointerEnter:()=>{x(!0)},onPointerLeave:()=>{x(!1)},onPointerMove:a=>{h==null||h(a)}}),ae=a=>{a.pointerId===le.current&&(E.current!=null&&(j(E.current,!1),E.current=null),T(window,"pointerup",ae,!1))},Z=p.useId(),Se=l?`${Z}-label`:void 0,Ce=`${Z}-group`,ke=[...Array(b.length)].map((a,g)=>`${Z}-thumb-${g}`);return{domProps:Ee,trackRef:I,isDisabled:e,step:s,values:b,minValue:t,maxValue:o,focusedThumb:G,labelId:Se,groupId:Ce,thumbIds:ke,numberFormatter:z,getThumbPercent:q,getThumbMinValue:D,getThumbMaxValue:$,getThumbValueLabel:B,isThumbDragging:C,setThumbValue:F,updateDraggedThumbs:j,setThumbEditable:we,setFocusedThumb:U,getValueLabel:c,isPointerOver:v,showThumbOnHoverOnly:m,thumbSize:d}}function he(t,o,e){return t[o]===e?t:[...t.slice(0,o),e,...t.slice(o+1)]}function ct({index:t,slider:o,isDisabled:e,ariaLabel:s,inputRef:n,onBlur:r,fillColor:i="primary"}){const l=Pe(n),{addGlobalListener:c,removeGlobalListener:m}=ge(),{step:d,values:h,focusedThumb:f,labelId:v,thumbIds:x,isDisabled:z,getThumbPercent:S,getThumbMinValue:T,getThumbMaxValue:I,getThumbValueLabel:b,setThumbValue:L,updateDraggedThumbs:y,isThumbDragging:K,setThumbEditable:_,setFocusedThumb:w,isPointerOver:N,showThumbOnHoverOnly:C,thumbSize:B="w-18 h-18"}=o,D=K(t),$=h[t];_(t,!e);const F=e||z,j=p.useCallback(()=>{l.current&&l.current.focus({preventScroll:!0})},[l]),G=f===t;p.useEffect(()=>{G&&j()},[G,j]);const U=p.useRef(void 0),W=M=>{M.pointerId===U.current&&(j(),y(t,!1),m(window,"pointerup",W,!1))},q=O("outline-none rounded-full top-1/2 -translate-y-1/2 -translate-x-1/2 absolute inset-0 transition-button duration-200",B,!F&&"shadow-md",ut({fillColor:i,isDisabled:F,isDragging:D}),!C||C&&D||N?"visible":"invisible");return u.jsx("div",{role:"presentation",className:q,style:{left:`${Math.max(S(t)*100,0)}%`},onPointerDown:M=>{M.button!==0||M.altKey||M.ctrlKey||M.metaKey||(j(),U.current=M.pointerId,y(t,!0),c(window,"pointerup",W,!1))},children:u.jsx("input",{id:x[t],onKeyDown:ue(()=>{y(t,!0)}),onKeyUp:ue(()=>{y(t,!1)}),ref:l,tabIndex:F?void 0:0,min:T(t),max:I(t),step:d,value:$,disabled:F,"aria-label":s,"aria-labelledby":v,"aria-orientation":"horizontal","aria-valuetext":b(t),onFocus:()=>{w(t)},onBlur:M=>{w(void 0),y(t,!1),r==null||r(M)},onChange:M=>{L(t,parseFloat(M.target.value))},type:"range",className:"sr-only"})})}function ut({isDisabled:t,isDragging:o,fillColor:e}){return t?"bg-slider-disabled cursor-default":e&&e!=="primary"?e:O("hover:bg-primary-dark",o?"bg-primary-dark":"bg-primary")}function dt({inputRef:t,onBlur:o,...e}){const{onChange:s,onChangeEnd:n,value:r,defaultValue:i,...l}=e,c={...l,value:r!=null?[r]:void 0,defaultValue:i!=null?[i]:void 0,onChange:d=>{s==null||s(d[0])},onChangeEnd:d=>{n==null||n(d[0])}},m=at(c);return u.jsx(rt,{...c,slider:m,children:u.jsx(ct,{fillColor:e.fillColor,index:0,slider:m,inputRef:t,onBlur:o})})}function Dt({name:t,...o}){const{field:{onChange:e,onBlur:s,value:n="",ref:r}}=_e({name:t}),i={onChange:e,onBlur:s,value:n||""};return u.jsx(dt,{inputRef:r,...be(i,o)})}const $t=re(u.jsx("path",{d:"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"}),"MoreVertOutlined"),At={discography:1,similar:2,about:3,tracks:4,albums:5,followers:6};function V(t,o,e){let s=e.initialDeps??[],n;return()=>{var r,i,l,c;let m;e.key&&((r=e.debug)!=null&&r.call(e))&&(m=Date.now());const d=t();if(!(d.length!==s.length||d.some((v,x)=>s[x]!==v)))return n;s=d;let f;if(e.key&&((i=e.debug)!=null&&i.call(e))&&(f=Date.now()),n=o(...d),e.key&&((l=e.debug)!=null&&l.call(e))){const v=Math.round((Date.now()-m)*100)/100,x=Math.round((Date.now()-f)*100)/100,z=x/16,S=(T,I)=>{for(T=String(T);T.length<I;)T=" "+T;return T};console.info(`%c⏱ ${S(x,5)} /${S(v,5)} ms`,`
            font-size: .6rem;
            font-weight: bold;
            color: hsl(${Math.max(0,Math.min(120-120*z,120))}deg 100% 31%);`,e==null?void 0:e.key)}return(c=e==null?void 0:e.onChange)==null||c.call(e,n),n}}function ne(t,o){if(t===void 0)throw new Error(`Unexpected undefined${o?`: ${o}`:""}`);return t}const ht=(t,o)=>Math.abs(t-o)<1,ft=(t,o)=>{let e;return function(...s){clearTimeout(e),e=setTimeout(()=>t.apply(this,s),o)}},mt=t=>t,gt=t=>{const o=Math.max(t.startIndex-t.overscan,0),e=Math.min(t.endIndex+t.overscan,t.count-1),s=[];for(let n=o;n<=e;n++)s.push(n);return s},pt=(t,o)=>{const e=t.scrollElement;if(!e)return;const s=r=>{const{width:i,height:l}=r;o({width:Math.round(i),height:Math.round(l)})};if(s(e.getBoundingClientRect()),typeof ResizeObserver>"u")return()=>{};const n=new ResizeObserver(r=>{const i=r[0];if(i!=null&&i.borderBoxSize){const l=i.borderBoxSize[0];if(l){s({width:l.inlineSize,height:l.blockSize});return}}s(e.getBoundingClientRect())});return n.observe(e,{box:"border-box"}),()=>{n.unobserve(e)}},fe={passive:!0},bt=typeof window>"u"?!0:"onscrollend"in window,vt=(t,o)=>{const e=t.scrollElement;if(!e)return;let s=0;const n=bt?()=>{}:ft(()=>{o(s,!1)},t.options.isScrollingResetDelay),r=c=>()=>{s=e[t.options.horizontal?"scrollLeft":"scrollTop"],n(),o(s,c)},i=r(!0),l=r(!1);return l(),e.addEventListener("scroll",i,fe),e.addEventListener("scrollend",l,fe),()=>{e.removeEventListener("scroll",i),e.removeEventListener("scrollend",l)}},xt=(t,o,e)=>{if(o!=null&&o.borderBoxSize){const s=o.borderBoxSize[0];if(s)return Math.round(s[e.options.horizontal?"inlineSize":"blockSize"])}return Math.round(t.getBoundingClientRect()[e.options.horizontal?"width":"height"])},yt=(t,{adjustments:o=0,behavior:e},s)=>{var n,r;const i=t+o;(r=(n=s.scrollElement)==null?void 0:n.scrollTo)==null||r.call(n,{[s.options.horizontal?"left":"top"]:i,behavior:e})};class It{constructor(o){this.unsubs=[],this.scrollElement=null,this.isScrolling=!1,this.scrollToIndexTimeoutId=null,this.measurementsCache=[],this.itemSizeCache=new Map,this.pendingMeasuredCacheIndexes=[],this.scrollDirection=null,this.scrollAdjustments=0,this.measureElementCache=new Map,this.observer=(()=>{let e=null;const s=()=>e||(typeof ResizeObserver<"u"?e=new ResizeObserver(n=>{n.forEach(r=>{this._measureElement(r.target,r)})}):null);return{disconnect:()=>{var n;return(n=s())==null?void 0:n.disconnect()},observe:n=>{var r;return(r=s())==null?void 0:r.observe(n,{box:"border-box"})},unobserve:n=>{var r;return(r=s())==null?void 0:r.unobserve(n)}}})(),this.range=null,this.setOptions=e=>{Object.entries(e).forEach(([s,n])=>{typeof n>"u"&&delete e[s]}),this.options={debug:!1,initialOffset:0,overscan:1,paddingStart:0,paddingEnd:0,scrollPaddingStart:0,scrollPaddingEnd:0,horizontal:!1,getItemKey:mt,rangeExtractor:gt,onChange:()=>{},measureElement:xt,initialRect:{width:0,height:0},scrollMargin:0,gap:0,indexAttribute:"data-index",initialMeasurementsCache:[],lanes:1,isScrollingResetDelay:150,...e}},this.notify=(e,s)=>{var n,r;const{startIndex:i,endIndex:l}=this.range??{startIndex:void 0,endIndex:void 0},c=this.calculateRange();(e||i!==(c==null?void 0:c.startIndex)||l!==(c==null?void 0:c.endIndex))&&((r=(n=this.options).onChange)==null||r.call(n,this,s))},this.cleanup=()=>{this.unsubs.filter(Boolean).forEach(e=>e()),this.unsubs=[],this.scrollElement=null},this._didMount=()=>(this.measureElementCache.forEach(this.observer.observe),()=>{this.observer.disconnect(),this.cleanup()}),this._willUpdate=()=>{const e=this.options.getScrollElement();this.scrollElement!==e&&(this.cleanup(),this.scrollElement=e,this._scrollToOffset(this.scrollOffset,{adjustments:void 0,behavior:void 0}),this.unsubs.push(this.options.observeElementRect(this,s=>{this.scrollRect=s,this.notify(!1,!1)})),this.unsubs.push(this.options.observeElementOffset(this,(s,n)=>{this.scrollAdjustments=0,this.scrollDirection=n?this.scrollOffset<s?"forward":"backward":null,this.scrollOffset=s;const r=this.isScrolling;this.isScrolling=n,this.notify(r!==n,n)})))},this.getSize=()=>this.scrollRect[this.options.horizontal?"width":"height"],this.getMeasurementOptions=V(()=>[this.options.count,this.options.paddingStart,this.options.scrollMargin,this.options.getItemKey],(e,s,n,r)=>(this.pendingMeasuredCacheIndexes=[],{count:e,paddingStart:s,scrollMargin:n,getItemKey:r}),{key:!1}),this.getFurthestMeasurement=(e,s)=>{const n=new Map,r=new Map;for(let i=s-1;i>=0;i--){const l=e[i];if(n.has(l.lane))continue;const c=r.get(l.lane);if(c==null||l.end>c.end?r.set(l.lane,l):l.end<c.end&&n.set(l.lane,!0),n.size===this.options.lanes)break}return r.size===this.options.lanes?Array.from(r.values()).sort((i,l)=>i.end===l.end?i.index-l.index:i.end-l.end)[0]:void 0},this.getMeasurements=V(()=>[this.getMeasurementOptions(),this.itemSizeCache],({count:e,paddingStart:s,scrollMargin:n,getItemKey:r},i)=>{const l=this.pendingMeasuredCacheIndexes.length>0?Math.min(...this.pendingMeasuredCacheIndexes):0;this.pendingMeasuredCacheIndexes=[];const c=this.measurementsCache.slice(0,l);for(let m=l;m<e;m++){const d=r(m),h=this.options.lanes===1?c[m-1]:this.getFurthestMeasurement(c,m),f=h?h.end+this.options.gap:s+n,v=i.get(d),x=typeof v=="number"?v:this.options.estimateSize(m),z=f+x,S=h?h.lane:m%this.options.lanes;c[m]={index:m,start:f,size:x,end:z,key:d,lane:S}}return this.measurementsCache=c,c},{key:!1,debug:()=>this.options.debug}),this.calculateRange=V(()=>[this.getMeasurements(),this.getSize(),this.scrollOffset],(e,s,n)=>this.range=e.length>0&&s>0?Tt({measurements:e,outerSize:s,scrollOffset:n}):null,{key:!1,debug:()=>this.options.debug}),this.getIndexes=V(()=>[this.options.rangeExtractor,this.calculateRange(),this.options.overscan,this.options.count],(e,s,n,r)=>s===null?[]:e({startIndex:s.startIndex,endIndex:s.endIndex,overscan:n,count:r}),{key:!1,debug:()=>this.options.debug}),this.indexFromElement=e=>{const s=this.options.indexAttribute,n=e.getAttribute(s);return n?parseInt(n,10):(console.warn(`Missing attribute name '${s}={index}' on measured element.`),-1)},this._measureElement=(e,s)=>{const n=this.measurementsCache[this.indexFromElement(e)];if(!n||!e.isConnected){this.measureElementCache.forEach((l,c)=>{l===e&&(this.observer.unobserve(e),this.measureElementCache.delete(c))});return}const r=this.measureElementCache.get(n.key);r!==e&&(r&&this.observer.unobserve(r),this.observer.observe(e),this.measureElementCache.set(n.key,e));const i=this.options.measureElement(e,s,this);this.resizeItem(n,i)},this.resizeItem=(e,s)=>{const n=this.itemSizeCache.get(e.key)??e.size,r=s-n;r!==0&&((this.shouldAdjustScrollPositionOnItemSizeChange!==void 0?this.shouldAdjustScrollPositionOnItemSizeChange(e,r,this):e.start<this.scrollOffset+this.scrollAdjustments)&&this._scrollToOffset(this.scrollOffset,{adjustments:this.scrollAdjustments+=r,behavior:void 0}),this.pendingMeasuredCacheIndexes.push(e.index),this.itemSizeCache=new Map(this.itemSizeCache.set(e.key,s)),this.notify(!0,!1))},this.measureElement=e=>{e&&this._measureElement(e,void 0)},this.getVirtualItems=V(()=>[this.getIndexes(),this.getMeasurements()],(e,s)=>{const n=[];for(let r=0,i=e.length;r<i;r++){const l=e[r],c=s[l];n.push(c)}return n},{key:!1,debug:()=>this.options.debug}),this.getVirtualItemForOffset=e=>{const s=this.getMeasurements();return ne(s[Ie(0,s.length-1,n=>ne(s[n]).start,e)])},this.getOffsetForAlignment=(e,s)=>{const n=this.getSize();s==="auto"&&(e<=this.scrollOffset?s="start":e>=this.scrollOffset+n?s="end":s="start"),s==="start"?e=e:s==="end"?e=e-n:s==="center"&&(e=e-n/2);const r=this.options.horizontal?"scrollWidth":"scrollHeight",l=(this.scrollElement?"document"in this.scrollElement?this.scrollElement.document.documentElement[r]:this.scrollElement[r]:0)-this.getSize();return Math.max(Math.min(l,e),0)},this.getOffsetForIndex=(e,s="auto")=>{e=Math.max(0,Math.min(e,this.options.count-1));const n=ne(this.getMeasurements()[e]);if(s==="auto")if(n.end>=this.scrollOffset+this.getSize()-this.options.scrollPaddingEnd)s="end";else if(n.start<=this.scrollOffset+this.options.scrollPaddingStart)s="start";else return[this.scrollOffset,s];const r=s==="end"?n.end+this.options.scrollPaddingEnd:n.start-this.options.scrollPaddingStart;return[this.getOffsetForAlignment(r,s),s]},this.isDynamicMode=()=>this.measureElementCache.size>0,this.cancelScrollToIndex=()=>{this.scrollToIndexTimeoutId!==null&&(clearTimeout(this.scrollToIndexTimeoutId),this.scrollToIndexTimeoutId=null)},this.scrollToOffset=(e,{align:s="start",behavior:n}={})=>{this.cancelScrollToIndex(),n==="smooth"&&this.isDynamicMode()&&console.warn("The `smooth` scroll behavior is not fully supported with dynamic size."),this._scrollToOffset(this.getOffsetForAlignment(e,s),{adjustments:void 0,behavior:n})},this.scrollToIndex=(e,{align:s="auto",behavior:n}={})=>{e=Math.max(0,Math.min(e,this.options.count-1)),this.cancelScrollToIndex(),n==="smooth"&&this.isDynamicMode()&&console.warn("The `smooth` scroll behavior is not fully supported with dynamic size.");const[r,i]=this.getOffsetForIndex(e,s);this._scrollToOffset(r,{adjustments:void 0,behavior:n}),n!=="smooth"&&this.isDynamicMode()&&(this.scrollToIndexTimeoutId=setTimeout(()=>{if(this.scrollToIndexTimeoutId=null,this.measureElementCache.has(this.options.getItemKey(e))){const[c]=this.getOffsetForIndex(e,i);ht(c,this.scrollOffset)||this.scrollToIndex(e,{align:i,behavior:n})}else this.scrollToIndex(e,{align:i,behavior:n})}))},this.scrollBy=(e,{behavior:s}={})=>{this.cancelScrollToIndex(),s==="smooth"&&this.isDynamicMode()&&console.warn("The `smooth` scroll behavior is not fully supported with dynamic size."),this._scrollToOffset(this.scrollOffset+e,{adjustments:void 0,behavior:s})},this.getTotalSize=()=>{var e;const s=this.getMeasurements();let n;return s.length===0?n=this.options.paddingStart:n=this.options.lanes===1?((e=s[s.length-1])==null?void 0:e.end)??0:Math.max(...s.slice(-this.options.lanes).map(r=>r.end)),n-this.options.scrollMargin+this.options.paddingEnd},this._scrollToOffset=(e,{adjustments:s,behavior:n})=>{this.options.scrollToFn(e,{behavior:n,adjustments:s},this)},this.measure=()=>{var e,s;this.itemSizeCache=new Map,(s=(e=this.options).onChange)==null||s.call(e,this,!1)},this.setOptions(o),this.scrollRect=this.options.initialRect,this.scrollOffset=typeof this.options.initialOffset=="function"?this.options.initialOffset():this.options.initialOffset,this.measurementsCache=this.options.initialMeasurementsCache,this.measurementsCache.forEach(e=>{this.itemSizeCache.set(e.key,e.size)}),this.notify(!1,!1)}}const Ie=(t,o,e,s)=>{for(;t<=o;){const n=(t+o)/2|0,r=e(n);if(r<s)t=n+1;else if(r>s)o=n-1;else return n}return t>0?t-1:0};function Tt({measurements:t,outerSize:o,scrollOffset:e}){const s=t.length-1,r=Ie(0,s,l=>t[l].start,e);let i=r;for(;i<s&&t[i].end<e+o;)i++;return{startIndex:r,endIndex:i}}const wt=typeof document<"u"?p.useLayoutEffect:p.useEffect;function Mt(t){const o=p.useReducer(()=>({}),{})[1],e={...t,onChange:(n,r)=>{var i;r?De.flushSync(o):o(),(i=t.onChange)==null||i.call(t,n,r)}},[s]=p.useState(()=>new It(e));return s.setOptions(e),p.useEffect(()=>s._didMount(),[]),wt(()=>s._willUpdate()),s}function Lt(t){return Mt({observeElementRect:pt,observeElementOffset:vt,scrollToFn:yt,...t})}function Kt(t){const{close:o}=$e(),{image:e,images:s}=t,[n,r]=pe(t.activeIndex,t.defaultActiveIndex,t.onActiveIndexChange),i=e||(s==null?void 0:s[n]);return u.jsx(Ae,{size:"fullscreenTakeover",background:"bg-black/80",children:u.jsxs(Le,{padding:"p-0",className:"h-full w-full",children:[u.jsx(se,{size:"lg",color:"paper",className:"absolute right-0 top-0 z-20 text-white",onClick:()=>{o()},children:u.jsx(Ke,{})}),u.jsxs("div",{className:"relative flex h-full w-full items-center justify-center p-40",children:[s!=null&&s.length?u.jsx(se,{size:"lg",color:"white",variant:"flat",className:"absolute bottom-0 left-20 top-0 my-auto",disabled:n<1,onClick:()=>{r(n-1)},children:u.jsx(Xe,{})}):null,u.jsx("img",{src:i,alt:"",className:"max-h-full w-auto object-contain shadow"}),s!=null&&s.length?u.jsx(se,{size:"lg",color:"white",variant:"flat",className:"absolute bottom-0 right-20 top-0 my-auto",disabled:n+1===(s==null?void 0:s.length),onClick:()=>{r(n+1)},children:u.jsx(Be,{})}):null]})]})})}function Bt({genre:t,className:o,...e}){const s=p.useMemo(()=>zt(t),[t]);return u.jsx(Ue,{...e,className:O("block outline-none first-letter:capitalize hover:underline focus-visible:underline",o),to:s,children:t.display_name||t.name})}function zt(t,{absolute:o}={}){let s=`/genre/${He(t.name)}`;return o&&(s=`${ve().settings.base_url}${s}`),s}function Ut(){return Ve({mutationFn:t=>Et(t),onSuccess:(t,o)=>{Ge(We("[one Comment deleted|other Deleted :count comments]",{values:{count:o.commentIds.length}}))},onError:t=>qe(t)})}function Et({commentIds:t}){return xe.delete(`comment/${t.join(",")}`).then(o=>o.data)}const Ht=re(u.jsx("path",{d:"m16 6 2.29 2.29-4.88 4.88-4-4L2 16.59 3.41 18l6-6 4 4 6.3-6.29L22 12V6h-6z"}),"TrendingUpOutlined"),Vt="channel",Gt=re(u.jsx("path",{d:"M3 3v8h8V3H3zm6 6H5V5h4v4zm-6 4v8h8v-8H3zm6 6H5v-4h4v4zm4-16v8h8V3h-8zm6 6h-4V5h4v4zm-6 4v8h8v-8h-8zm6 6h-4v-4h4v4z"}),"GridViewOutlined");function Wt(){return Qe("((pointer: coarse))")}function St(t,o){const e=ye(),[s]=me(),{encodedFilters:n}=nt(),r={...o,restriction:e.restriction||"",order:s.get("order"),[J]:n,paginate:"simple"};return!r.order&&t&&(r.order=t.config.contentOrder||"popularity:desc"),r}function qt(t,o,e){const s=ye(),n=t||s.slugOrId,r=St(void 0,e);return Je({queryKey:Ct(n,{restriction:r.restriction}),queryFn:()=>Ot(n,{...r,loader:o}),initialData:()=>{var m,d;const i=(m=ve().loaders)==null?void 0:m[o],l=(i==null?void 0:i.channel.id)==n||(i==null?void 0:i.channel.slug)==n,c=!r.restriction||((d=i==null?void 0:i.channel.restriction)==null?void 0:d.name)===r.restriction;if(l&&c)return i}})}function Ct(t,o){return["channel",`${t}`,o]}function kt(t){return`channel/${t}`}function Ot(t,o={}){return xe.get(kt(t),{params:o}).then(e=>e.data)}export{J as B,Vt as C,Nt as E,Dt as F,Bt as G,Kt as I,$t as M,Pt as N,dt as S,Ht as T,At as a,Lt as b,Ut as c,Gt as d,Wt as e,qt as f,zt as g,Ft as h,St as i,Ct as j,kt as k,_t as l,at as m,vt as o,nt as u};
//# sourceMappingURL=use-channel-fd91cff4.js.map
