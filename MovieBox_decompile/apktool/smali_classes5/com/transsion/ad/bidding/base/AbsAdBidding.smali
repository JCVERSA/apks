.class public abstract Lcom/transsion/ad/bidding/base/AbsAdBidding;
.super Loh/a;
.source "source.java"

# interfaces
.implements Lxh/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Loh/a;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

.field private k:I

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/lang/String;

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/List;

.field private q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private final r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic A(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->D0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A0(ILjava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/16 v1, 0x44e

    .line 12
    .line 13
    if-ne p1, v0, :cond_6

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i0(Ljava/util/List;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "\u7ade\u4ef7\u5931\u8d25 --> maxEcpmObject == null --> biddingPlanList?.size = "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    check-cast p2, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move-object v1, v2

    .line 106
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v4, "onBiddingLoad() --> \u7ade\u4ef7\u5b8c\u6210 --> ecpmList = "

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, " --> ecpm = "

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p2, " --> plans?.id = "

    .line 138
    .line 139
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p2, " --> plans?.name = "

    .line 146
    .line 147
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const/4 v9, 0x4

    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v5, 0x3

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v8, 0x0

    .line 162
    move-object v4, p0

    .line 163
    invoke-static/range {v4 .. v10}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0(ILjava/util/List;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_7

    .line 179
    .line 180
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 181
    .line 182
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v2, "\u7ade\u4ef7\u5931\u8d25 --> maxEcpmBiddingPlanList == null --> biddingPlanList?.size = "

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p1, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "onBiddingLoad() --> \u7ade\u4ef7\u5b8c\u6210 --> fetchCount = "

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p1, " --> maxEcpmObject.size = "

    .line 228
    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    const/4 v7, 0x4

    .line 240
    const/4 v8, 0x0

    .line 241
    const/4 v3, 0x3

    .line 242
    const/4 v5, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    move-object v2, p0

    .line 245
    invoke-static/range {v2 .. v8}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k(Ljava/util/List;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    return-void
.end method

.method public static synthetic B(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->z0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final B0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->w0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final C0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic D(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->F0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic E(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->B0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic F(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->E0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic G(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->x0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->S(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/ad/bidding/base/AbsAdBidding;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->b0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic M(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: startAdActivity"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final synthetic P(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Q(Lcom/transsion/ad/bidding/base/AbsAdBidding;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    .line 2
    .line 3
    return-void
.end method

.method private final S(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->I$0:I

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->I$0:I

    .line 56
    .line 57
    iput v3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    .line 58
    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-ne p3, v1, :cond_3

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 67
    .line 68
    invoke-direct {p0, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->A0(ILjava/util/List;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

.method private final V(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v0, "generalBidding() --> \u5df2\u7ecf\u5904\u7406\u8fc7\uff0c\u5ffd\u7565\u672c\u6b21\u8c03\u7528 --> "

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/16 v6, 0xc

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v2, 0x3

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v1, p0

    .line 87
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "generalBidding() --> \u573a\u666f\u5df2\u7ecf\u88ab\u56de\u6536\uff0c\u4e0d\u6267\u884c\u7ade\u4ef7\u903b\u8f91 --> "

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/16 v6, 0xc

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v2, 0x6

    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    move-object v1, p0

    .line 127
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_4
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 134
    .line 135
    if-eqz p2, :cond_7

    .line 136
    .line 137
    check-cast p2, Ljava/util/Collection;

    .line 138
    .line 139
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    xor-int/2addr p2, v3

    .line 144
    if-ne p2, v3, :cond_7

    .line 145
    .line 146
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v4, "generalBidding() --> \u5e7f\u544a\u5df2\u7ecf\u51c6\u5907\u597d\uff0c\u5f00\u59cb\u7ade\u4ef7 ---> "

    .line 158
    .line 159
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    const/16 v10, 0xc

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v6, 0x3

    .line 173
    const/4 v8, 0x0

    .line 174
    const/4 v9, 0x0

    .line 175
    move-object v5, p0

    .line 176
    invoke-static/range {v5 .. v11}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 180
    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    check-cast p1, Ljava/util/Collection;

    .line 184
    .line 185
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    :cond_5
    iget p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    .line 190
    .line 191
    iput v3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    .line 192
    .line 193
    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->S(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-ne p1, v1, :cond_6

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 201
    .line 202
    if-eqz p1, :cond_7

    .line 203
    .line 204
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 205
    .line 206
    .line 207
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p1
.end method

.method private final W()Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic Z(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    invoke-interface {p0}, Lxh/b;->getLogTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 p0, 0x0

    .line 16
    new-array v4, p0, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 17
    .line 18
    move-object v5, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private final a0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    .line 11
    .line 12
    iget v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    .line 25
    .line 26
    invoke-direct {v1, v7, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    if-ne v2, v10, :cond_1

    .line 42
    .line 43
    iget v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    .line 44
    .line 45
    iget-object v3, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 48
    .line 49
    iget-object v4, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Ljava/util/Iterator;

    .line 52
    .line 53
    iget-object v5, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/List;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object v12, v1

    .line 61
    move v11, v2

    .line 62
    move-object v15, v3

    .line 63
    move-object/from16 v28, v4

    .line 64
    .line 65
    move-object v6, v5

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-direct/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0(Ljava/util/List;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Iterable;

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move/from16 v11, p2

    .line 95
    .line 96
    move-object v14, v0

    .line 97
    move-object v12, v1

    .line 98
    move-object v13, v2

    .line 99
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_c

    .line 104
    .line 105
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    sget-object v1, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/c;->a(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    sget-object v1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_3

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    const/4 v5, 0x4

    .line 171
    const/4 v6, 0x0

    .line 172
    const/4 v1, 0x5

    .line 173
    const-string v2, "hiSavanaPlacementId is empty"

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    move-object/from16 v0, p0

    .line 178
    .line 179
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    :goto_2
    invoke-virtual {v7, v14, v0, v11}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    const/4 v5, 0x4

    .line 188
    const/4 v6, 0x0

    .line 189
    const/4 v1, 0x5

    .line 190
    const-string v2, "\u7a0b\u5e8f\u5316\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_6
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_a

    .line 211
    .line 212
    sget-object v1, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/c;->b(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_9

    .line 223
    .line 224
    sget-object v1, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    .line 225
    .line 226
    iput-object v14, v12, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v13, v12, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v0, v12, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    .line 231
    .line 232
    iput v11, v12, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    .line 233
    .line 234
    iput v10, v12, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    .line 235
    .line 236
    invoke-virtual {v1, v0, v12}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->e(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-ne v1, v8, :cond_7

    .line 241
    .line 242
    return-object v8

    .line 243
    :cond_7
    move-object v15, v0

    .line 244
    move-object v0, v1

    .line 245
    move-object/from16 v28, v13

    .line 246
    .line 247
    move-object v6, v14

    .line 248
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    invoke-virtual {v15}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v22

    .line 264
    new-instance v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 265
    .line 266
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 267
    .line 268
    .line 269
    move-result-object v21

    .line 270
    const/16 v26, 0x678

    .line 271
    .line 272
    const/16 v27, 0x0

    .line 273
    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/16 v19, 0x0

    .line 281
    .line 282
    const/16 v20, 0x0

    .line 283
    .line 284
    const/16 v23, 0x0

    .line 285
    .line 286
    const/16 v24, 0x0

    .line 287
    .line 288
    const/16 v25, 0x66

    .line 289
    .line 290
    move-object v13, v0

    .line 291
    invoke-direct/range {v13 .. v27}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-object v14, v6

    .line 302
    goto :goto_4

    .line 303
    :cond_8
    const/4 v5, 0x4

    .line 304
    const/4 v13, 0x0

    .line 305
    const/4 v1, 0x5

    .line 306
    const-string v2, "PS Offer \u83b7\u53d6\u5931\u8d25"

    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    const/4 v4, 0x0

    .line 310
    move-object/from16 v0, p0

    .line 311
    .line 312
    move-object v14, v6

    .line 313
    move-object v6, v13

    .line 314
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :goto_4
    move-object/from16 v13, v28

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_9
    const/4 v5, 0x4

    .line 322
    const/4 v6, 0x0

    .line 323
    const/4 v1, 0x5

    .line 324
    const-string v2, "\u5305\u65ad\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    .line 325
    .line 326
    const/4 v3, 0x0

    .line 327
    const/4 v4, 0x0

    .line 328
    move-object/from16 v0, p0

    .line 329
    .line 330
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_a
    sget-object v1, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/c;->b(Ljava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_b

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 348
    .line 349
    .line 350
    move-result-object v16

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v24

    .line 355
    new-instance v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 356
    .line 357
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 358
    .line 359
    .line 360
    move-result-object v23

    .line 361
    const/16 v28, 0x678

    .line 362
    .line 363
    const/16 v29, 0x0

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    const/16 v19, 0x0

    .line 368
    .line 369
    const/16 v20, 0x0

    .line 370
    .line 371
    const/16 v21, 0x0

    .line 372
    .line 373
    const/16 v22, 0x0

    .line 374
    .line 375
    const/16 v25, 0x0

    .line 376
    .line 377
    const/16 v26, 0x0

    .line 378
    .line 379
    const/16 v27, 0x66

    .line 380
    .line 381
    move-object v15, v1

    .line 382
    move-object/from16 v17, v0

    .line 383
    .line 384
    invoke-direct/range {v15 .. v29}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 392
    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_b
    const/4 v5, 0x4

    .line 397
    const/4 v6, 0x0

    .line 398
    const/4 v1, 0x5

    .line 399
    const-string v2, "\u5305\u65ad\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    .line 400
    .line 401
    const/4 v3, 0x0

    .line 402
    const/4 v4, 0x0

    .line 403
    move-object/from16 v0, p0

    .line 404
    .line 405
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :cond_c
    return-object v14
.end method

.method private final b0()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/ad/scene/a;->c(Lcom/transsion/ad/scene/a;Ljava/lang/String;IILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    mul-long/2addr v0, v2

    .line 27
    :goto_0
    return-wide v0
.end method

.method private final i0(Ljava/util/List;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$compareBy$1;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$compareBy$1;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$thenBy$1;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->x0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v1, 0x5

    .line 35
    const-string v2, "getMaxEcpmBiddingPlan() --> biddingList.isNullOrEmpty() == true"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method private final j0(ILjava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-gtz p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$compareByDescending$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$compareByDescending$1;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$thenBy$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method private final n0(Ljava/util/List;)Z
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 33
    .line 34
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method private final p0(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v4, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_9

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    :goto_1
    move-object p1, v1

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move-object v2, v1

    .line 92
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-wide v5, v3

    .line 108
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    move-object v7, v2

    .line 113
    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    if-eqz v7, :cond_7

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    move-wide v7, v3

    .line 127
    :goto_3
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-gez v9, :cond_8

    .line 132
    .line 133
    move-object v1, v2

    .line 134
    move-wide v5, v7

    .line 135
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :goto_4
    check-cast p1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    const/4 v1, 0x1

    .line 154
    if-le p1, v1, :cond_a

    .line 155
    .line 156
    new-instance p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$hiAdPlanDeduplication$$inlined$sortByDescending$1;

    .line 157
    .line 158
    invoke-direct {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding$hiAdPlanDeduplication$$inlined$sortByDescending$1;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    .line 163
    .line 164
    :cond_a
    return-object v0
.end method

.method private final q0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public static synthetic t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->s0(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: loadAd"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method private static final v0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Loh/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final w0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->d()Lrh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lrh/a;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static synthetic x(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->y0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->v0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->k(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic z(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->C0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final z0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final G0(Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H0(Ljava/lang/Integer;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    .line 7
    .line 8
    return-object p0
.end method

.method public final J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final M0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final N0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p1, "\u5f53\u524d\u5df2\u7ecf\u6709Activity\u5728\u5c55\u793a\u5e7f\u544a\u4e86\uff0c\u8bf7\u52ff\u91cd\u590d\u5c55\u793a\u5e7f\u544a!"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->d()V

    .line 21
    .line 22
    .line 23
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    move-object v2, v0

    .line 44
    move-object v3, p2

    .line 45
    move-object v4, p1

    .line 46
    move-object v5, p0

    .line 47
    move v6, p3

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/AbsAdBidding;ZLkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    move-object v4, v0

    .line 56
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    :cond_3
    if-eqz p2, :cond_4

    .line 63
    .line 64
    const-string p1, "activity is empty"

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public abstract R(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
.end method

.method public T()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public U()V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/splash/a;->l:Lcom/transsion/ad/bidding/splash/a$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/splash/a$a;->a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->b(Loh/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/ad/bidding/interstitial/i;->j:Lcom/transsion/ad/bidding/interstitial/i$a;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/interstitial/i$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->b(Loh/a;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object v0, Lcom/transsion/ad/bidding/video/q;->j:Lcom/transsion/ad/bidding/video/q$a;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/video/q$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/video/q;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->b(Loh/a;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b()V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v3, 0x3

    .line 81
    const-string v4, "destroy() --> \u8d44\u6e90\u56de\u6536"

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    move-object v2, p0

    .line 86
    invoke-static/range {v2 .. v8}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public abstract X()I
.end method

.method public Y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Z(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 17

    .line 1
    invoke-super/range {p0 .. p1}, Loh/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lai/c;->a:Lai/c;

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v15, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, v15

    .line 29
    :goto_0
    const/16 v4, 0x66

    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v6, v15

    .line 45
    :goto_1
    invoke-virtual {v5, v6}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v6, v15

    .line 57
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    sget-object v8, Lyh/b;->a:Lyh/b$a;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move-object v9, v15

    .line 71
    :goto_3
    invoke-virtual {v8, v9}, Lyh/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move-object v9, v15

    .line 83
    :goto_4
    invoke-virtual {v5, v9}, Lcom/transsion/ad/monopoly/plan/b;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v10, v5

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    move-object v10, v15

    .line 102
    :goto_5
    if-eqz p1, :cond_6

    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_6

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v11, v5

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    move-object v11, v15

    .line 117
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    const/16 v13, 0x80

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    move-object v5, v6

    .line 127
    move v6, v7

    .line 128
    move v7, v8

    .line 129
    move-object/from16 v8, v16

    .line 130
    .line 131
    invoke-static/range {v0 .. v14}, Lai/c;->b(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    move-object v1, v15

    .line 144
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->W()Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface/range {p0 .. p0}, Lxh/b;->getLogTag()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ad/strategy/b;->j(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 160
    .line 161
    if-eqz p1, :cond_8

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    :cond_8
    invoke-virtual {v0, v15}, Lcom/transsion/ad/ps/distribute/PsDbManager;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Loh/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setExpend(Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v3, v2

    .line 24
    :goto_0
    invoke-virtual {v1, v3}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->m(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Lai/c;->a:Lai/c;

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v7, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v7, v2

    .line 52
    :goto_1
    const/16 v1, 0x66

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v3, v2

    .line 68
    :goto_2
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v9, v3

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move-object v9, v2

    .line 81
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    sget-object v3, Lyh/b;->a:Lyh/b$a;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move-object v11, v2

    .line 95
    :goto_4
    invoke-virtual {v3, v11}, Lyh/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move-object v3, v2

    .line 107
    :goto_5
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/b;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v14, v1

    .line 124
    goto :goto_6

    .line 125
    :cond_7
    move-object v14, v2

    .line 126
    :goto_6
    if-eqz v0, :cond_8

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    move-object v15, v1

    .line 139
    goto :goto_7

    .line 140
    :cond_8
    move-object v15, v2

    .line 141
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    const/16 v17, 0x80

    .line 146
    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    const/4 v12, 0x0

    .line 150
    invoke-static/range {v4 .. v18}, Lai/c;->g(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_9
    invoke-virtual {v1, v2}, Lcom/transsion/ad/ps/distribute/PsDbManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final c0()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v13, p2

    .line 6
    .line 7
    invoke-super/range {p0 .. p3}, Loh/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 8
    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    if-eqz v8, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v9

    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "onBiddingBuyOutDisplayTimestamp() --> name = "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " --> displayTimestamp = "

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v5, 0x5

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    move-object/from16 v0, p0

    .line 56
    .line 57
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lai/c;->a:Lai/c;

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    if-eqz v8, :cond_1

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object v12, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v12, v9

    .line 85
    :goto_1
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 86
    .line 87
    if-eqz v8, :cond_2

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object v2, v9

    .line 95
    :goto_2
    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v15, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    move-object v15, v9

    .line 108
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    sget-object v1, Lyh/b;->a:Lyh/b$a;

    .line 113
    .line 114
    if-eqz v8, :cond_4

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    :cond_4
    invoke-virtual {v1, v9}, Lyh/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v18

    .line 128
    move-object v9, v0

    .line 129
    move-wide v0, v13

    .line 130
    move-wide/from16 v13, p2

    .line 131
    .line 132
    invoke-virtual/range {v9 .. v18}, Lai/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v7, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 136
    .line 137
    new-instance v3, Lcom/transsion/ad/bidding/base/h;

    .line 138
    .line 139
    invoke-direct {v3, v7, v8, v0, v1}, Lcom/transsion/ad/bidding/base/h;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final d0()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public abstract e0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
.end method

.method public f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkPreload()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p1, v2

    .line 29
    :goto_1
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_2
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    sget-object p1, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a:Lcom/transsion/ad/strategy/AdUrlParameterManager;

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    const-string v2, ""

    .line 52
    .line 53
    :cond_3
    const-string v0, "on Ad show"

    .line 54
    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v1, Lcom/transsion/ad/bidding/base/c;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lcom/transsion/ad/bidding/base/c;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    return-void
.end method

.method public final f0()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g0()Loh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g:Loh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lxh/b$a;->a(Lxh/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Loh/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h0()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onBiddingError() --> errorMessage = "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/16 v8, 0xc

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v4, 0x6

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v3, p0

    .line 36
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v1, Lcom/transsion/ad/bidding/base/e;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/e;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 5
    .line 6
    sget-object v0, Lai/c;->a:Lai/c;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getAdSource()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v3

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v6, v3

    .line 41
    :goto_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v7, v3

    .line 55
    :goto_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object v8, v3

    .line 69
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v10, "\u7ade\u4ef7\u6210\u529f --> ecpm = "

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, " -- plans?.id = "

    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, " -- plans?.name = "

    .line 91
    .line 92
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    sget-object v7, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    move-object v8, v3

    .line 112
    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-eqz v9, :cond_5

    .line 123
    .line 124
    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    move-object v9, v3

    .line 130
    :goto_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-eqz v10, :cond_6

    .line 141
    .line 142
    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    const/4 v12, 0x0

    .line 155
    move-object v3, v4

    .line 156
    move v4, v5

    .line 157
    move-object v5, v7

    .line 158
    move-object v7, v12

    .line 159
    invoke-virtual/range {v0 .. v11}, Lai/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 169
    .line 170
    new-instance v1, Lcom/transsion/ad/bidding/base/b;

    .line 171
    .line 172
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/b;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Loh/a;->k(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setSceneSubId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setSceneId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v5, Lai/c;->a:Lai/c;

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getAdSource()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const/4 v11, 0x0

    .line 70
    if-eqz v10, :cond_0

    .line 71
    .line 72
    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    move-object v10, v11

    .line 78
    :goto_1
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    if-eqz v12, :cond_1

    .line 83
    .line 84
    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    move-object v12, v11

    .line 90
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v14, "\u7ade\u4ef7\u6210\u529f --> ecpm = "

    .line 96
    .line 97
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v8, " -- plans?.id = "

    .line 104
    .line 105
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v8, " -- plans?.name = "

    .line 112
    .line 113
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_2

    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    goto :goto_3

    .line 144
    :cond_2
    move-object v8, v11

    .line 145
    :goto_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_3

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    :cond_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v16

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    const/4 v3, 0x0

    .line 172
    move-object v11, v12

    .line 173
    move-object v12, v3

    .line 174
    invoke-virtual/range {v5 .. v16}, Lai/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_4
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    .line 184
    .line 185
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v3, Lcom/transsion/ad/bidding/base/j;

    .line 188
    .line 189
    invoke-direct {v3, v0, v1}, Lcom/transsion/ad/bidding/base/j;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onBiddingWrapperAdClick() --> name = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v8, 0x5

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v3, p0

    .line 38
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Lcom/transsion/ad/bidding/base/g;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/g;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method protected final l0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onBiddingWrapperAdClose() --> name = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v8, 0x5

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v3, p0

    .line 38
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v1, Lcom/transsion/ad/bidding/base/a;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/a;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method protected final m0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "onBiddingWrapperAdDisplay() --> name = "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v9, 0x5

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v4, p0

    .line 39
    invoke-static/range {v4 .. v10}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v1, Lcom/transsion/ad/bidding/base/f;

    .line 65
    .line 66
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/f;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onBiddingWrapperAdRewarded() --> name = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v8, 0x5

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v3, p0

    .line 38
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Lcom/transsion/ad/bidding/base/d;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/d;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public abstract o0()Z
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 19

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v3

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v2, v3

    .line 45
    :goto_1
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    sget-object v4, Lai/c;->a:Lai/c;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v7, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v7, v3

    .line 81
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getSource()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getCodeSeatId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :cond_4
    move-object v14, v3

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v16

    .line 108
    const/16 v17, 0x80

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-static/range {v4 .. v18}, Lai/c;->b(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v1, p0

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onClosed(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p0, p2, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadSuccess$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadSuccess$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lxh/b$a;->b(Lxh/b;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRewarded()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 19

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v3

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v2, v3

    .line 45
    :goto_1
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    sget-object v4, Lai/c;->a:Lai/c;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v7, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v7, v3

    .line 81
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getSource()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getCodeSeatId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :cond_4
    move-object v14, v3

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v16

    .line 108
    const/16 v17, 0x80

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v15, 0x0

    .line 116
    invoke-static/range {v4 .. v18}, Lai/c;->g(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v1, p0

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 8

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getPlacementId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "onShowError() --> errorMessage = "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " --> placementId = "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/16 v6, 0xc

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v2, 0x6

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v1, p0

    .line 53
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getErrorMsg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "onBiddingWrapperAdShowError() --> name = "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " --> msg = "

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/16 v8, 0xd

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v3, p0

    .line 54
    invoke-static/range {v3 .. v9}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v1, Lcom/transsion/ad/bidding/base/i;

    .line 75
    .line 76
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/i;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method protected final r0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-wide v2, v0

    .line 25
    :goto_1
    cmpg-double p1, v2, v0

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 33
    :goto_3
    return p1
.end method

.method public final s0(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x1

    .line 41
    const/16 v8, 0x44d

    .line 42
    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    if-eq v5, v7, :cond_2

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    iget-boolean v1, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->Z$0:Z

    .line 63
    .line 64
    iget v5, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->I$0:I

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v9, v1

    .line 70
    move v1, v5

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v2, Lcom/transsion/ad/strategy/v;->a:Lcom/transsion/ad/strategy/v;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/transsion/ad/strategy/v;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 85
    .line 86
    const-string v2, "\u9752\u5c11\u5e74\u6a21\u5f0f\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    .line 87
    .line 88
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_4
    if-le v1, v7, :cond_5

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eq v2, v6, :cond_5

    .line 104
    .line 105
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 106
    .line 107
    const-string v2, "\u53ea\u6709Native\u7c7b\u578b\u624d\u53ef\u4ee5\u4e00\u6b21\u52a0\u8f7d\u591a\u4e2a\u5e7f\u544a"

    .line 108
    .line 109
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_5
    if-ge v1, v7, :cond_6

    .line 119
    .line 120
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 121
    .line 122
    const-string v2, "fetchCount can not be less than 1"

    .line 123
    .line 124
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_6
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 142
    .line 143
    const-string v2, "isLoading -- Try again when it\'s a little thicker"

    .line 144
    .line 145
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_7
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    .line 156
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    .line 158
    .line 159
    sget-object v2, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/v;->b()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {v2, v5}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_8

    .line 176
    .line 177
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 178
    .line 179
    const-string v2, "activity ad is showing"

    .line 180
    .line 181
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 185
    .line 186
    .line 187
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_8
    sget-object v2, Lci/n;->a:Lci/n;

    .line 191
    .line 192
    invoke-virtual {v2}, Lci/n;->b()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iput-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    .line 197
    .line 198
    sget-object v9, Lai/c;->a:Lai/c;

    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const-string v14, ""

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    const/16 v13, 0x69

    .line 219
    .line 220
    invoke-virtual/range {v9 .. v15}, Lai/c;->k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sget-object v2, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    iput v1, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->I$0:I

    .line 230
    .line 231
    move/from16 v9, p2

    .line 232
    .line 233
    iput-boolean v9, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->Z$0:Z

    .line 234
    .line 235
    iput v7, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    .line 236
    .line 237
    invoke-virtual {v2, v5, v3}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-ne v2, v4, :cond_9

    .line 242
    .line 243
    return-object v4

    .line 244
    :cond_9
    :goto_1
    check-cast v2, Lkotlin/Pair;

    .line 245
    .line 246
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_a

    .line 257
    .line 258
    sget-object v10, Lai/c;->a:Lai/c;

    .line 259
    .line 260
    iget-object v11, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X()I

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    move-object v15, v1

    .line 275
    check-cast v15, Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v16

    .line 281
    const/16 v14, 0x69

    .line 282
    .line 283
    invoke-virtual/range {v10 .. v16}, Lai/c;->j(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 287
    .line 288
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/String;

    .line 293
    .line 294
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 298
    .line 299
    .line 300
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 301
    .line 302
    return-object v1

    .line 303
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->T()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_b

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->c0()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    if-nez v2, :cond_b

    .line 314
    .line 315
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 316
    .line 317
    const-string v2, "context is null"

    .line 318
    .line 319
    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 323
    .line 324
    .line 325
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 326
    .line 327
    return-object v1

    .line 328
    :cond_b
    iput v6, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    .line 329
    .line 330
    invoke-direct {v0, v9, v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-ne v1, v4, :cond_c

    .line 335
    .line 336
    return-object v4

    .line 337
    :cond_c
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    return-object v1
.end method

.method public abstract u0(Ljava/lang/String;)V
.end method
