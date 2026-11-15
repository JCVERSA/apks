.class public Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "source.java"


# instance fields
.field public a:Lb7/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
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

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)Lb7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->canShow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lb7/a;->c()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "destroy"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "AdxInterstitia"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public initInterstitial()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lb7/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Lb7/b;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 34
    .line 35
    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ld7/a$b;->a()Ld7/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lb7/a;->r(Ld7/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lb7/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lb7/a;->q(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public isAdxAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public isEwAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lb7/a;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0

    .line 22
    :cond_2
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public isInternalAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isOfflineAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public onInterstitialShow(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lb7/a;->g()Ld7/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmpl-double p1, v0, v2

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Lb7/a;->g()Ld7/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Ld7/a;->h(D)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lb7/a;->r(Ld7/a;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 36
    .line 37
    invoke-virtual {p1}, Lb7/b;->t()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "AdxInterstitia"

    .line 51
    .line 52
    const-string v1, "onInterstitialShow ad or listener is null"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ld7/a;->k(I)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "hisa-"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ld7/a;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ld7/a;->j(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x2

    .line 77
    if-lt v1, v2, :cond_0

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Ld7/a;->i(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lb7/a;->r(Ld7/a;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 91
    .line 92
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lb7/a;->m(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2, v3}, Lb7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lb7/a;->n(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lb7/b;

    .line 116
    .line 117
    invoke-virtual {v0}, Lb7/b;->s()V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method
