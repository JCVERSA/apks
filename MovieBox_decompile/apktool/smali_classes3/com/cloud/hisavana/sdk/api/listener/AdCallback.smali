.class public abstract Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->i(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->j(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->h(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic i(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic j(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onRewarded()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Lcom/cloud/hisavana/sdk/api/listener/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/api/listener/g;->onClick()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->f()Lcom/cloud/hisavana/sdk/api/listener/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/api/listener/g;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public abstract d()Lcom/cloud/hisavana/sdk/api/listener/d;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "onAdActivate --> packageName = "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "ssp"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setPackageName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setEcpm(Ljava/lang/Double;)V

    .line 61
    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->setImageUrl(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public n(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/b;

    .line 11
    .line 12
    invoke-direct {v1, p2, p1}, Lcom/cloud/hisavana/sdk/api/listener/b;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/c;

    .line 11
    .line 12
    invoke-direct {v1, p2, p1}, Lcom/cloud/hisavana/sdk/api/listener/c;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/api/listener/a;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/a;-><init>(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public q(Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    :goto_0
    move v11, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :goto_1
    :try_start_0
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const-string p1, "offline_ad_status"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string p1, "default_ad_status"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string p1, "cache_offline_ad_count"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const-string p1, "time_consuming"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual/range {v2 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :catchall_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public r(Lcom/cloud/hisavana/sdk/F;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    move v14, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v14, v3

    .line 16
    :goto_0
    :try_start_0
    const-string v4, "s_recommend_req"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    const-string v6, "time_consuming"

    .line 24
    .line 25
    if-ne v4, v3, :cond_2

    .line 26
    .line 27
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :try_start_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getRecommendInfos()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_1
    :try_start_3
    const-string v3, "s_rec_temp_data"

    .line 54
    .line 55
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    sget-object v7, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    invoke-virtual/range {v7 .. v12}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->G(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;JZ)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object v5, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v3, "offline_ad_status"

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    const-string v3, "default_ad_status"

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const-string v3, "cache_offline_ad_count"

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v12

    .line 105
    const/4 v6, 0x0

    .line 106
    invoke-virtual/range {v5 .. v14}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    :catchall_1
    :goto_1
    if-eqz v2, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/F;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->g()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->e()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/F;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    move-object v5, p3

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    :goto_0
    move v12, v2

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string v2, "offline_ad_status"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v2, "default_ad_status"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string v2, "cache_offline_ad_count"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    const-string v2, "time_consuming"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v10

    .line 52
    const/4 v13, 0x1

    .line 53
    invoke-virtual/range {v3 .. v13}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    move-object v0, p1

    .line 59
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onBiddingFailed(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    :goto_0
    move v12, v2

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v2, "offline_ad_status"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const-string v2, "default_ad_status"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const-string v2, "cache_offline_ad_count"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    const-string v2, "time_consuming"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v10

    .line 48
    const/4 v13, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual/range {v3 .. v13}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    move-object v0, p1

    .line 56
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onBiddingSuccess(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public x(Lcom/cloud/hisavana/sdk/F;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    :goto_0
    move v11, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :goto_1
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->s()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string p1, "offline_ad_status"

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string p1, "default_ad_status"

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-string p1, "cache_offline_ad_count"

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string p1, "time_consuming"

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    invoke-virtual/range {v2 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->A(ILcom/cloud/hisavana/sdk/p3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->d()Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 8
    .line 9
    new-instance v2, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;

    .line 10
    .line 11
    invoke-direct {v2, p0, v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;-><init>(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->h(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
