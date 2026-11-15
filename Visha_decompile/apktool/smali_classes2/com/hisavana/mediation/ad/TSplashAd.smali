.class public Lcom/hisavana/mediation/ad/TSplashAd;
.super Lpca;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpca;"
    }
.end annotation


# instance fields
.field public A:I
    .annotation build Lcom/hisavana/common/constant/ComConstants$SplashModeIntDef;
    .end annotation
.end field

.field public B:I

.field public C:Ljava/lang/Float;

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

.field public H:Lcom/hisavana/common/interfacz/OnSkipListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lpca;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    iput-object p2, p0, Lpca;->a:Ljava/lang/String;

    return-void
.end method

.method public static hasCache(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",adNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TSplashAd"

    invoke-virtual {v2, v6, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/a;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lpca;->d()Lvid;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    invoke-virtual {v0, v1}, Lvid;->A(I)V

    .line 4
    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    invoke-virtual {v0, v1}, Lvid;->C(I)V

    .line 5
    new-instance v1, Lxtd;

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-direct {v1, p1, v0, p0}, Lxtd;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clearCurrentAd()V
    .locals 0

    invoke-super {p0}, Lpca;->clearCurrentAd()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->destroy()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lpca;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getTopPrice(I)D
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->getEcpmPrice()D

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    invoke-super {p0, p1}, Lpca;->getTopPrice(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public loadAd()V
    .locals 4

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpca;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lul4;->g(Landroid/content/Context;)V

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    iget-object v1, p0, Lpca;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    iget-object v3, p0, Lpca;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSplashMode(I)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-boolean v1, p0, Lpca;->q:Z

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setContainVulgarContent(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lpca;->r:Ljava/lang/String;

    iget-object v2, p0, Lpca;->s:Ljava/lang/String;

    iget-object v3, p0, Lpca;->t:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lpca;->h:Lrud;

    invoke-virtual {v1}, Lrud;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setDebug(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-virtual {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->loadAd()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lpca;->loadAd()V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lpca;->pause()V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-super {p0}, Lpca;->resume()V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpca;->a:Ljava/lang/String;

    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    :goto_1
    return-void
.end method

.method public setOnShowListener(Lcom/hisavana/common/interfacz/TAdListener;)V
    .locals 0

    iget-object p0, p0, Lpca;->h:Lrud;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lrud;->g(Lcom/hisavana/common/interfacz/TAdListener;)V

    :cond_0
    return-void
.end method

.method public setOnSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)V
    .locals 1

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lrud;->a(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    :cond_0
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    iget-object p0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    :cond_1
    return-void
.end method

.method public setOnlySourceAdx(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "place use SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_PORTRAIT or SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_LANDSCAPE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current orientation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSplashAd"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSplashMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/hisavana/common/constant/ComConstants$SplashModeIntDef;
        .end annotation
    .end param

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;)V
    .locals 2
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TSplashAd"

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "appId is empty"

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string/jumbo p1, "you should init first"

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object p3, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz p3, :cond_9

    .line 10
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    invoke-virtual {p3, v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setLogoLayoutHeightRatio(Ljava/lang/Float;)V

    .line 11
    iget-object p0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->showAd(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;)V

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lpca;->n()V

    .line 13
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showAd sceneToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lpca;->m:Z

    if-eqz v0, :cond_3

    .line 15
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lpca;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 16
    invoke-virtual {p0, p1}, Lpca;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v0}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 19
    :cond_4
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v0}, Lpca;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0, v0}, Lpca;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 21
    invoke-virtual {p0, v0}, Lpca;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 22
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showAd errorCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_5
    invoke-virtual {p0}, Lpca;->g()Lcom/hisavana/mediation/a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 24
    iget-boolean v2, p0, Lpca;->q:Z

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/a;->d(Z)Ljava/lang/Object;

    move-result-object v0

    .line 25
    instance-of v2, v0, Lcom/hisavana/common/base/BaseSplash;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseSplash;->canShow()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    invoke-virtual {v2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    move-result-object v3

    if-nez v3, :cond_6

    .line 28
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    const-string v4, "TSplash setAdListener"

    invoke-virtual {v3, v1, v4}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lpca;->h:Lrud;

    invoke-virtual {v2, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    .line 30
    :cond_6
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    iget v2, p0, Lpca;->mFillSource:I

    const-string v3, "filling_source"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v2, "is_contain_vulgar"

    iget-boolean v3, p0, Lpca;->q:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseSplash;->setLogoLayoutHeightRatio(Ljava/lang/Float;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/hisavana/common/base/BaseSplash;->addLogoLayout(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p2}, Lpca;->setIsShowing(Z)V

    .line 35
    invoke-virtual {p0, p3}, Lpca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p3, p0}, Lcom/hisavana/common/base/BaseSplash;->show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "no ad or ad is expired "

    invoke-virtual {p1, v1, p2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lpca;->t()V

    goto :goto_0

    .line 38
    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string/jumbo p2, "show error,splash handler is null"

    invoke-virtual {p1, v1, p2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lpca;->t()V

    :cond_9
    :goto_0
    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
