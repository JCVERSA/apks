.class public abstract Lfo/i;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$id;->nine_grid:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/ninegridview/video/NineGridVideoView;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Lfo/i;->B(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/transsion/postdetail/R$id;->ivCenterIcon:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p2}, Lfo/i;->A(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 21
    .line 22
    .line 23
    sget v0, Lcom/transsion/postdetail/R$id;->tvTime:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lfo/i;->C(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/transsion/postdetail/R$id;->tvTitle:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget v0, Lcom/transsion/postdetail/R$id;->tvTitle:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_d

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, v1

    .line 49
    :goto_1
    const-string v2, "yyyy-MM-dd"

    .line 50
    .line 51
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 60
    .line 61
    .line 62
    sget v0, Lcom/transsion/postdetail/R$id;->tvSubjectYear:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move-object v2, v1

    .line 101
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    const-string v2, " \u2022 "

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move-object v4, v1

    .line 125
    :goto_3
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move-object v2, v1

    .line 147
    :goto_4
    invoke-static {v2}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {v3, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    sget v4, Lcom/tn/lib/widget/R$color;->gray_40:I

    .line 166
    .line 167
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 172
    .line 173
    .line 174
    :cond_6
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    sget v0, Lcom/transsion/postdetail/R$id;->tvSubject:I

    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    goto :goto_5

    .line 190
    :cond_8
    move-object v2, v1

    .line 191
    :goto_5
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 192
    .line 193
    .line 194
    sget v0, Lcom/transsion/postdetail/R$id;->ivSubjectCover:I

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 201
    .line 202
    if-eqz v0, :cond_d

    .line 203
    .line 204
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const-string v4, "getContext(...)"

    .line 211
    .line 212
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const-string v4, ""

    .line 224
    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-nez v3, :cond_a

    .line 238
    .line 239
    :cond_9
    move-object v3, v4

    .line 240
    :cond_a
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const/high16 v3, 0x42280000    # 42.0f

    .line 251
    .line 252
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/high16 v3, 0x42600000    # 56.0f

    .line 261
    .line 262
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    invoke-virtual {v2, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eqz v3, :cond_c

    .line 275
    .line 276
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-eqz v3, :cond_c

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-nez v3, :cond_b

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_b
    move-object v4, v3

    .line 290
    :cond_c
    :goto_6
    invoke-virtual {v2, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 295
    .line 296
    .line 297
    :cond_d
    sget v0, Lcom/transsion/postdetail/R$id;->llDownload:I

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 304
    .line 305
    if-eqz p1, :cond_11

    .line 306
    .line 307
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_e

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    move-object v3, v0

    .line 318
    goto :goto_7

    .line 319
    :cond_e
    move-object v3, v1

    .line 320
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    if-eqz v0, :cond_f

    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_f

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    move-object v4, v0

    .line 337
    goto :goto_8

    .line 338
    :cond_f
    move-object v4, v1

    .line 339
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-eqz v0, :cond_10

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    :cond_10
    move-object v5, v1

    .line 354
    const/16 v8, 0x18

    .line 355
    .line 356
    const/4 v9, 0x0

    .line 357
    const/4 v6, 0x0

    .line 358
    const/4 v7, 0x0

    .line 359
    move-object v2, p1

    .line 360
    invoke-static/range {v2 .. v9}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    :cond_11
    if-eqz p1, :cond_14

    .line 364
    .line 365
    const-string v0, "TODO pageFrom"

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    if-eqz p2, :cond_12

    .line 375
    .line 376
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 381
    .line 382
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    goto :goto_9

    .line 387
    :cond_12
    const/4 p2, 0x0

    .line 388
    :goto_9
    if-eqz p2, :cond_13

    .line 389
    .line 390
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_13
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 395
    .line 396
    .line 397
    :cond_14
    :goto_a
    return-void
.end method


# virtual methods
.method public abstract A(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public abstract B(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public abstract C(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfo/i;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->item_provider_recommend_base_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

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
    invoke-direct {p0, p1, p2}, Lfo/i;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lfo/i;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
