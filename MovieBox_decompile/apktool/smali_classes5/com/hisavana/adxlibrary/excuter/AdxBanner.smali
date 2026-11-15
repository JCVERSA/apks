.class public Lcom/hisavana/adxlibrary/excuter/AdxBanner;
.super Lcom/hisavana/common/base/BaseBanner;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Lcom/cloud/hisavana/sdk/api/adx/TBannerView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "bannerSize:="

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "AdxBanner"

    .line 33
    .line 34
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->canShow()Z

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
    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyAd()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "destroy"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "AdxBanner"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    move-result-object v0

    return-object v0
.end method

.method public getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
    .locals 3

    .line 2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBanner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 6
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V

    .line 7
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Ld7/a$b;->a()Ld7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 8
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setListener(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 9
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setPlacementId(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseBanner;->isHideAdCloseView:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setHideAdCloseView(Z)V

    .line 11
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseBanner;->isCloseDirectly:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseDirectlyWithoutJumping(Z)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    return-object v0
.end method

.method public isAdxAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isReady()Z

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isDefaultAd()Z

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isMatchVulgarBrand()Z

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
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getFillAdType()I

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

.method public onBannerDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onBannerLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onBannerLoad "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "AdxBanner"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ld7/a;->k(I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "hisa-"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ld7/a;->l(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ld7/a;->j(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x2

    .line 101
    if-lt v1, v2, :cond_0

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {v0, v1}, Ld7/a;->i(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setContainVulgarContent(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 133
    .line 134
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setCurrActivityFullscreen(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAd()V

    .line 142
    .line 143
    .line 144
    :cond_1
    return-void
.end method

.method public showBanner()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmpl-double v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Ld7/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ld7/a;->h(D)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Ld7/a;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->show()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "AdxBanner"

    .line 51
    .line 52
    const-string v2, "showBanner show error"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
