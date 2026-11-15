.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lrk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    .line 4
    .line 5
    .line 6
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "mAdapter"

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p4, v0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    move-object v3, p4

    .line 29
    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    .line 30
    .line 31
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 32
    .line 33
    invoke-static {p4, p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->c1(Lcom/transsion/home/fragment/tab/TrendingFragment;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->OP_SUBJECTS_MOVIE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    const-string v4, "_Full"

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    :try_start_2
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_9

    .line 59
    .line 60
    sget-object v2, Lzk/c;->a:Lzk/c;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-wide v6, p2

    .line 82
    move v8, p1

    .line 83
    invoke-virtual/range {v2 .. v8}, Lzk/c;->s(Lcom/transsion/home/bean/OperateItem;Ljava/lang/String;Ljava/util/List;JI)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_1
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->CUSTOM_DATA:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getCustomData()Lcom/transsion/home/bean/CustomData;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    if-eqz p4, :cond_9

    .line 105
    .line 106
    invoke-virtual {p4}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_9

    .line 111
    .line 112
    sget-object v2, Lzk/c;->a:Lzk/c;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    move-wide v6, p2

    .line 134
    move v8, p1

    .line 135
    invoke-virtual/range {v2 .. v8}, Lzk/c;->b(Lcom/transsion/home/bean/OperateItem;Ljava/lang/String;Ljava/util/List;JI)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_2
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->HORIZONTAL_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_8

    .line 151
    .line 152
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->SPORT_LIVE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_4

    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-eqz v5, :cond_9

    .line 183
    .line 184
    sget-object v2, Lzk/c;->a:Lzk/c;

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    move-wide v6, p2

    .line 206
    move v8, p1

    .line 207
    invoke-virtual/range {v2 .. v8}, Lzk/c;->t(Lcom/transsion/home/bean/OperateItem;Ljava/lang/String;Ljava/util/List;JI)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_4

    .line 211
    .line 212
    :cond_4
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_5

    .line 223
    .line 224
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->X0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/viewmodel/TrendingViewModel;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_9

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->W()Landroidx/lifecycle/b0;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-eqz p1, :cond_9

    .line 237
    .line 238
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_5
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->SINGLE_IMAGE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p4

    .line 255
    if-eqz p4, :cond_6

    .line 256
    .line 257
    sget-object p4, Lzk/c;->a:Lzk/c;

    .line 258
    .line 259
    invoke-virtual {p4, p1, p2, p3, v3}, Lzk/c;->e(IJLcom/transsion/home/bean/OperateItem;)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_6
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 264
    .line 265
    invoke-virtual {p4}, Lcom/transsion/home/fragment/tab/TrendingFragment;->C1()Lrk/c;

    .line 266
    .line 267
    .line 268
    move-result-object p4

    .line 269
    if-eqz p4, :cond_9

    .line 270
    .line 271
    iget-object v2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$e;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    .line 272
    .line 273
    invoke-static {v2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    if-nez v2, :cond_7

    .line 278
    .line 279
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_7
    move-object v0, v2

    .line 284
    :goto_1
    invoke-virtual {p4, v0, p1, p2, p3}, Lrk/c;->a(Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;IJ)V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 289
    .line 290
    .line 291
    move-result-object p4

    .line 292
    if-eqz p4, :cond_9

    .line 293
    .line 294
    invoke-virtual {p4}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-eqz v5, :cond_9

    .line 299
    .line 300
    sget-object v2, Lzk/c;->a:Lzk/c;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    move-wide v6, p2

    .line 322
    move v8, p1

    .line 323
    invoke-virtual/range {v2 .. v8}, Lzk/c;->b(Lcom/transsion/home/bean/OperateItem;Ljava/lang/String;Ljava/util/List;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_9

    .line 332
    .line 333
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 334
    .line 335
    const/4 v4, 0x4

    .line 336
    const/4 v5, 0x0

    .line 337
    const-string v1, "reportExposure"

    .line 338
    .line 339
    const/4 v3, 0x0

    .line 340
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_9
    :goto_4
    return-void
.end method
