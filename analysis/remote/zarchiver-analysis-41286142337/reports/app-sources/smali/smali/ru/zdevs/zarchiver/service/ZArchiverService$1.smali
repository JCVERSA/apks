.class Lru/zdevs/zarchiver/service/ZArchiverService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/service/ZArchiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/service/ZArchiverService;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4
    .line 5
    const/16 v2, 0x16

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    if-eq v1, v3, :cond_14

    .line 11
    .line 12
    const/4 v6, -0x1

    .line 13
    if-eq v1, v5, :cond_e

    .line 14
    .line 15
    if-eq v1, v4, :cond_c

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    if-eq v1, v3, :cond_3

    .line 19
    .line 20
    const/16 v4, 0xf

    .line 21
    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    goto/16 :goto_9

    .line 27
    .line 28
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 33
    .line 34
    iget-object v2, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v3, La0/c;->k:[B

    .line 39
    .line 40
    aget-byte v3, v3, v0

    .line 41
    .line 42
    and-int/lit8 v3, v3, 0x7f

    .line 43
    .line 44
    int-to-byte v3, v3

    .line 45
    const/16 v5, 0xb

    .line 46
    .line 47
    if-ne v3, v5, :cond_1

    .line 48
    .line 49
    const v3, 0x7f0c011a

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const v3, 0x7f0c0113

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "%1"

    .line 61
    .line 62
    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v0, v1}, Lru/zdevs/zarchiver/service/b;->h(Landroid/app/NotificationManager;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 70
    .line 71
    iget-boolean v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 72
    .line 73
    if-eqz v1, :cond_1a

    .line 74
    .line 75
    invoke-static {v0, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "sText"

    .line 80
    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 92
    .line 93
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 94
    .line 95
    iget-object v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 96
    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    sget-boolean v4, Lru/zdevs/zarchiver/service/b;->f:Z

    .line 101
    .line 102
    const-class v4, Lru/zdevs/zarchiver/service/b;

    .line 103
    .line 104
    monitor-enter v4

    .line 105
    :try_start_0
    sget-object v5, Lru/zdevs/zarchiver/service/b;->h:Lh1/a;

    .line 106
    .line 107
    invoke-virtual {v5, v0}, Lh1/a;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Lru/zdevs/zarchiver/service/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    monitor-exit v4

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    const/16 v8, 0x22

    .line 120
    .line 121
    if-lt v7, v8, :cond_7

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    iget v10, v5, Lru/zdevs/zarchiver/service/b;->c:I

    .line 128
    .line 129
    sub-int v10, v2, v10

    .line 130
    .line 131
    const/16 v11, 0xa

    .line 132
    .line 133
    if-ge v10, v11, :cond_6

    .line 134
    .line 135
    iget-wide v10, v5, Lru/zdevs/zarchiver/service/b;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    const-wide/16 v12, 0x1f4

    .line 138
    .line 139
    add-long/2addr v10, v12

    .line 140
    cmp-long v12, v8, v10

    .line 141
    .line 142
    if-gez v12, :cond_6

    .line 143
    .line 144
    monitor-exit v4

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    :try_start_2
    iput v2, v5, Lru/zdevs/zarchiver/service/b;->c:I

    .line 147
    .line 148
    iput-wide v8, v5, Lru/zdevs/zarchiver/service/b;->d:J

    .line 149
    .line 150
    :cond_7
    iget-object v8, v5, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 151
    .line 152
    const/16 v9, 0x64

    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    invoke-virtual {v8, v9, v2, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    const/16 v8, 0x18

    .line 159
    .line 160
    if-ge v7, v8, :cond_8

    .line 161
    .line 162
    iget-object v7, v5, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 163
    .line 164
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_8
    iget-object v7, v5, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 169
    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v2, "%"

    .line 179
    .line 180
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 188
    .line 189
    .line 190
    :goto_1
    iget v2, v5, Lru/zdevs/zarchiver/service/b;->a:I

    .line 191
    .line 192
    invoke-virtual {v5}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v1, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    .line 199
    monitor-exit v4

    .line 200
    :goto_2
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 201
    .line 202
    iget-boolean v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 203
    .line 204
    if-nez v1, :cond_9

    .line 205
    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 209
    .line 210
    invoke-static {v0, v1}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "iProgress"

    .line 215
    .line 216
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 222
    .line 223
    if-ne v1, v3, :cond_b

    .line 224
    .line 225
    const-string v1, "iSpeed"

    .line 226
    .line 227
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    .line 229
    if-nez p1, :cond_a

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    check-cast p1, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    :goto_3
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_b
    const-string v1, "sText"

    .line 243
    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p1, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    :goto_4
    iget-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :catchall_0
    move-exception p1

    .line 259
    monitor-exit v4

    .line 260
    throw p1

    .line 261
    :cond_c
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 262
    .line 263
    iget-boolean v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 264
    .line 265
    if-nez v1, :cond_d

    .line 266
    .line 267
    goto/16 :goto_9

    .line 268
    .line 269
    :cond_d
    invoke-static {v0, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "sText"

    .line 274
    .line 275
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p1, Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_e
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 290
    .line 291
    if-eqz v1, :cond_11

    .line 292
    .line 293
    if-eq v1, v3, :cond_10

    .line 294
    .line 295
    if-eq v1, v5, :cond_10

    .line 296
    .line 297
    if-eq v1, v4, :cond_f

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_f
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 301
    .line 302
    iget-object v2, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 303
    .line 304
    invoke-static {v2, v1, v0}, Lru/zdevs/zarchiver/service/b;->f(Landroid/app/NotificationManager;Landroid/app/Service;I)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_10
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 309
    .line 310
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->c(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_11
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 315
    .line 316
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->c(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 320
    .line 321
    iget-object v2, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->b:Landroid/app/NotificationManager;

    .line 322
    .line 323
    invoke-static {v2, v1, v0}, Lru/zdevs/zarchiver/service/b;->f(Landroid/app/NotificationManager;Landroid/app/Service;I)V

    .line 324
    .line 325
    .line 326
    :goto_5
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 327
    .line 328
    iget-boolean v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 329
    .line 330
    if-eqz v1, :cond_1a

    .line 331
    .line 332
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 333
    .line 334
    if-eqz v1, :cond_12

    .line 335
    .line 336
    if-eq v1, v4, :cond_12

    .line 337
    .line 338
    goto/16 :goto_9

    .line 339
    .line 340
    :cond_12
    invoke-static {v0, v5}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-string v1, "iDialogType"

    .line 345
    .line 346
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 347
    .line 348
    if-ne p1, v4, :cond_13

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_13
    const/4 v5, -0x1

    .line 352
    :goto_6
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_14
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 362
    .line 363
    if-eq v1, v3, :cond_16

    .line 364
    .line 365
    if-eq v1, v5, :cond_15

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_15
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 369
    .line 370
    sget-object v2, La0/c;->l:[Ljava/lang/String;

    .line 371
    .line 372
    aget-object v2, v2, v0

    .line 373
    .line 374
    const v6, 0x7f0c0118

    .line 375
    .line 376
    .line 377
    const/16 v7, 0x17

    .line 378
    .line 379
    invoke-static {v1, v0, v2, v6, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->b(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;II)V

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_16
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 384
    .line 385
    sget-object v6, La0/c;->l:[Ljava/lang/String;

    .line 386
    .line 387
    aget-object v6, v6, v0

    .line 388
    .line 389
    const v7, 0x7f0c0119

    .line 390
    .line 391
    .line 392
    invoke-static {v1, v0, v6, v7, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->b(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;II)V

    .line 393
    .line 394
    .line 395
    :goto_7
    iget-object v1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 396
    .line 397
    iget-boolean v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 398
    .line 399
    if-eqz v1, :cond_1a

    .line 400
    .line 401
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 402
    .line 403
    if-eq p1, v3, :cond_19

    .line 404
    .line 405
    if-eq p1, v5, :cond_18

    .line 406
    .line 407
    if-eq p1, v4, :cond_17

    .line 408
    .line 409
    const/4 p1, 0x0

    .line 410
    goto :goto_8

    .line 411
    :cond_17
    invoke-static {v0, v3}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    goto :goto_8

    .line 416
    :cond_18
    const/16 p1, 0x8

    .line 417
    .line 418
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    const-string v1, "oData"

    .line 423
    .line 424
    sget-object v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->j:[Le0/c;

    .line 425
    .line 426
    aget-object v0, v2, v0

    .line 427
    .line 428
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_19
    const/4 p1, 0x5

    .line 433
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    :goto_8
    if-eqz p1, :cond_1a

    .line 438
    .line 439
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService$1;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 440
    .line 441
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    .line 443
    .line 444
    :cond_1a
    :goto_9
    return-void
.end method
