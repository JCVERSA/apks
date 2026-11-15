.class public final Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->P0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v4, v2

    .line 30
    check-cast v4, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v4, v3

    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v5, v3

    .line 52
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v2, v3

    .line 60
    :goto_2
    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    sget-object v4, Lai/c;->a:Lai/c;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->R0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v7, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move-object v7, v3

    .line 91
    :goto_3
    const/4 v1, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_5
    move-object v9, v3

    .line 109
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->X()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/b;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->Q0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    const/16 v17, 0x80

    .line 136
    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    invoke-static/range {v4 .. v18}, Lai/c;->b(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->P0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v4, v2

    .line 30
    check-cast v4, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v4, v3

    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v5, v3

    .line 52
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v2, v3

    .line 60
    :goto_2
    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    sget-object v4, Lai/c;->a:Lai/c;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->R0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v7, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move-object v7, v3

    .line 91
    :goto_3
    const/4 v1, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_5
    move-object v9, v3

    .line 109
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->X()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/b;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->Q0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    const/16 v17, 0x80

    .line 136
    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    invoke-static/range {v4 .. v18}, Lai/c;->g(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return-void
.end method
