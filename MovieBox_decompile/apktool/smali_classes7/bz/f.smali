.class public abstract Lbz/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\d+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lbz/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)Lbz/i;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Post url : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "\nBody : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lbz/i;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v1, v2}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {}, Lbz/c;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Lbz/d;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v4, v5}, Lbz/d;-><init>([B)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Lbz/d;->a(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v4, Lrp/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .line 55
    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoj6/eaT17WcI4r6GJxLVIDfQkYLRLGWyObKO1kj1FS+7NvAIIhNxjNpplefKGWSLOyuKdkLlH53q+HQeyo3ngDf3IPp8evvBfWaoCk1H33q35hm+W+XKsL5bMbzZhJDVEqYpebXRqL6Cz+79xyWPEHbp1l2G5FKQ76/tKAqZ+7LNeEBhgoX1duXcAXrSR7dOP6loh2DUwagVta/o2poAVzxKQKDJeJs0+VV741yJSjjVMGWAl0enK4MA0lvtmin6LVQMgNuHL5UXmdrbsEcbiVvE7z9Ol6MGDRzxyUBufklb3Orr9tbLNydKJ0mrdHZMcg8yGpuJMMOOs+CBiqA+MQIDAQAB"

    .line 56
    .line 57
    :try_start_1
    invoke-direct {v4, v5}, Lrp/a;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v3}, Lrp/a;->d(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x2

    .line 65
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ","

    .line 82
    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v3, Ljava/net/URL;

    .line 94
    .line 95
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/net/URLConnection;

    .line 107
    .line 108
    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    :try_start_2
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 111
    .line 112
    if-eqz v6, :cond_1

    .line 113
    .line 114
    sget-object v6, Lbz/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    .line 116
    if-nez v6, :cond_0

    .line 117
    .line 118
    invoke-static {}, Lbz/k;->a()Ljavax/net/ssl/SSLContext;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    if-eqz v6, :cond_0

    .line 123
    .line 124
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    sput-object v6, Lbz/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    move-object v2, v5

    .line 133
    goto/16 :goto_b

    .line 134
    .line 135
    :catch_0
    move-exception p0

    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_0
    :goto_0
    sget-object v6, Lbz/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    .line 140
    if-eqz v6, :cond_1

    .line 141
    .line 142
    move-object v7, v5

    .line 143
    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    .line 144
    .line 145
    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 146
    .line 147
    .line 148
    move-object v6, v5

    .line 149
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 150
    .line 151
    sget-object v7, Lbz/k;->a:Lbz/k$b;

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_1
    const-string v6, "application/json"

    .line 157
    .line 158
    const-string v7, "*/*"

    .line 159
    .line 160
    const-string v8, "POST"

    .line 161
    .line 162
    if-lez p2, :cond_2

    .line 163
    .line 164
    :try_start_3
    new-instance v9, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 165
    .line 166
    invoke-static {}, Lbz/l;->d()Lbz/l;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Lbz/l;->b()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    sget-object v11, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacMD5:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    .line 175
    .line 176
    invoke-direct {v9, v10, v4, v11}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;-><init>(Ljava/lang/String;ILcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V

    .line 177
    .line 178
    .line 179
    new-instance v4, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 180
    .line 181
    invoke-direct {v4}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v8}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->method(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4, v7}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->accept(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4, v6}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->contentType(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4, p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->url(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0, v9}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->key(Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->body(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->build()Lcom/transsion/infra/gateway/core/bean/RequestBean;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v10, "Gateway requestBean : "

    .line 218
    .line 219
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v4}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {p0}, Lll/a;->a(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v10, "Gateway sign : "

    .line 246
    .line 247
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-static {v4}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    const-string v4, "x-tr-signature"

    .line 261
    .line 262
    invoke-virtual {v5, v4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_2
    move-object v9, v2

    .line 267
    :goto_1
    const-string p0, "accept"

    .line 268
    .line 269
    invoke-virtual {v5, p0, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string p0, "Content-Type"

    .line 273
    .line 274
    invoke-virtual {v5, p0, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    .line 276
    .line 277
    const-string p0, "Content-Length"

    .line 278
    .line 279
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v5, p0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    .line 289
    .line 290
    const-string p0, "appid"

    .line 291
    .line 292
    :try_start_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    invoke-virtual {v5, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const/16 p0, 0x4e20

    .line 303
    .line 304
    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 305
    .line 306
    .line 307
    const/16 p0, 0x7530

    .line 308
    .line 309
    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 310
    .line 311
    .line 312
    const/4 p0, 0x1

    .line 313
    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 317
    .line 318
    .line 319
    new-instance p2, Ljava/io/PrintWriter;

    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-direct {p2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v4, "url:"

    .line 347
    .line 348
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v3, " code:"

    .line 355
    .line 356
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const/16 p2, 0xc8

    .line 370
    .line 371
    if-ne p1, p2, :cond_6

    .line 372
    .line 373
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    new-instance p2, Ljava/io/BufferedReader;

    .line 378
    .line 379
    new-instance v3, Ljava/io/InputStreamReader;

    .line 380
    .line 381
    const-string v4, "UTF-8"

    .line 382
    .line 383
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 388
    .line 389
    .line 390
    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    .line 392
    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    if-eqz v4, :cond_3

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    const-string v4, "{}"

    .line 413
    .line 414
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-eqz v4, :cond_4

    .line 419
    .line 420
    new-instance v1, Lbz/i;

    .line 421
    .line 422
    invoke-direct {v1, p0, v2}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result p0

    .line 430
    if-eqz p0, :cond_5

    .line 431
    .line 432
    new-instance p0, Lbz/i;

    .line 433
    .line 434
    invoke-direct {p0, v1, v2}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    move-object v1, p0

    .line 438
    :goto_3
    move-object v0, v1

    .line 439
    goto :goto_4

    .line 440
    :cond_5
    new-instance p0, Lbz/i;

    .line 441
    .line 442
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, v1, v3}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    move-object v0, p0

    .line 447
    :goto_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 451
    .line 452
    .line 453
    goto/16 :goto_a

    .line 454
    .line 455
    :cond_6
    const-string p0, "429&503&504"

    .line 456
    .line 457
    :try_start_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    if-eqz p0, :cond_8

    .line 466
    .line 467
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    new-instance p1, Ljava/io/BufferedReader;

    .line 472
    .line 473
    new-instance p2, Ljava/io/InputStreamReader;

    .line 474
    .line 475
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 476
    .line 477
    invoke-direct {p2, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 478
    .line 479
    .line 480
    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 481
    .line 482
    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    if-eqz p2, :cond_7

    .line 493
    .line 494
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    new-instance p1, Lbz/i;

    .line 503
    .line 504
    const/4 p2, 0x4

    .line 505
    invoke-direct {p1, p2, p0}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    move-object v0, p1

    .line 509
    goto/16 :goto_a

    .line 510
    .line 511
    :cond_8
    const/16 p0, 0x190

    .line 512
    .line 513
    if-lt p1, p0, :cond_c

    .line 514
    .line 515
    if-eqz v9, :cond_c

    .line 516
    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string p2, "result from server : "

    .line 523
    .line 524
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 542
    .line 543
    .line 544
    move-result-object p0

    .line 545
    new-instance p2, Ljava/io/BufferedReader;

    .line 546
    .line 547
    new-instance v1, Ljava/io/InputStreamReader;

    .line 548
    .line 549
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 550
    .line 551
    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 552
    .line 553
    .line 554
    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 555
    .line 556
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    :goto_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    if-eqz v2, :cond_9

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    goto :goto_6

    .line 572
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-static {p1, v1, v9}, Lll/a;->c(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    if-eqz p1, :cond_a

    .line 581
    .line 582
    new-instance p1, Lbz/i;

    .line 583
    .line 584
    const/4 v2, 0x3

    .line 585
    invoke-direct {p1, v2, v1}, Lbz/i;-><init>(ILjava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    move-object v0, p1

    .line 589
    :cond_a
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 593
    .line 594
    .line 595
    goto :goto_a

    .line 596
    :goto_7
    move-object v2, v5

    .line 597
    goto :goto_8

    .line 598
    :catchall_1
    move-exception p0

    .line 599
    goto :goto_b

    .line 600
    :catch_1
    move-exception p0

    .line 601
    :goto_8
    :try_start_7
    instance-of p1, p0, Ljava/net/UnknownHostException;

    .line 602
    .line 603
    if-eqz p1, :cond_b

    .line 604
    .line 605
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    goto :goto_9

    .line 613
    :cond_b
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p0

    .line 617
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 618
    .line 619
    .line 620
    :goto_9
    if-eqz v2, :cond_d

    .line 621
    .line 622
    move-object v5, v2

    .line 623
    :cond_c
    :goto_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 624
    .line 625
    .line 626
    :cond_d
    return-object v0

    .line 627
    :goto_b
    if-eqz v2, :cond_e

    .line 628
    .line 629
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 630
    .line 631
    .line 632
    :cond_e
    throw p0
.end method
