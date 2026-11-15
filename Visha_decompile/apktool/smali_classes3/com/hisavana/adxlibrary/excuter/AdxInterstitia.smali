.class public Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "SourceFile"


# instance fields
.field public a:Lrca;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)Lrca;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 4

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0}, Lr17;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canShow failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdxInterstitia"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->canShow()Z

    move-result p0

    return p0
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr17;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdxInterstitia"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    new-instance v1, Lrca;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lrca;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr6;->b:Ljava/lang/String;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-static {}, Lw6;->a()Lw6$b;

    move-result-object v2

    invoke-virtual {v2}, Lw6$b;->a()Lw6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr17;->q(Lw6;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {v1, v0}, Lr17;->o(Ln6;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr17;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAdxAd()Z
    .locals 2

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->d()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEwAd()Z
    .locals 2

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->d()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isExpired()Z
    .locals 6

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    const/16 v2, 0x45b

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lr17;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExpired failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdxInterstitia"

    invoke-virtual {v3, v4, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1
.end method

.method public isInternalAd()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMatchVulgarBrand()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOfflineAd()Z
    .locals 1

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr17;->f()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterstitialShow(Landroid/app/Activity;)V
    .locals 4

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lr17;->g()Lw6;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {p1}, Lr17;->g()Lw6;

    move-result-object p1

    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    invoke-virtual {p1, v0, v1}, Lw6;->h(D)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {v0, p1}, Lr17;->q(Lw6;)V

    :cond_0
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {p0}, Lrca;->t()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "AdxInterstitia"

    const-string v0, "onInterstitialShow ad or listener is null"

    invoke-virtual {p0, p1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr17;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {v0}, Lr17;->g()Lw6;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {v0}, Lr17;->g()Lw6;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lw6;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hisa-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw6;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw6;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lw6;->i(Z)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {v1, v0}, Lr17;->q(Lw6;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lr17;->l(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lr17;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lr17;->m(Z)V

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lrca;

    invoke-virtual {p0}, Lrca;->s()V

    :cond_1
    return-void
.end method
