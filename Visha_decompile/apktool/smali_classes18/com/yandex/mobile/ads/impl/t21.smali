.class public final Lcom/yandex/mobile/ads/impl/t21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/t21$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?m)^\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, "!function(e){function t(r){if(n[r])return n[r].exports;var o=n[r]={exports:{},id:r,loaded:!1};return e[r].call(o.exports,o,o.exports,t),o.loaded=!0,o.exports}var n={};return t.m=e,t.c=n,t.p=\"\",t(0)}([function(e,t,n){var r,o;r=[n,t,n(1)],o=function(e,t,n){\"use strict\";Object.defineProperty(t,\"__esModule\",{value:!0});var r=window;r.mraid=n.mraid,r.mraidbridge=n.mraidbridge}.apply(t,r),!(void 0!==o&&(e.exports=o))},function(e,t,n){var r,o;r=[n,t,n(2)],o=function(e,t,n){\"use strict\";function r(){return O}function o(){return b}function i(){return I}function s(e,t){e&&t||V(_.ERROR,\"Both event and listener are required.\",\"addEventListener\"),\"undefined\"==typeof w[e]&&(w[e]=new n.default(e)),w[e].add(t)}function u(e,t){if(!e)return void V(_.ERROR,\"Event is required.\",\"removeEventListener\");if(t){var n=!1;if(w[e]&&(n=w[e].remove(t)),!n)return void V(_.ERROR,\"Listener not currently registered for event.\",\"removeEventListener\")}else!t&&w[e]&&w[e].removeAll();w[e]&&0===w[e].count&&(w[e]=null,delete w[e])}function a(e){for(var t in e)if(e.hasOwnProperty(t)){var n=U[t];n(e[t])}}function d(e){I=e,V(\"stateChange\",I)}function l(e){N=e}function c(){return{x:N.x,y:N.y,width:N.width,height:N.height}}function f(e){P=e}function v(){return{x:P.x,y:P.y,width:P.width,height:P.height}}function p(){L=!0,V(\"ready\")}function E(e,t){V(_.ERROR,e,t)}function h(e){T=Boolean(e),m([\"usecustomclose\",\"shouldUseCustomClose\",e?\"true\":\"false\"])}function R(){return T}function g(){return 0===G.length?void(H=!1):void(x.location=G.pop())}function y(e){e?m([\"open\",\"url\",e]):V(_.ERROR,\"`url` parameter is required\",\"open\")}function m(e){var t=e.shift();if(!L)return console.log(\"rejecting \"+t+\" because mraid is not ready\"),void E(\"mraid is not ready\",t);for(var n=\"mraid://\"+t,r=!0,o=0;o<e.length;o+=2){var i=void 0,s=void 0;i=e[o],s=e[o+1],null!==s&&(r?(n+=\"?\",r=!1):n+=\"&\",n+=encodeURIComponent(i)+\"=\"+encodeURIComponent(s))}H?G.push(n):(x.location=n,H=!0)}function C(e){return S[e]}function A(){I===D.HIDDEN?V(_.ERROR,\"Ad cannot be closed when it is already hidden.\",\"close\"):m([\"close\"])}Object.defineProperty(t,\"__esModule\",{value:!0});var x=window,O=\"2.0\",b=!1,w={},P={},N={},D={LOADING:\"loading\",DEFAULT:\"default\",EXPANDED:\"expanded\",RESIZED:\"resized\",HIDDEN:\"hidden\"},_={READY:\"ready\",ERROR:\"error\",STATE_CHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",SIZECHANGE:\"sizeChange\",EXPOSURECHANGE:\"exposureChange\"},S={sms:!1,tel:!1,calendar:!1,storePicture:!1,inlineVideo:!1},I=\"loading\",L=!1,H=!1,G=[],T=!1,V=function(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];var n=e.shift();w[n]&&(r=w[n]).broadcast.apply(r,e);var r},U={state:function(e){I=e,V(_.STATE_CHANGE,I)},viewable:function(e){b=e,V(_.VIEWABLECHANGE,b)},supports:function(e){S=e},exposure:function(e){var t=e.exposedPercentage,n=e.visibleRectangle,r=e.occlusionRectangles;V(_.EXPOSURECHANGE,t,n,r)}};t.mraidbridge={setState:d,setCurrentPosition:f,setDefaultPosition:l,notifyReadyEvent:p,notifyErrorEvent:E,executeNativeCall:m,fireChangeEvent:a,nativeCallComplete:g},t.mraid={EVENTS:_,STATES:D,getVersion:r,getCurrentPosition:v,getDefaultPosition:c,isViewable:o,getState:i,addEventListener:s,removeEventListener:u,supports:C,close:A,useCustomClose:h,open:y,__PRIV__:{usesCustomClose:R}}}.apply(t,r),!(void 0!==o&&(e.exports=o))},function(e,t,n){var r,o;r=[n,t],o=function(e,t){\"use strict\";Object.defineProperty(t,\"__esModule\",{value:!0});var n=function(){function e(e){this.event=e,this.count=0,this.listeners=[]}return e.prototype.add=function(e){var t=this.listeners;t.push(e),this.count++},e.prototype.remove=function(e){var t=this.listeners,n=t.indexOf(e);return n!==-1&&(t.splice(n,1),this.count--,!0)},e.prototype.removeAll=function(){this.listeners;this.listeners=[],this.count=0},e.prototype.broadcast=function(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];for(var n=this.listeners,r=0,o=n;r<o.length;r++){var i=o[r];i.apply(void 0,e)}},e}();t.default=n}.apply(t,r),!(void 0!==o&&(e.exports=o))}]);"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "(?m)^//.*(?=\\n)"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/t21;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t21$a;)Lcom/yandex/mobile/ads/impl/e32;
    .locals 3

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/impl/e32;

    new-instance v1, Lytd;

    invoke-direct {v1, p2}, Lytd;-><init>(Lcom/yandex/mobile/ads/impl/t21$a;)V

    new-instance v2, Lztd;

    invoke-direct {v2, p2}, Lztd;-><init>(Lcom/yandex/mobile/ads/impl/t21$a;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/e32;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$b;Lcom/yandex/mobile/ads/impl/xq1$a;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t21$a;)V
    .locals 2

    .line 6
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLoadListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->C()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    invoke-static {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/t21;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t21$a;)Lcom/yandex/mobile/ads/impl/e32;

    move-result-object p1

    .line 10
    sget p2, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    move-result-object p2

    monitor-enter p2

    .line 11
    :try_start_0
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hd1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq1;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p2

    throw p0

    .line 15
    :cond_1
    sget-object p0, Lcom/yandex/mobile/ads/impl/t21;->a:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/t21$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/t21$a;Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 0

    .line 3
    const-string p1, "$onLoadListener"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/yandex/mobile/ads/impl/t21;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/t21$a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/t21$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "$onLoadListener"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/t21$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/t21$a;Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/t21;->a(Lcom/yandex/mobile/ads/impl/t21$a;Lcom/yandex/mobile/ads/impl/si2;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/t21$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/t21;->a(Lcom/yandex/mobile/ads/impl/t21$a;Ljava/lang/String;)V

    return-void
.end method
