.class Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;
.super Lcom/mbridge/msdk/foundation/same/task/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils;->getSourceCodeFromNetUrl(Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadRes:Z

.field final synthetic val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$downloadRes:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/task/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .line 1
    return-void
.end method

.method public pauseTask(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public runTask()V
    .locals 11

    .line 1
    const-string v0, "DownLoadUtils"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;->onStart()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object v6, v1

    .line 15
    goto/16 :goto_10

    .line 16
    .line 17
    :catch_0
    move-exception v3

    .line 18
    move-object v4, v1

    .line 19
    move-object v5, v4

    .line 20
    :goto_0
    move-object v6, v5

    .line 21
    move-object v7, v6

    .line 22
    goto/16 :goto_a

    .line 23
    .line 24
    :cond_0
    :goto_1
    new-instance v3, Ljava/net/URL;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/net/URLConnection;

    .line 40
    .line 41
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 42
    .line 43
    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$url:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v4, v5}, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0x7530

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 56
    .line 57
    .line 58
    const/16 v4, 0x4e20

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "response code "

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v0, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/16 v5, 0xc8

    .line 88
    .line 89
    if-ne v4, v5, :cond_4

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/16 v5, 0x1800

    .line 96
    .line 97
    :try_start_1
    new-array v5, v5, [B

    .line 98
    .line 99
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    .line 103
    .line 104
    :goto_2
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const/4 v8, -0x1

    .line 109
    if-eq v7, v8, :cond_1

    .line 110
    .line 111
    invoke-virtual {v6, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    goto/16 :goto_11

    .line 117
    .line 118
    :catch_1
    move-exception v3

    .line 119
    move-object v5, v1

    .line 120
    goto :goto_4

    .line 121
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 128
    .line 129
    .line 130
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :try_start_3
    iget-boolean v7, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$downloadRes:Z

    .line 132
    .line 133
    if-nez v7, :cond_2

    .line 134
    .line 135
    new-instance v7, Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_2
    move-exception v3

    .line 142
    goto :goto_4

    .line 143
    :cond_2
    move-object v7, v1

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move-object v5, v1

    .line 146
    move-object v7, v5

    .line 147
    :goto_3
    const-string v8, ""

    .line 148
    .line 149
    const/4 v9, 0x1

    .line 150
    goto :goto_6

    .line 151
    :goto_4
    move-object v7, v1

    .line 152
    goto :goto_a

    .line 153
    :catchall_2
    move-exception v0

    .line 154
    move-object v6, v1

    .line 155
    :goto_5
    move-object v1, v4

    .line 156
    goto/16 :goto_10

    .line 157
    .line 158
    :catch_3
    move-exception v3

    .line 159
    move-object v5, v1

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_4
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v6, "responseCode is "

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    move-object v4, v1

    .line 180
    move-object v5, v4

    .line 181
    move-object v6, v5

    .line 182
    move-object v7, v6

    .line 183
    move v9, v2

    .line 184
    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 185
    .line 186
    .line 187
    if-eqz v4, :cond_5

    .line 188
    .line 189
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :catch_4
    move-exception v0

    .line 194
    goto :goto_8

    .line 195
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 198
    .line 199
    .line 200
    goto :goto_9

    .line 201
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    goto :goto_d

    .line 209
    :cond_6
    :goto_9
    move v2, v9

    .line 210
    goto :goto_d

    .line 211
    :catchall_3
    move-exception v0

    .line 212
    goto :goto_5

    .line 213
    :catch_5
    move-exception v3

    .line 214
    :goto_a
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v10, "getStringFromUrl failed "

    .line 224
    .line 225
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 240
    .line 241
    .line 242
    if-eqz v4, :cond_7

    .line 243
    .line 244
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 245
    .line 246
    .line 247
    goto :goto_b

    .line 248
    :catch_6
    move-exception v0

    .line 249
    goto :goto_c

    .line 250
    :cond_7
    :goto_b
    if-eqz v6, :cond_8

    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 253
    .line 254
    .line 255
    goto :goto_d

    .line 256
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    :cond_8
    :goto_d
    if-eqz v2, :cond_9

    .line 264
    .line 265
    :try_start_9
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$downloadRes:Z

    .line 266
    .line 267
    if-eqz v0, :cond_9

    .line 268
    .line 269
    if-eqz v5, :cond_9

    .line 270
    .line 271
    array-length v0, v5

    .line 272
    if-lez v0, :cond_9

    .line 273
    .line 274
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 275
    .line 276
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$url:Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {v0, v1, v5, v2}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;->onSuccess(Ljava/lang/String;[BLjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_f

    .line 282
    :catchall_4
    move-exception v0

    .line 283
    goto :goto_e

    .line 284
    :cond_9
    if-eqz v2, :cond_a

    .line 285
    .line 286
    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_a

    .line 291
    .line 292
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-lez v0, :cond_a

    .line 297
    .line 298
    const-string v0, "<mbridgeloadend></mbridgeloadend>"

    .line 299
    .line 300
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_a

    .line 305
    .line 306
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 307
    .line 308
    if-eqz v0, :cond_c

    .line 309
    .line 310
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$url:Ljava/lang/String;

    .line 311
    .line 312
    invoke-interface {v0, v7, v5, v1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;->onSuccess(Ljava/lang/String;[BLjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_f

    .line 316
    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 317
    .line 318
    if-eqz v0, :cond_c

    .line 319
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v2, "content write failed:"

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;->onFailed(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 338
    .line 339
    .line 340
    goto :goto_f

    .line 341
    :goto_e
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 342
    .line 343
    if-eqz v1, :cond_b

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadUtils$1;->val$onDownLoadH5Source:Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;

    .line 349
    .line 350
    if-eqz v1, :cond_c

    .line 351
    .line 352
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v1, v0}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;->onFailed(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 357
    .line 358
    .line 359
    goto :goto_f

    .line 360
    :catch_7
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    :cond_c
    :goto_f
    return-void

    .line 365
    :goto_10
    move-object v4, v1

    .line 366
    :goto_11
    if-eqz v4, :cond_d

    .line 367
    .line 368
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 369
    .line 370
    .line 371
    goto :goto_12

    .line 372
    :catch_8
    move-exception v1

    .line 373
    goto :goto_13

    .line 374
    :cond_d
    :goto_12
    if-eqz v6, :cond_e

    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 377
    .line 378
    .line 379
    goto :goto_14

    .line 380
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    :cond_e
    :goto_14
    throw v0
.end method
