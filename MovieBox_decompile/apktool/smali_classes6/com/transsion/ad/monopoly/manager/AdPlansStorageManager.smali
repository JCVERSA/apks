.class public final Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/ad/monopoly/manager/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Luh/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->b()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Luh/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$m;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->y0()Luh/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p3, ""

    .line 6
    .line 7
    :cond_0
    move-object v3, p3

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private final f()Luh/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luh/a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Luh/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    instance-of v3, v2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

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
    iput v4, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-eqz v5, :cond_4

    .line 43
    .line 44
    if-eq v5, v8, :cond_3

    .line 45
    .line 46
    if-ne v5, v6, :cond_2

    .line 47
    .line 48
    iget-object v1, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$5:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 51
    .line 52
    iget-object v5, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$4:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Ljava/util/Iterator;

    .line 55
    .line 56
    iget-object v9, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v9, Ljava/util/Collection;

    .line 59
    .line 60
    iget-object v10, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v10, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v11, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v11, Ljava/util/Map;

    .line 67
    .line 68
    iget-object v12, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v12, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    move-object/from16 v17, v10

    .line 76
    .line 77
    move-object/from16 v18, v11

    .line 78
    .line 79
    move-object v15, v12

    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_3
    iget-object v1, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/util/Set;

    .line 93
    .line 94
    iget-object v5, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v9, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v9, Ljava/util/Map;

    .line 101
    .line 102
    iget-object v10, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v10, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v19, v9

    .line 110
    .line 111
    move-object v9, v5

    .line 112
    move-object/from16 v5, v19

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    array-length v2, v1

    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    move-object/from16 v2, p1

    .line 122
    .line 123
    move-object v1, v7

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    array-length v5, v1

    .line 131
    const/4 v9, 0x0

    .line 132
    :goto_1
    if-ge v9, v5, :cond_8

    .line 133
    .line 134
    aget-object v10, v1, v9

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move-object v10, v7

    .line 144
    :goto_2
    if-eqz v10, :cond_7

    .line 145
    .line 146
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    move-object/from16 v2, p1

    .line 157
    .line 158
    :goto_3
    iput-object v2, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    move-object/from16 v5, p2

    .line 161
    .line 162
    iput-object v5, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    .line 163
    .line 164
    move-object/from16 v9, p3

    .line 165
    .line 166
    iput-object v9, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v1, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    .line 169
    .line 170
    iput v8, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    if-ne v10, v4, :cond_9

    .line 177
    .line 178
    return-object v4

    .line 179
    :cond_9
    move-object/from16 v19, v10

    .line 180
    .line 181
    move-object v10, v2

    .line 182
    move-object/from16 v2, v19

    .line 183
    .line 184
    :goto_4
    check-cast v2, Ljava/util/List;

    .line 185
    .line 186
    if-eqz v2, :cond_11

    .line 187
    .line 188
    check-cast v2, Ljava/lang/Iterable;

    .line 189
    .line 190
    new-instance v11, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_c

    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    move-object v13, v12

    .line 210
    check-cast v13, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 211
    .line 212
    if-eqz v1, :cond_b

    .line 213
    .line 214
    move-object v14, v1

    .line 215
    check-cast v14, Ljava/lang/Iterable;

    .line 216
    .line 217
    invoke-virtual {v13}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    invoke-static {v14, v13}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-eqz v13, :cond_a

    .line 226
    .line 227
    :cond_b
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move-object v11, v5

    .line 241
    move-object v12, v10

    .line 242
    move-object v5, v2

    .line 243
    move-object v10, v9

    .line 244
    move-object v9, v1

    .line 245
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_10

    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 256
    .line 257
    sget-object v2, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;->a:Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;

    .line 258
    .line 259
    iput-object v12, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    .line 260
    .line 261
    iput-object v11, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v10, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v9, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v5, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$4:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v1, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$5:Ljava/lang/Object;

    .line 270
    .line 271
    iput v6, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    .line 272
    .line 273
    invoke-virtual {v2, v12, v1, v11, v3}, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;->a(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    if-ne v2, v4, :cond_1

    .line 278
    .line 279
    return-object v4

    .line 280
    :goto_7
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;->isHit()Z

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    if-eqz v10, :cond_d

    .line 287
    .line 288
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    .line 289
    .line 290
    invoke-virtual {v2, v1}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    move-object v2, v15

    .line 295
    goto :goto_9

    .line 296
    :cond_d
    sget-object v10, Lrh/f;->a:Lrh/f;

    .line 297
    .line 298
    invoke-virtual {v10}, Lrh/f;->c()Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-eqz v10, :cond_e

    .line 311
    .line 312
    sget-object v10, Lxh/a;->a:Lxh/a;

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;->getRejectMsg()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v12, "AdPlansStorageManager --> sceneId = "

    .line 328
    .line 329
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v12, " --> rejectMsg = "

    .line 336
    .line 337
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v2, " --> dbPlans.name = "

    .line 344
    .line 345
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    const/16 v1, 0x8

    .line 356
    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    const/4 v13, 0x5

    .line 360
    const/4 v14, 0x0

    .line 361
    move-object/from16 v11, v17

    .line 362
    .line 363
    move-object v2, v15

    .line 364
    move v15, v1

    .line 365
    invoke-static/range {v10 .. v16}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_e
    move-object v2, v15

    .line 370
    :goto_8
    move-object v1, v7

    .line 371
    :goto_9
    if-eqz v1, :cond_f

    .line 372
    .line 373
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    :cond_f
    move-object v12, v2

    .line 377
    move-object/from16 v10, v17

    .line 378
    .line 379
    move-object/from16 v11, v18

    .line 380
    .line 381
    goto/16 :goto_6

    .line 382
    .line 383
    :cond_10
    check-cast v9, Ljava/util/List;

    .line 384
    .line 385
    if-eqz v9, :cond_11

    .line 386
    .line 387
    check-cast v9, Ljava/util/Collection;

    .line 388
    .line 389
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_11

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .line 400
    .line 401
    :goto_a
    return-object v1
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Luh/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Luh/a;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Luh/a;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final j(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Luh/a;->c(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final k(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Luh/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final l(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->f()Luh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Luh/a;->e(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method
