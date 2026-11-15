.class public Lcom/hisavana/adxlibrary/check/ExistsCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 0

    return-void
.end method

.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    invoke-static {p1, p2, p0}, Ln9;->a(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    move-result-object p0

    return-object p0
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {p1, p2, p0}, Ln9;->b(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/common/base/BaseInterstitial;)Lcom/hisavana/common/base/BaseInterstitial;

    move-result-object p0

    return-object p0
.end method

.method public getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitialRewardedVideo;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    invoke-static {p1, p2, p3, p0}, Ln9;->c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;ILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/base/BaseNative;

    move-result-object p0

    return-object p0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;

    invoke-direct {p0}, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;-><init>()V

    return-object p0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    new-instance p0, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxRewarded;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 4

    new-instance p0, Lr6$b;

    invoke-direct {p0}, Lr6$b;-><init>()V

    iget-boolean v0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->pkgEvn:Z

    invoke-virtual {p0, v0}, Lr6$b;->i(Z)Lr6$b;

    move-result-object v0

    iget-boolean v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->testDevice:Z

    invoke-virtual {v0, v1}, Lr6$b;->p(Z)Lr6$b;

    move-result-object v0

    iget-boolean v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableRewardedToast:Z

    invoke-virtual {v0, v1}, Lr6$b;->n(Z)Lr6$b;

    move-result-object v0

    iget-boolean v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableWebRecommendFeature:Z

    invoke-virtual {v0, v1}, Lr6$b;->l(Z)Lr6$b;

    move-result-object v0

    iget-boolean v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableVideoAd:Z

    invoke-virtual {v0, v1}, Lr6$b;->k(Z)Lr6$b;

    move-result-object v0

    iget-object v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr6$b;->h(Ljava/lang/String;)Lr6$b;

    move-result-object v0

    iget-boolean v1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->shouldOptimizeImageLoading:Z

    invoke-virtual {v0, v1}, Lr6$b;->o(Z)Lr6$b;

    iget-wide v0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->defaultVersion:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lr6$b;->m(J)Lr6$b;

    :cond_0
    iget p2, p2, Lcom/hisavana/common/bean/AdSourceConfig;->defaultMaterialMaxSize:I

    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Lr6$b;->j(I)Lr6$b;

    :cond_1
    invoke-virtual {p0}, Lr6$b;->c()Lr6$a;

    move-result-object p0

    invoke-static {p1, p0}, Lr6;->o(Landroid/content/Context;Lr6$a;)V

    sget-boolean p0, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    invoke-static {p0}, Lr6;->u(Z)V

    return-void
.end method
