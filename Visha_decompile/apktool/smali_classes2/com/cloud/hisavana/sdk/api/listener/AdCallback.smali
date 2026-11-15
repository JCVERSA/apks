.class public abstract Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ln6;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->i(Ln6;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    return-void
.end method

.method public static synthetic b(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->j(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public static synthetic c(Ln6;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->h(Ln6;)V

    return-void
.end method

.method public static synthetic h(Ln6;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln6;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public static synthetic i(Ln6;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ln6;->onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ln6;->onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln6;->onRewarded()V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Ljf7;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljf7;->onClick()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Ljf7;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljf7;->a()V

    :cond_0
    return-void
.end method

.method public D(Lcom/cloud/hisavana/sdk/G;)V
    .locals 0

    return-void
.end method

.method public abstract d()Ln6;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Ljf7;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method

.method public l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdActivate --> packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ssp"

    invoke-virtual {v1, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setEcpm(Ljava/lang/Double;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setImageUrl(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v1}, Ln6;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object v0, Ldw5;->a:Ldw5;

    invoke-virtual {v0, p1}, Ldw5;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln6;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public n(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    sget-object p2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lw5;

    invoke-direct {v0, p0, p1}, Lw5;-><init>(Ln6;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    invoke-virtual {p2, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    sget-object p2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lx5;

    invoke-direct {v0, p0, p1}, Lx5;-><init>(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {p2, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lv5;

    invoke-direct {v0, p0}, Lv5;-><init>(Ln6;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v4

    const-string p1, "offline_ad_status"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "default_ad_status"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "cache_offline_ad_count"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo p1, "time_consuming"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ln6;->onAdLoaded()V

    :cond_1
    return-void
.end method

.method public r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 v1, 0x3

    move v11, v1

    goto :goto_0

    :cond_0
    move v11, v0

    :goto_0
    :try_start_0
    const-string v1, "s_recommend_req"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string/jumbo v3, "time_consuming"

    if-ne v1, v0, :cond_2

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_1

    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getRecommendInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    :try_start_3
    const-string v0, "s_rec_temp_data"

    invoke-virtual {p3, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sget-object v4, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v5

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->G(Lied;Ljava/util/List;JZ)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v5

    const-string p1, "offline_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "default_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "cache_offline_ad_count"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Ln6;->onAdLoaded(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln6;->onAdShow()V

    :cond_0
    return-void
.end method

.method public t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-virtual {v1, v2, v3, p0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln6;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v4

    const-string p2, "offline_ad_status"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "default_ad_status"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "cache_offline_ad_count"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo p2, "time_consuming"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ln6;->onBiddingFailed(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void
.end method

.method public w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v4

    const-string p2, "offline_ad_status"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "default_ad_status"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "cache_offline_ad_count"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo p2, "time_consuming"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ln6;->onBiddingSuccess(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V

    :cond_1
    return-void
.end method

.method public x(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object v4

    const-string p1, "offline_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "default_ad_status"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "cache_offline_ad_count"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo p1, "time_consuming"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILied;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ln6;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void
.end method

.method public y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    sget-object v0, Ldw5;->a:Ldw5;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldw5;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln6;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Ln6;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v2, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;-><init>(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->p(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
