.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;
.super Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;
.source "source.java"


# instance fields
.field public OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

.field public OooOO0:Landroid/widget/ImageView;

.field public OooOO0O:Landroid/widget/ImageView;

.field public OooOO0o:Landroid/widget/ImageView;

.field public OooOOO:Landroid/widget/TextView;

.field public OooOOO0:Landroid/widget/ImageView;

.field public OooOOOO:Landroid/widget/TextView;

.field public OooOOOo:Landroid/widget/TextView;

.field public OooOOo:F

.field public OooOOo0:Landroid/widget/ImageView;

.field public OooOOoo:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v7, "gif"

    .line 12
    .line 13
    const-string v8, "context"

    .line 14
    .line 15
    move-object/from16 v9, p1

    .line 16
    .line 17
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v8, "triggerId"

    .line 21
    .line 22
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v8, "mainImgUrl"

    .line 26
    .line 27
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v8, "styleBean"

    .line 31
    .line 32
    move-object/from16 v10, p8

    .line 33
    .line 34
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    .line 41
    .line 42
    move-object/from16 v8, p9

    .line 43
    .line 44
    iput-object v8, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 45
    .line 46
    :try_start_0
    sget v8, Lcom/cloud/tmc/ad/R$layout;->view_interstitial_json_all_styles:I

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 52
    .line 53
    .line 54
    const/4 v8, -0x1

    .line 55
    invoke-virtual {v0, v8}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 56
    .line 57
    .line 58
    sget v11, Lcom/cloud/tmc/ad/R$id;->cl_content:I

    .line 59
    .line 60
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_main:I

    .line 69
    .line 70
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    check-cast v11, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_ad:I

    .line 79
    .line 80
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Landroid/widget/ImageView;

    .line 85
    .line 86
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 87
    .line 88
    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_homepage:I

    .line 89
    .line 90
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 97
    .line 98
    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_logo:I

    .line 99
    .line 100
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Landroid/widget/ImageView;

    .line 105
    .line 106
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO0:Landroid/widget/ImageView;

    .line 107
    .line 108
    sget v11, Lcom/cloud/tmc/ad/R$id;->iv_close:I

    .line 109
    .line 110
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Landroid/widget/ImageView;

    .line 115
    .line 116
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    .line 117
    .line 118
    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_title:I

    .line 119
    .line 120
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    check-cast v11, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO:Landroid/widget/TextView;

    .line 127
    .line 128
    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_content:I

    .line 129
    .line 130
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOO:Landroid/widget/TextView;

    .line 137
    .line 138
    sget v11, Lcom/cloud/tmc/ad/R$id;->tv_next:I

    .line 139
    .line 140
    invoke-virtual {v0, v11}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOo:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowTitle()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_1

    .line 153
    .line 154
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_1

    .line 159
    .line 160
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO:Landroid/widget/TextView;

    .line 161
    .line 162
    if-eqz v11, :cond_1

    .line 163
    .line 164
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    move-object/from16 v12, p5

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    if-nez v11, :cond_0

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 180
    .line 181
    .line 182
    :cond_1
    :goto_0
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowDescript()Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-eqz v11, :cond_2

    .line 187
    .line 188
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-nez v11, :cond_2

    .line 193
    .line 194
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOO:Landroid/widget/TextView;

    .line 195
    .line 196
    if-eqz v11, :cond_2

    .line 197
    .line 198
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    move-object/from16 v12, p6

    .line 202
    .line 203
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_2
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowButton()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_3

    .line 211
    .line 212
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    if-nez v11, :cond_3

    .line 217
    .line 218
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOOo:Landroid/widget/TextView;

    .line 219
    .line 220
    if-eqz v11, :cond_3

    .line 221
    .line 222
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v12, p7

    .line 226
    .line 227
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowLogo()Z

    .line 231
    .line 232
    .line 233
    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    const-string v12, "RequestOptions()\n       \u2026                        )"

    .line 235
    .line 236
    const/high16 v13, 0x41000000    # 8.0f

    .line 237
    .line 238
    if-eqz v11, :cond_4

    .line 239
    .line 240
    :try_start_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_4

    .line 245
    .line 246
    new-instance v11, Ljava/io/File;

    .line 247
    .line 248
    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-eqz v11, :cond_4

    .line 256
    .line 257
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOO0:Landroid/widget/ImageView;

    .line 258
    .line 259
    if-eqz v11, :cond_4

    .line 260
    .line 261
    new-instance v14, Lcom/bumptech/glide/request/RequestOptions;

    .line 262
    .line 263
    invoke-direct {v14}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 264
    .line 265
    .line 266
    new-instance v15, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    .line 267
    .line 268
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    int-to-float v5, v5

    .line 273
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    int-to-float v8, v8

    .line 278
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    int-to-float v4, v4

    .line 283
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    int-to-float v6, v6

    .line 288
    invoke-direct {v15, v5, v8, v4, v6}, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;-><init>(FFFF)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v14, v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    .line 299
    .line 300
    const/4 v5, 0x0

    .line 301
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    .line 321
    .line 322
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 327
    .line 328
    .line 329
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-nez v3, :cond_a

    .line 334
    .line 335
    new-instance v3, Ljava/io/File;

    .line 336
    .line 337
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_a

    .line 345
    .line 346
    const/4 v3, 0x0

    .line 347
    const/4 v4, 0x0

    .line 348
    const/4 v5, 0x2

    .line 349
    invoke-static {v2, v7, v4, v5, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    const/high16 v4, 0x3f800000    # 1.0f

    .line 354
    .line 355
    if-eqz v6, :cond_5

    .line 356
    .line 357
    move v5, v4

    .line 358
    goto :goto_1

    .line 359
    :cond_5
    move v5, v13

    .line 360
    :goto_1
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowButton()Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-nez v6, :cond_8

    .line 365
    .line 366
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowLogo()Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-nez v6, :cond_8

    .line 371
    .line 372
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowTitle()Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-nez v6, :cond_8

    .line 377
    .line 378
    invoke-virtual/range {p8 .. p8}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->getShowDescript()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-nez v6, :cond_8

    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    const/4 v8, 0x2

    .line 386
    invoke-static {v2, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    if-eqz v10, :cond_6

    .line 391
    .line 392
    move v13, v4

    .line 393
    :cond_6
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 394
    .line 395
    const/4 v8, -0x2

    .line 396
    const/4 v10, -0x1

    .line 397
    invoke-direct {v4, v10, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 398
    .line 399
    .line 400
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 401
    .line 402
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    .line 403
    .line 404
    if-nez v6, :cond_7

    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    goto :goto_2

    .line 411
    :cond_8
    const/4 v13, 0x0

    .line 412
    :goto_2
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0:Landroid/widget/ImageView;

    .line 413
    .line 414
    if-eqz v4, :cond_a

    .line 415
    .line 416
    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    .line 417
    .line 418
    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 419
    .line 420
    .line 421
    new-instance v8, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    .line 422
    .line 423
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    int-to-float v10, v10

    .line 428
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    int-to-float v5, v5

    .line 433
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    int-to-float v11, v11

    .line 438
    invoke-static {v13}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    int-to-float v13, v13

    .line 443
    invoke-direct {v8, v10, v5, v11, v13}, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;-><init>(FFFF)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    .line 454
    .line 455
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    int-to-double v10, v6

    .line 460
    const-wide v12, 0x3fe70a3d70a3d70aL    # 0.72

    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    mul-double/2addr v10, v12

    .line 466
    double-to-int v6, v10

    .line 467
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 468
    .line 469
    .line 470
    const/4 v6, 0x0

    .line 471
    const/4 v8, 0x2

    .line 472
    invoke-static {v2, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    const-string v6, "{\n                      \u2026                        }"

    .line 477
    .line 478
    if-eqz v3, :cond_9

    .line 479
    .line 480
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-static/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    invoke-virtual {v3, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    .line 497
    .line 498
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    goto :goto_3

    .line 514
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-static/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 531
    .line 532
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 544
    .line 545
    if-eqz v2, :cond_b

    .line 546
    .line 547
    const/4 v3, 0x1

    .line 548
    invoke-interface {v2, v1, v3}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    .line 549
    .line 550
    .line 551
    :cond_b
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 552
    .line 553
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 554
    .line 555
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    .line 556
    .line 557
    const/4 v4, 0x3

    .line 558
    new-array v4, v4, [Landroid/view/View;

    .line 559
    .line 560
    const/4 v5, 0x0

    .line 561
    aput-object v1, v4, v5

    .line 562
    .line 563
    const/4 v1, 0x1

    .line 564
    aput-object v2, v4, v1

    .line 565
    .line 566
    const/4 v1, 0x2

    .line 567
    aput-object v3, v4, v1

    .line 568
    .line 569
    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 573
    .line 574
    if-eqz v1, :cond_c

    .line 575
    .line 576
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/interstitial/d;

    .line 577
    .line 578
    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/d;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    .line 583
    .line 584
    goto :goto_4

    .line 585
    :catchall_0
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 586
    .line 587
    if-eqz v1, :cond_c

    .line 588
    .line 589
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    .line 590
    .line 591
    const/4 v3, 0x0

    .line 592
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    .line 593
    .line 594
    .line 595
    :cond_c
    :goto_4
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    .line 3
    iget v4, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo:F

    .line 4
    iget v5, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOoo:F

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 9
    new-instance v12, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    move-object v3, v12

    invoke-direct/range {v3 .. v9}, Lcom/cloud/tmc/ad/bean/DownUpPointBean;-><init>(FFFFII)V

    .line 10
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v10, :cond_2

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/cloud/tmc/ad/interface/AdEventListener$DefaultImpls;->click$default(Lcom/cloud/tmc/ad/interface/AdEventListener;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo:F

    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOoo:F

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
    .locals 3

    const-string v0, "adShowBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    :cond_0
    return-void
.end method

.method public OooO0O0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickPersonalization(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 41
    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickHomePage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooOOo0:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oO:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v8, Lcom/cloud/tmc/ad/bean/AdClickBean;

    .line 65
    .line 66
    const/4 v6, 0x7

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v1, v8

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/ad/bean/AdClickBean;-><init>(IJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowTimes(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v8}, Lcom/cloud/tmc/ad/bean/AdClickBean;->getShowDuration()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    sub-long/2addr v1, v3

    .line 90
    invoke-virtual {v8, v1, v2}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowDuration(J)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move-object v1, v2

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, "*"

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowArea(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    invoke-interface {p1, v0, v8}, Lcom/cloud/tmc/ad/interface/AdEventListener;->closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_1
    return-void
.end method
