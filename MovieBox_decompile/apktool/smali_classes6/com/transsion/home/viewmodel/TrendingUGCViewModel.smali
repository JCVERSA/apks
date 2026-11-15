.class public final Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

.field public static final m:I

.field private static n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->l:Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->m:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "1"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/16 p1, 0xe

    .line 14
    .line 15
    iput p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/home/viewmodel/o;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/o;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->f:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance p1, Lcom/transsion/home/viewmodel/p;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/p;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->g:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance p1, Lcom/transsion/home/viewmodel/q;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/q;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->h:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance p1, Lcom/transsion/home/viewmodel/r;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/r;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->i:Lkotlin/Lazy;

    .line 60
    .line 61
    new-instance p1, Lcom/transsion/home/viewmodel/s;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/s;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j:Lkotlin/Lazy;

    .line 71
    .line 72
    new-instance p1, Lcom/transsion/home/viewmodel/t;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/t;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k:Lkotlin/Lazy;

    .line 82
    .line 83
    return-void
.end method

.method private final C()Lyk/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyk/e;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 74

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move-object/from16 v2, p0

    .line 12
    .line 13
    goto/16 :goto_12

    .line 14
    .line 15
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    check-cast v2, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v4, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$handlerOperateData$$inlined$sortedBy$1;

    .line 25
    .line 26
    invoke-direct {v4}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$handlerOperateData$$inlined$sortedBy$1;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    check-cast v2, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v3

    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/home/bean/MainOperateData;->setItems(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    move-object v4, v1

    .line 52
    check-cast v4, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_e

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/transsion/home/bean/OperateItem;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->SPORT_LIVE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_7

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    check-cast v6, Ljava/lang/Iterable;

    .line 93
    .line 94
    new-instance v7, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    move-object v9, v8

    .line 114
    check-cast v9, Lcom/transsion/home/bean/LiveListItem;

    .line 115
    .line 116
    invoke-virtual {v9}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    const-string v10, "MatchEnded"

    .line 121
    .line 122
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_4

    .line 127
    .line 128
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move-object v7, v3

    .line 133
    :cond_6
    if-eqz v7, :cond_3

    .line 134
    .line 135
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_d

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_MOVIE_RANK:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 147
    .line 148
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    const/4 v8, 0x3

    .line 157
    if-eqz v7, :cond_9

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    if-eqz v7, :cond_8

    .line 164
    .line 165
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    const/4 v6, 0x0

    .line 171
    :goto_3
    if-ge v6, v8, :cond_d

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_9
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->CUSTOM_DATA:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 179
    .line 180
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_b

    .line 189
    .line 190
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    invoke-virtual {v7}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-eqz v7, :cond_a

    .line 201
    .line 202
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    goto :goto_4

    .line 207
    :cond_a
    const/4 v6, 0x0

    .line 208
    :goto_4
    if-ge v6, v8, :cond_d

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_b
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 217
    .line 218
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_d

    .line 227
    .line 228
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    if-eqz v7, :cond_c

    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    if-eqz v7, :cond_c

    .line 239
    .line 240
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    goto :goto_5

    .line 245
    :cond_c
    const/4 v6, 0x0

    .line 246
    :goto_5
    if-eqz v6, :cond_3

    .line 247
    .line 248
    :cond_d
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getGroupPos()Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    goto :goto_6

    .line 264
    :cond_f
    const/4 v3, 0x0

    .line 265
    :goto_6
    const/4 v4, 0x1

    .line 266
    if-lez v3, :cond_12

    .line 267
    .line 268
    sget-object v3, Lep/k;->a:Lep/k;

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Lep/k;->m(Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getGroupPos()Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-eqz v3, :cond_10

    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    goto :goto_7

    .line 284
    :cond_10
    const/4 v3, 0x0

    .line 285
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-lt v3, v1, :cond_11

    .line 290
    .line 291
    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    .line 292
    .line 293
    move-object v7, v1

    .line 294
    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    const v37, 0x1fffffed

    .line 301
    .line 302
    .line 303
    const/16 v38, 0x0

    .line 304
    .line 305
    const/4 v8, 0x0

    .line 306
    const/4 v10, 0x0

    .line 307
    const/4 v11, 0x0

    .line 308
    const-string v12, "TrendingRoom"

    .line 309
    .line 310
    const/4 v13, 0x0

    .line 311
    const/4 v14, 0x0

    .line 312
    const/4 v15, 0x0

    .line 313
    const/16 v16, 0x0

    .line 314
    .line 315
    const/16 v17, 0x0

    .line 316
    .line 317
    const/16 v18, 0x0

    .line 318
    .line 319
    const/16 v19, 0x0

    .line 320
    .line 321
    const/16 v20, 0x0

    .line 322
    .line 323
    const/16 v21, 0x0

    .line 324
    .line 325
    const/16 v22, 0x0

    .line 326
    .line 327
    const/16 v23, 0x0

    .line 328
    .line 329
    const/16 v24, 0x0

    .line 330
    .line 331
    const/16 v25, 0x0

    .line 332
    .line 333
    const/16 v26, 0x0

    .line 334
    .line 335
    const/16 v27, 0x0

    .line 336
    .line 337
    const/16 v28, 0x0

    .line 338
    .line 339
    const/16 v29, 0x0

    .line 340
    .line 341
    const/16 v30, 0x0

    .line 342
    .line 343
    const/16 v31, 0x0

    .line 344
    .line 345
    const/16 v32, 0x0

    .line 346
    .line 347
    const/16 v33, 0x0

    .line 348
    .line 349
    const/16 v34, 0x0

    .line 350
    .line 351
    const/16 v35, 0x0

    .line 352
    .line 353
    const/16 v36, 0x0

    .line 354
    .line 355
    invoke-direct/range {v7 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_11
    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    .line 363
    .line 364
    move-object/from16 v39, v1

    .line 365
    .line 366
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v41

    .line 372
    const v69, 0x1fffffed

    .line 373
    .line 374
    .line 375
    const/16 v70, 0x0

    .line 376
    .line 377
    const/16 v40, 0x0

    .line 378
    .line 379
    const/16 v42, 0x0

    .line 380
    .line 381
    const/16 v43, 0x0

    .line 382
    .line 383
    const-string v44, "TrendingRoom"

    .line 384
    .line 385
    const/16 v45, 0x0

    .line 386
    .line 387
    const/16 v46, 0x0

    .line 388
    .line 389
    const/16 v47, 0x0

    .line 390
    .line 391
    const/16 v48, 0x0

    .line 392
    .line 393
    const/16 v49, 0x0

    .line 394
    .line 395
    const/16 v50, 0x0

    .line 396
    .line 397
    const/16 v51, 0x0

    .line 398
    .line 399
    const/16 v52, 0x0

    .line 400
    .line 401
    const/16 v53, 0x0

    .line 402
    .line 403
    const/16 v54, 0x0

    .line 404
    .line 405
    const/16 v55, 0x0

    .line 406
    .line 407
    const/16 v56, 0x0

    .line 408
    .line 409
    const/16 v57, 0x0

    .line 410
    .line 411
    const/16 v58, 0x0

    .line 412
    .line 413
    const/16 v59, 0x0

    .line 414
    .line 415
    const/16 v60, 0x0

    .line 416
    .line 417
    const/16 v61, 0x0

    .line 418
    .line 419
    const/16 v62, 0x0

    .line 420
    .line 421
    const/16 v63, 0x0

    .line 422
    .line 423
    const/16 v64, 0x0

    .line 424
    .line 425
    const/16 v65, 0x0

    .line 426
    .line 427
    const/16 v66, 0x0

    .line 428
    .line 429
    const/16 v67, 0x0

    .line 430
    .line 431
    const/16 v68, 0x0

    .line 432
    .line 433
    invoke-direct/range {v39 .. v70}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_12
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_20

    .line 453
    .line 454
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    .line 459
    .line 460
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    sget-object v7, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SUBJECT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 465
    .line 466
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-eqz v5, :cond_1e

    .line 475
    .line 476
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    const-string v8, "UGC_VIDEO_PORTRAIT_LINES"

    .line 481
    .line 482
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_1e

    .line 487
    .line 488
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    if-eqz v5, :cond_13

    .line 493
    .line 494
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    goto :goto_a

    .line 499
    :cond_13
    const/4 v5, 0x0

    .line 500
    :goto_a
    rem-int/lit8 v5, v5, 0x2

    .line 501
    .line 502
    if-nez v5, :cond_14

    .line 503
    .line 504
    move v5, v4

    .line 505
    goto :goto_b

    .line 506
    :cond_14
    const/4 v5, 0x0

    .line 507
    :goto_b
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    if-eqz v7, :cond_16

    .line 512
    .line 513
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    if-nez v7, :cond_15

    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_15
    const/4 v7, 0x0

    .line 521
    goto :goto_d

    .line 522
    :cond_16
    :goto_c
    move v7, v4

    .line 523
    :goto_d
    if-nez v7, :cond_17

    .line 524
    .line 525
    sget-object v7, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 526
    .line 527
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    new-instance v7, Lcom/transsion/home/bean/OperateItem;

    .line 540
    .line 541
    move-object v8, v7

    .line 542
    const v38, 0x1ffffff4

    .line 543
    .line 544
    .line 545
    const/16 v39, 0x0

    .line 546
    .line 547
    const/4 v11, 0x0

    .line 548
    const/4 v13, 0x0

    .line 549
    const/4 v14, 0x0

    .line 550
    const/4 v15, 0x0

    .line 551
    const/16 v16, 0x0

    .line 552
    .line 553
    const/16 v17, 0x0

    .line 554
    .line 555
    const/16 v18, 0x0

    .line 556
    .line 557
    const/16 v19, 0x0

    .line 558
    .line 559
    const/16 v20, 0x0

    .line 560
    .line 561
    const/16 v21, 0x0

    .line 562
    .line 563
    const/16 v22, 0x0

    .line 564
    .line 565
    const/16 v23, 0x0

    .line 566
    .line 567
    const/16 v24, 0x0

    .line 568
    .line 569
    const/16 v25, 0x0

    .line 570
    .line 571
    const/16 v26, 0x0

    .line 572
    .line 573
    const/16 v27, 0x0

    .line 574
    .line 575
    const/16 v28, 0x0

    .line 576
    .line 577
    const/16 v29, 0x0

    .line 578
    .line 579
    const/16 v30, 0x0

    .line 580
    .line 581
    const/16 v31, 0x0

    .line 582
    .line 583
    const/16 v32, 0x0

    .line 584
    .line 585
    const/16 v33, 0x0

    .line 586
    .line 587
    const/16 v34, 0x0

    .line 588
    .line 589
    const/16 v35, 0x0

    .line 590
    .line 591
    const/16 v36, 0x0

    .line 592
    .line 593
    const/16 v37, 0x0

    .line 594
    .line 595
    invoke-direct/range {v8 .. v39}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 596
    .line 597
    .line 598
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    :cond_17
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    if-eqz v7, :cond_1d

    .line 606
    .line 607
    check-cast v7, Ljava/lang/Iterable;

    .line 608
    .line 609
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 610
    .line 611
    .line 612
    move-result-object v39

    .line 613
    const/4 v7, 0x0

    .line 614
    :goto_e
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v8

    .line 618
    if-eqz v8, :cond_1d

    .line 619
    .line 620
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    add-int/lit8 v40, v7, 0x1

    .line 625
    .line 626
    if-gez v7, :cond_18

    .line 627
    .line 628
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 629
    .line 630
    .line 631
    :cond_18
    check-cast v8, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 632
    .line 633
    if-nez v7, :cond_19

    .line 634
    .line 635
    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    .line 636
    .line 637
    move-object v7, v15

    .line 638
    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 639
    .line 640
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 645
    .line 646
    .line 647
    move-result-object v28

    .line 648
    const v37, 0x17effffd

    .line 649
    .line 650
    .line 651
    const/16 v38, 0x0

    .line 652
    .line 653
    const/4 v8, 0x0

    .line 654
    const/4 v10, 0x0

    .line 655
    const/4 v11, 0x0

    .line 656
    const/4 v12, 0x0

    .line 657
    const/4 v13, 0x0

    .line 658
    const/4 v14, 0x0

    .line 659
    const/16 v16, 0x0

    .line 660
    .line 661
    move-object v6, v15

    .line 662
    move-object/from16 v15, v16

    .line 663
    .line 664
    const/16 v17, 0x0

    .line 665
    .line 666
    const/16 v18, 0x0

    .line 667
    .line 668
    const/16 v19, 0x0

    .line 669
    .line 670
    const/16 v20, 0x0

    .line 671
    .line 672
    const/16 v21, 0x0

    .line 673
    .line 674
    const/16 v22, 0x0

    .line 675
    .line 676
    const/16 v23, 0x0

    .line 677
    .line 678
    const/16 v24, 0x0

    .line 679
    .line 680
    const/16 v25, 0x0

    .line 681
    .line 682
    const/16 v26, 0x0

    .line 683
    .line 684
    const/16 v27, 0x0

    .line 685
    .line 686
    const/16 v29, 0x0

    .line 687
    .line 688
    const/16 v30, 0x0

    .line 689
    .line 690
    const/16 v31, 0x0

    .line 691
    .line 692
    const/16 v32, 0x0

    .line 693
    .line 694
    const/16 v33, 0x0

    .line 695
    .line 696
    const/16 v34, 0x0

    .line 697
    .line 698
    const/16 v36, 0x0

    .line 699
    .line 700
    move-object/from16 v35, v3

    .line 701
    .line 702
    invoke-direct/range {v7 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 703
    .line 704
    .line 705
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    goto :goto_10

    .line 709
    :cond_19
    if-eqz v5, :cond_1b

    .line 710
    .line 711
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 712
    .line 713
    .line 714
    move-result-object v6

    .line 715
    if-eqz v6, :cond_1a

    .line 716
    .line 717
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    sub-int/2addr v6, v4

    .line 722
    if-ne v7, v6, :cond_1a

    .line 723
    .line 724
    move v6, v4

    .line 725
    goto :goto_f

    .line 726
    :cond_1a
    const/4 v6, 0x0

    .line 727
    :goto_f
    if-nez v6, :cond_1c

    .line 728
    .line 729
    :cond_1b
    new-instance v6, Lcom/transsion/home/bean/OperateItem;

    .line 730
    .line 731
    move-object v7, v6

    .line 732
    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 733
    .line 734
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v9

    .line 738
    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 739
    .line 740
    .line 741
    move-result-object v28

    .line 742
    const v37, 0x17effffd

    .line 743
    .line 744
    .line 745
    const/16 v38, 0x0

    .line 746
    .line 747
    const/4 v8, 0x0

    .line 748
    const/4 v10, 0x0

    .line 749
    const/4 v11, 0x0

    .line 750
    const/4 v12, 0x0

    .line 751
    const/4 v13, 0x0

    .line 752
    const/4 v14, 0x0

    .line 753
    const/4 v15, 0x0

    .line 754
    const/16 v16, 0x0

    .line 755
    .line 756
    const/16 v17, 0x0

    .line 757
    .line 758
    const/16 v18, 0x0

    .line 759
    .line 760
    const/16 v19, 0x0

    .line 761
    .line 762
    const/16 v20, 0x0

    .line 763
    .line 764
    const/16 v21, 0x0

    .line 765
    .line 766
    const/16 v22, 0x0

    .line 767
    .line 768
    const/16 v23, 0x0

    .line 769
    .line 770
    const/16 v24, 0x0

    .line 771
    .line 772
    const/16 v25, 0x0

    .line 773
    .line 774
    const/16 v26, 0x0

    .line 775
    .line 776
    const/16 v27, 0x0

    .line 777
    .line 778
    const/16 v29, 0x0

    .line 779
    .line 780
    const/16 v30, 0x0

    .line 781
    .line 782
    const/16 v31, 0x0

    .line 783
    .line 784
    const/16 v32, 0x0

    .line 785
    .line 786
    const/16 v33, 0x0

    .line 787
    .line 788
    const/16 v34, 0x0

    .line 789
    .line 790
    const/16 v36, 0x0

    .line 791
    .line 792
    move-object/from16 v35, v3

    .line 793
    .line 794
    invoke-direct/range {v7 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 795
    .line 796
    .line 797
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    :cond_1c
    :goto_10
    move/from16 v7, v40

    .line 801
    .line 802
    goto/16 :goto_e

    .line 803
    .line 804
    :cond_1d
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 805
    .line 806
    move-object/from16 v42, v3

    .line 807
    .line 808
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_MARGIN:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 809
    .line 810
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v44

    .line 814
    const v72, 0x1ffffffd

    .line 815
    .line 816
    .line 817
    const/16 v73, 0x0

    .line 818
    .line 819
    const/16 v43, 0x0

    .line 820
    .line 821
    const/16 v45, 0x0

    .line 822
    .line 823
    const/16 v46, 0x0

    .line 824
    .line 825
    const/16 v47, 0x0

    .line 826
    .line 827
    const/16 v48, 0x0

    .line 828
    .line 829
    const/16 v49, 0x0

    .line 830
    .line 831
    const/16 v50, 0x0

    .line 832
    .line 833
    const/16 v51, 0x0

    .line 834
    .line 835
    const/16 v52, 0x0

    .line 836
    .line 837
    const/16 v53, 0x0

    .line 838
    .line 839
    const/16 v54, 0x0

    .line 840
    .line 841
    const/16 v55, 0x0

    .line 842
    .line 843
    const/16 v56, 0x0

    .line 844
    .line 845
    const/16 v57, 0x0

    .line 846
    .line 847
    const/16 v58, 0x0

    .line 848
    .line 849
    const/16 v59, 0x0

    .line 850
    .line 851
    const/16 v60, 0x0

    .line 852
    .line 853
    const/16 v61, 0x0

    .line 854
    .line 855
    const/16 v62, 0x0

    .line 856
    .line 857
    const/16 v63, 0x0

    .line 858
    .line 859
    const/16 v64, 0x0

    .line 860
    .line 861
    const/16 v65, 0x0

    .line 862
    .line 863
    const/16 v66, 0x0

    .line 864
    .line 865
    const/16 v67, 0x0

    .line 866
    .line 867
    const/16 v68, 0x0

    .line 868
    .line 869
    const/16 v69, 0x0

    .line 870
    .line 871
    const/16 v70, 0x0

    .line 872
    .line 873
    const/16 v71, 0x0

    .line 874
    .line 875
    invoke-direct/range {v42 .. v73}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 876
    .line 877
    .line 878
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    goto/16 :goto_9

    .line 882
    .line 883
    :cond_1e
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v6

    .line 891
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v5

    .line 895
    if-eqz v5, :cond_1f

    .line 896
    .line 897
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v5

    .line 901
    const-string v6, "UGC_VIDEO_SHORT_TV"

    .line 902
    .line 903
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    if-eqz v5, :cond_1f

    .line 908
    .line 909
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_PORTRAIT_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 910
    .line 911
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    invoke-virtual {v3, v5}, Lcom/transsion/home/bean/OperateItem;->setType(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    :cond_1f
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    goto/16 :goto_9

    .line 922
    .line 923
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->y()Landroidx/lifecycle/b0;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    if-nez v2, :cond_21

    .line 932
    .line 933
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 934
    .line 935
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    if-nez v2, :cond_21

    .line 940
    .line 941
    move-object/from16 v2, p0

    .line 942
    .line 943
    invoke-virtual {v2, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->x(Ljava/util/List;)I

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    if-ltz v3, :cond_22

    .line 948
    .line 949
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 950
    .line 951
    .line 952
    move-result v4

    .line 953
    if-ge v3, v4, :cond_22

    .line 954
    .line 955
    new-instance v4, Lcom/transsion/home/bean/OperateItem;

    .line 956
    .line 957
    move-object v5, v4

    .line 958
    sget-object v6, Lcom/transsion/moviedetailapi/bean/PostItemType;->NO_NETWORK:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 959
    .line 960
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v7

    .line 964
    const v35, 0x1ffffffd

    .line 965
    .line 966
    .line 967
    const/16 v36, 0x0

    .line 968
    .line 969
    const/4 v6, 0x0

    .line 970
    const/4 v8, 0x0

    .line 971
    const/4 v9, 0x0

    .line 972
    const/4 v10, 0x0

    .line 973
    const/4 v11, 0x0

    .line 974
    const/4 v12, 0x0

    .line 975
    const/4 v13, 0x0

    .line 976
    const/4 v14, 0x0

    .line 977
    const/4 v15, 0x0

    .line 978
    const/16 v16, 0x0

    .line 979
    .line 980
    const/16 v17, 0x0

    .line 981
    .line 982
    const/16 v18, 0x0

    .line 983
    .line 984
    const/16 v19, 0x0

    .line 985
    .line 986
    const/16 v20, 0x0

    .line 987
    .line 988
    const/16 v21, 0x0

    .line 989
    .line 990
    const/16 v22, 0x0

    .line 991
    .line 992
    const/16 v23, 0x0

    .line 993
    .line 994
    const/16 v24, 0x0

    .line 995
    .line 996
    const/16 v25, 0x0

    .line 997
    .line 998
    const/16 v26, 0x0

    .line 999
    .line 1000
    const/16 v27, 0x0

    .line 1001
    .line 1002
    const/16 v28, 0x0

    .line 1003
    .line 1004
    const/16 v29, 0x0

    .line 1005
    .line 1006
    const/16 v30, 0x0

    .line 1007
    .line 1008
    const/16 v31, 0x0

    .line 1009
    .line 1010
    const/16 v32, 0x0

    .line 1011
    .line 1012
    const/16 v33, 0x0

    .line 1013
    .line 1014
    const/16 v34, 0x0

    .line 1015
    .line 1016
    invoke-direct/range {v5 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_11

    .line 1023
    :cond_21
    move-object/from16 v2, p0

    .line 1024
    .line 1025
    :cond_22
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getTrendingTitle()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    if-eqz v3, :cond_23

    .line 1030
    .line 1031
    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 1032
    .line 1033
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v6

    .line 1037
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getTrendingTitle()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 1042
    .line 1043
    move-object v4, v3

    .line 1044
    const v34, 0x1ffffffc

    .line 1045
    .line 1046
    .line 1047
    const/16 v35, 0x0

    .line 1048
    .line 1049
    const/4 v7, 0x0

    .line 1050
    const/4 v8, 0x0

    .line 1051
    const/4 v9, 0x0

    .line 1052
    const/4 v10, 0x0

    .line 1053
    const/4 v11, 0x0

    .line 1054
    const/4 v12, 0x0

    .line 1055
    const/4 v13, 0x0

    .line 1056
    const/4 v14, 0x0

    .line 1057
    const/4 v15, 0x0

    .line 1058
    const/16 v16, 0x0

    .line 1059
    .line 1060
    const/16 v17, 0x0

    .line 1061
    .line 1062
    const/16 v18, 0x0

    .line 1063
    .line 1064
    const/16 v19, 0x0

    .line 1065
    .line 1066
    const/16 v20, 0x0

    .line 1067
    .line 1068
    const/16 v21, 0x0

    .line 1069
    .line 1070
    const/16 v22, 0x0

    .line 1071
    .line 1072
    const/16 v23, 0x0

    .line 1073
    .line 1074
    const/16 v24, 0x0

    .line 1075
    .line 1076
    const/16 v25, 0x0

    .line 1077
    .line 1078
    const/16 v26, 0x0

    .line 1079
    .line 1080
    const/16 v27, 0x0

    .line 1081
    .line 1082
    const/16 v28, 0x0

    .line 1083
    .line 1084
    const/16 v29, 0x0

    .line 1085
    .line 1086
    const/16 v30, 0x0

    .line 1087
    .line 1088
    const/16 v31, 0x0

    .line 1089
    .line 1090
    const/16 v32, 0x0

    .line 1091
    .line 1092
    const/16 v33, 0x0

    .line 1093
    .line 1094
    invoke-direct/range {v4 .. v35}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    :cond_23
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/MainOperateData;->setItems(Ljava/util/List;)V

    .line 1101
    .line 1102
    .line 1103
    :goto_12
    return-void
.end method

.method private static final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final H()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final K()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$2;

    .line 8
    .line 9
    invoke-direct {v2, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$2;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, v2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->b(Landroidx/lifecycle/t0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final L()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final M(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
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
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "trending_operating_version"

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, v3, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "trending_operating_data"

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private static final O()Lyk/e;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lyk/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lyk/e;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final P()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->G()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->P()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->H()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->v(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->L()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->s()Lcom/transsion/home/viewmodel/preload/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Lyk/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->O()Lyk/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->t(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lyk/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->C()Lyk/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->F(Lcom/transsion/home/bean/MainOperateData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->M(Lcom/transsion/home/bean/MainOperateData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final s()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/preload/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final t(Ljava/util/List;)Ljava/util/List;
    .locals 37

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/home/bean/TrendingRespItem;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v4

    .line 35
    :goto_1
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getDisplayMeta()Lcom/transsion/home/bean/DisplayMeta;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/home/bean/DisplayMeta;->getLayoutType()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v3, v4

    .line 49
    :goto_2
    sget-object v5, Lcom/transsion/home/bean/FeedsLayoutType;->FULL:Lcom/transsion/home/bean/FeedsLayoutType;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/transsion/home/bean/FeedsLayoutType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 62
    .line 63
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_3
    move-object/from16 v26, v4

    .line 80
    .line 81
    const v35, 0x1feffffd

    .line 82
    .line 83
    .line 84
    const/16 v36, 0x0

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    const/16 v19, 0x0

    .line 102
    .line 103
    const/16 v20, 0x0

    .line 104
    .line 105
    const/16 v21, 0x0

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    const/16 v27, 0x0

    .line 116
    .line 117
    const/16 v28, 0x0

    .line 118
    .line 119
    const/16 v29, 0x0

    .line 120
    .line 121
    const/16 v30, 0x0

    .line 122
    .line 123
    const/16 v31, 0x0

    .line 124
    .line 125
    const/16 v32, 0x0

    .line 126
    .line 127
    const/16 v33, 0x0

    .line 128
    .line 129
    const/16 v34, 0x0

    .line 130
    .line 131
    move-object v5, v3

    .line 132
    invoke-direct/range {v5 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getDisplayMeta()Lcom/transsion/home/bean/DisplayMeta;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    if-eqz v3, :cond_5

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/transsion/home/bean/DisplayMeta;->getLayoutType()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    move-object v3, v4

    .line 152
    :goto_3
    sget-object v5, Lcom/transsion/home/bean/FeedsLayoutType;->HALF:Lcom/transsion/home/bean/FeedsLayoutType;

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/transsion/home/bean/FeedsLayoutType;->getValue()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_0

    .line 163
    .line 164
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    .line 165
    .line 166
    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    :cond_6
    move-object/from16 v26, v4

    .line 183
    .line 184
    const v35, 0x1feffffd

    .line 185
    .line 186
    .line 187
    const/16 v36, 0x0

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    const/4 v8, 0x0

    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v13, 0x0

    .line 196
    const/4 v14, 0x0

    .line 197
    const/4 v15, 0x0

    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    const/16 v18, 0x0

    .line 203
    .line 204
    const/16 v19, 0x0

    .line 205
    .line 206
    const/16 v20, 0x0

    .line 207
    .line 208
    const/16 v21, 0x0

    .line 209
    .line 210
    const/16 v22, 0x0

    .line 211
    .line 212
    const/16 v23, 0x0

    .line 213
    .line 214
    const/16 v24, 0x0

    .line 215
    .line 216
    const/16 v25, 0x0

    .line 217
    .line 218
    const/16 v27, 0x0

    .line 219
    .line 220
    const/16 v28, 0x0

    .line 221
    .line 222
    const/16 v29, 0x0

    .line 223
    .line 224
    const/16 v30, 0x0

    .line 225
    .line 226
    const/16 v31, 0x0

    .line 227
    .line 228
    const/16 v32, 0x0

    .line 229
    .line 230
    const/16 v33, 0x0

    .line 231
    .line 232
    const/16 v34, 0x0

    .line 233
    .line 234
    move-object v5, v3

    .line 235
    invoke-direct/range {v5 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_7
    return-object v0
.end method

.method private static final v(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lzk/e;->a:Lzk/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "trending_room_entrance_cache_v2"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "TrendingUGCFragment"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-class v3, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 28
    .line 29
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->B()Landroidx/lifecycle/b0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 43
    .line 44
    const-string v0, "fetchGroupInfo use cache"

    .line 45
    .line 46
    invoke-virtual {p0, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    const-string v0, "fetchGroupInfo failed without cache"

    .line 53
    .line 54
    invoke-virtual {p0, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method private final w()Lcom/transsion/home/viewmodel/preload/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/home/viewmodel/preload/a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "trending_operating_data"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->w()Lcom/transsion/home/viewmodel/preload/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/transsion/home/viewmodel/preload/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    const-string v1, "PreloadTrending"

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-class v2, Lcom/transsion/home/bean/MainOperateData;

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/transsion/home/bean/MainOperateData;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 v3, 0x0

    .line 78
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "load operating cache size="

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, "}"

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v1, v3, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->F(Lcom/transsion/home/bean/MainOperateData;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->y()Landroidx/lifecycle/b0;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 115
    .line 116
    const-string v2, "preloadOperatingCache json is null"

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v4, "exception when from json "

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v2, v1, v0, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->K()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I()V
    .locals 1

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v0, 0xe

    .line 6
    .line 7
    iput v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->K()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final J()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/home/bean/TrendingRequestEntity;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPage(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPerPage(I)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljg/b;->a:Ljg/b$a;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljg/b$a;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/baselib/report/h;->b()Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    :cond_1
    const-string v1, ""

    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDeepLink(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lej/a;

    .line 53
    .line 54
    sget-object v2, Lej/b;->a:Lej/b$a;

    .line 55
    .line 56
    invoke-virtual {v2}, Lej/b$a;->e()Ljava/util/Queue;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v2}, Lej/a;-><init>(Ljava/util/Queue;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v6, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v6, v0, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    .line 78
    .line 79
    .line 80
    const/4 v7, 0x2

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final N(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Z)V
    .locals 7

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/home/viewmodel/u;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v4, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$fetchGroupInfo$1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$fetchGroupInfo$1;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final x(Ljava/util/List;)I
    .locals 1

    .line 1
    const-string v0, "operateItems"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_1
    return p1
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method
