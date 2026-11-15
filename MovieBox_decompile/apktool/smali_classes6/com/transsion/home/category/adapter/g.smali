.class public final Lcom/transsion/home/category/adapter/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/category/adapter/g;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/category/adapter/g;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->adapter_play_list_music:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/CategoryItemBean;)V
    .locals 13

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1b

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    sget v3, Lcom/transsion/home/R$id;->tv_title:I

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget v3, Lcom/transsion/home/R$id;->iv_cover:I

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 54
    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "getContext(...)"

    .line 64
    .line 65
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, ""

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-nez v5, :cond_3

    .line 85
    .line 86
    :cond_2
    move-object v5, v6

    .line 87
    :cond_3
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-nez v5, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move-object v6, v5

    .line 105
    :cond_5
    :goto_1
    invoke-virtual {v4, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    sget v3, Lcom/transsion/home/R$id;->tvRankNum:I

    .line 113
    .line 114
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    if-eqz v3, :cond_a

    .line 121
    .line 122
    iget-boolean v4, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    move v4, v2

    .line 127
    goto :goto_2

    .line 128
    :cond_7
    const/16 v4, 0x8

    .line 129
    .line 130
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-boolean v4, p0, Lcom/transsion/home/category/adapter/g;->f:Z

    .line 134
    .line 135
    if-eqz v4, :cond_a

    .line 136
    .line 137
    add-int/lit8 v4, v1, 0x1

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    const/16 v5, 0x63

    .line 147
    .line 148
    if-le v4, v5, :cond_8

    .line 149
    .line 150
    const/high16 v4, 0x41600000    # 14.0f

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_8
    const/16 v5, 0x9

    .line 154
    .line 155
    if-le v4, v5, :cond_9

    .line 156
    .line 157
    const/high16 v4, 0x41900000    # 18.0f

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    const/high16 v4, 0x41a00000    # 20.0f

    .line 161
    .line 162
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    .line 164
    .line 165
    :cond_a
    sget v3, Lcom/transsion/home/R$id;->ll_download:I

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/transsnet/downloader/widget/DownloadView;

    .line 172
    .line 173
    if-eqz v3, :cond_11

    .line 174
    .line 175
    iget-object v4, p0, Lcom/transsion/home/category/adapter/g;->e:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v4, Lij/t;->a:Lij/t;

    .line 181
    .line 182
    invoke-virtual {v4}, Lij/t;->b()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_b

    .line 187
    .line 188
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 192
    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_c

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    goto :goto_4

    .line 212
    :cond_c
    move v3, v2

    .line 213
    :goto_4
    const/4 v4, 0x1

    .line 214
    if-eqz v3, :cond_10

    .line 215
    .line 216
    sget v3, Lcom/transsion/home/R$id;->ll_download:I

    .line 217
    .line 218
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object v5, v3

    .line 223
    check-cast v5, Lcom/transsnet/downloader/widget/DownloadView;

    .line 224
    .line 225
    if-eqz v5, :cond_11

    .line 226
    .line 227
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    if-eqz v3, :cond_11

    .line 235
    .line 236
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    if-eqz v3, :cond_11

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    if-eqz p2, :cond_d

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    :goto_5
    move-object v6, p2

    .line 253
    goto :goto_6

    .line 254
    :cond_d
    const/4 p2, 0x0

    .line 255
    goto :goto_5

    .line 256
    :goto_6
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    if-nez p2, :cond_e

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-ne p2, v4, :cond_f

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_f
    :goto_7
    move v4, v2

    .line 275
    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    const/16 v11, 0x18

    .line 280
    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    invoke-static/range {v5 .. v12}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_10
    sget p2, Lcom/transsion/home/R$id;->ll_download:I

    .line 289
    .line 290
    invoke-virtual {p1, p2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 291
    .line 292
    .line 293
    :cond_11
    :goto_9
    if-nez v1, :cond_14

    .line 294
    .line 295
    sget p2, Lcom/transsion/home/R$id;->divider:I

    .line 296
    .line 297
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    if-eqz p2, :cond_12

    .line 302
    .line 303
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    :cond_12
    sget p2, Lcom/transsion/home/R$id;->bg_gradient:I

    .line 307
    .line 308
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    if-eqz p2, :cond_13

    .line 313
    .line 314
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 315
    .line 316
    .line 317
    :cond_13
    sget p2, Lcom/transsion/home/R$id;->item_root:I

    .line 318
    .line 319
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    if-eqz p2, :cond_17

    .line 324
    .line 325
    sget v3, Lcom/transsion/home/R$drawable;->bg_category_first_item:I

    .line 326
    .line 327
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_14
    sget p2, Lcom/transsion/home/R$id;->divider:I

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    if-eqz p2, :cond_15

    .line 338
    .line 339
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 340
    .line 341
    .line 342
    :cond_15
    sget p2, Lcom/transsion/home/R$id;->bg_gradient:I

    .line 343
    .line 344
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    if-eqz p2, :cond_16

    .line 349
    .line 350
    invoke-static {p2}, Luf/c;->g(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    :cond_16
    sget p2, Lcom/transsion/home/R$id;->item_root:I

    .line 354
    .line 355
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    if-eqz p2, :cond_17

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    sget v4, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 366
    .line 367
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 372
    .line 373
    .line 374
    :cond_17
    :goto_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    if-eqz p2, :cond_1a

    .line 379
    .line 380
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    if-eqz p2, :cond_1a

    .line 385
    .line 386
    check-cast p2, Ljava/lang/Iterable;

    .line 387
    .line 388
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_1a

    .line 397
    .line 398
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    add-int/lit8 v4, v2, 0x1

    .line 403
    .line 404
    if-gez v2, :cond_18

    .line 405
    .line 406
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 407
    .line 408
    .line 409
    :cond_18
    check-cast v3, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    .line 410
    .line 411
    if-ge v2, v1, :cond_19

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 414
    .line 415
    .line 416
    :cond_19
    move v2, v4

    .line 417
    goto :goto_b

    .line 418
    :cond_1a
    sget p2, Lcom/transsion/home/R$id;->iv_playlist_page_corner:I

    .line 419
    .line 420
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {p1, p2, v0}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 435
    .line 436
    .line 437
    :cond_1b
    return-void
.end method
