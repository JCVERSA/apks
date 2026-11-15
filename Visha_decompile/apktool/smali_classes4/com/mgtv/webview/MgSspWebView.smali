.class public Lcom/mgtv/webview/MgSspWebView;
.super Lcom/mgtv/webview/BaseWebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/webview/MgSspWebView$a;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field public b:Landroid/app/Activity;

.field public c:Lcom/mgtv/webview/d;

.field private h:Z

.field private i:Lcom/mgtv/webview/c;

.field private j:Lcom/mgtv/webview/jsbridge/d;

.field private k:Lcom/mgtv/webview/jsbridge/d;

.field private l:Z

.field private m:Lcom/mgtv/webview/MgSspWebView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/webview/BaseWebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/webview/MgSspWebView;->h:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mgtv/webview/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/mgtv/webview/MgSspWebView;->h:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/webview/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/mgtv/webview/MgSspWebView;->h:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/webview/MgSspWebView;)Lcom/mgtv/webview/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->i:Lcom/mgtv/webview/c;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/webview/MgSspWebView;Lcom/mgtv/webview/jsbridge/d;)Lcom/mgtv/webview/jsbridge/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView;->j:Lcom/mgtv/webview/jsbridge/d;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mgtv/webview/MgSspWebView;->h:Z

    .line 11
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 12
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/mgtv/webview/MgSspWebView;->b:Landroid/app/Activity;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mgtv/webview/MgSspWebView;->b:Landroid/app/Activity;

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 15
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 17
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 19
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 21
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 22
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 23
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 24
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 25
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 26
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 27
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v3, -0x1

    .line 28
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 29
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 30
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 31
    invoke-static {p1}, Lcom/hunantv/imgo/util/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 33
    invoke-static {p0, v0}, Lcom/mgtv/webview/MgSspWebView;->a(Landroid/webkit/WebView;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/mgtv/webview/MgSspWebView;->a()V

    .line 35
    invoke-direct {p0}, Lcom/mgtv/webview/MgSspWebView;->e()V

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

    .line 36
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/webview/MgSspWebView;Lcom/mgtv/webview/jsbridge/d;)Lcom/mgtv/webview/jsbridge/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView;->k:Lcom/mgtv/webview/jsbridge/d;

    return-object p1
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$1;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$1;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "closeWebView"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 40
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$4;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$4;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "errorMsgReport"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 41
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$5;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$5;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "login"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 42
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$6;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$6;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "jumpPage"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 43
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$7;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$7;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "getDeviceInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 44
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$8;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$8;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "getVideoInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 45
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$9;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$9;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "getUserInfo"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 46
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$10;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$10;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "isWebViewActive"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 47
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$11;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$11;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "pointQuery"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 48
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$2;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$2;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "checkAuth"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    .line 49
    new-instance v0, Lcom/mgtv/webview/MgSspWebView$3;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/MgSspWebView$3;-><init>(Lcom/mgtv/webview/MgSspWebView;)V

    const-string v1, "postBigData"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/webview/c;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView;->i:Lcom/mgtv/webview/c;

    return-void
.end method

.method public a(Lcom/mgtv/webview/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/d;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 8
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    const-string v0, "brand"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v0, "os"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v0, "model"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v0, "network"

    invoke-static {}, Lcom/hunantv/imgo/net/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v0, "version "

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v0, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 16
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/mgtv/webview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/mgtv/webview/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mgtv/webview/MgSspWebView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data:image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data%3aimage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0, p2}, Lcom/mgtv/webview/MgSspWebView;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mgtv/webview/MgSspWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :try_start_0
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->b:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return v2

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->c:Lcom/mgtv/webview/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/webview/d;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return v2

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/webview/MgSspWebView;->l:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->j:Lcom/mgtv/webview/jsbridge/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/webview/jsbridge/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/mgtv/webview/MgSspWebView;->g:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mgtv/webview/MgSspWebView;->g:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/mgtv/webview/MgSspWebView;->m:Lcom/mgtv/webview/MgSspWebView$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/mgtv/webview/MgSspWebView$a;->a(IIII)V

    :cond_0
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
