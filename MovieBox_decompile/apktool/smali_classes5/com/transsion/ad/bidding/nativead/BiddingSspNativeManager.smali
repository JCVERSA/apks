.class public final Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;
    }
.end annotation


# static fields
.field public static final x:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;


# instance fields
.field private s:Ljava/util/List;

.field private t:Ljava/util/Set;

.field private u:Ljava/util/Set;

.field private v:Z

.field private final w:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

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
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->s:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->t:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->u:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic P0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public R(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

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
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-boolean v4, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Z

    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i(IZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    move-object/from16 v17, v2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    if-eqz v17, :cond_4

    .line 51
    .line 52
    move-object/from16 v2, v17

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v18

    .line 60
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v6, v2

    .line 71
    check-cast v6, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 72
    .line 73
    invoke-virtual {v0, v15}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v15, v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    sget-object v2, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Lcom/transsion/ad/strategy/c;->d(Ljava/util/Map;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMatchVulgarBrand()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 117
    .line 118
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    const/16 v16, 0x674

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v12, 0x0

    .line 129
    const/4 v13, 0x0

    .line 130
    const/16 v20, 0x67

    .line 131
    .line 132
    move-object v2, v14

    .line 133
    move-object/from16 v4, p2

    .line 134
    .line 135
    move-object/from16 v21, v14

    .line 136
    .line 137
    move/from16 v14, v20

    .line 138
    .line 139
    move/from16 v15, v16

    .line 140
    .line 141
    move-object/from16 v16, v19

    .line 142
    .line 143
    invoke-direct/range {v2 .. v16}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    move-object/from16 v2, v21

    .line 147
    .line 148
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_3
    move-object/from16 v15, p2

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->s:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->s:Ljava/util/List;

    .line 160
    .line 161
    check-cast v1, Ljava/util/Collection;

    .line 162
    .line 163
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    .line 165
    .line 166
    if-eqz v17, :cond_5

    .line 167
    .line 168
    check-cast v17, Ljava/util/Collection;

    .line 169
    .line 170
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v2, 0x1

    .line 175
    xor-int/2addr v1, v2

    .line 176
    if-ne v1, v2, :cond_5

    .line 177
    .line 178
    sget-object v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_5

    .line 189
    .line 190
    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 193
    .line 194
    .line 195
    :cond_5
    return-void
.end method

.method public final S0(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->u:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final T0(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->t:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->r(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->t:Ljava/util/Set;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->destroy()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->t:Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->u:Ljava/util/Set;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->u:Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->s:Ljava/util/List;

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    return-void
.end method

.method public final U0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public X()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public Y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->getLogTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    new-array v4, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 17
    .line 18
    move-object v5, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
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

.method public o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
