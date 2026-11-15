.class public Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final EjP:Z

.field private final HiB:Z

.field private Jcg:Z

.field private final Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Z

.field private sP:Z

.field private final vS:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->TKC:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->EjP:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->HiB:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->vS:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Jcg:Z

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private Sj(Landroid/webkit/WebSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    const-string v0, "clear_web_cache_new"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Z)V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    .line 28
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Z)V

    :cond_2
    return-void
.end method

.method public static sP(Landroid/webkit/WebView;)V
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 3
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 4
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Jcg:Z

    return-object p0
.end method

.method public Sj(Landroid/webkit/WebView;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 3
    const-string v0, "SSWebSettings"

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Landroid/webkit/WebView;)V

    .line 5
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebSettings;)V

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    .line 9
    :try_start_1
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP:Z

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 17
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 19
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 20
    :try_start_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Jcg:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 23
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP:Z

    return-object p0
.end method
