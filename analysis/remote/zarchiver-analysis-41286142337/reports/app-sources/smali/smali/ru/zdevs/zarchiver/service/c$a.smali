.class public abstract Lru/zdevs/zarchiver/service/c$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/service/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/service/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ru.zdevs.zarchiver.service.ZArchiverServiceConnect"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lru/zdevs/zarchiver/service/c;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "ru.zdevs.zarchiver.service.ZArchiverServiceConnect"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lru/zdevs/zarchiver/service/c;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lru/zdevs/zarchiver/service/c;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lru/zdevs/zarchiver/service/c$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/service/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object v8, p3

    .line 5
    const-string v2, "ru.zdevs.zarchiver.service.ZArchiverServiceConnect"

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-lt v0, v9, :cond_0

    .line 9
    .line 10
    const v3, 0xffffff

    .line 11
    .line 12
    .line 13
    if-gt v0, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const v3, 0x5f4e5446

    .line 19
    .line 20
    .line 21
    if-eq v0, v3, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->SetStatusTask(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-interface {p0, v0}, Lru/zdevs/zarchiver/service/c;->GetStatusTask(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-interface {p0, v0}, Lru/zdevs/zarchiver/service/c;->GetProgPercent(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-interface {p0, v0}, Lru/zdevs/zarchiver/service/c;->GetProgText(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->SetOverwrite(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->SetPassword(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-interface {p0, v0}, Lru/zdevs/zarchiver/service/c;->HideNotification(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    :cond_1
    invoke-interface {p0, v2}, Lru/zdevs/zarchiver/service/c;->GUIStatus(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {p0, v0, v2, v1}, Lru/zdevs/zarchiver/service/c;->SetSettings(IILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :pswitch_9
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 176
    .line 177
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lh0/h;

    .line 182
    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->PluginOpenFile(Lh0/h;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :pswitch_a
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 196
    .line 197
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->RemoveList(Ljava/util/List;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :pswitch_b
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 214
    .line 215
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lh0/h;

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-interface {p0, v0, v2, v1}, Lru/zdevs/zarchiver/service/c;->Remove(Lh0/h;Ljava/util/List;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :pswitch_c
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lh0/h;

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_2

    .line 254
    .line 255
    const/4 v2, 0x1

    .line 256
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-interface {p0, v3, v0, v2, v1}, Lru/zdevs/zarchiver/service/c;->CopyList(Ljava/util/List;Lh0/h;ZI)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :pswitch_d
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 269
    .line 270
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Lh0/h;

    .line 275
    .line 276
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object v4, v0

    .line 281
    check-cast v4, Lh0/h;

    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    .line 293
    const/4 v6, 0x1

    .line 294
    goto :goto_0

    .line 295
    :cond_3
    const/4 v6, 0x0

    .line 296
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    move-object v0, p0

    .line 301
    move-object v1, v3

    .line 302
    move-object v2, v4

    .line 303
    move-object v3, v5

    .line 304
    move v4, v6

    .line 305
    move v5, v10

    .line 306
    invoke-interface/range {v0 .. v5}, Lru/zdevs/zarchiver/service/c;->Copy(Lh0/h;Lh0/h;Ljava/util/List;ZI)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :pswitch_e
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 315
    .line 316
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Lh0/h;

    .line 321
    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-interface {p0, v0, v1}, Lru/zdevs/zarchiver/service/c;->IsLock(Lh0/h;I)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 343
    .line 344
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    move-object v4, v0

    .line 349
    check-cast v4, Lh0/h;

    .line 350
    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_4

    .line 364
    .line 365
    const/4 v10, 0x1

    .line 366
    goto :goto_1

    .line 367
    :cond_4
    const/4 v10, 0x0

    .line 368
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    move-object v0, p0

    .line 373
    move-object v1, v3

    .line 374
    move-object v2, v4

    .line 375
    move-object v3, v5

    .line 376
    move-object v4, v6

    .line 377
    move v5, v10

    .line 378
    move v6, v11

    .line 379
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveCreateFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 392
    .line 393
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    move-object v3, v0

    .line 398
    check-cast v3, Lh0/h;

    .line 399
    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    move-object v0, p0

    .line 417
    move-object v1, v2

    .line 418
    move-object v2, v3

    .line 419
    move-object v3, v4

    .line 420
    move-object v4, v5

    .line 421
    move-object v5, v6

    .line 422
    move v6, v10

    .line 423
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveRenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 436
    .line 437
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    move-object v3, v0

    .line 442
    check-cast v3, Lh0/h;

    .line 443
    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    move-object v0, p0

    .line 457
    move-object v1, v2

    .line 458
    move-object v2, v3

    .line 459
    move-object v3, v4

    .line 460
    move-object v4, v5

    .line 461
    move v5, v6

    .line 462
    invoke-interface/range {v0 .. v5}, Lru/zdevs/zarchiver/service/c;->ArchiveDelFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_2

    .line 469
    .line 470
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 475
    .line 476
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    check-cast v3, Lh0/h;

    .line 481
    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    move-object v0, p0

    .line 499
    move-object v1, v2

    .line 500
    move-object v2, v3

    .line 501
    move-object v3, v4

    .line 502
    move-object v4, v5

    .line 503
    move-object v5, v6

    .line 504
    move v6, v10

    .line 505
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveAddFilesMulti(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 518
    .line 519
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    check-cast v3, Lh0/h;

    .line 524
    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    move-object v6, v0

    .line 538
    check-cast v6, Lh0/h;

    .line 539
    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 541
    .line 542
    .line 543
    move-result v10

    .line 544
    move-object v0, p0

    .line 545
    move-object v1, v2

    .line 546
    move-object v2, v3

    .line 547
    move-object v3, v4

    .line 548
    move-object v4, v5

    .line 549
    move-object v5, v6

    .line 550
    move v6, v10

    .line 551
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveAddFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_2

    .line 558
    .line 559
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    sget-object v2, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 564
    .line 565
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-interface {p0, v0, v2, v1}, Lru/zdevs/zarchiver/service/c;->ArchiveTestMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_2

    .line 580
    .line 581
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    sget-object v2, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 586
    .line 587
    invoke-static {p2, v2}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    check-cast v2, Lh0/h;

    .line 592
    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-interface {p0, v0, v2, v1}, Lru/zdevs/zarchiver/service/c;->ArchiveTest(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_2

    .line 604
    .line 605
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 610
    .line 611
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    move-object v3, v0

    .line 616
    check-cast v3, Lh0/h;

    .line 617
    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    move-object v0, p0

    .line 631
    move-object v1, v2

    .line 632
    move-object v2, v3

    .line 633
    move-object v3, v4

    .line 634
    move-object v4, v5

    .line 635
    move v5, v6

    .line 636
    invoke-interface/range {v0 .. v5}, Lru/zdevs/zarchiver/service/c;->ArchiveOpenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_2

    .line 643
    .line 644
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 649
    .line 650
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 667
    .line 668
    .line 669
    move-result v10

    .line 670
    move-object v0, p0

    .line 671
    move-object v1, v2

    .line 672
    move-object v2, v3

    .line 673
    move-object v3, v4

    .line 674
    move-object v4, v5

    .line 675
    move-object v5, v6

    .line 676
    move v6, v10

    .line 677
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveExtractMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_2

    .line 684
    .line 685
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 690
    .line 691
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    check-cast v3, Lh0/h;

    .line 696
    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    move-object v6, v0

    .line 710
    check-cast v6, Lh0/h;

    .line 711
    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 713
    .line 714
    .line 715
    move-result v10

    .line 716
    move-object v0, p0

    .line 717
    move-object v1, v2

    .line 718
    move-object v2, v3

    .line 719
    move-object v3, v4

    .line 720
    move-object v4, v5

    .line 721
    move-object v5, v6

    .line 722
    move v6, v10

    .line 723
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveExtract(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    .line 728
    .line 729
    goto :goto_2

    .line 730
    :pswitch_19
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 731
    .line 732
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    move-object v5, v0

    .line 749
    check-cast v5, Lh0/h;

    .line 750
    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 752
    .line 753
    .line 754
    move-result v6

    .line 755
    move-object v0, p0

    .line 756
    move-object v1, v2

    .line 757
    move-object v2, v3

    .line 758
    move-object v3, v4

    .line 759
    move-object v4, v5

    .line 760
    move v5, v6

    .line 761
    invoke-interface/range {v0 .. v5}, Lru/zdevs/zarchiver/service/c;->ArchiveCompressMulti(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    .line 766
    .line 767
    goto :goto_2

    .line 768
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    sget-object v0, Lh0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 773
    .line 774
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    check-cast v3, Lh0/h;

    .line 779
    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    invoke-static {p2, v0}, Lru/zdevs/zarchiver/service/c$b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    move-object v6, v0

    .line 793
    check-cast v6, Lh0/h;

    .line 794
    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 796
    .line 797
    .line 798
    move-result v10

    .line 799
    move-object v0, p0

    .line 800
    move-object v1, v2

    .line 801
    move-object v2, v3

    .line 802
    move-object v3, v4

    .line 803
    move-object v4, v5

    .line 804
    move-object v5, v6

    .line 805
    move v6, v10

    .line 806
    invoke-interface/range {v0 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveCompress(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    .line 811
    .line 812
    :goto_2
    return v9

    .line 813
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
