.class public final Lxw/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/transsnet/downloader/R$string;->downloading_time_left:I

    .line 5
    .line 6
    iput v0, p0, Lxw/f;->e:I

    .line 7
    .line 8
    sget v0, Lcom/transsnet/downloader/R$string;->download_status_waiting:I

    .line 9
    .line 10
    iput v0, p0, Lxw/f;->f:I

    .line 11
    .line 12
    sget v0, Lcom/transsnet/downloader/R$string;->download_status_paused:I

    .line 13
    .line 14
    iput v0, p0, Lxw/f;->g:I

    .line 15
    .line 16
    sget v0, Lcom/transsnet/downloader/R$string;->download_status_failed:I

    .line 17
    .line 18
    iput v0, p0, Lxw/f;->h:I

    .line 19
    .line 20
    sget v0, Lcom/transsnet/downloader/R$string;->download_status_no_net:I

    .line 21
    .line 22
    iput v0, p0, Lxw/f;->i:I

    .line 23
    .line 24
    return-void
.end method

.method private final B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-gez v6, :cond_0

    .line 14
    .line 15
    move-wide v2, v4

    .line 16
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v9

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-wide/16 v9, 0x1

    .line 28
    .line 29
    :goto_0
    cmp-long v6, v9, v4

    .line 30
    .line 31
    if-gtz v6, :cond_2

    .line 32
    .line 33
    const-wide/16 v9, 0x1

    .line 34
    .line 35
    :cond_2
    long-to-float v6, v2

    .line 36
    const/high16 v11, 0x3f800000    # 1.0f

    .line 37
    .line 38
    mul-float/2addr v6, v11

    .line 39
    long-to-float v12, v9

    .line 40
    div-float/2addr v6, v12

    .line 41
    const/16 v12, 0x64

    .line 42
    .line 43
    int-to-float v12, v12

    .line 44
    mul-float/2addr v6, v12

    .line 45
    float-to-int v6, v6

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    const/4 v14, 0x0

    .line 51
    const/4 v15, 0x2

    .line 52
    const/4 v7, 0x1

    .line 53
    if-eq v13, v7, :cond_3

    .line 54
    .line 55
    if-eq v13, v15, :cond_3

    .line 56
    .line 57
    sget v8, Lcom/transsnet/downloader/R$id;->pb_download:I

    .line 58
    .line 59
    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {v8, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    sget v8, Lcom/transsnet/downloader/R$id;->pb_download:I

    .line 73
    .line 74
    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Landroid/widget/ProgressBar;

    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-eqz v13, :cond_4

    .line 85
    .line 86
    move v13, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v13, v14

    .line 89
    :goto_1
    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-eqz v13, :cond_5

    .line 97
    .line 98
    move v6, v14

    .line 99
    :cond_5
    invoke-virtual {v8, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-static {v2, v3, v7}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v2, " / "

    .line 112
    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {v9, v10, v7}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    sget v2, Lcom/transsnet/downloader/R$id;->tv_state_progress:I

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 139
    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/4 v6, 0x6

    .line 145
    const/4 v8, 0x4

    .line 146
    const/4 v9, 0x3

    .line 147
    if-eq v3, v7, :cond_b

    .line 148
    .line 149
    if-eq v3, v15, :cond_b

    .line 150
    .line 151
    if-eq v3, v9, :cond_a

    .line 152
    .line 153
    if-eq v3, v8, :cond_9

    .line 154
    .line 155
    if-eq v3, v6, :cond_6

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    goto :goto_6

    .line 159
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isNoNetError()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 166
    .line 167
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_7

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    iget v2, v0, Lxw/f;->h:I

    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_3
    move-object v3, v2

    .line 181
    goto :goto_5

    .line 182
    :cond_8
    :goto_4
    iget v2, v0, Lxw/f;->i:I

    .line 183
    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    goto :goto_3

    .line 189
    :goto_5
    sget v2, Lcom/tn/lib/widget/R$color;->error_50:I

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    iget v2, v0, Lxw/f;->g:I

    .line 193
    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    sget v2, Lcom/tn/lib/widget/R$color;->error_50:I

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_a
    iget v3, v0, Lxw/f;->f:I

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    goto :goto_6

    .line 208
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_c

    .line 213
    .line 214
    iget v3, v0, Lxw/f;->f:I

    .line 215
    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    goto :goto_6

    .line 221
    :cond_c
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 222
    .line 223
    invoke-direct/range {p0 .. p2}, Lxw/f;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    :goto_6
    sget v10, Lcom/transsnet/downloader/R$id;->tv_time_or_status:I

    .line 228
    .line 229
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    check-cast v10, Lcom/tn/lib/widget/TnTextView;

    .line 234
    .line 235
    instance-of v13, v3, Ljava/lang/Integer;

    .line 236
    .line 237
    if-eqz v13, :cond_d

    .line 238
    .line 239
    check-cast v3, Ljava/lang/Number;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {v10, v3}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_d
    instance-of v13, v3, Ljava/lang/String;

    .line 250
    .line 251
    if-eqz v13, :cond_e

    .line 252
    .line 253
    check-cast v3, Ljava/lang/CharSequence;

    .line 254
    .line 255
    invoke-virtual {v10, v3}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    :cond_e
    :goto_7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v3, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eq v2, v7, :cond_10

    .line 276
    .line 277
    if-eq v2, v15, :cond_10

    .line 278
    .line 279
    if-eq v2, v9, :cond_10

    .line 280
    .line 281
    if-eq v2, v8, :cond_f

    .line 282
    .line 283
    if-eq v2, v6, :cond_f

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_f
    sget v2, Lcom/transsnet/downloader/R$id;->iv_state_bg:I

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 293
    .line 294
    sget v3, Lcom/transsnet/downloader/R$mipmap;->ic_download_downloading:I

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 297
    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_10
    sget v2, Lcom/transsnet/downloader/R$id;->iv_state_bg:I

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 307
    .line 308
    sget v3, Lcom/transsnet/downloader/R$mipmap;->ic_download_pause:I

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 311
    .line 312
    .line 313
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 314
    .line 315
    .line 316
    move-result-wide v2

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_11

    .line 322
    .line 323
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 324
    .line 325
    .line 326
    move-result-wide v6

    .line 327
    goto :goto_9

    .line 328
    :cond_11
    const-wide/16 v6, 0x1

    .line 329
    .line 330
    :goto_9
    cmp-long v4, v6, v4

    .line 331
    .line 332
    if-gtz v4, :cond_12

    .line 333
    .line 334
    const-wide/16 v7, 0x1

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_12
    move-wide v7, v6

    .line 338
    :goto_a
    long-to-float v2, v2

    .line 339
    mul-float/2addr v2, v11

    .line 340
    long-to-float v3, v7

    .line 341
    div-float/2addr v2, v3

    .line 342
    mul-float/2addr v2, v12

    .line 343
    float-to-int v2, v2

    .line 344
    sget v3, Lcom/transsnet/downloader/R$id;->progress_bar:I

    .line 345
    .line 346
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Landroid/widget/ProgressBar;

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 353
    .line 354
    .line 355
    return-void
.end method

.method private final y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lxw/f;->k:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const/16 v4, 0x3e8

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    div-long/2addr v2, v4

    .line 13
    iput-wide v0, p0, Lxw/f;->k:J

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v4, v2, v0

    .line 18
    .line 19
    if-gtz v4, :cond_0

    .line 20
    .line 21
    move-wide v4, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget-wide v6, p0, Lxw/f;->j:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    div-long/2addr v4, v2

    .line 31
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    iput-wide v2, p0, Lxw/f;->j:J

    .line 36
    .line 37
    cmp-long v2, v4, v0

    .line 38
    .line 39
    if-gtz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    cmp-long v2, v2, v0

    .line 46
    .line 47
    if-lez v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDownloadSpeed()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    :cond_1
    cmp-long v2, v4, v0

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    if-gtz v2, :cond_2

    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :cond_3
    iget-wide v6, p0, Lxw/f;->j:J

    .line 71
    .line 72
    sub-long/2addr v0, v6

    .line 73
    long-to-float v0, v0

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    .line 76
    mul-float/2addr v0, v1

    .line 77
    const/4 v1, 0x0

    .line 78
    cmpg-float v1, v0, v1

    .line 79
    .line 80
    if-gtz v1, :cond_4

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_4
    invoke-virtual {p2, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setCurrentDownloadSpeed(J)V

    .line 84
    .line 85
    .line 86
    long-to-float p2, v4

    .line 87
    div-float/2addr v0, p2

    .line 88
    float-to-int p2, v0

    .line 89
    invoke-static {p2}, Lcom/transsion/baseui/util/TimeUtilKt;->f(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget v0, p0, Lxw/f;->e:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, " "

    .line 114
    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V
    .locals 2

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    instance-of v0, p3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object p3, p2

    .line 60
    :goto_0
    invoke-direct {p0, p1, p3}, Lxw/f;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lxw/f;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lxw/f;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/adapter/LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/LayoutType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloading_item:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    move-object v0, p2

    .line 34
    :cond_1
    sget v1, Lcom/transsnet/downloader/R$id;->card_cover:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_b

    .line 45
    .line 46
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getPosition()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v4, v5

    .line 65
    :goto_0
    const/4 v6, 0x1

    .line 66
    sub-int/2addr v4, v6

    .line 67
    if-ne v3, v4, :cond_3

    .line 68
    .line 69
    const/16 v3, 0x10

    .line 70
    .line 71
    :goto_1
    invoke-static {v3}, Llj/a;->b(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/16 v3, 0xc

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "getContext(...)"

    .line 97
    .line 98
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget v3, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 102
    .line 103
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v2, v3, v1, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    const/16 v1, 0x9

    .line 121
    .line 122
    if-ne p2, v1, :cond_5

    .line 123
    .line 124
    move p2, v6

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move p2, v5

    .line 127
    :goto_3
    sget v1, Lcom/transsnet/downloader/R$id;->tv_shorts:I

    .line 128
    .line 129
    xor-int/lit8 v2, p2, 0x1

    .line 130
    .line 131
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 132
    .line 133
    .line 134
    if-eqz p2, :cond_6

    .line 135
    .line 136
    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 137
    .line 138
    invoke-virtual {p1, p2, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 143
    .line 144
    invoke-virtual {p1, p2, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 145
    .line 146
    .line 147
    sget p2, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    move-object v7, p2

    .line 154
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eqz p2, :cond_8

    .line 167
    .line 168
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-nez p2, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-static/range {v7 .. v12}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p2}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-virtual {v7, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    :goto_5
    sget p2, Lcom/transsnet/downloader/R$id;->tv_name:I

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Landroid/widget/TextView;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget p2, Lcom/transsnet/downloader/R$id;->tv_ep:I

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-lez v1, :cond_9

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_9
    move v6, v5

    .line 256
    :goto_6
    if-eqz v6, :cond_a

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_a
    const/16 v5, 0x8

    .line 260
    .line 261
    :goto_7
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, p1, v0}, Lxw/f;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 276
    .line 277
    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p1
.end method
