.class public Lal4$a;
.super Lcom/just/agentweb/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lal4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lal4;


# direct methods
.method public constructor <init>(Lal4;)V
    .locals 0

    iput-object p1, p0, Lal4$a;->a:Lal4;

    invoke-direct {p0}, Lcom/just/agentweb/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lal4$a;->a:Lal4;

    invoke-static {v0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4$a;->a:Lal4;

    invoke-static {p0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->z(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lal4;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview_geturl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "(function(){if(window.__visha_canScrollXLast){return;}window.__visha_lastTouch={x:0,y:0};var save=function(x,y){try{window.__visha_lastTouch.x=x;window.__visha_lastTouch.y=y;}catch(e){}};var onTouch=function(e){try{var t=(e.touches&&e.touches[0])||(e.changedTouches&&e.changedTouches[0]);if(t){save(t.clientX,t.clientY);}}catch(ex){}};var onPointer=function(e){try{if(e&&typeof e.clientX===\'number\'){save(e.clientX,e.clientY);}}catch(ex){}};document.addEventListener(\'touchstart\',onTouch,true);document.addEventListener(\'touchmove\',onTouch,true);document.addEventListener(\'pointerdown\',onPointer,true);document.addEventListener(\'pointermove\',onPointer,true);var nameMatch=function(s){try{return !!(s && /swiper|slick|carousel|banner|slider|flickity|owl|splide|glide|keen|embla/i.test(s));}catch(e){return false;}};var attrMatch=function(el){try{if(!el||!el.getAttribute){return false;}var a=[\'data-swiper\',\'data-slick\',\'data-flickity\',\'data-carousel\',\'data-slider\',\'data-banner\',\'data-owl\',\'data-splide\',\'data-glide\',\'data-keen\',\'data-embla\'];for(var i=0;i<a.length;i++){var v=el.getAttribute(a[i]);if(v!=null){return true;}}var role=el.getAttribute(\'role\')||\'\';var ard=el.getAttribute(\'aria-roledescription\')||\'\';if(role && /tablist|listbox|region/i.test(role) && ard && /carousel|slider/i.test(ard)){return true;}return false;}catch(e){return false;}};var maybeCarouselByStyle=function(el){try{if(!el){return false;}var st=window.getComputedStyle(el);if(!st){return false;}var ta=(st.touchAction||st.getPropertyValue(\'touch-action\')||\'\');if(ta && /pan-x|none/i.test(ta)){return true;}var tf=(st.transform||\'\');var wc=(st.willChange||\'\');if((tf && tf!==\'none\') || (wc && /transform/i.test(wc))){if((el.children&&el.children.length>1) || (el.childElementCount&&el.childElementCount>1)){return true;}}return false;}catch(e){return false;}};window.__visha_canScrollX=function(x,y,dx){try{var el=document.elementFromPoint(x,y);var desired=(dx<0)?1:-1;while(el){var cls=(function(e){try{return (e&&e.className&&e.className.toString)?e.className.toString():\'\';}catch(ex){return \'\';} })(el);var id=(function(e){try{return e&&e.id?String(e.id):\'\';}catch(ex){return \'\';} })(el);if(nameMatch(cls) || nameMatch(id) || attrMatch(el) || maybeCarouselByStyle(el)){return 1;}var style=window.getComputedStyle(el);var overflowX=style?style.overflowX:\'\';var can=(overflowX===\'auto\'||overflowX===\'scroll\');if(can && el.scrollWidth>el.clientWidth+1){if(desired>0){if(el.scrollLeft<el.scrollWidth-el.clientWidth-1){return 1;}}else{if(el.scrollLeft>1){return 1;}}}el=el.parentElement;}}catch(e){}return 0;};window.__visha_canScrollXLast=function(dx){try{var p=window.__visha_lastTouch||{x:0,y:0};return window.__visha_canScrollX(p.x,p.y,dx);}catch(e){return 1;}};})();"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lal4$a;->a:Lal4;

    invoke-static {v0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4$a;->a:Lal4;

    invoke-static {p0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lal4;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebViewClientDelegate;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lal4$a;->a:Lal4;

    invoke-static {v0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4$a;->a:Lal4;

    invoke-static {p0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->g(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/WebViewClientDelegate;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lal4$a;->a:Lal4;

    invoke-static {v0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lal4$a;->a:Lal4;

    invoke-static {p0}, Lal4;->d(Lal4;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->B(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    sget-object v0, Lal4;->i:Ljava/lang/String;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "shouldOverrideUrlLoading url="

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 3
    sget-object p0, Lal4;->i:Ljava/lang/String;

    const-string p1, "shouldOverrideUrlLoading url="

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
