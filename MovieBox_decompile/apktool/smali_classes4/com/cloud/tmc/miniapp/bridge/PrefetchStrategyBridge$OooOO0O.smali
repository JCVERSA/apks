.class public final Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;->requestStrategy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lokhttp3/Response;",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final OooO00o(Lokhttp3/Response;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 13

    .line 1
    const-string v0, "temp_data"

    .line 2
    .line 3
    const-string v1, "PrefetchStrategyBridge"

    .line 4
    .line 5
    const-string v2, "response"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0xc8

    .line 15
    .line 16
    if-ne v2, v3, :cond_13

    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "content-type"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "application/json"

    .line 34
    .line 35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v4, "data"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :cond_0
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_14

    .line 58
    .line 59
    invoke-interface {p2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_15

    .line 63
    .line 64
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO00o:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v6, -0x1

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-nez v7, :cond_2

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    add-int/2addr v7, v6

    .line 89
    if-ltz v7, :cond_5

    .line 90
    .line 91
    :goto_0
    add-int/lit8 v8, v7, -0x1

    .line 92
    .line 93
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/16 v10, 0x2f

    .line 98
    .line 99
    if-ne v9, v10, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-gez v8, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move v7, v8

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    :goto_1
    move v7, v6

    .line 108
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v7, "this as java.lang.String).substring(startIndex)"

    .line 113
    .line 114
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v7

    .line 122
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_4
    const/16 v7, 0x800

    .line 127
    .line 128
    new-array v7, v7, [B

    .line 129
    .line 130
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    goto :goto_5

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    move-object v0, v5

    .line 143
    goto/16 :goto_d

    .line 144
    .line 145
    :cond_7
    move-object p1, v5

    .line 146
    :goto_5
    :try_start_1
    const-class v8, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 147
    .line 148
    invoke-static {v8}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 153
    .line 154
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO0O0:Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {v8, v9}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-instance v10, Ljava/io/File;

    .line 181
    .line 182
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v10}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    .line 186
    .line 187
    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v8, Ljava/io/File;

    .line 207
    .line 208
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_8

    .line 216
    .line 217
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    move-object v12, v0

    .line 223
    move-object v0, p1

    .line 224
    move-object p1, v12

    .line 225
    goto/16 :goto_d

    .line 226
    .line 227
    :cond_8
    :goto_6
    new-instance v2, Ljava/io/FileOutputStream;

    .line 228
    .line 229
    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .line 231
    .line 232
    :goto_7
    if-eqz p1, :cond_9

    .line 233
    .line 234
    :try_start_2
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    goto :goto_8

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    goto :goto_c

    .line 245
    :cond_9
    move-object v9, v5

    .line 246
    :goto_8
    const/4 v10, 0x0

    .line 247
    if-eqz v9, :cond_a

    .line 248
    .line 249
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    goto :goto_9

    .line 254
    :cond_a
    move v11, v10

    .line 255
    :goto_9
    if-nez v9, :cond_b

    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-eq v9, v6, :cond_c

    .line 263
    .line 264
    :goto_a
    invoke-virtual {v2, v7, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 269
    .line 270
    .line 271
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO0O0:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    if-eqz p2, :cond_d

    .line 311
    .line 312
    invoke-interface {p2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 313
    .line 314
    .line 315
    :cond_d
    if-eqz p1, :cond_e

    .line 316
    .line 317
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 318
    .line 319
    .line 320
    goto :goto_b

    .line 321
    :catchall_3
    move-exception p1

    .line 322
    goto :goto_10

    .line 323
    :cond_e
    :goto_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 324
    .line 325
    .line 326
    goto :goto_15

    .line 327
    :goto_c
    move-object v5, v2

    .line 328
    goto :goto_e

    .line 329
    :goto_d
    move-object v12, v0

    .line 330
    move-object v0, p1

    .line 331
    move-object p1, v12

    .line 332
    :goto_e
    if-eqz p2, :cond_f

    .line 333
    .line 334
    :try_start_4
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 335
    .line 336
    .line 337
    goto :goto_f

    .line 338
    :catchall_4
    move-exception p2

    .line 339
    goto :goto_11

    .line 340
    :cond_f
    :goto_f
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 341
    .line 342
    .line 343
    if-eqz p1, :cond_10

    .line 344
    .line 345
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 346
    .line 347
    .line 348
    :cond_10
    if-eqz v5, :cond_14

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 351
    .line 352
    .line 353
    goto :goto_15

    .line 354
    :goto_10
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    goto :goto_15

    .line 358
    :goto_11
    if-eqz p1, :cond_11

    .line 359
    .line 360
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 361
    .line 362
    .line 363
    goto :goto_12

    .line 364
    :catchall_5
    move-exception p1

    .line 365
    goto :goto_13

    .line 366
    :cond_11
    :goto_12
    if-eqz v5, :cond_12

    .line 367
    .line 368
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 369
    .line 370
    .line 371
    goto :goto_14

    .line 372
    :goto_13
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .line 374
    .line 375
    :cond_12
    :goto_14
    throw p2

    .line 376
    :cond_13
    if-eqz p2, :cond_14

    .line 377
    .line 378
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 379
    .line 380
    .line 381
    :cond_14
    :goto_15
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/Response;

    .line 2
    .line 3
    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooOO0O;->OooO00o(Lokhttp3/Response;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p1
.end method
