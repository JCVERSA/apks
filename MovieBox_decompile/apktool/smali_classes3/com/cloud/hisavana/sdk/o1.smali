.class public final Lcom/cloud/hisavana/sdk/o1;
.super Lcom/cloud/hisavana/sdk/k0;
.source "source.java"


# instance fields
.field private d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private h:J

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rootView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "helper"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/k0;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/cloud/hisavana/sdk/o1;->i:I

    .line 21
    .line 22
    iput p1, p0, Lcom/cloud/hisavana/sdk/o1;->j:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/o1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/o1;->n(Lcom/cloud/hisavana/sdk/o1;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lcom/cloud/hisavana/sdk/o1;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/o1;->p(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/widget/TextView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v4, v3

    .line 37
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    const/16 v4, 0x8

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-lez v5, :cond_3

    .line 56
    .line 57
    move v5, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v5, v4

    .line 60
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    sget v6, Lcom/cloud/hisavana/sdk/R$id;->tv_reward_tips:I

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    sget v7, Lcom/cloud/hisavana/sdk/R$id;->iv_download_app_score:I

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ad_description:I

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->ad_float_container:I

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    new-instance v9, Lcom/cloud/hisavana/sdk/n1;

    .line 114
    .line 115
    invoke-direct {v9, p0}, Lcom/cloud/hisavana/sdk/n1;-><init>(Lcom/cloud/hisavana/sdk/o1;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    .line 120
    .line 121
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 126
    .line 127
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :catchall_0
    move-object v2, v3

    .line 135
    :goto_4
    :try_start_2
    iget v9, p0, Lcom/cloud/hisavana/sdk/o1;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    .line 137
    const/4 v10, 0x2

    .line 138
    const-string v11, " \u00b7 "

    .line 139
    .line 140
    if-eq v9, v10, :cond_14

    .line 141
    .line 142
    const/4 v10, 0x3

    .line 143
    if-eq v9, v10, :cond_9

    .line 144
    .line 145
    if-nez v6, :cond_5

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_5
    :try_start_3
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    :goto_5
    if-nez v7, :cond_6

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    sget-object v1, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/w2$a;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/w2$a;->b(F)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_7

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :goto_6
    if-nez v5, :cond_8

    .line 198
    .line 199
    goto/16 :goto_f

    .line 200
    .line 201
    :cond_8
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_download_reward_pull_new:I

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_f

    .line 219
    .line 220
    :cond_9
    if-nez v2, :cond_a

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_a
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    :goto_7
    if-nez v6, :cond_b

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_b
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :goto_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-interface {v2}, Lcom/cloud/hisavana/sdk/z3;->c()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_c

    .line 241
    .line 242
    new-instance v2, Landroidx/constraintlayout/widget/b;

    .line 243
    .line 244
    invoke-direct {v2}, Landroidx/constraintlayout/widget/b;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/widget/b;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 248
    .line 249
    .line 250
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 251
    .line 252
    const/4 v6, 0x4

    .line 253
    invoke-virtual {v2, v4, v6}, Landroidx/constraintlayout/widget/b;->n(II)V

    .line 254
    .line 255
    .line 256
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 257
    .line 258
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->iv_reward_download_bg:I

    .line 259
    .line 260
    invoke-virtual {v2, v4, v6, v9, v6}, Landroidx/constraintlayout/widget/b;->s(IIII)V

    .line 261
    .line 262
    .line 263
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 264
    .line 265
    const/high16 v6, 0x3f000000    # 0.5f

    .line 266
    .line 267
    invoke-virtual {v2, v4, v6}, Landroidx/constraintlayout/widget/b;->W(IF)V

    .line 268
    .line 269
    .line 270
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 271
    .line 272
    invoke-virtual {v2, v4, v10, v1}, Landroidx/constraintlayout/widget/b;->U(III)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/widget/b;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 276
    .line 277
    .line 278
    :cond_c
    if-nez v7, :cond_d

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    sget-object v4, Lcom/cloud/hisavana/sdk/w2;->a:Lcom/cloud/hisavana/sdk/w2$a;

    .line 287
    .line 288
    invoke-virtual {v4, p1}, Lcom/cloud/hisavana/sdk/w2$a;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    invoke-virtual {v4, v6}, Lcom/cloud/hisavana/sdk/w2$a;->b(F)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    if-eqz p1, :cond_e

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    if-eqz v4, :cond_e

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    goto :goto_9

    .line 315
    :cond_e
    move-object v4, v3

    .line 316
    :goto_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    :goto_a
    if-eqz p1, :cond_f

    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    if-eqz p1, :cond_f

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getDwellTime()Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    :cond_f
    if-nez v3, :cond_10

    .line 339
    .line 340
    move p1, v1

    .line 341
    goto :goto_b

    .line 342
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    :goto_b
    iput p1, p0, Lcom/cloud/hisavana/sdk/o1;->g:I

    .line 347
    .line 348
    if-gtz p1, :cond_12

    .line 349
    .line 350
    if-nez v5, :cond_11

    .line 351
    .line 352
    goto/16 :goto_f

    .line 353
    .line 354
    :cond_11
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_download_reward_pull_live_no_time:I

    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_f

    .line 372
    .line 373
    :cond_12
    if-nez v5, :cond_13

    .line 374
    .line 375
    goto/16 :goto_f

    .line 376
    .line 377
    :cond_13
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 378
    .line 379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_reward_pull_live:I

    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const-string v3, "getString(...)"

    .line 398
    .line 399
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget v3, p0, Lcom/cloud/hisavana/sdk/o1;->g:I

    .line 403
    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    new-array v4, v0, [Ljava/lang/Object;

    .line 409
    .line 410
    aput-object v3, v4, v1

    .line 411
    .line 412
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    const-string v0, "format(...)"

    .line 421
    .line 422
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    goto :goto_f

    .line 429
    :cond_14
    if-nez v6, :cond_15

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_15
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    :goto_c
    if-nez v7, :cond_16

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 444
    .line 445
    if-eqz p1, :cond_17

    .line 446
    .line 447
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    if-eqz v2, :cond_17

    .line 452
    .line 453
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getSourceSize()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    goto :goto_d

    .line 458
    :cond_17
    move-object v2, v3

    .line 459
    :goto_d
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    if-eqz p1, :cond_18

    .line 470
    .line 471
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    if-eqz p1, :cond_18

    .line 476
    .line 477
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    :cond_18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    :goto_e
    if-nez v5, :cond_19

    .line 492
    .line 493
    goto :goto_f

    .line 494
    :cond_19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_download_reward_pull_new:I

    .line 503
    .line 504
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 509
    .line 510
    .line 511
    :catchall_1
    :goto_f
    return-void
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;F)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float p2, v0, p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_before_tip_r02:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setTickStringFormat(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_after_tip_r02:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setFinishedString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, p0, Lcom/cloud/hisavana/sdk/o1;->e:I

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o1;->d:Z

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o1;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/z3;->b()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/cloud/hisavana/sdk/o1;->o(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/cloud/hisavana/sdk/o1;->p(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/o1;->h:J

    .line 6
    .line 7
    return-void
.end method

.method public i()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/o1;->f:Z

    .line 4
    .line 5
    if-eqz v2, :cond_2

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/o1;->f:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/o1;->h:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    iget v4, p0, Lcom/cloud/hisavana/sdk/o1;->g:I

    .line 17
    .line 18
    int-to-long v4, v4

    .line 19
    const/16 v6, 0x3e8

    .line 20
    .line 21
    int-to-long v6, v6

    .line 22
    div-long/2addr v2, v6

    .line 23
    sub-long/2addr v4, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v2, v4, v2

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    long-to-int v2, v4

    .line 31
    iput v2, p0, Lcom/cloud/hisavana/sdk/o1;->g:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tv_reward_tips:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/TextView;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 49
    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget v5, Lcom/cloud/hisavana/sdk/R$string;->hs_download_reward_pull_live:I

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "getString(...)"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v5, p0, Lcom/cloud/hisavana/sdk/o1;->g:I

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-array v6, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v5, v6, v1

    .line 82
    .line 83
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "format(...)"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->a()V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->iv_reward_gift:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "findViewById(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->ad_reward_time_gift_done:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r02:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "9:16"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r02_916:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r02:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_1
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r02:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-static {}, Lc7/b;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->e:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const-string v2, "getOrDefault(...)"

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->hs_reward_claimed_toast:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v3, v0

    .line 56
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_2
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->hs_reward_claimed_download:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object v3, v0

    .line 101
    :goto_3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_4
    return-void
.end method

.method public final o(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->i:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->j:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    aget p2, v0, p2

    .line 28
    .line 29
    iput p2, p0, Lcom/cloud/hisavana/sdk/o1;->i:I

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    aget p2, v0, p2

    .line 33
    .line 34
    iput p2, p0, Lcom/cloud/hisavana/sdk/o1;->j:I

    .line 35
    .line 36
    :cond_1
    iget p2, p0, Lcom/cloud/hisavana/sdk/o1;->i:I

    .line 37
    .line 38
    if-eq p2, v1, :cond_2

    .line 39
    .line 40
    iget p2, p0, Lcom/cloud/hisavana/sdk/o1;->j:I

    .line 41
    .line 42
    if-eq p2, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownX()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->i:I

    .line 49
    .line 50
    int-to-float v0, v0

    .line 51
    add-float/2addr p2, v0

    .line 52
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->setDownX(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownY()F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->j:I

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    add-float/2addr p2, v0

    .line 63
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->setDownY(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "calculateLocation error: "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "RewardR02SytleImpl"

    .line 93
    .line 94
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_2
    return-void
.end method

.method public final p(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/o1;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq v0, v3, :cond_1

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-eq v0, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2, v2, p1}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/o1;->f:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2, v2, p1}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/o1;->d:Z

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2, p1}, Lcom/cloud/hisavana/sdk/z3;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->d()V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2, v3}, Lcom/cloud/hisavana/sdk/z3;->a(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2, v1}, Lcom/cloud/hisavana/sdk/z3;->a(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p2, v2, p1}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/z3;->e()V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method
