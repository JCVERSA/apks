.class public final Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;
    }
.end annotation


# static fields
.field public static final v:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;


# instance fields
.field private s:Ljava/util/Set;

.field private t:Ljava/util/Set;

.field private u:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->v:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->s:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->t:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->u:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final P0(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->t:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Q0(Lcom/hisavana/mediation/ad/TAdNativeView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->s:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public R(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    const-string v1, "biddingPlan"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "adPlans"

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    move-object v4, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/c;->d(Ljava/util/Map;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isMatchVulgarBrand()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x1

    .line 63
    if-ne v1, v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    if-eqz v4, :cond_4

    .line 70
    .line 71
    move-object/from16 v15, p0

    .line 72
    .line 73
    invoke-virtual {v15, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 99
    .line 100
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    const/16 v16, 0x678

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/16 v13, 0x67

    .line 113
    .line 114
    move-object v1, v14

    .line 115
    move-object/from16 v3, p2

    .line 116
    .line 117
    move-object/from16 v18, v14

    .line 118
    .line 119
    move/from16 v14, v16

    .line 120
    .line 121
    move-object/from16 v15, v17

    .line 122
    .line 123
    invoke-direct/range {v1 .. v15}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v1, v18

    .line 127
    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method

.method public final R0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final S0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public U()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->u(Loh/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->u:Ljava/util/List;

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->t:Ljava/util/Set;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/Iterable;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->t:Ljava/util/Set;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->s:Ljava/util/Set;

    .line 93
    .line 94
    check-cast v0, Ljava/lang/Iterable;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->s:Ljava/util/Set;

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    .line 122
    .line 123
    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    const/4 v0, 0x2

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
    const-string v0, "ad_n"

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->u:Ljava/util/List;

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->u:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->u:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-void
.end method

.method public o0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g(Loh/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string v0, "addHiSavanaLoad()"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
