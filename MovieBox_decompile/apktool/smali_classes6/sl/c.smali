.class public final Lsl/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/lib_web/zip/loader/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsl/c$a;
    }
.end annotation


# static fields
.field public static final d:Lsl/c$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/transsion/lib_web/LoadUrlData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsl/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lsl/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lsl/c;->d:Lsl/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadUrlData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lsl/c;->b:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/c;->v(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_b

    .line 19
    .line 20
    const-string v3, "yy://__QUEUE_MESSAGE__"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 34
    .line 35
    iget-object v4, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Lcom/transsion/lib_web/download_render/c;->h(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/PageData;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const-string v5, "<interceptRequest> url:"

    .line 46
    .line 47
    const-string v6, "DR_WebviewRenderIgnorePageUrlFileLoader"

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    :try_start_1
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " pageData is not null return"

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v6, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_2
    invoke-virtual {v3, v2}, Lcom/transsion/lib_web/download_render/c;->f(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, " fileData is null return"

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v6, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_3
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v7, "application/octet-stream"

    .line 114
    .line 115
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_4
    sget-object v4, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 123
    .line 124
    iget-object v7, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 125
    .line 126
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v4, v7}, Lcom/transsion/lib_web/download_render/utils/a;->j(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v7, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    sget-object v8, Lcom/transsion/lib_web/download_render/utils/CacheType;->ALL:Lcom/transsion/lib_web/download_render/utils/CacheType;

    .line 140
    .line 141
    invoke-virtual {v4, v7, v8}, Lcom/transsion/lib_web/download_render/utils/a;->o(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/CacheType;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const-string v8, "text/html"

    .line 149
    .line 150
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_5

    .line 155
    .line 156
    iget-object v7, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->htmlUseRemoteEnable()Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    sget-object v7, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    .line 165
    .line 166
    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/utils/d;->a()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_5

    .line 171
    .line 172
    iget-object v3, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->h(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, " is html use remote"

    .line 195
    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v3, v6, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v1

    .line 207
    :cond_5
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    sget-object v8, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->NONE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 212
    .line 213
    if-eq v7, v8, :cond_6

    .line 214
    .line 215
    iget-object v7, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v4, v7}, Lcom/transsion/lib_web/download_render/utils/a;->f(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object v4, Lpl/h;->a:Lpl/h;

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->getType()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    new-instance v7, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, " fileOperateStatus:"

    .line 246
    .line 247
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, " unNormal return"

    .line 254
    .line 255
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v4, v6, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_6
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileLocalPath$lib_web_release()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-nez v7, :cond_7

    .line 271
    .line 272
    iget-object v3, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 282
    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v2, " fileLocalPath is null return"

    .line 295
    .line 296
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v3, v6, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object v1

    .line 307
    :cond_7
    new-instance v8, Ljava/io/File;

    .line 308
    .line 309
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_8

    .line 317
    .line 318
    iget-object v3, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 328
    .line 329
    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v2, " file:"

    .line 345
    .line 346
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v2, " is not exist return"

    .line 353
    .line 354
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v3, v6, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return-object v1

    .line 365
    :cond_8
    new-instance v15, Ljava/io/FileInputStream;

    .line 366
    .line 367
    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    new-instance v7, Landroid/webkit/WebResourceResponse;

    .line 375
    .line 376
    const-string v11, "UTF-8"

    .line 377
    .line 378
    const-string v13, "OK"

    .line 379
    .line 380
    if-eqz p1, :cond_9

    .line 381
    .line 382
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    if-nez v9, :cond_a

    .line 387
    .line 388
    :cond_9
    new-instance v9, Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 391
    .line 392
    .line 393
    :cond_a
    invoke-virtual {v0, v9}, Lsl/c;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    const/16 v12, 0xc8

    .line 398
    .line 399
    move-object v9, v7

    .line 400
    move-object v10, v3

    .line 401
    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 402
    .line 403
    .line 404
    iget-object v9, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 405
    .line 406
    invoke-virtual {v9}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    invoke-virtual {v4, v9}, Lcom/transsion/lib_web/download_render/utils/a;->i(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sget-object v4, Lpl/h;->a:Lpl/h;

    .line 414
    .line 415
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 416
    .line 417
    .line 418
    move-result-wide v9

    .line 419
    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    new-instance v11, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v2, ", mimeType:"

    .line 435
    .line 436
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v2, ", length:"

    .line 443
    .line 444
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v2, ", file:"

    .line 451
    .line 452
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v2, " exist"

    .line 459
    .line 460
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v4, v6, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .line 469
    .line 470
    return-object v7

    .line 471
    :catchall_0
    sget-object v2, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 472
    .line 473
    iget-object v3, v0, Lsl/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 474
    .line 475
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {v2, v3}, Lcom/transsion/lib_web/download_render/utils/a;->d(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    :cond_b
    :goto_1
    return-object v1
.end method

.method public b(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/lib_web/zip/loader/c$b;->a(Lcom/transsion/lib_web/zip/loader/c;Ljava/util/Map;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
