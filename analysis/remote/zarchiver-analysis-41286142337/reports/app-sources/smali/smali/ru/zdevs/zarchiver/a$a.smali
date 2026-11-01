.class public final Lru/zdevs/zarchiver/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/a;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/a;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 3
    .line 4
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 5
    .line 6
    if-eqz p1, :cond_1e

    .line 7
    .line 8
    if-eqz p2, :cond_1e

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "iTaskID"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "iTaskType"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-string v2, "iAction"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v2, v3, :cond_19

    .line 44
    .line 45
    const/16 v5, 0xf

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x2

    .line 49
    if-eq v2, v5, :cond_16

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    packed-switch v2, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    packed-switch v2, :pswitch_data_1

    .line 57
    .line 58
    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :pswitch_0
    const-string p2, "iType"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const-string v0, "oPath"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lh0/h;

    .line 74
    .line 75
    const/16 v0, 0x80

    .line 76
    .line 77
    invoke-static {v0}, Lt0/b;->l(I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    .line 86
    :goto_0
    const/4 v1, 0x0

    .line 87
    :goto_1
    if-ge v1, v0, :cond_5

    .line 88
    .line 89
    iget-object v2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 90
    .line 91
    iget-object v2, v2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 92
    .line 93
    iget-object v2, v2, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 94
    .line 95
    aget-object v2, v2, v1

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object v3, v2, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 102
    .line 103
    invoke-virtual {p1, v3}, Lh0/h;->b(Lh0/h;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    :cond_2
    invoke-virtual {v2}, Lru/zdevs/zarchiver/b;->i()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-static {p2, v7}, La0/c;->K(II)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    iget v3, v2, Lru/zdevs/zarchiver/b;->f:I

    .line 122
    .line 123
    or-int/2addr v3, v7

    .line 124
    iput v3, v2, Lru/zdevs/zarchiver/b;->f:I

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget-object v2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 128
    .line 129
    iget-object v2, v2, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 130
    .line 131
    invoke-virtual {v2, v1, v5, v5, v6}, Lru/zdevs/zarchiver/ZArchiver;->T(IZZZ)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 138
    .line 139
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 140
    .line 141
    const/4 p2, 0x4

    .line 142
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ZArchiver;->R(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :pswitch_1
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 148
    .line 149
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 150
    .line 151
    const/16 p2, 0xc

    .line 152
    .line 153
    invoke-virtual {p1, v0, p2, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lg0/k;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_6
    new-instance p1, Lg0/k;

    .line 164
    .line 165
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 166
    .line 167
    iget-object v1, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 168
    .line 169
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 170
    .line 171
    invoke-direct {p1, v1, p2}, Lg0/k;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    iput v0, p1, Lg0/i;->c:I

    .line 175
    .line 176
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 177
    .line 178
    iput-object p2, p1, Lg0/i;->b:Lg0/i$d;

    .line 179
    .line 180
    iput-object p2, p1, Lg0/i;->a:Lg0/i$c;

    .line 181
    .line 182
    iget-object p1, p1, Lg0/k;->g:Landroid/app/AlertDialog;

    .line 183
    .line 184
    if-eqz p1, :cond_1d

    .line 185
    .line 186
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_7

    .line 190
    .line 191
    :pswitch_2
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 192
    .line 193
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 194
    .line 195
    invoke-virtual {p2, v0, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lg0/a0;

    .line 200
    .line 201
    if-eqz p2, :cond_1d

    .line 202
    .line 203
    const-string v0, "iProgress"

    .line 204
    .line 205
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const-string v1, "iSpeed"

    .line 210
    .line 211
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-virtual {p2, v0, p1}, Lg0/a0;->t(II)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :pswitch_3
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 221
    .line 222
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 223
    .line 224
    invoke-virtual {p2, v0, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    check-cast p2, Lg0/a0;

    .line 229
    .line 230
    if-eqz p2, :cond_1d

    .line 231
    .line 232
    const-string v0, "sText"

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object v0, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 239
    .line 240
    if-eqz v0, :cond_1d

    .line 241
    .line 242
    iget-object p2, p2, Lg0/a0;->j:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :pswitch_4
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 250
    .line 251
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 252
    .line 253
    const-string v1, "iDialogType"

    .line 254
    .line 255
    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p2, v0, p1, v6}, Lru/zdevs/zarchiver/d;->a(IIZ)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_7

    .line 263
    .line 264
    :pswitch_5
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 265
    .line 266
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 267
    .line 268
    invoke-virtual {p1, v0, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_7

    .line 273
    .line 274
    goto/16 :goto_7

    .line 275
    .line 276
    :cond_7
    const/16 p1, -0x7f

    .line 277
    .line 278
    if-eq v1, p1, :cond_a

    .line 279
    .line 280
    const/16 p1, -0x79

    .line 281
    .line 282
    if-eq v1, p1, :cond_9

    .line 283
    .line 284
    const/16 p1, -0x75

    .line 285
    .line 286
    if-eq v1, p1, :cond_8

    .line 287
    .line 288
    if-eq v1, v5, :cond_a

    .line 289
    .line 290
    packed-switch v1, :pswitch_data_2

    .line 291
    .line 292
    .line 293
    const p1, 0x7f0c00dd

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :pswitch_6
    const p1, 0x7f0c00f0

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :pswitch_7
    const p1, 0x7f0c00fb

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :pswitch_8
    const p1, 0x7f0c00e3

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :pswitch_9
    const p1, 0x7f0c00fa

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :pswitch_a
    const p1, 0x7f0c00e0

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_8
    :pswitch_b
    const p1, 0x7f0c0108

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_9
    :pswitch_c
    const p1, 0x7f0c00d8

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_a
    :pswitch_d
    const p1, 0x7f0c00e2

    .line 326
    .line 327
    .line 328
    :goto_3
    new-instance p2, Lg0/a0;

    .line 329
    .line 330
    iget-object v1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 331
    .line 332
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 333
    .line 334
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 335
    .line 336
    invoke-direct {p2, v2, v1, p1}, Lg0/a0;-><init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;I)V

    .line 337
    .line 338
    .line 339
    iput v0, p2, Lg0/i;->c:I

    .line 340
    .line 341
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 342
    .line 343
    iput-object p1, p2, Lg0/i;->b:Lg0/i$d;

    .line 344
    .line 345
    iput-object p1, p2, Lg0/i;->a:Lg0/i$c;

    .line 346
    .line 347
    iget-object p1, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 348
    .line 349
    if-nez p1, :cond_b

    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_b
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_c

    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :cond_c
    iget-object p1, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 362
    .line 363
    const/4 v0, -0x2

    .line 364
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 379
    .line 380
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_7

    .line 395
    .line 396
    :pswitch_e
    const-string p2, "oData"

    .line 397
    .line 398
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    if-nez p1, :cond_d

    .line 403
    .line 404
    goto/16 :goto_7

    .line 405
    .line 406
    :cond_d
    array-length p2, p1

    .line 407
    new-array p2, p2, [Le0/i;

    .line 408
    .line 409
    :goto_4
    array-length v0, p1

    .line 410
    if-ge v6, v0, :cond_e

    .line 411
    .line 412
    aget-object v0, p1, v6

    .line 413
    .line 414
    check-cast v0, Le0/i;

    .line 415
    .line 416
    aput-object v0, p2, v6

    .line 417
    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_e
    new-instance p1, Lg0/n;

    .line 422
    .line 423
    iget-object v0, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 424
    .line 425
    iget-object v1, v0, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 426
    .line 427
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 428
    .line 429
    invoke-direct {p1, v1, v0, p2}, Lg0/n;-><init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;[Le0/i;)V

    .line 430
    .line 431
    .line 432
    iget-object p1, p1, Lg0/n;->g:Landroid/app/AlertDialog;

    .line 433
    .line 434
    if-eqz p1, :cond_1d

    .line 435
    .line 436
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 437
    .line 438
    .line 439
    goto/16 :goto_7

    .line 440
    .line 441
    :pswitch_f
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 442
    .line 443
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 444
    .line 445
    const-string v0, "sFilePath"

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    check-cast v0, Lh0/h;

    .line 452
    .line 453
    const-string v2, "oPath"

    .line 454
    .line 455
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    check-cast p1, Lh0/h;

    .line 460
    .line 461
    invoke-static {p2, v0, p1, v1}, Lru/zdevs/zarchiver/a;->d(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;Lh0/h;[Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_7

    .line 465
    .line 466
    :pswitch_10
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 467
    .line 468
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 469
    .line 470
    invoke-virtual {p2, v0, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 471
    .line 472
    .line 473
    move-result-object p2

    .line 474
    check-cast p2, Lg0/a0;

    .line 475
    .line 476
    if-eqz p2, :cond_1d

    .line 477
    .line 478
    const-string v0, "iProgress"

    .line 479
    .line 480
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    invoke-virtual {p2, v0, v4}, Lg0/a0;->t(II)V

    .line 485
    .line 486
    .line 487
    const-string v0, "sText"

    .line 488
    .line 489
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    iget-object v0, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 494
    .line 495
    if-eqz v0, :cond_1d

    .line 496
    .line 497
    iget-object p2, p2, Lg0/a0;->j:Landroid/widget/TextView;

    .line 498
    .line 499
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_7

    .line 503
    .line 504
    :pswitch_11
    const-string p2, "oErrorData"

    .line 505
    .line 506
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    if-nez p1, :cond_f

    .line 511
    .line 512
    goto/16 :goto_7

    .line 513
    .line 514
    :cond_f
    array-length p2, p1

    .line 515
    new-array p2, p2, [Le0/a$b;

    .line 516
    .line 517
    :goto_5
    array-length v0, p1

    .line 518
    if-ge v6, v0, :cond_10

    .line 519
    .line 520
    aget-object v0, p1, v6

    .line 521
    .line 522
    check-cast v0, Le0/a$b;

    .line 523
    .line 524
    aput-object v0, p2, v6

    .line 525
    .line 526
    add-int/lit8 v6, v6, 0x1

    .line 527
    .line 528
    goto :goto_5

    .line 529
    :cond_10
    new-instance p1, Lg0/n;

    .line 530
    .line 531
    iget-object v0, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 532
    .line 533
    iget-object v1, v0, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 534
    .line 535
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 536
    .line 537
    invoke-direct {p1, v1, v0, p2}, Lg0/n;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Le0/a$b;)V

    .line 538
    .line 539
    .line 540
    iget-object p1, p1, Lg0/n;->g:Landroid/app/AlertDialog;

    .line 541
    .line 542
    if-eqz p1, :cond_1d

    .line 543
    .line 544
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 545
    .line 546
    .line 547
    goto/16 :goto_7

    .line 548
    .line 549
    :pswitch_12
    const-string p2, "sFilePath"

    .line 550
    .line 551
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    if-nez p1, :cond_11

    .line 556
    .line 557
    goto/16 :goto_7

    .line 558
    .line 559
    :cond_11
    new-instance p2, La0/g0;

    .line 560
    .line 561
    invoke-direct {p2, v6, p1}, La0/g0;-><init>(ILjava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 565
    .line 566
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 567
    .line 568
    iget-object v0, p1, Lb0/c;->c:Lw0/a;

    .line 569
    .line 570
    invoke-virtual {p2, p1, v0}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_7

    .line 574
    .line 575
    :pswitch_13
    const-string v0, "iFlags"

    .line 576
    .line 577
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    const-string v2, "sFilePath"

    .line 582
    .line 583
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    if-nez p1, :cond_12

    .line 588
    .line 589
    goto/16 :goto_7

    .line 590
    .line 591
    :cond_12
    const-string v2, "oPath"

    .line 592
    .line 593
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 594
    .line 595
    .line 596
    move-result-object p2

    .line 597
    check-cast p2, Lh0/h;

    .line 598
    .line 599
    if-nez p2, :cond_13

    .line 600
    .line 601
    new-instance p2, Lh0/h;

    .line 602
    .line 603
    const-string v2, "file"

    .line 604
    .line 605
    invoke-direct {p2, v2, p1}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :cond_13
    new-instance v2, La0/g0;

    .line 609
    .line 610
    invoke-direct {v2, v5, p1}, La0/g0;-><init>(ILjava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 614
    .line 615
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 616
    .line 617
    iget-object v4, p1, Lb0/c;->c:Lw0/a;

    .line 618
    .line 619
    invoke-virtual {v2, p1, v4}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 620
    .line 621
    .line 622
    and-int/lit16 p1, v0, 0x80

    .line 623
    .line 624
    if-eqz p1, :cond_14

    .line 625
    .line 626
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 627
    .line 628
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 629
    .line 630
    invoke-static {p1, p2, v1, v1}, Lru/zdevs/zarchiver/a;->d(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;Lh0/h;[Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    goto :goto_6

    .line 634
    :cond_14
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 635
    .line 636
    iget-object v1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 637
    .line 638
    const-wide/16 v4, 0x0

    .line 639
    .line 640
    const/4 v6, 0x0

    .line 641
    and-int/lit8 v7, v0, 0x8

    .line 642
    .line 643
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 644
    .line 645
    invoke-virtual {p1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    iget p1, p1, Lru/zdevs/zarchiver/b;->h:I

    .line 650
    .line 651
    const/4 v8, 0x1

    .line 652
    move-object v0, v1

    .line 653
    move-object v1, p2

    .line 654
    move-wide v2, v4

    .line 655
    move v4, v6

    .line 656
    move v5, v7

    .line 657
    move v6, p1

    .line 658
    move v7, v8

    .line 659
    invoke-static/range {v0 .. v7}, Lru/zdevs/zarchiver/a;->j(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;JZIIB)V

    .line 660
    .line 661
    .line 662
    :goto_6
    sget-object p1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 663
    .line 664
    if-eqz p1, :cond_1d

    .line 665
    .line 666
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZApp;->h()V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_7

    .line 670
    .line 671
    :pswitch_14
    const-string p2, "iType"

    .line 672
    .line 673
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result p2

    .line 677
    if-eq p2, v7, :cond_15

    .line 678
    .line 679
    const-string p2, "sText"

    .line 680
    .line 681
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_7

    .line 689
    .line 690
    :cond_15
    const-string p2, "sText"

    .line 691
    .line 692
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 700
    .line 701
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 702
    .line 703
    if-eqz p1, :cond_1d

    .line 704
    .line 705
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ZArchiver;->B(Z)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_7

    .line 709
    .line 710
    :cond_16
    const/16 p2, -0x80

    .line 711
    .line 712
    and-int/2addr v1, p2

    .line 713
    if-eq v1, p2, :cond_17

    .line 714
    .line 715
    goto :goto_7

    .line 716
    :cond_17
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 717
    .line 718
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 719
    .line 720
    invoke-virtual {p2, v0, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 721
    .line 722
    .line 723
    move-result-object p2

    .line 724
    check-cast p2, Lg0/a0;

    .line 725
    .line 726
    if-eqz p2, :cond_1d

    .line 727
    .line 728
    const-string v0, "sText"

    .line 729
    .line 730
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    iget-object v0, p2, Lg0/a0;->g:Landroid/app/AlertDialog;

    .line 735
    .line 736
    if-eqz v0, :cond_1d

    .line 737
    .line 738
    iget-object v0, p2, Lg0/a0;->k:Landroid/widget/TextView;

    .line 739
    .line 740
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-ne v0, v3, :cond_18

    .line 745
    .line 746
    iget-object v0, p2, Lg0/a0;->k:Landroid/widget/TextView;

    .line 747
    .line 748
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 749
    .line 750
    .line 751
    :cond_18
    iget-object p2, p2, Lg0/a0;->k:Landroid/widget/TextView;

    .line 752
    .line 753
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    .line 755
    .line 756
    goto :goto_7

    .line 757
    :cond_19
    const-string p1, "oData"

    .line 758
    .line 759
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    check-cast p1, Le0/c;

    .line 764
    .line 765
    if-nez p1, :cond_1a

    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_1a
    iget-object p2, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 769
    .line 770
    iget-object p2, p2, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 771
    .line 772
    const/16 v1, 0x9

    .line 773
    .line 774
    invoke-virtual {p2, v0, v1, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 775
    .line 776
    .line 777
    move-result-object p2

    .line 778
    check-cast p2, Lg0/c;

    .line 779
    .line 780
    if-eqz p2, :cond_1b

    .line 781
    .line 782
    goto :goto_7

    .line 783
    :cond_1b
    new-instance p2, Lg0/c;

    .line 784
    .line 785
    iget-object v1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 786
    .line 787
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 788
    .line 789
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 790
    .line 791
    invoke-direct {p2, v2, v1, p1}, Lg0/c;-><init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;Le0/c;)V

    .line 792
    .line 793
    .line 794
    iput v0, p2, Lg0/i;->c:I

    .line 795
    .line 796
    iget-object p1, p0, Lru/zdevs/zarchiver/a$a;->a:Lru/zdevs/zarchiver/a;

    .line 797
    .line 798
    iput-object p1, p2, Lg0/i;->b:Lg0/i$d;

    .line 799
    .line 800
    iput-object p1, p2, Lg0/i;->a:Lg0/i$c;

    .line 801
    .line 802
    iget-object p1, p2, Lg0/c;->g:Landroid/app/AlertDialog;

    .line 803
    .line 804
    if-nez p1, :cond_1c

    .line 805
    .line 806
    goto :goto_7

    .line 807
    :cond_1c
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 808
    .line 809
    .line 810
    move-result p1

    .line 811
    if-eqz p1, :cond_1d

    .line 812
    .line 813
    iget-object p1, p2, Lg0/c;->g:Landroid/app/AlertDialog;

    .line 814
    .line 815
    iget-boolean p2, p2, Lg0/c;->i:Z

    .line 816
    .line 817
    invoke-static {p1, p2}, Lg0/i;->q(Landroid/app/Dialog;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .line 819
    .line 820
    :cond_1d
    :goto_7
    monitor-exit p0

    .line 821
    return-void

    .line 822
    :cond_1e
    :goto_8
    monitor-exit p0

    .line 823
    return-void

    .line 824
    :catchall_0
    move-exception p1

    .line 825
    monitor-exit p0

    .line 826
    goto :goto_a

    .line 827
    :goto_9
    throw p1

    .line 828
    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method
