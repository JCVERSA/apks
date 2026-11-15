.class public final Lcom/transsion/ad/bidding/banner/a;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;
.source "source.java"


# instance fields
.field private s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

.field private t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

.field private u:Lcom/hisavana/common/bean/AdditionalInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->showAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public R(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    const-string v2, "biddingPlan"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "adPlans"

    .line 13
    .line 14
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/transsion/ad/bidding/banner/a;->u:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, v0, Lcom/transsion/ad/bidding/banner/a;->u:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    invoke-virtual {v4, v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v7, v0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    new-instance v15, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 51
    .line 52
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    const/16 v16, 0x66c

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v13, 0x0

    .line 64
    const/16 v14, 0x67

    .line 65
    .line 66
    move-object v2, v15

    .line 67
    move-object/from16 v4, p2

    .line 68
    .line 69
    move-object/from16 v18, v15

    .line 70
    .line 71
    move/from16 v15, v16

    .line 72
    .line 73
    move-object/from16 v16, v17

    .line 74
    .line 75
    invoke-direct/range {v2 .. v16}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v2, v18

    .line 79
    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method public T()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->b()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->u:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 24
    .line 25
    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public e0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_b"

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getHiSavanaBannerProvider()Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->c0()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    new-instance v2, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v1, v0, v3, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setEcpmObject(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setSceneId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Loh/a;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    :cond_2
    if-nez v0, :cond_4

    .line 50
    .line 51
    :cond_3
    const/16 v6, 0xc

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v2, 0x6

    .line 55
    const-string v3, "getContext() is null"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    move-object v1, p0

    .line 60
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    if-eqz p1, :cond_7

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->t:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setBannerView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->d()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_6
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setBannerView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->u:Lcom/hisavana/common/bean/AdditionalInfo;

    .line 10
    .line 11
    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 2
    .line 3
    if-nez p1, :cond_2

    .line 4
    .line 5
    new-instance p1, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->k(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->c0()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->j(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->l(Loh/a;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->s:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method
