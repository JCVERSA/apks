.class public abstract Lcom/yandex/mobile/ads/impl/yf1;
.super Lcom/yandex/mobile/ads/impl/vk;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bh0;
.implements Lcom/yandex/mobile/ads/impl/gh1$b;
.implements Lcom/yandex/mobile/ads/impl/yh2$a;


# static fields
.field private static j:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/impl/yh2;

.field private final d:Lcom/yandex/mobile/ads/impl/gh1;

.field private final e:Lcom/yandex/mobile/ads/impl/dz1;

.field private f:Lcom/yandex/mobile/ads/impl/dh0;

.field private g:Lcom/yandex/mobile/ads/impl/ch0;

.field private h:Z

.field private i:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/yh2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/yh2;-><init>()V

    .line 3
    sget-object v2, Lcom/yandex/mobile/ads/impl/gh1;->h:Lcom/yandex/mobile/ads/impl/gh1$a;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/gh1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/gh1;

    move-result-object v2

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/yf1;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/yh2;Lcom/yandex/mobile/ads/impl/gh1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/yh2;Lcom/yandex/mobile/ads/impl/gh1;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewableChecker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneStateTracker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/vk;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yf1;->b:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yf1;->d:Lcom/yandex/mobile/ads/impl/gh1;

    .line 10
    new-instance p2, Lcom/yandex/mobile/ads/impl/dz1;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/dz1;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yf1;->e:Lcom/yandex/mobile/ads/impl/dz1;

    .line 11
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(Landroid/content/Context;)V

    .line 12
    sget-boolean p0, Lcom/yandex/mobile/ads/impl/yf1;->j:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 13
    sput-boolean p0, Lcom/yandex/mobile/ads/impl/yf1;->j:Z

    :cond_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 1

    .line 32
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->h()V

    return-void
.end method

.method private final a(Z)V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->h:Z

    if-eq v0, p1, :cond_0

    .line 27
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->h:Z

    .line 28
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->j()Lcom/yandex/mobile/ads/impl/dh0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/yf1;->h:Z

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/dh0;->a(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a(Lcom/yandex/mobile/ads/impl/yf1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->e:Lcom/yandex/mobile/ads/impl/dz1;

    new-instance v1, Lhyd;

    invoke-direct {v1, p0}, Lhyd;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/dz1;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yf1;->g:Lcom/yandex/mobile/ads/impl/ch0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ch0;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 10
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 15
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "getSettings(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x15

    .line 17
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 21
    new-instance p1, Lcom/yandex/mobile/ads/impl/ah0;

    .line 22
    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->b()Lcom/yandex/mobile/ads/impl/yj2;

    move-result-object v0

    .line 23
    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/ah0;-><init>(Lcom/yandex/mobile/ads/impl/bh0;Lcom/yandex/mobile/ads/impl/xj2;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    new-instance p1, Lcom/yandex/mobile/ads/impl/vg0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/vg0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 29
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->j()Lcom/yandex/mobile/ads/impl/dh0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/yandex/mobile/ads/impl/dh0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dh1;)V
    .locals 1

    .line 34
    const-string v0, "phoneState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/yandex/mobile/ads/impl/dh1;->c:Lcom/yandex/mobile/ads/impl/dh1;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->d:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gh1;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 37
    :goto_1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(Z)V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/yf1;->i:Z

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rj2;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<style type=\'text/css\'> \n  * { \n      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; \n      -webkit-focus-ring-color: rgba(0, 0, 0, 0) !important; \n      outline: none !important; \n    } \n</style> \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/yf1;->setHtmlWebViewListener(Lcom/yandex/mobile/ads/impl/dh0;)V

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/vk;->d()V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->j()Lcom/yandex/mobile/ads/impl/dh0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/dh0;->a()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract h()V
.end method

.method public final i()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yf1;->b:Landroid/content/Context;

    return-object p0
.end method

.method public j()Lcom/yandex/mobile/ads/impl/dh0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yf1;->f:Lcom/yandex/mobile/ads/impl/dh0;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->i:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->d:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gh1;->a(Lcom/yandex/mobile/ads/impl/gh1$b;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/yf1;->a(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->i:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/yf1;->a(Z)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yf1;->d:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gh1;->b(Lcom/yandex/mobile/ads/impl/gh1$b;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->c:Lcom/yandex/mobile/ads/impl/yh2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yh2;->a(Landroid/view/View;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(Z)V

    return-void
.end method

.method public final setHtmlWebViewErrorListener(Lcom/yandex/mobile/ads/impl/ch0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->g:Lcom/yandex/mobile/ads/impl/ch0;

    return-void
.end method

.method public setHtmlWebViewListener(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yf1;->f:Lcom/yandex/mobile/ads/impl/dh0;

    return-void
.end method
