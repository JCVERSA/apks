.class public final Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;
    }
.end annotation


# static fields
.field public static final t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;


# instance fields
.field private final s:Lph/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

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
    new-instance v0, Lph/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lph/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->s:Lph/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
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
    sget-object v1, Lcom/transsion/ad/bidding/interstitial/i;->j:Lcom/transsion/ad/bidding/interstitial/i$a;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/interstitial/i$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/i;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    if-eqz v8, :cond_0

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v8, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {v8}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-eqz v1, :cond_3

    .line 43
    .line 44
    move-object/from16 v15, p0

    .line 45
    .line 46
    invoke-virtual {v15, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 68
    .line 69
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const/16 v16, 0x638

    .line 72
    .line 73
    const/16 v17, 0x0

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v12, 0x0

    .line 81
    const/16 v13, 0x67

    .line 82
    .line 83
    move-object v1, v14

    .line 84
    move-object/from16 v3, p2

    .line 85
    .line 86
    move-object/from16 v18, v14

    .line 87
    .line 88
    move/from16 v14, v16

    .line 89
    .line 90
    move-object/from16 v15, v17

    .line 91
    .line 92
    invoke-direct/range {v1 .. v15}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v1, v18

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v14, 0x4

    .line 102
    const/4 v15, 0x0

    .line 103
    const/4 v10, 0x6

    .line 104
    const-string v11, "addHiSavanaProvider() --> \u63d2\u5c4f\u5e7f\u544a\u540c\u6b65\u83b7\u53d6\u5931\u8d25 --> additionalInfo == null"

    .line 105
    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v13, 0x0

    .line 108
    move-object/from16 v9, p0

    .line 109
    .line 110
    invoke-static/range {v9 .. v15}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public e0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->s:Lph/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_int"

    .line 2
    .line 3
    return-object v0
.end method

.method public o0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/interstitial/i;->j:Lcom/transsion/ad/bidding/interstitial/i$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/interstitial/i$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->i()Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transsion/ad/bidding/interstitial/i;->j:Lcom/transsion/ad/bidding/interstitial/i$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/interstitial/i$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/i;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->n(Loh/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->k()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
