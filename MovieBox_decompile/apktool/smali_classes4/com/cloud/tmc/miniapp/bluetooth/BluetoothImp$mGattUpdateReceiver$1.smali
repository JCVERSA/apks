.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    if-eqz v2, :cond_1c

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string v4, "data_status"

    .line 19
    .line 20
    const-string v5, "code"

    .line 21
    .line 22
    const-string v6, "data_characteristic"

    .line 23
    .line 24
    const-string v7, "data_characteristicUUID"

    .line 25
    .line 26
    const-string v8, "data_serviceUUID"

    .line 27
    .line 28
    const/4 v9, -0x1

    .line 29
    const-string v10, ""

    .line 30
    .line 31
    sparse-switch v3, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_c

    .line 35
    .line 36
    :sswitch_0
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto/16 :goto_c

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v2, "mGattUpdateReceiver -> ACTION_SCAN_RESULT"

    .line 53
    .line 54
    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    :goto_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    cmp-long p1, v2, v4

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_1c

    .line 89
    .line 90
    const-string v2, "scan_result"

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v0, :cond_1c

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1$onReceive$scanRsultData$1;

    .line 109
    .line 110
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1$onReceive$scanRsultData$1;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v1, p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p2, "fromJson(\n              \u2026                        )"

    .line 122
    .line 123
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    check-cast p1, Ljava/util/Map;

    .line 127
    .line 128
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 129
    .line 130
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v1, "mGattUpdateReceiver -> SCAN_SUCCESS:"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 155
    .line 156
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    if-eqz p2, :cond_1c

    .line 161
    .line 162
    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_c

    .line 166
    .line 167
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v0, "mGattUpdateReceiver -> SCAN_FAIL:"

    .line 179
    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_1c

    .line 200
    .line 201
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(J)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :sswitch_1
    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_5

    .line 213
    .line 214
    goto/16 :goto_c

    .line 215
    .line 216
    :cond_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 217
    .line 218
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "mGattUpdateReceiver -> ACTION_SERVICES_DISCOVERED"

    .line 223
    .line 224
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    if-eqz p2, :cond_6

    .line 232
    .line 233
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    goto :goto_2

    .line 238
    :cond_6
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 241
    .line 242
    .line 243
    move-result-wide v2

    .line 244
    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    cmp-long p2, v2, v4

    .line 251
    .line 252
    const-string v4, "deviceServicesListeners.iterator()"

    .line 253
    .line 254
    if-nez p2, :cond_b

    .line 255
    .line 256
    new-instance p2, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 262
    .line 263
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-eqz v2, :cond_a

    .line 268
    .line 269
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 270
    .line 271
    if-eqz v2, :cond_7

    .line 272
    .line 273
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    :cond_7
    if-nez v1, :cond_8

    .line 278
    .line 279
    new-instance v1, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    :cond_8
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_a

    .line 295
    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 301
    .line 302
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    const-string v6, "it.uuid.toString()"

    .line 311
    .line 312
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getType()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_9

    .line 320
    .line 321
    move v3, v0

    .line 322
    goto :goto_4

    .line 323
    :cond_9
    move v3, p1

    .line 324
    :goto_4
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v8, "mGattUpdateReceiver -> SUCCESS uuid:"

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v8, ",isPrimary:"

    .line 342
    .line 343
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-static {v6, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v6, "uuid"

    .line 357
    .line 358
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    const-string v6, "isPrimary"

    .line 367
    .line 368
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    const/4 v6, 0x2

    .line 373
    new-array v6, v6, [Lkotlin/Pair;

    .line 374
    .line 375
    aput-object v5, v6, p1

    .line 376
    .line 377
    aput-object v3, v6, v0

    .line 378
    .line 379
    invoke-static {v6}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 388
    .line 389
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_1c

    .line 405
    .line 406
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;

    .line 411
    .line 412
    invoke-interface {v0, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(Ljava/util/List;)V

    .line 413
    .line 414
    .line 415
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 416
    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_b
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 420
    .line 421
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v0, "mGattUpdateReceiver -> FAIL:"

    .line 431
    .line 432
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p2

    .line 442
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 446
    .line 447
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    if-eqz p2, :cond_1c

    .line 463
    .line 464
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    check-cast p2, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;

    .line 469
    .line 470
    invoke-interface {p2, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(J)V

    .line 471
    .line 472
    .line 473
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 474
    .line 475
    .line 476
    goto :goto_6

    .line 477
    :sswitch_2
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    .line 478
    .line 479
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1c

    .line 484
    .line 485
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 486
    .line 487
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    const-string v1, "mGattUpdateReceiver -> ACTION_NOTIFT_BLUETOOTH_ADAPTER_STATE_CHANGE"

    .line 492
    .line 493
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_c

    .line 501
    .line 502
    const-string v1, "scan"

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    goto :goto_7

    .line 509
    :cond_c
    move v0, p1

    .line 510
    :goto_7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 511
    .line 512
    .line 513
    move-result-object p2

    .line 514
    if-eqz p2, :cond_d

    .line 515
    .line 516
    const-string p1, "avaliable"

    .line 517
    .line 518
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    :cond_d
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 523
    .line 524
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    const-string v2, "mGattUpdateReceiver -> getBluetoothAdapterState:"

    .line 534
    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v2, ","

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 557
    .line 558
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getAdapterStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 559
    .line 560
    .line 561
    move-result-object p2

    .line 562
    if-eqz p2, :cond_1c

    .line 563
    .line 564
    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;->OooO00o(ZZ)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_c

    .line 568
    .line 569
    :sswitch_3
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_WRITE_CHARACTERISTIC"

    .line 570
    .line 571
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    if-nez v0, :cond_e

    .line 576
    .line 577
    goto/16 :goto_c

    .line 578
    .line 579
    :cond_e
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 580
    .line 581
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getWriteListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const-string v1, "writeListeners.iterator()"

    .line 590
    .line 591
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    if-eqz v1, :cond_1c

    .line 599
    .line 600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;

    .line 605
    .line 606
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    if-nez v2, :cond_f

    .line 611
    .line 612
    move-object v2, v10

    .line 613
    :cond_f
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    if-nez v3, :cond_10

    .line 618
    .line 619
    move-object v3, v10

    .line 620
    :cond_10
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    if-nez v5, :cond_11

    .line 625
    .line 626
    new-array v5, p1, [B

    .line 627
    .line 628
    :cond_11
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 629
    .line 630
    .line 631
    move-result v11

    .line 632
    invoke-interface {v1, v2, v3, v5, v11}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;->OooO00o(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 633
    .line 634
    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 636
    .line 637
    .line 638
    goto :goto_8

    .line 639
    :sswitch_4
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_DEVICE_CONNECT_STATE"

    .line 640
    .line 641
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result p1

    .line 645
    if-nez p1, :cond_12

    .line 646
    .line 647
    goto/16 :goto_c

    .line 648
    .line 649
    :cond_12
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 650
    .line 651
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    const-string v0, "mGattUpdateReceiver -> ACTION_DEVICE_CONNECT_STATE"

    .line 656
    .line 657
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    const-string p1, "address"

    .line 661
    .line 662
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    if-nez p1, :cond_13

    .line 667
    .line 668
    goto :goto_9

    .line 669
    :cond_13
    move-object v10, p1

    .line 670
    :goto_9
    const-string p1, "status"

    .line 671
    .line 672
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    const-string v0, "newState"

    .line 677
    .line 678
    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 679
    .line 680
    .line 681
    move-result p2

    .line 682
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 683
    .line 684
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string v2, "mGattUpdateReceiver -> address:"

    .line 694
    .line 695
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v2, ",status:"

    .line 702
    .line 703
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string v2, ",newState:"

    .line 710
    .line 711
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 725
    .line 726
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getConnectStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    if-eqz v0, :cond_1c

    .line 731
    .line 732
    invoke-interface {v0, v10, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;->OooO00o(Ljava/lang/String;II)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_c

    .line 736
    .line 737
    :sswitch_5
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_READ_CHARACTERISTIC"

    .line 738
    .line 739
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-nez v0, :cond_14

    .line 744
    .line 745
    goto/16 :goto_c

    .line 746
    .line 747
    :cond_14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 748
    .line 749
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getReadListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    const-string v1, "readListeners.iterator()"

    .line 758
    .line 759
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_1c

    .line 767
    .line 768
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;

    .line 773
    .line 774
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    if-nez v2, :cond_15

    .line 779
    .line 780
    move-object v2, v10

    .line 781
    :cond_15
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    if-nez v3, :cond_16

    .line 786
    .line 787
    move-object v3, v10

    .line 788
    :cond_16
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    if-nez v5, :cond_17

    .line 793
    .line 794
    new-array v5, p1, [B

    .line 795
    .line 796
    :cond_17
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 797
    .line 798
    .line 799
    move-result v11

    .line 800
    invoke-interface {v1, v2, v3, v5, v11}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;->OooO00o(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 801
    .line 802
    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 804
    .line 805
    .line 806
    goto :goto_a

    .line 807
    :sswitch_6
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_CHARACTERISTIC"

    .line 808
    .line 809
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-nez v0, :cond_18

    .line 814
    .line 815
    goto :goto_c

    .line 816
    :cond_18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 817
    .line 818
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getCharacteristicValueChangeListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    if-eqz v0, :cond_1c

    .line 823
    .line 824
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    if-nez v1, :cond_19

    .line 829
    .line 830
    move-object v1, v10

    .line 831
    :cond_19
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    if-nez v2, :cond_1a

    .line 836
    .line 837
    goto :goto_b

    .line 838
    :cond_1a
    move-object v10, v2

    .line 839
    :goto_b
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 840
    .line 841
    .line 842
    move-result-object p2

    .line 843
    if-nez p2, :cond_1b

    .line 844
    .line 845
    new-array p2, p1, [B

    .line 846
    .line 847
    :cond_1b
    invoke-interface {v0, v1, v10, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 848
    .line 849
    .line 850
    :cond_1c
    :goto_c
    return-void

    .line 851
    :sswitch_data_0
    .sparse-switch
        -0x3ad4baad -> :sswitch_6
        0xf0493e6 -> :sswitch_5
        0x10f4ea51 -> :sswitch_4
        0x148efdd9 -> :sswitch_3
        0x270ba317 -> :sswitch_2
        0x2a4a594b -> :sswitch_1
        0x5ed4f6a1 -> :sswitch_0
    .end sparse-switch
.end method
