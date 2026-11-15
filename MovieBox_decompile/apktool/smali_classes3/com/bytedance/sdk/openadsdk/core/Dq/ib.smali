.class public Lcom/bytedance/sdk/openadsdk/core/Dq/ib;
.super Lcom/bytedance/sdk/component/adexpress/HiB/Sj;
.source "source.java"


# instance fields
.field private Dq:Ljava/lang/String;

.field private Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private Jcg:Landroid/content/Context;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

.field private TEQ:Lorg/json/JSONObject;

.field private volatile TzV:I

.field private Ym:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private aa:Ljava/lang/String;

.field private dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

.field private final dx:Ljava/lang/Runnable;

.field private final sU:Lcom/bytedance/sdk/component/Dq/Dq;

.field private final sef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private uvD:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field vS:Lcom/bytedance/sdk/openadsdk/utils/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sef:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV:I

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;

    .line 19
    .line 20
    const-string v1, "webviewrender_template"

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sU:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dx:Ljava/lang/Runnable;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Jcg:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 48
    .line 49
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Ym:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 50
    .line 51
    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->Sj(Lcom/bytedance/sdk/component/adexpress/theme/Sj;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dNu()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV:I

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dNu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->db()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    const-string p0, "v3"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->EjP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TEQ:Lorg/json/JSONObject;

    return-object p1
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Jcg:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->sef()V

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1bca

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDomStorageEnabled(Z)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDatabaseEnabled(Z)V

    .line 20
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setAllowFileAccess(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setSupportZoom(Z)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setBuiltInZoomControls(Z)V

    .line 23
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUseWideViewPort(Z)V

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    const-string v0, "TTAD.WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    return-void
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TEQ:Lorg/json/JSONObject;

    return-object p0
.end method

.method private TKC(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v1, "adVisible"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "expressAdShow"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private TzV()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->aa:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->aa:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/fF;->Sj(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Jcg:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sef()V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV:I

    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private dNu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV:I

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$3;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method public static sP(Ljava/lang/String;)Z
    .locals 1

    .line 7
    const-string v0, "banner_call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slide_banner_ad"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad_landingpage"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TzV()V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dx:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 3

    .line 2
    const-string v0, "expressShow"

    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Dq()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public EjP()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sef:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public Fmk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->dNu:Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v1, "expressWebviewRecycle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP:I

    if-ne p1, v0, :cond_0

    return-void

    .line 29
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TKC(Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sU:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    .line 32
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP:Z

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/ib;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected TEQ()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP(Lcom/bytedance/sdk/component/adexpress/Sj;)Z

    :cond_0
    return-void
.end method

.method public TKC()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    return v0
.end method

.method public Zq()Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

    .line 2
    .line 3
    return-object v0
.end method

.method public aa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->TEQ:Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Ym:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public onThemeChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v1, "status"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 17
    .line 18
    const-string v1, "themeChange"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sP(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "zoom_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "expressAdViewWillZoom"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string v0, "TTAD.WebViewRender"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sef()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 19
    .line 20
    const v2, 0x106000d

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Ym:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Jcg:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 70
    .line 71
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Ym()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v2, v0

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 91
    .line 92
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Fmk:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 97
    .line 98
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method protected uA()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA()V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/utils/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj;

    .line 4
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj;)V

    return-void
.end method

.method public uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
