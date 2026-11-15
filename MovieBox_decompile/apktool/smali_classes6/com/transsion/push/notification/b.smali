.class public abstract Lcom/transsion/push/notification/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/push/notification/a;


# direct methods
.method public constructor <init>(Lcom/transsion/push/notification/a;)V
    .locals 1

    .line 1
    const-string v0, "parentBuilder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/push/notification/a;->o()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 15
    .line 16
    sget v1, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/a;->M(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$m;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/transsion/push/notification/a;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/push/notification/a;->r()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$m;->P(J)Landroidx/core/app/NotificationCompat$m;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->I(Z)Landroidx/core/app/NotificationCompat$m;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/push/notification/a;->o()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/push/notification/a;->s()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/transsion/push/notification/a;->h()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->r(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/transsion/push/notification/a;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->m(I)Landroidx/core/app/NotificationCompat$m;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v3, "setBadgeIconType(...)"

    .line 93
    .line 94
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->e()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-lez v3, :cond_1

    .line 104
    .line 105
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->e()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->o(I)Landroidx/core/app/NotificationCompat$m;

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->c()Landroid/app/PendingIntent;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    iget-object v4, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    sget v5, Lcom/transsion/lib/push/R$id;->ll_download:I

    .line 139
    .line 140
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->t(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->l()Landroid/graphics/Bitmap;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->l()Landroid/graphics/Bitmap;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->c()Landroid/app/PendingIntent;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    iget-object v4, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    sget v5, Lcom/transsion/lib/push/R$id;->ll_download:I

    .line 199
    .line 200
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->m()Landroid/app/PendingIntent;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v3, :cond_6

    .line 210
    .line 211
    iget-object v4, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-eqz v4, :cond_6

    .line 218
    .line 219
    sget v5, Lcom/transsion/lib/push/R$id;->notification_last:I

    .line 220
    .line 221
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    .line 223
    .line 224
    :cond_6
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->n()Landroid/app/PendingIntent;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    iget-object v4, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    sget v5, Lcom/transsion/lib/push/R$id;->notification_next:I

    .line 241
    .line 242
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 243
    .line 244
    .line 245
    :cond_7
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 252
    .line 253
    .line 254
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->p()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_8

    .line 261
    .line 262
    new-instance v3, Landroidx/core/app/NotificationCompat$o;

    .line 263
    .line 264
    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$o;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    .line 268
    .line 269
    .line 270
    :cond_8
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->a()Landroid/graphics/Bitmap;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const-string v4, "setSummaryText(...)"

    .line 277
    .line 278
    if-eqz v3, :cond_9

    .line 279
    .line 280
    new-instance v3, Landroidx/core/app/NotificationCompat$j;

    .line 281
    .line 282
    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$j;-><init>()V

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 286
    .line 287
    invoke-virtual {v5}, Lcom/transsion/push/notification/a;->h()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$j;->s(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$j;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    iget-object v5, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 296
    .line 297
    invoke-virtual {v5}, Lcom/transsion/push/notification/a;->a()Landroid/graphics/Bitmap;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$j;->r(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$j;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    iget-object v5, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 306
    .line 307
    invoke-virtual {v5}, Lcom/transsion/push/notification/a;->g()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$j;->t(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$j;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    .line 319
    .line 320
    .line 321
    :cond_9
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 322
    .line 323
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->b()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_a

    .line 332
    .line 333
    new-instance v3, Landroidx/core/app/NotificationCompat$k;

    .line 334
    .line 335
    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$k;-><init>()V

    .line 336
    .line 337
    .line 338
    iget-object v5, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 339
    .line 340
    invoke-virtual {v5}, Lcom/transsion/push/notification/a;->h()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$k;->r(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$k;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    iget-object v5, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 349
    .line 350
    invoke-virtual {v5}, Lcom/transsion/push/notification/a;->b()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$k;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$k;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    sget v5, Lcom/transsion/baseui/R$string;->base_app_name:I

    .line 359
    .line 360
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$k;->s(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$k;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    .line 372
    .line 373
    .line 374
    :cond_a
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 375
    .line 376
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->f()Landroid/app/PendingIntent;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->p(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 381
    .line 382
    .line 383
    iget-object v3, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/transsion/push/notification/a;->q()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    if-nez v3, :cond_b

    .line 390
    .line 391
    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    .line 392
    .line 393
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    const-string p1, "getString(...)"

    .line 398
    .line 399
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_b
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->M(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->d()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$m;->n(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    .line 412
    .line 413
    .line 414
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 415
    .line 416
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->v()Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_c

    .line 421
    .line 422
    move p1, v2

    .line 423
    goto :goto_1

    .line 424
    :cond_c
    const/4 p1, -0x1

    .line 425
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$m;->u(I)Landroidx/core/app/NotificationCompat$m;

    .line 426
    .line 427
    .line 428
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 429
    .line 430
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->w()Z

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    if-eqz p1, :cond_d

    .line 435
    .line 436
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->O(I)Landroidx/core/app/NotificationCompat$m;

    .line 437
    .line 438
    .line 439
    :cond_d
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 440
    .line 441
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->u()Z

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    const/4 v3, 0x2

    .line 446
    if-eqz p1, :cond_e

    .line 447
    .line 448
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    .line 457
    .line 458
    .line 459
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 460
    .line 461
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->t()Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-eqz p1, :cond_10

    .line 466
    .line 467
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->G(I)Landroidx/core/app/NotificationCompat$m;

    .line 468
    .line 469
    .line 470
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 471
    .line 472
    const/16 v2, 0x1a

    .line 473
    .line 474
    if-lt p1, v2, :cond_10

    .line 475
    .line 476
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->u(I)Landroidx/core/app/NotificationCompat$m;

    .line 477
    .line 478
    .line 479
    goto :goto_2

    .line 480
    :cond_e
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    iget-object v4, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 485
    .line 486
    invoke-virtual {v4}, Lcom/transsion/push/notification/a;->s()Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 498
    .line 499
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->t()Z

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-eqz p1, :cond_f

    .line 504
    .line 505
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->G(I)Landroidx/core/app/NotificationCompat$m;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->u(I)Landroidx/core/app/NotificationCompat$m;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    goto :goto_2

    .line 516
    :cond_f
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->G(I)Landroidx/core/app/NotificationCompat$m;

    .line 517
    .line 518
    .line 519
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 520
    .line 521
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->k()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    if-nez p1, :cond_11

    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->z(Z)Landroidx/core/app/NotificationCompat$m;

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lcom/transsion/push/notification/b;->a:Lcom/transsion/push/notification/a;

    .line 535
    .line 536
    invoke-virtual {p1}, Lcom/transsion/push/notification/a;->k()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$m;->y(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    .line 541
    .line 542
    .line 543
    :cond_11
    return-object v0
.end method
