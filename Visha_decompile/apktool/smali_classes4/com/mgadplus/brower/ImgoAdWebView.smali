.class public Lcom/mgadplus/brower/ImgoAdWebView;
.super Lcom/mgadplus/brower/BaseWebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/brower/ImgoAdWebView$a0;
    }
.end annotation


# static fields
.field public static u:Ljava/lang/String;


# instance fields
.field public b:Landroid/app/Activity;

.field public c:Lmbd;

.field public d:Lted;

.field public l:Z

.field public m:Lo7d;

.field public n:Ly9d;

.field public o:Lz9d;

.field public p:Lz9d;

.field public q:Lz9d;

.field public r:Lz9d;

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/mgadplus/brower/BaseWebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->s:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/mgadplus/brower/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/mgadplus/brower/ImgoAdWebView;->s:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/mgadplus/brower/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/mgadplus/brower/ImgoAdWebView;->s:Z

    .line 12
    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/mgadplus/brower/ImgoAdWebView;)Lo7d;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->m:Lo7d;

    return-object p0
.end method

.method public static synthetic q(Lcom/mgadplus/brower/ImgoAdWebView;Lz9d;)Lz9d;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->p:Lz9d;

    return-object p1
.end method

.method public static synthetic r(Lcom/mgadplus/brower/ImgoAdWebView;)Ly9d;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->n:Ly9d;

    return-object p0
.end method

.method public static synthetic s(Lcom/mgadplus/brower/ImgoAdWebView;Lz9d;)Lz9d;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->o:Lz9d;

    return-object p1
.end method

.method public static synthetic t(Lcom/mgadplus/brower/ImgoAdWebView;Lz9d;)Lz9d;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->q:Lz9d;

    return-object p1
.end method

.method public static synthetic u(Lcom/mgadplus/brower/ImgoAdWebView;Lz9d;)Lz9d;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->r:Lz9d;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    .line 2
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->b:Landroid/app/Activity;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->b:Landroid/app/Activity;

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 6
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 12
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 13
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 14
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 15
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 16
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 17
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 22
    invoke-static {p1}, Lmpd;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 24
    invoke-static {p0, v0}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Landroid/webkit/WebView;Z)V

    .line 25
    invoke-virtual {p0}, Lcom/mgadplus/brower/ImgoAdWebView;->e()V

    .line 26
    invoke-virtual {p0}, Lcom/mgadplus/brower/ImgoAdWebView;->v()V

    .line 27
    new-instance p1, Lcom/mgadplus/brower/ImgoAdWebView$k;

    invoke-direct {p1, p0}, Lcom/mgadplus/brower/ImgoAdWebView$k;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->s:Z

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmbd;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->b:Landroid/app/Activity;

    .line 5
    invoke-super {p0}, Lcom/mgadplus/brower/BaseWebView;->b()V

    return-void
.end method

.method public b(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmbd;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lmbd;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->t:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$c;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$c;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "postADMonitor"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$l;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$l;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getMediaUrl"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$m;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$m;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getPluginConfig"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$n;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$n;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getSize"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$o;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$o;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "openBrowser"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$p;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$p;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "closeWebView"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$q;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$q;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "showShareMenus"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$r;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$r;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "shareTo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$s;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$s;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "switchBranch"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$t;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$t;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "jumpPage"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$u;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$u;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "changeFactor"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$v;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$v;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getBaseFolder"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$w;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$w;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getBranchInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$x;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$x;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getDeviceInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$y;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$y;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getVideoInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$z;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$z;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getUserInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$a;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "getFactorInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$b;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$b;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "feedbackResult"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$d;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$d;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "playNext"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$e;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$e;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "switchBackground"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$f;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$f;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "showLogin"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$g;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$g;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "switchForeground"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$h;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$h;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "pointQuery"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$i;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$i;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "checkAuth"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    new-instance v0, Lcom/mgadplus/brower/ImgoAdWebView$j;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/ImgoAdWebView$j;-><init>(Lcom/mgadplus/brower/ImgoAdWebView;)V

    const-string v1, "postBigData"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Ld2d;)V

    return-void
.end method

.method public g(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method

.method public getNativeDeviceInfo()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance p0, Lcom/mgmi/model/InteractDeviceInfo;

    invoke-direct {p0}, Lcom/mgmi/model/InteractDeviceInfo;-><init>()V

    invoke-static {}, Lmpd;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/model/InteractDeviceInfo;->brand:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/model/InteractDeviceInfo;->os:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mgmi/f/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->oaid:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->osVersion:Ljava/lang/String;

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->model:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/net/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->network:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->version:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->appVersion:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/f/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->did:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->channel:Ljava/lang/String;

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->mod:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/f/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->androidid:Ljava/lang/String;

    invoke-static {}, Lmpd;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->mf:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfyd;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->net:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmpd;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->carrier:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b/b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->pkgch:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->ch:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aphone-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->sver:Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mgmi/model/InteractDeviceInfo;->aver:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mgadplus/netlib/json/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public getOnScrollChangedCallback()Lcom/mgadplus/brower/ImgoAdWebView$a0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lmbd;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PageFinished =====> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImgoAdWebView"

    invoke-static {p2, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->setWebTitle(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmbd;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data:image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data%3aimage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/mgadplus/brower/ImgoAdWebView;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->b:Landroid/app/Activity;

    invoke-static {p0, p2}, Lh2d;->h(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lmbd;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return v2

    :catch_0
    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl =====> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgoAdWebView"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/mgadplus/brower/ImgoAdWebView;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/ImgoAdWebView;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/mgadplus/brower/ImgoAdWebView;->u:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return p2
.end method

.method public setAdProperty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->l:Z

    return-void
.end method

.method public setHoldTouchEventSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->t:Z

    return-void
.end method

.method public setIslandpage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->s:Z

    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/mgadplus/brower/ImgoAdWebView$a0;)V
    .locals 0

    return-void
.end method

.method public setWebTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmbd;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWebViewDownloadCallBack(Lo7d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->m:Lo7d;

    return-void
.end method

.method public setWebViewJsCallBack(Ly9d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->n:Ly9d;

    return-void
.end method

.method public setWebViewLifeCycleCallback(Lmbd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView;->c:Lmbd;

    return-void
.end method

.method public setWebViewRenderGoneCallback(Lted;)V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 0

    return-void
.end method
