.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/Ym;
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/sP/Ym;",
        "Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC<",
        "Lcom/bytedance/sdk/component/uA/vS;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private HiB:Ljava/lang/String;

.field private Jcg:I

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/uA/vS;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    .line 24
    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj(Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method private Dq()V
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(FFZLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private Jcg()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 8
    .line 9
    const v1, 0x106000d

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 32
    .line 33
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v1, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 66
    .line 67
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->sef()V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1bca

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Z)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDomStorageEnabled(Z)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDatabaseEnabled(Z)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setAllowFileAccess(Z)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setSupportZoom(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setBuiltInZoomControls(Z)V

    .line 22
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUseWideViewPort(Z)V

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public synthetic EjP()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->vS()Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()V
    .locals 5

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Dq()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/util/List;)V

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    .line 2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;

    return-void
.end method

.method public Sj(Z)V
    .locals 2

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_0
    const-string v1, "visibleState"

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "visibleStateChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public TKC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :cond_2
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->a_(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public vS()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    return-object v0
.end method
