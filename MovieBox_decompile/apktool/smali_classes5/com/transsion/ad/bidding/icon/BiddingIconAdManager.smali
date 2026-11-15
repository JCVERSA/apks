.class public final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
.super Loh/a;
.source "source.java"


# instance fields
.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Loh/a;

.field private i:I

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private l:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private final m:Lkotlin/Lazy;

.field private final n:Ljava/lang/Runnable;

.field private o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

.field private p:Lcom/transsion/ad/bidding/icon/e;

.field private final q:Ljava/util/Set;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/a;-><init>()V

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
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/ad/bidding/icon/a;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->m:Lkotlin/Lazy;

    .line 43
    .line 44
    new-instance v0, Lcom/transsion/ad/bidding/icon/b;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/b;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->n:Ljava/lang/Runnable;

    .line 50
    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    .line 57
    .line 58
    const-string v0, ""

    .line 59
    .line 60
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method public static synthetic A()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->T()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->P(Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Loh/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->U(Loh/a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F(Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->Q()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->G(Z)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_d

    .line 55
    .line 56
    :cond_1
    move-object v4, v2

    .line 57
    :goto_0
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x2

    .line 65
    if-ne v5, v6, :cond_3

    .line 66
    .line 67
    iget-object v4, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v5, 0x1

    .line 78
    if-ne v4, v5, :cond_5

    .line 79
    .line 80
    iget-object v4, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    :goto_2
    move-object v4, v2

    .line 84
    :goto_3
    move-object v5, v0

    .line 85
    check-cast v5, Ljava/lang/Iterable;

    .line 86
    .line 87
    new-instance v6, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/16 v7, 0xa

    .line 90
    .line 91
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 113
    .line 114
    invoke-virtual {v7}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    const-string v5, "\u7ade\u4ef7\u5931\u8d25 --> \u65e0\u5e7f\u544a\u6570\u636e"

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_7
    if-eqz v3, :cond_8

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    goto :goto_5

    .line 146
    :cond_8
    move-object v5, v2

    .line 147
    :goto_5
    if-eqz v4, :cond_9

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    goto :goto_6

    .line 154
    :cond_9
    move-object v7, v2

    .line 155
    :goto_6
    if-eqz v4, :cond_a

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    goto :goto_7

    .line 162
    :cond_a
    move-object v8, v2

    .line 163
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v10, "\u7ade\u4ef7\u6210\u529f --> ecpmList = "

    .line 169
    .line 170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v10, " --> max item: ecpm = "

    .line 177
    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v5, ", plans.id = "

    .line 185
    .line 186
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v5, ", plans.name = "

    .line 193
    .line 194
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    :goto_8
    sget-object v7, Lai/c;->a:Lai/c;

    .line 205
    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const-string v19, ""

    .line 215
    .line 216
    if-nez v9, :cond_b

    .line 217
    .line 218
    move-object/from16 v9, v19

    .line 219
    .line 220
    :cond_b
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-eqz v10, :cond_c

    .line 225
    .line 226
    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_FAIL:Lcom/transsion/ad/report/BiddingStateEnum;

    .line 227
    .line 228
    :goto_9
    move-object v12, v10

    .line 229
    goto :goto_a

    .line 230
    :cond_c
    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :goto_a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    if-eqz v3, :cond_d

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    .line 240
    .line 241
    .line 242
    move-result-wide v10

    .line 243
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    goto :goto_b

    .line 248
    :cond_d
    move-object v3, v2

    .line 249
    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    if-eqz v4, :cond_e

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    goto :goto_c

    .line 260
    :cond_e
    move-object v3, v2

    .line 261
    :goto_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    if-eqz v4, :cond_f

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    :cond_f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v17

    .line 275
    const/16 v2, 0x6a

    .line 276
    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    const-string v18, ""

    .line 282
    .line 283
    const/4 v11, 0x6

    .line 284
    move-object v13, v5

    .line 285
    invoke-virtual/range {v7 .. v18}, Lai/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sget-object v20, Lxh/a;->a:Lxh/a;

    .line 289
    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iget v4, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    .line 299
    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, " --> sceneId = "

    .line 313
    .line 314
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, " --> onBiddingLoad() --> "

    .line 321
    .line 322
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, " --> targetNum = "

    .line 329
    .line 330
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v2, " --> data.size = "

    .line 337
    .line 338
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v21

    .line 348
    const/16 v24, 0x2

    .line 349
    .line 350
    const/16 v25, 0x0

    .line 351
    .line 352
    const/16 v22, 0x0

    .line 353
    .line 354
    const/16 v23, 0x0

    .line 355
    .line 356
    invoke-static/range {v20 .. v25}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    iget v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    .line 360
    .line 361
    if-lez v2, :cond_10

    .line 362
    .line 363
    check-cast v0, Ljava/lang/Iterable;

    .line 364
    .line 365
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Ljava/util/Collection;

    .line 370
    .line 371
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    :cond_10
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    .line 376
    .line 377
    if-eqz v2, :cond_11

    .line 378
    .line 379
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 380
    .line 381
    .line 382
    :cond_11
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    .line 383
    .line 384
    if-eqz v2, :cond_12

    .line 385
    .line 386
    move-object v3, v0

    .line 387
    check-cast v3, Ljava/util/Collection;

    .line 388
    .line 389
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    .line 391
    .line 392
    :cond_12
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 393
    .line 394
    if-eqz v2, :cond_13

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Loh/a;->w(Ljava/util/List;)V

    .line 397
    .line 398
    .line 399
    :cond_13
    sget-object v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    .line 400
    .line 401
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    .line 402
    .line 403
    if-nez v2, :cond_14

    .line 404
    .line 405
    move-object/from16 v2, v19

    .line 406
    .line 407
    :cond_14
    invoke-virtual {v0, v2}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->b(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 411
    .line 412
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .line 414
    .line 415
    goto :goto_e

    .line 416
    :goto_d
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 417
    .line 418
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    :goto_e
    return-void
.end method

.method private final G(Z)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->J(Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 53
    .line 54
    invoke-direct {p0, v2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->N(Lcom/transsion/ad/ps/model/RecommendInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$compareByDescending$1;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$compareByDescending$1;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;

    .line 68
    .line 69
    invoke-direct {v2, v1, p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;Z)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method private static final H(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    .line 1
    const-string v0, "\u7ade\u4ef7\u65f6\u95f4\u5230"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final J(Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;
    .locals 10

    .line 1
    new-instance v9, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    const/16 v7, 0x10

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, v9

    .line 14
    move-object v3, p1

    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;-><init>(ILcom/transsion/ad/ps/model/RecommendInfo;Lcom/hisavana/common/bean/TAdNativeInfo;DZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    return-object v9
.end method

.method private final L()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->m:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N(Lcom/transsion/ad/ps/model/RecommendInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;
    .locals 10

    .line 1
    new-instance v9, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :goto_0
    move-wide v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    const/16 v7, 0x10

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v0, v9

    .line 29
    move-object v2, p1

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;-><init>(ILcom/transsion/ad/ps/model/RecommendInfo;Lcom/hisavana/common/bean/TAdNativeInfo;DZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    return-object v9
.end method

.method private final O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final P(Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    const-string v2, "Collection contains no element matching the predicate."

    .line 8
    .line 9
    instance-of v3, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    .line 15
    .line 16
    iget v5, v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v6, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    .line 30
    .line 31
    invoke-direct {v3, v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget v3, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    if-ne v3, v5, :cond_1

    .line 47
    .line 48
    iget v2, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->I$0:I

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    invoke-virtual {v0, v4, v3}, Lcom/transsion/ad/scene/a;->b(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    sget-object v11, Lxh/a;->a:Lxh/a;

    .line 74
    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v8, " --> sceneId = "

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " --> loadAd() --> \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a --> biddingTime = "

    .line 100
    .line 101
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    const/4 v15, 0x2

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    invoke-static/range {v11 .. v16}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 120
    .line 121
    move-object/from16 v0, p3

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    move-object v7, v3

    .line 140
    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 141
    .line 142
    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    sget-object v11, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 147
    .line 148
    invoke-virtual {v11}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_3

    .line 157
    .line 158
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 159
    .line 160
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_3

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 168
    .line 169
    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    .line 175
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/4 v7, 0x0

    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    move-object v0, v7

    .line 191
    :cond_5
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 192
    .line 193
    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    const/4 v11, 0x5

    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 200
    .line 201
    invoke-virtual {v0, v4}, Lcom/transsion/ad/scene/c;->a(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_8

    .line 206
    .line 207
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 208
    .line 209
    if-nez v0, :cond_6

    .line 210
    .line 211
    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 212
    .line 213
    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 222
    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f(Loh/a;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 229
    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e()V

    .line 233
    .line 234
    .line 235
    :cond_7
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 236
    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->c(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_8
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 244
    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v12, " --> innerLoadAd() --> \u7a0b\u5e8f\u5316\u5e7f\u544a\u65e0\u8ba1\u5212\u6216\u573a\u666f\u5173\u95ed"

    .line 268
    .line 269
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-virtual {v0, v12, v11, v3}, Lxh/a;->f(Ljava/lang/String;IZ)V

    .line 277
    .line 278
    .line 279
    :cond_9
    :goto_4
    :try_start_1
    move-object/from16 v0, p3

    .line 280
    .line 281
    check-cast v0, Ljava/lang/Iterable;

    .line 282
    .line 283
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    if-eqz v12, :cond_b

    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    move-object v13, v12

    .line 298
    check-cast v13, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 299
    .line 300
    invoke-virtual {v13}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    sget-object v14, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_ICON:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 305
    .line 306
    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-eqz v13, :cond_a

    .line 315
    .line 316
    check-cast v12, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 317
    .line 318
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    goto :goto_6

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    goto :goto_5

    .line 325
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 326
    .line 327
    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :goto_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 332
    .line 333
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_c

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_c
    move-object v7, v0

    .line 349
    :goto_7
    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 350
    .line 351
    iput-object v7, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 352
    .line 353
    if-eqz v7, :cond_f

    .line 354
    .line 355
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 356
    .line 357
    invoke-virtual {v0, v4}, Lcom/transsion/ad/scene/c;->b(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_f

    .line 362
    .line 363
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/e;

    .line 364
    .line 365
    if-nez v0, :cond_d

    .line 366
    .line 367
    new-instance v0, Lcom/transsion/ad/bidding/icon/e;

    .line 368
    .line 369
    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/e;-><init>()V

    .line 370
    .line 371
    .line 372
    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/e;

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/icon/e;->C(Loh/a;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/e;

    .line 378
    .line 379
    if-eqz v0, :cond_d

    .line 380
    .line 381
    move/from16 v2, p2

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Lcom/transsion/ad/bidding/icon/e;->B(Z)V

    .line 384
    .line 385
    .line 386
    :cond_d
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/e;

    .line 387
    .line 388
    if-eqz v2, :cond_10

    .line 389
    .line 390
    iput v10, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->I$0:I

    .line 391
    .line 392
    iput v5, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    .line 393
    .line 394
    const/4 v3, 0x0

    .line 395
    const/4 v5, 0x0

    .line 396
    const/4 v7, 0x5

    .line 397
    const/4 v8, 0x0

    .line 398
    move-object/from16 v4, p1

    .line 399
    .line 400
    invoke-static/range {v2 .. v8}, Lcom/transsion/ad/bidding/icon/e;->A(Lcom/transsion/ad/bidding/icon/e;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-ne v0, v9, :cond_e

    .line 405
    .line 406
    return-object v9

    .line 407
    :cond_e
    move v2, v10

    .line 408
    :goto_8
    move v10, v2

    .line 409
    goto :goto_9

    .line 410
    :cond_f
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 411
    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v2, " --> innerLoadAd() --> \u5305\u65ad\u5e7f\u544a\u65e0\u8ba1\u5212\u6216\u573a\u666f\u5173\u95ed"

    .line 435
    .line 436
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v0, v2, v11, v3}, Lxh/a;->f(Ljava/lang/String;IZ)V

    .line 444
    .line 445
    .line 446
    :cond_10
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->n:Ljava/lang/Runnable;

    .line 451
    .line 452
    int-to-long v3, v10

    .line 453
    const-wide/16 v5, 0x3e8

    .line 454
    .line 455
    mul-long/2addr v3, v5

    .line 456
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    .line 458
    .line 459
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 460
    .line 461
    return-object v0
.end method

.method private final Q()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "hi"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v2, "priority"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public static synthetic S(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZILoh/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x10

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILoh/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static final T()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final U(Loh/a;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 14
    .line 15
    const/16 v1, 0x44d

    .line 16
    .line 17
    invoke-direct {v0, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final V(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    .line 1
    const-string v0, "\u6570\u636e\u90fd\u56de\u6765\u4e86 --> onHiIconAdReady"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final W(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    .line 1
    const-string v0, "\u6570\u636e\u90fd\u56de\u6765\u4e86 --> onPSDistributionReady"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic x(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->W(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->H(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->V(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final E(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;)V
    .locals 1

    .line 1
    const-string v0, "iconView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final I()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/e;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/e;->x()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->destroy()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->b()V

    .line 64
    .line 65
    .line 66
    :cond_3
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " --> sceneId = "

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, " --> destroy() --> \u8d44\u6e90\u56de\u6536"

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v5, 0x2

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final K()Loh/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final M()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d()Lcom/hisavana/mediation/ad/TNativeAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final R(Ljava/lang/String;ZILoh/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p6

    .line 6
    .line 7
    instance-of v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    .line 13
    .line 14
    iget v3, v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v8, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    .line 28
    .line 29
    invoke-direct {v2, v7, v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    iget v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    .line 40
    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    if-eq v2, v3, :cond_2

    .line 46
    .line 47
    if-ne v2, v10, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    iget v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->I$0:I

    .line 63
    .line 64
    iget-boolean v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->Z$0:Z

    .line 65
    .line 66
    iget-object v4, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v4, Ljava/util/Map;

    .line 69
    .line 70
    iget-object v5, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Loh/a;

    .line 73
    .line 74
    iget-object v6, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v18, v5

    .line 82
    .line 83
    move v5, v2

    .line 84
    move-object v2, v4

    .line 85
    move-object/from16 v4, v18

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    .line 92
    .line 93
    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    move-object/from16 v2, p4

    .line 96
    .line 97
    iput-object v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    .line 98
    .line 99
    move-object/from16 v4, p5

    .line 100
    .line 101
    iput-object v4, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    .line 102
    .line 103
    move/from16 v5, p2

    .line 104
    .line 105
    iput-boolean v5, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->Z$0:Z

    .line 106
    .line 107
    move/from16 v6, p3

    .line 108
    .line 109
    iput v6, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->I$0:I

    .line 110
    .line 111
    iput v3, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    .line 112
    .line 113
    invoke-virtual {v1, v0, v8}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-ne v1, v9, :cond_4

    .line 118
    .line 119
    return-object v9

    .line 120
    :cond_4
    move/from16 v18, v6

    .line 121
    .line 122
    move-object v6, v0

    .line 123
    move/from16 v0, v18

    .line 124
    .line 125
    move-object/from16 v19, v4

    .line 126
    .line 127
    move-object v4, v2

    .line 128
    move-object/from16 v2, v19

    .line 129
    .line 130
    :goto_2
    check-cast v1, Lkotlin/Pair;

    .line 131
    .line 132
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {v7, v4, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->U(Loh/a;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_5
    iget-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_6
    iget-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    .line 171
    .line 172
    sget-object v1, Lci/n;->a:Lci/n;

    .line 173
    .line 174
    invoke-virtual {v1}, Lci/n;->b()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iput-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    .line 179
    .line 180
    sget-object v11, Lai/c;->a:Lai/c;

    .line 181
    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    const-string v16, ""

    .line 187
    .line 188
    const-string v17, ""

    .line 189
    .line 190
    const/4 v14, 0x6

    .line 191
    const/16 v15, 0x66

    .line 192
    .line 193
    move-object v13, v6

    .line 194
    invoke-virtual/range {v11 .. v17}, Lai/c;->k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iput-object v4, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 198
    .line 199
    iput-object v6, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    .line 200
    .line 201
    iput v0, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    .line 202
    .line 203
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    new-instance v12, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    move-object v0, v12

    .line 211
    move-object v1, v6

    .line 212
    move-object/from16 v3, p0

    .line 213
    .line 214
    move-object v6, v13

    .line 215
    invoke-direct/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Loh/a;ZLkotlin/coroutines/Continuation;)V

    .line 216
    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    .line 224
    .line 225
    iput v10, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    .line 226
    .line 227
    invoke-static {v11, v12, v8}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-ne v0, v9, :cond_7

    .line 232
    .line 233
    return-object v9

    .line 234
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 235
    .line 236
    return-object v0
.end method

.method public e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Loh/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " --> sceneId = "

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " --> onBiddingBuyOutError() --> errorMessage = "

    .line 39
    .line 40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v4, 0x6

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "additionalInfo"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 13
    .line 14
    .line 15
    sget-object v4, Lai/c;->a:Lai/c;

    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    move-object v8, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v8, v3

    .line 39
    :goto_0
    const/16 v17, 0x6c0

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const-string v7, ""

    .line 44
    .line 45
    const-string v9, ""

    .line 46
    .line 47
    const/4 v10, 0x6

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const-string v16, ""

    .line 54
    .line 55
    invoke-static/range {v4 .. v18}, Lai/c;->b(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v1, v2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object v5, Lxh/a;->a:Lxh/a;

    .line 66
    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, " --> sceneId = "

    .line 92
    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " --> onBiddingWrapperAdClick() --> name = "

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const/4 v9, 0x2

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-static/range {v5 .. v10}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
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
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getPlacementId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " --> sceneId = "

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " --> onLoadFailure() --> placementId = "

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, " --> errorMessage = "

    .line 63
    .line 64
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v5, 0x6

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v1 .. v6}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "additionalInfo"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lai/c;->a:Lai/c;

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move-object v5, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    const-string v1, ""

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_2
    const/16 v1, 0x67

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/16 v15, 0xec0

    .line 46
    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const-string v7, ""

    .line 50
    .line 51
    const/4 v8, 0x6

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    invoke-static/range {v2 .. v16}, Lai/c;->g(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v17, Lxh/a;->a:Lxh/a;

    .line 62
    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    const/4 v3, 0x0

    .line 81
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " --> sceneId = "

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, " --> onBiddingWrapperAdDisplay() --> name = "

    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v18

    .line 109
    const/16 v21, 0x2

    .line 110
    .line 111
    const/16 v22, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    invoke-static/range {v17 .. v22}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

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
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v3

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " --> sceneId = "

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " --> onIconShowError() --> name = "

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, ", errorMessage = "

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v5, 0x2

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static/range {v1 .. v6}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "tAdNativeInfos"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Loh/a;->q(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " --> sceneId = "

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " --> onIconAdReady() --> tAdNativeInfos.size = "

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v5, 0x2

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v1 .. v6}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 64
    .line 65
    check-cast p1, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 71
    .line 72
    check-cast p1, Ljava/util/Collection;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_0

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lcom/transsion/ad/bidding/icon/c;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/c;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

.method public r(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Loh/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/c;->a:Lai/c;

    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 17
    .line 18
    const-string v16, ""

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v4, v16

    .line 29
    .line 30
    :cond_1
    const/16 v5, 0x66

    .line 31
    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/16 v14, 0x6c0

    .line 37
    .line 38
    const/4 v15, 0x0

    .line 39
    const-string v6, ""

    .line 40
    .line 41
    const/4 v7, 0x6

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const-string v13, ""

    .line 47
    .line 48
    move-object/from16 v10, p1

    .line 49
    .line 50
    invoke-static/range {v1 .. v15}, Lai/c;->b(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/b;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lzh/b;->a:Lzh/b;

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    move-object/from16 v3, v16

    .line 68
    .line 69
    :cond_2
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 70
    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object v4, v2

    .line 79
    :goto_0
    const/4 v5, 0x1

    .line 80
    move-object/from16 v6, p1

    .line 81
    .line 82
    invoke-virtual {v1, v6, v5, v3, v4}, Lzh/b;->a(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Loh/a;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1, v6}, Loh/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 93
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 103
    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, " --> sceneId = "

    .line 119
    .line 120
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, " --> onBiddingWrapperAdClick() --> name = "

    .line 127
    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    const/4 v7, 0x2

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v5, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-static/range {v3 .. v8}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public t(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Loh/a;->t(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/c;->a:Lai/c;

    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    :cond_0
    const-string v4, ""

    .line 27
    .line 28
    :cond_1
    const/16 v5, 0x66

    .line 29
    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/16 v14, 0x6c0

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    const-string v6, ""

    .line 38
    .line 39
    const/4 v7, 0x6

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v12, 0x0

    .line 44
    const-string v13, ""

    .line 45
    .line 46
    move-object/from16 v10, p1

    .line 47
    .line 48
    invoke-static/range {v1 .. v15}, Lai/c;->g(Lai/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Iterable;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v4, v2

    .line 90
    :goto_1
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v5, v2

    .line 102
    :goto_2
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    const/4 v4, 0x1

    .line 109
    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->setDisplay(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    sget-object v5, Lxh/a;->a:Lxh/a;

    .line 114
    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 124
    .line 125
    if-eqz v4, :cond_6

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, " --> sceneId = "

    .line 140
    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, " --> onBiddingWrapperAdDisplay() --> name = "

    .line 148
    .line 149
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const/4 v9, 0x2

    .line 160
    const/4 v10, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    invoke-static/range {v5 .. v10}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public u(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->u(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " --> sceneId = "

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " --> onIconShowError() --> name = "

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v4, 0x2

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->v(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " --> onPSDistributionReady() --> mSceneId = "

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " --> data.size = "

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v4, 0x2

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    .line 69
    .line 70
    check-cast p1, Ljava/util/Collection;

    .line 71
    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    .line 76
    .line 77
    check-cast p1, Ljava/util/Collection;

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Lcom/transsion/ad/bidding/icon/d;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/d;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method
