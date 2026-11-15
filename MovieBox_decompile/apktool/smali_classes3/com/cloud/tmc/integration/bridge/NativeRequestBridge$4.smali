.class Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->innerDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$header:Ljava/lang/String;

.field final synthetic val$saveName:Ljava/lang/String;

.field final synthetic val$timeout:Ljava/lang/Long;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$header:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$timeout:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$url:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$saveName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$filePath:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->lambda$onGranted$0(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onGranted$0(Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v11, p7

    .line 6
    .line 7
    move-object/from16 v12, p8

    .line 8
    .line 9
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v13, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    :goto_0
    const-string v1, ""

    .line 34
    .line 35
    const-string v2, "m-timeout"

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    cmp-long v3, v3, v5

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    :goto_1
    const-string v0, "60000"

    .line 70
    .line 71
    invoke-interface {v13, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :goto_2
    const-string v0, "x-byte-appid"

    .line 75
    .line 76
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_3

    .line 115
    .line 116
    const-string v2, "/"

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    array-length v2, v1

    .line 123
    if-lez v2, :cond_3

    .line 124
    .line 125
    array-length v0, v1

    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 127
    .line 128
    aget-object v0, v1, v0

    .line 129
    .line 130
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    move-object/from16 v9, p5

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v9, v0

    .line 140
    :goto_3
    const/16 v0, 0xa

    .line 141
    .line 142
    filled-new-array {v0}, [I

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 164
    .line 165
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getAppBaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v2, "temp_data"

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :goto_4
    move-object v14, v0

    .line 197
    goto :goto_5

    .line 198
    :cond_5
    invoke-static/range {p6 .. p6}, Lcom/cloud/tmc/integration/utils/FileUtil;->renameIfFileExists(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    goto :goto_4

    .line 203
    :goto_5
    const-string v0, "NativeRequestBridge"

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v2, "downloadPath: "

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->isFilePathValid(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    if-eqz v11, :cond_6

    .line 232
    .line 233
    iget-object v0, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 234
    .line 235
    const-string v1, "D0010"

    .line 236
    .line 237
    const-string v2, "Download Fail, file path contains illegal characters:D0010"

    .line 238
    .line 239
    invoke-static {v0, v1, v2, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 244
    .line 245
    .line 246
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 247
    .line 248
    .line 249
    :cond_6
    return-void

    .line 250
    :cond_7
    invoke-static {v14}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 257
    .line 258
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 263
    .line 264
    new-instance v15, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;

    .line 265
    .line 266
    const/16 v5, 0xa

    .line 267
    .line 268
    move-object v1, v15

    .line 269
    move-object/from16 v2, p0

    .line 270
    .line 271
    move-object/from16 v3, p7

    .line 272
    .line 273
    move-object/from16 v6, p6

    .line 274
    .line 275
    move-object v7, v14

    .line 276
    move-object/from16 v8, p3

    .line 277
    .line 278
    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4$1;-><init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;[IILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v1, p8

    .line 282
    .line 283
    move-object/from16 v2, p4

    .line 284
    .line 285
    move-object v3, v14

    .line 286
    move-object v4, v13

    .line 287
    move-object/from16 v5, p8

    .line 288
    .line 289
    move-object v6, v15

    .line 290
    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_8
    if-eqz v11, :cond_9

    .line 295
    .line 296
    iget-object v0, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 297
    .line 298
    const-string v1, "D008"

    .line 299
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v3, "Download Fail,create file:"

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, " fail:D008"

    .line 314
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v0, v1, v2, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 327
    .line 328
    .line 329
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :goto_6
    if-eqz v11, :cond_9

    .line 334
    .line 335
    iget-object v1, v10, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 336
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v3, "Download Fail,Exception_"

    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v0, ":D002"

    .line 355
    .line 356
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const-string v2, "D002"

    .line 364
    .line 365
    invoke-static {v1, v2, v0, v12}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-interface {v11, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 370
    .line 371
    .line 372
    invoke-interface/range {p7 .. p7}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 373
    .line 374
    .line 375
    :cond_9
    :goto_7
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 6
    .line 7
    const-string v2, "Download Fail, no permission:D009"

    .line 8
    .line 9
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    .line 10
    .line 11
    const-string v4, "D009"

    .line 12
    .line 13
    invoke-static {v1, v4, v2, v3}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 12

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->NETWORK:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$header:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$timeout:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$url:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$saveName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$filePath:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v9, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 16
    .line 17
    iget-object v10, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;->val$callbackId:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v11, Lcom/cloud/tmc/integration/bridge/i;

    .line 20
    .line 21
    move-object v1, v11

    .line 22
    move-object v2, p0

    .line 23
    invoke-direct/range {v1 .. v10}, Lcom/cloud/tmc/integration/bridge/i;-><init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$4;Ljava/lang/String;Ljava/lang/Long;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v11}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
