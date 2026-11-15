.class public Loid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loid$f;,
        Loid$h;,
        Loid$g;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

.field public c:J

.field public final d:Lcom/cloud/hisavana/sdk/q1;

.field public e:Ljava/lang/String;

.field public f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:Z

.field public n:Lxnd;

.field public o:I

.field public final p:Loid$f;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Loid;->e:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Loid;->h:F

    iput v0, p0, Loid;->i:F

    iput v0, p0, Loid;->j:F

    iput v0, p0, Loid;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Loid;->l:Z

    iput-boolean v0, p0, Loid;->m:Z

    iput-object p1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    new-instance p1, Loid$f;

    invoke-direct {p1, p0}, Loid$f;-><init>(Loid;)V

    iput-object p1, p0, Loid;->p:Loid$f;

    return-void
.end method

.method public static synthetic A(Loid;F)F
    .locals 0

    iput p1, p0, Loid;->j:F

    return p1
.end method

.method public static synthetic B(Loid;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;
    .locals 0

    iget-object p0, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    return-object p0
.end method

.method public static synthetic E(Loid;F)F
    .locals 0

    iput p1, p0, Loid;->k:F

    return p1
.end method

.method public static synthetic F(Loid;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    iget-object p0, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0
.end method

.method public static synthetic a(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Loid;->z(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Loid;->p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Loid;F)F
    .locals 0

    iput p1, p0, Loid;->h:F

    return p1
.end method

.method public static synthetic l(Loid;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Loid;->w(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Loid;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Loid;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic n(Loid;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Loid;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Loid;)Z
    .locals 0

    iget-boolean p0, p0, Loid;->l:Z

    return p0
.end method

.method public static synthetic s(Loid;Z)Z
    .locals 0

    iput-boolean p1, p0, Loid;->l:Z

    return p1
.end method

.method public static synthetic t(Loid;F)F
    .locals 0

    iput p1, p0, Loid;->i:F

    return p1
.end method

.method public static synthetic u(Loid;)Lcom/cloud/hisavana/sdk/q1;
    .locals 0

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    return-object p0
.end method


# virtual methods
.method public final C(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Loid;->p:Loid$f;

    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q1;->K()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    new-instance p1, Loid$h;

    invoke-direct {p1, p0, v2}, Loid$h;-><init>(Loid;Loid$a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Loid$g;

    invoke-direct {p1, p0, v2}, Loid$g;-><init>(Loid;Loid$a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Loid$h;

    invoke-direct {v0, p0, v2}, Loid$h;-><init>(Loid;Loid$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Loid$g;

    invoke-direct {v0, p0, v2}, Loid$g;-><init>(Loid;Loid$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "attachInteractiveAd"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Loid;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Loid;->L(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {p0, p1, v0}, Loid;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    return-void
.end method

.method public final G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "fillVideoAd"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->resetVolumePosition(Z)V

    iget-object v0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    iget-object v1, p0, Loid;->n:Lxnd;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    iget-object v0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_MAINURL_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Loid;->x(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    :cond_1
    return-void

    :cond_2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-virtual {v2, v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->o0(Z)V

    :cond_3
    return-void
.end method

.method public H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->play()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p1, :cond_2

    new-instance v0, Loid$b;

    invoke-direct {v0, p0}, Loid$b;-><init>(Loid;)V

    const-string p0, "javascript:continuePlay()"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final I(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lujd;
    .locals 1

    new-instance v0, Loid$e;

    invoke-direct {v0, p0, p1}, Loid$e;-><init>(Loid;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-object v0
.end method

.method public final J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Loid;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Loid;->D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Loid;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->a:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Loid;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Loid;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->a:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, p1}, Loid;->C(Landroid/view/View;)V

    return-void
.end method

.method public K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "SplashImage"

    const-string v0, "getView adsDto is null"

    invoke-virtual {p0, p1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/view/View;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Loid;->a:Landroid/view/View;

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    return-object p0
.end method

.method public L(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 5

    const-string v0, "SplashImage"

    if-nez p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "initializeInteractiveAdView adsDTO is null"

    invoke-virtual {p0, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v1, :cond_1

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q1;->H()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v3, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q1;->H()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v0, Loid$a;

    invoke-direct {v0, p0}, Loid$a;-><init>(Loid;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    iget-object p1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v0, Loid$h;

    invoke-direct {v0, p0, v1}, Loid$h;-><init>(Loid;Loid$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create webview error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    :goto_0
    return-void
.end method

.method public M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Loid;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Loid;->h(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Loid;->a:Landroid/view/View;

    iget-object v1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    iget-object v1, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    iput-object v0, p0, Loid;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    iget-object v1, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    iget-object v1, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->release()V

    iput-object v0, p0, Loid;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    :cond_2
    iget-object v1, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->destroyWebView()V

    iput-object v0, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo v0, "ssp"

    const-string v1, "destroy"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->notifyLifecycle(I)V

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Loid;->i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTemplateHtmlFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Loid;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Loid;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public final g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lmid;

    invoke-direct {v1, p0, p3, p2, p1}, Lmid;-><init>(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 0

    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lpp4;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->h0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    iget-object v0, p0, Loid;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loid;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Loid;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Loid$d;

    invoke-direct {v1, p0}, Loid$d;-><init>(Loid;)V

    iget-object p0, p0, Loid;->a:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->o0(Z)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p2}, Loid;->x(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    :cond_2
    const/4 p0, 0x3

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INDEXLOCATION_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Loid;->x(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    :cond_5
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    const-string v0, "SplashImage"

    if-nez p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "trackInteractionEvent splashAd is null"

    invoke-virtual {p0, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "trackInteractionEvent adsDto is null"

    invoke-virtual {p0, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTemplateHtmlFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Loid;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lhm4;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setLayoutDirection(I)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-direct {v0, p3}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-virtual {p0, p2}, Loid;->I(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lujd;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->setup(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V

    iget-object p3, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-virtual {p3, p1}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->loadTemplate(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object p1

    iget-object p3, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object p3, p3, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v0, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    iget-object v2, p0, Loid;->p:Loid$f;

    invoke-virtual {p1, p3, v0, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    iget-object p1, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    new-instance p3, Loid$h;

    invoke-direct {p3, p0, v1}, Loid$h;-><init>(Loid;Loid$a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object p3, p0, Loid;->g:Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    invoke-virtual {p1, p3}, Lcom/cloud/hisavana/sdk/q1;->m0(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachTemplateAd setup error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashImage"

    invoke-virtual {p3, v0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTemplateHtmlFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Loid;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :goto_1
    return-void
.end method

.method public q(Lxnd;)V
    .locals 0

    iput-object p1, p0, Loid;->n:Lxnd;

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Loid;->o:I

    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Loid;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz v2, :cond_1

    iput-wide v0, p0, Loid;->c:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget v3, p0, Loid;->h:F

    iget v4, p0, Loid;->i:F

    iget v5, p0, Loid;->j:F

    iget v6, p0, Loid;->k:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p1

    invoke-virtual {p1}, Lied;->x()Z

    move-result p1

    invoke-static {v0, v1, v9, p1}, Lcom/cloud/hisavana/sdk/U0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    iget-object p1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/q1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->r0(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ssp"

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/q1;->i0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "attachImgAd"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Loid;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Loid;->d:Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loid;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Loid;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Loid$c;

    invoke-direct {v1, p0}, Loid$c;-><init>(Loid;)V

    iget-object p0, p0, Loid;->a:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-static {v0, p1, v2, v1, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final synthetic z(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lyu3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lnid;

    invoke-direct {v1, p0, p1, p2, p3}, Lnid;-><init>(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method
