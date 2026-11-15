package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.yandex.mobile.ads.impl.si2;
import com.yandex.mobile.ads.impl.t21;
import defpackage.y45;
import kotlin.text.Regex;

public final class t21 {
    private static final String a = new Regex("(?m)^//.*(?=\\n)").replace(new Regex("(?m)^\\s+").replace("!function(e){function t(r){if(n[r])return n[r].exports;var o=n[r]={exports:{},id:r,loaded:!1};return e[r].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var n={};return t.m=e,t.c=n,t.p=\"\",t(0)}([function(e,t,n){var r,o;r=[n,t,n(1)],o=function(e,t,n){\"use strict\";Object.defineProperty(t,\"__esModule\",{value:!0});var r=window;r.mraid=n.mraid,r.mraidbridge=n.mraidbridge}.apply(t,r),!(void 0!==o&&(e.exports=o))},function(e,t,n){var r,o;r=[n,t,n(2)],o=function(e,t,n){\"use strict\";function r(){return O}function o(){return b}function i(){return I}function s(e,t){e&&t||V(_.ERROR,\"Both event and listener are required.\",\"addEventListener\"),\"undefined\"==typeof w[e]&&(w[e]=new n.default(e)),w[e].add(t)}function u(e,t){if(!e)return void V(_.ERROR,\"Event is required.\",\"removeEventListener\");if(t){var n=!1;if(w[e]&&(n=w[e].remove(t)),!n)return void V(_.ERROR,\"Listener not currently registered for event.\",\"removeEventListener\")}else!t&&w[e]&&w[e].removeAll();w[e]&&0===w[e].count&&(w[e]=null,delete w[e])}function a(e){for(var t in e)if(e.hasOwnProperty(t)){var n=U[t];n(e[t])}}function d(e){I=e,V(\"stateChange\",I)}function l(e){N=e}function c(){return{x:N.x,y:N.y,width:N.width,height:N.height}}function f(e){P=e}function v(){return{x:P.x,y:P.y,width:P.width,height:P.height}}function p(){L=!0,V(\"ready\")}function E(e,t){V(_.ERROR,e,t)}function h(e){T=Boolean(e),m([\"usecustomclose\",\"shouldUseCustomClose\",e?\"true\":\"false\"])}function R(){return T}function g(){return 0===G.length?void(H=!1):void(x.location=G.pop())}function y(e){e?m([\"open\",\"url\",e]):V(_.ERROR,\"`url` parameter is required\",\"open\")}function m(e){var t=e.shift();if(!L)return console.log(\"rejecting \"+t+\" because mraid is not ready\"),void E(\"mraid is not ready\",t);for(var n=\"mraid://\"+t,r=!0,o=0;o<e.length;o+=2){var i=void 0,s=void 0;i=e[o],s=e[o+1],null!==s&&(r?(n+=\"?\",r=!1):n+=\"&\",n+=encodeURIComponent(i)+\"=\"+encodeURIComponent(s))}H?G.push(n):(x.location=n,H=!0)}function C(e){return S[e]}function A(){I===D.HIDDEN?V(_.ERROR,\"Ad cannot be closed when it is already hidden.\",\"close\"):m([\"close\"])}Object.defineProperty(t,\"__esModule\",{value:!0});var x=window,O=\"2.0\",b=!1,w={},P={},N={},D={LOADING:\"loading\",DEFAULT:\"default\",EXPANDED:\"expanded\",RESIZED:\"resized\",HIDDEN:\"hidden\"},_={READY:\"ready\",ERROR:\"error\",STATE_CHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",SIZECHANGE:\"sizeChange\",EXPOSURECHANGE:\"exposureChange\"},S={sms:!1,tel:!1,calendar:!1,storePicture:!1,inlineVideo:!1},I=\"loading\",L=!1,H=!1,G=[],T=!1,V=function(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];var n=e.shift();w[n]&&(r=w[n]).broadcast.apply(r,e);var r},U={state:function(e){I=e,V(_.STATE_CHANGE,I)},viewable:function(e){b=e,V(_.VIEWABLECHANGE,b)},supports:function(e){S=e},exposure:function(e){var t=e.exposedPercentage,n=e.visibleRectangle,r=e.occlusionRectangles;V(_.EXPOSURECHANGE,t,n,r)}};t.mraidbridge={setState:d,setCurrentPosition:f,setDefaultPosition:l,notifyReadyEvent:p,notifyErrorEvent:E,executeNativeCall:m,fireChangeEvent:a,nativeCallComplete:g},t.mraid={EVENTS:_,STATES:D,getVersion:r,getCurrentPosition:v,getDefaultPosition:c,isViewable:o,getState:i,addEventListener:s,removeEventListener:u,supports:C,close:A,useCustomClose:h,open:y,__PRIV__:{usesCustomClose:R}}}.apply(t,r),!(void 0!==o&&(e.exports=o))},function(e,t,n){var r,o;r=[n,t],o=function(e,t){\"use strict\";Object.defineProperty(t,\"__esModule\",{value:!0});var n=function(){function e(e){this.event=e,this.count=0,this.listeners=[]}return e.prototype.add=function(e){var t=this.listeners;t.push(e),this.count++},e.prototype.remove=function(e){var t=this.listeners,n=t.indexOf(e);return n!==-1&&(t.splice(n,1),this.count--,!0)},e.prototype.removeAll=function(){this.listeners;this.listeners=[],this.count=0},e.prototype.broadcast=function(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];for(var n=this.listeners,r=0,o=n;r<o.length;r++){var i=o[r];i.apply(void 0,e)}},e}();t.default=n}.apply(t,r),!(void 0!==o&&(e.exports=o))}]);", ""), "");

    public interface a {
        void a(String str);
    }

    public static final void a(a aVar, String str) {
        y45.j(aVar, "$onLoadListener");
        y45.g(str);
        aVar.a(str);
    }

    public static final void a(a aVar, si2 si2Var) {
        y45.j(aVar, "$onLoadListener");
        aVar.a(a);
        sp0.f(new Object[0]);
    }

    public static void a(Context context, String str, a aVar) {
        y45.j(context, "context");
        y45.j(str, "requestTag");
        y45.j(aVar, "onLoadListener");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        String strC = ju1VarA != null ? ju1VarA.C() : null;
        if (strC != null && strC.length() > 0) {
            e32 e32VarA = a(strC, str, aVar);
            int i2 = gq1.c;
            synchronized (gq1.a.a()) {
                y45.j(context, "context");
                y45.j(e32VarA, Progress.REQUEST);
                hd1.a(context).a(e32VarA);
            }
            return;
        }
        aVar.a(a);
        sp0.f(new Object[0]);
    }

    private static e32 a(String str, String str2, final a aVar) {
        e32 e32Var = new e32(str, new xq1.b() {
            @Override
            public final void a(Object obj) {
                t21.a(aVar, (String) obj);
            }
        }, new xq1.a() {
            @Override
            public final void a(si2 si2Var) {
                t21.a(aVar, si2Var);
            }
        });
        e32Var.b((Object) str2);
        return e32Var;
    }
}
