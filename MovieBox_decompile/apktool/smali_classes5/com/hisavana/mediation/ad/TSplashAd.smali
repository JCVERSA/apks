.class public Lcom/hisavana/mediation/ad/TSplashAd;
.super Lfe/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe/b;"
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

    .line 1
    invoke-direct {p0, p1}, Lfe/b;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    .line 6
    .line 7
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    .line 13
    .line 14
    iput-object p2, p0, Lfe/b;->a:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static hasCache(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "placementId "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ",adNum = "

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v6, "TSplashAd"

    .line 45
    .line 46
    invoke-virtual {v2, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v6, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    if-lez v0, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lfe/b;->d()Lee/i;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    invoke-virtual {v0, v1}, Lee/i;->A(I)V

    .line 4
    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    invoke-virtual {v0, v1}, Lee/i;->C(I)V

    .line 5
    new-instance v1, Lee/r;

    iget-object v2, p0, Lfe/b;->h:Lee/s;

    invoke-direct {v1, p1, v0, v2}, Lee/r;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public clearCurrentAd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfe/b;->clearCurrentAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->destroy()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0}, Lfe/b;->destroy()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public getTopPrice(I)D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->getEcpmPrice()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :goto_0
    return-wide v0

    .line 17
    :cond_1
    invoke-super {p0, p1}, Lfe/b;->getTopPrice(I)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public loadAd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfe/b;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 15
    .line 16
    iget-object v1, p0, Lfe/b;->b:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lfe/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSplashMode(I)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, p0, Lfe/b;->q:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setContainVulgarContent(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lfe/b;->r:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p0, Lfe/b;->s:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p0, Lfe/b;->t:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 48
    .line 49
    invoke-virtual {v1}, Lee/s;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setDebug(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->loadAd()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0}, Lfe/b;->loadAd()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfe/b;->pause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfe/b;->resume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x3dcccccd    # 0.1f

    .line 9
    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    const v1, 0x3e4ccccd    # 0.2f

    .line 14
    .line 15
    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    .line 35
    .line 36
    :goto_1
    return-void
.end method

.method public setOnShowListener(Lcom/hisavana/common/interfacz/TAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lee/s;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lee/s;->g(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setOnlySourceAdx(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    .line 7
    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "place use SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_PORTRAIT or SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_LANDSCAPE"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    .line 17
    .line 18
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "current orientation is "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "TSplashAd"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setSplashMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/hisavana/common/constant/ComConstants$SplashModeIntDef;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    .line 2
    .line 3
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

    move-result-object p1

    const-string p2, "appId is empty"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "you should init first"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object p3, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-virtual {p3, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->showAd(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;)V

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lfe/b;->n()V

    .line 13
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAd sceneToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lfe/b;->m:Z

    if-eqz v0, :cond_3

    .line 15
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lfe/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 16
    invoke-virtual {p0, p1}, Lfe/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 19
    :cond_4
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v0}, Lfe/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0, v0}, Lfe/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 21
    invoke-virtual {p0, v0}, Lfe/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 22
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showAd errorCode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_5
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 24
    iget-boolean v2, p0, Lfe/b;->q:Z

    invoke-virtual {v0, v2}, Lee/c;->e(Z)Ljava/lang/Object;

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

    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    invoke-virtual {v2, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    .line 30
    :cond_6
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    iget v2, p0, Lfe/b;->mFillSource:I

    const-string v3, "filling_source"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v2, "is_contain_vulgar"

    iget-boolean v3, p0, Lfe/b;->q:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseSplash;->setLogoLayoutHeightRatio(Ljava/lang/Float;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/hisavana/common/base/BaseSplash;->addLogoLayout(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p2}, Lfe/b;->setIsShowing(Z)V

    .line 35
    invoke-virtual {p0, p3}, Lfe/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2}, Lcom/hisavana/common/base/BaseSplash;->show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "no ad or ad is expired "

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lfe/b;->t()V

    goto :goto_0

    .line 38
    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "show error,splash handler is null"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lfe/b;->t()V

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
