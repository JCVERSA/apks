.class public final Lsl/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/lib_web/zip/loader/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsl/d$a;
    }
.end annotation


# static fields
.field public static final d:Lsl/d$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/transsion/lib_web/LoadUrlData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsl/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lsl/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lsl/d;->d:Lsl/d$a;

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
    iput-object p1, p0, Lsl/d;->b:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

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
    if-eqz v2, :cond_c

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
    iget-object v4, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

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
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const-string v4, "<interceptRequest> url:"

    .line 46
    .line 47
    const-string v5, "DR_WebviewRenderStaticFileLoader"

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    :try_start_1
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " pageData is null return"

    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v5, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_2
    sget-object v6, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 78
    .line 79
    iget-object v7, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Lcom/transsion/lib_web/download_render/utils/a;->j(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v7, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget-object v8, Lcom/transsion/lib_web/download_render/utils/CacheType;->PAGE:Lcom/transsion/lib_web/download_render/utils/CacheType;

    .line 95
    .line 96
    invoke-virtual {v6, v7, v8}, Lcom/transsion/lib_web/download_render/utils/a;->o(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/CacheType;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 108
    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    iget-object v3, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v6, v3}, Lcom/transsion/lib_web/download_render/utils/a;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " fileData is null return"

    .line 134
    .line 135
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v3, v5, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_3
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    const-string v8, "application/octet-stream"

    .line 151
    .line 152
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_4
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->isStatic()Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-nez v7, :cond_5

    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_5
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const-string v8, "text/html"

    .line 177
    .line 178
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_6

    .line 183
    .line 184
    iget-object v7, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 185
    .line 186
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->htmlUseRemoteEnable()Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_6

    .line 191
    .line 192
    sget-object v7, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    .line 193
    .line 194
    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/utils/d;->a()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_6

    .line 199
    .line 200
    iget-object v3, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v6, v3}, Lcom/transsion/lib_web/download_render/utils/a;->h(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 210
    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, " is html use remote"

    .line 223
    .line 224
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v3, v5, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-object v1

    .line 235
    :cond_6
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    sget-object v8, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->NONE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 240
    .line 241
    if-eq v7, v8, :cond_7

    .line 242
    .line 243
    iget-object v7, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 244
    .line 245
    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v6, v7}, Lcom/transsion/lib_web/download_render/utils/a;->f(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v6, Lpl/h;->a:Lpl/h;

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->getType()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v2, " fileOperateStatus:"

    .line 274
    .line 275
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v2, " unNormal return"

    .line 282
    .line 283
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v6, v5, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object v1

    .line 294
    :cond_7
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileLocalPath$lib_web_release()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    if-nez v7, :cond_8

    .line 299
    .line 300
    iget-object v3, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 301
    .line 302
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v6, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 310
    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v2, " fileLocalPath is null return"

    .line 323
    .line 324
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v3, v5, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-object v1

    .line 335
    :cond_8
    new-instance v8, Ljava/io/File;

    .line 336
    .line 337
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    if-nez v7, :cond_9

    .line 345
    .line 346
    iget-object v3, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 347
    .line 348
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v6, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sget-object v3, Lpl/h;->a:Lpl/h;

    .line 356
    .line 357
    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v2, " file:"

    .line 373
    .line 374
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v2, " is not exist return"

    .line 381
    .line 382
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v3, v5, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-object v1

    .line 393
    :cond_9
    new-instance v15, Ljava/io/FileInputStream;

    .line 394
    .line 395
    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    new-instance v7, Landroid/webkit/WebResourceResponse;

    .line 403
    .line 404
    const-string v11, "UTF-8"

    .line 405
    .line 406
    const-string v13, "OK"

    .line 407
    .line 408
    if-eqz p1, :cond_a

    .line 409
    .line 410
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    if-nez v9, :cond_b

    .line 415
    .line 416
    :cond_a
    new-instance v9, Ljava/util/HashMap;

    .line 417
    .line 418
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 419
    .line 420
    .line 421
    :cond_b
    invoke-virtual {v0, v9}, Lsl/d;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    const/16 v12, 0xc8

    .line 426
    .line 427
    move-object v9, v7

    .line 428
    move-object v10, v3

    .line 429
    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 430
    .line 431
    .line 432
    iget-object v9, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 433
    .line 434
    invoke-virtual {v9}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    invoke-virtual {v6, v9}, Lcom/transsion/lib_web/download_render/utils/a;->i(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    sget-object v6, Lpl/h;->a:Lpl/h;

    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v2, ", mimeType:"

    .line 459
    .line 460
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v2, ", file:"

    .line 467
    .line 468
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v2, " exist"

    .line 475
    .line 476
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v6, v5, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .line 485
    .line 486
    return-object v7

    .line 487
    :catchall_0
    sget-object v2, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 488
    .line 489
    iget-object v3, v0, Lsl/d;->c:Lcom/transsion/lib_web/LoadUrlData;

    .line 490
    .line 491
    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Lcom/transsion/lib_web/download_render/utils/a;->d(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_c
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
