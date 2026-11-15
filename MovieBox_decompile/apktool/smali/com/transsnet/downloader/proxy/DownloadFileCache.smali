.class public final Lcom/transsnet/downloader/proxy/DownloadFileCache;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/danikula/videocache/a;


# instance fields
.field private final a:J

.field private b:J

.field private final c:Lkotlin/Lazy;

.field private d:Ljava/io/RandomAccessFile;

.field private e:Lcom/transsion/baselib/db/download/DownloadBean;

.field private f:Ljava/lang/String;

.field private g:Lcom/transsnet/downloader/proxy/c;

.field private h:Ljava/util/concurrent/ConcurrentHashMap;

.field private i:Lcom/transsion/baselib/db/download/DownloadRange;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Lcom/danikula/videocache/m;

.field private n:Z

.field private final o:Lzw/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x300000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/downloader/proxy/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsnet/downloader/proxy/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    .line 35
    .line 36
    new-instance v0, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$a;-><init>(Lcom/transsnet/downloader/proxy/DownloadFileCache;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->o:Lzw/d;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a()Lui/n0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m()Lui/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/proxy/DownloadFileCache;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/transsion/baselib/db/download/DownloadRange;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lcom/danikula/videocache/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/proxy/DownloadFileCache;)Lui/n0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k()Lui/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(J)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "checkDownloadNewV2Ranges = "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 47
    .line 48
    if-eqz v3, :cond_d

    .line 49
    .line 50
    iget-object v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 71
    .line 72
    invoke-virtual {v7, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_2

    .line 77
    .line 78
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadIndex()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iput v6, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 83
    .line 84
    iput-object v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 85
    .line 86
    :cond_3
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 87
    .line 88
    iget v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 89
    .line 90
    iget-object v8, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move-object v8, v9

    .line 105
    :goto_1
    iget-object v10, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 106
    .line 107
    if-eqz v10, :cond_5

    .line 108
    .line 109
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object v10, v9

    .line 119
    :goto_2
    iget-object v11, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 120
    .line 121
    if-eqz v11, :cond_6

    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const-string v11, "range is null"

    .line 133
    .line 134
    :goto_3
    iget-object v12, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 135
    .line 136
    if-eqz v12, :cond_7

    .line 137
    .line 138
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 139
    .line 140
    .line 141
    move-result-wide v12

    .line 142
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    move-object v12, v9

    .line 148
    :goto_4
    iget-object v13, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 149
    .line 150
    if-eqz v13, :cond_8

    .line 151
    .line 152
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 153
    .line 154
    .line 155
    move-result-wide v13

    .line 156
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    goto :goto_5

    .line 161
    :cond_8
    move-object v13, v9

    .line 162
    :goto_5
    iget-object v14, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 163
    .line 164
    if-eqz v14, :cond_9

    .line 165
    .line 166
    invoke-virtual {v14}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    :cond_9
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    move-object/from16 v16, v5

    .line 188
    .line 189
    const-string v5, "download&play checkDownloadNewV2Ranges, offset="

    .line 190
    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, ",index = "

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, " \n                  currentRange, isDownloading: "

    .line 206
    .line 207
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ", downloadSuccess: "

    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, "\n                  rangeId: "

    .line 222
    .line 223
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, ", start: "

    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, ", end: "

    .line 238
    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ",progress: "

    .line 246
    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, "\n                  resourceId:"

    .line 254
    .line 255
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, ",name:"

    .line 262
    .line 263
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, "\n                "

    .line 270
    .line 271
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const-string v2, "download"

    .line 283
    .line 284
    const/4 v4, 0x1

    .line 285
    invoke-virtual {v6, v2, v1, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 289
    .line 290
    if-eqz v1, :cond_d

    .line 291
    .line 292
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_d

    .line 300
    .line 301
    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 302
    .line 303
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_d

    .line 311
    .line 312
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 313
    .line 314
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_d

    .line 319
    .line 320
    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    .line 321
    .line 322
    if-eqz v1, :cond_a

    .line 323
    .line 324
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iget v4, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 329
    .line 330
    iget-object v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 331
    .line 332
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v6, v16

    .line 336
    .line 337
    invoke-interface {v1, v2, v4, v6, v5}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_a
    move-object/from16 v6, v16

    .line 342
    .line 343
    :goto_6
    iget-object v1, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 344
    .line 345
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_d

    .line 358
    .line 359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    check-cast v2, Ljava/util/Map$Entry;

    .line 364
    .line 365
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    if-nez v5, :cond_c

    .line 374
    .line 375
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    :cond_c
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-eqz v4, :cond_b

    .line 384
    .line 385
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Lcom/transsnet/downloader/proxy/c;

    .line 390
    .line 391
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    iget v5, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 396
    .line 397
    iget-object v7, v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 398
    .line 399
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 403
    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_d
    return-void
.end method

.method private final h(Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_12

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_12

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 48
    .line 49
    invoke-virtual {v2, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    cmp-long v5, p2, v5

    .line 66
    .line 67
    if-gtz v5, :cond_3

    .line 68
    .line 69
    cmp-long v3, v3, p2

    .line 70
    .line 71
    if-gtz v3, :cond_3

    .line 72
    .line 73
    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, "_range1"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u5df2\u7ecf\u4e0b\u8f7d\uff0c\u76f4\u63a5\u8fd4\u56de, offset = "

    .line 105
    .line 106
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, ", rangeId = "

    .line 113
    .line 114
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    add-long/2addr v3, v5

    .line 138
    iget-wide v5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 139
    .line 140
    add-long/2addr v3, v5

    .line 141
    cmp-long v3, p2, v3

    .line 142
    .line 143
    if-gez v3, :cond_4

    .line 144
    .line 145
    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, "_range2"

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u5c0f\u4e8e\u9608\u503c\uff0c\u7b49\u5f85\u4e0b\u8f7d,\u53ea\u7684\u542f\u52a8\u7ebf\u7a0b\uff0c\u4e0d\u5904\u7406range, offset = "

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, v2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 190
    .line 191
    .line 192
    move-result-wide v3

    .line 193
    sub-long/2addr v3, p2

    .line 194
    iget-wide v5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 195
    .line 196
    cmp-long v3, v3, v5

    .line 197
    .line 198
    if-gez v3, :cond_5

    .line 199
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, "_range3"

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u65b0\u589e\u5206\u7247\u5c0f\u4e8e\u9608\u503c\uff0c\u4f7f\u7528\u9608\u503c\u5927\u5c0f, offset = "

    .line 226
    .line 227
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 241
    .line 242
    .line 243
    move-result-wide p1

    .line 244
    iget-wide v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 245
    .line 246
    sub-long p2, p1, v3

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v4, "_range4"

    .line 258
    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string p1, " \u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d, \u65b0\u589e\u5206\u7247\u5927\u4e8e\u9608\u503c, offset = "

    .line 275
    .line 276
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-direct {p0, v3, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :goto_1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 290
    .line 291
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_a

    .line 296
    .line 297
    new-instance p1, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 298
    .line 299
    invoke-direct {p1}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    .line 300
    .line 301
    .line 302
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 303
    .line 304
    if-eqz v3, :cond_6

    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    if-nez v3, :cond_7

    .line 311
    .line 312
    :cond_6
    const/4 v3, 0x0

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    add-long/2addr v3, p2

    .line 329
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 347
    .line 348
    .line 349
    move-result-wide p2

    .line 350
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    .line 351
    .line 352
    .line 353
    const-wide/16 p2, 0x0

    .line 354
    .line 355
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 359
    .line 360
    .line 361
    move-result-wide p2

    .line 362
    const-wide/16 v3, 0x1

    .line 363
    .line 364
    sub-long/2addr p2, v3

    .line 365
    invoke-virtual {v2, p2, p3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 369
    .line 370
    if-eqz p2, :cond_8

    .line 371
    .line 372
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    if-eqz p2, :cond_8

    .line 377
    .line 378
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_8
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 382
    .line 383
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 384
    .line 385
    if-eqz p1, :cond_9

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    goto :goto_2

    .line 392
    :cond_9
    move-object p1, v1

    .line 393
    :goto_2
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->s(Ljava/util/List;)V

    .line 394
    .line 395
    .line 396
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 397
    .line 398
    if-eqz p1, :cond_12

    .line 399
    .line 400
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_12

    .line 408
    .line 409
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 410
    .line 411
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-nez p1, :cond_12

    .line 419
    .line 420
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 421
    .line 422
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-eqz p1, :cond_12

    .line 427
    .line 428
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    .line 429
    .line 430
    if-eqz p1, :cond_c

    .line 431
    .line 432
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 433
    .line 434
    if-eqz p2, :cond_b

    .line 435
    .line 436
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    goto :goto_4

    .line 441
    :cond_b
    move-object p2, v1

    .line 442
    :goto_4
    iget p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 443
    .line 444
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 445
    .line 446
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-interface {p1, p2, p3, v0, v2}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 450
    .line 451
    .line 452
    :cond_c
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 453
    .line 454
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result p2

    .line 466
    if-eqz p2, :cond_12

    .line 467
    .line 468
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    check-cast p2, Ljava/util/Map$Entry;

    .line 473
    .line 474
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p3

    .line 478
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 479
    .line 480
    if-eqz v2, :cond_e

    .line 481
    .line 482
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    if-nez v2, :cond_10

    .line 487
    .line 488
    :cond_e
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 489
    .line 490
    if-eqz v2, :cond_f

    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    goto :goto_6

    .line 497
    :cond_f
    move-object v2, v1

    .line 498
    :cond_10
    :goto_6
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result p3

    .line 502
    if-eqz p3, :cond_d

    .line 503
    .line 504
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p2

    .line 508
    check-cast p2, Lcom/transsnet/downloader/proxy/c;

    .line 509
    .line 510
    iget-object p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 511
    .line 512
    if-eqz p3, :cond_11

    .line 513
    .line 514
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p3

    .line 518
    goto :goto_7

    .line 519
    :cond_11
    move-object p3, v1

    .line 520
    :goto_7
    iget v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 521
    .line 522
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 523
    .line 524
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-interface {p2, p3, v2, v0, v3}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 528
    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_12
    :goto_8
    return-void
.end method

.method private final k()Lui/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lui/n0;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final m()Lui/n0;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Lui/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "================range,  "

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final s(Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-le v0, v2, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$lambda$6$$inlined$sortBy$1;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$lambda$6$$inlined$sortBy$1;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v4, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$1;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache$updateDBRanges$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/proxy/DownloadFileCache;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :goto_0
    return-wide v0
.end method

.method public B()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const-string v1, "1-path create"

    .line 24
    .line 25
    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v2, v0

    .line 40
    :goto_1
    const-string v3, "r"

    .line 41
    .line 42
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_3
    :goto_2
    const-string v1, "path is null, is not downloading"

    .line 49
    .line 50
    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_3
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move-object v2, v0

    .line 64
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "1--path = "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ",error = "

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :try_start_1
    const-string v1, "2-path create"

    .line 93
    .line 94
    invoke-static {v1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 100
    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_5

    .line 108
    :catchall_1
    move-exception v1

    .line 109
    goto :goto_6

    .line 110
    :cond_5
    move-object v3, v0

    .line 111
    :goto_5
    const-string v4, "rwd"

    .line 112
    .line 113
    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :goto_6
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 120
    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v4, "2--path = "

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_7
    return-void
.end method

.method public C(J)V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "download&play currentRangeNull currentRange is null, offset = "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, ",resourceId="

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, ",,name="

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 p2, 0x1

    .line 72
    const-string v1, "download"

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1, p2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    cmp-long v0, p1, v4

    .line 95
    .line 96
    if-gtz v0, :cond_4

    .line 97
    .line 98
    cmp-long v0, v2, p1

    .line 99
    .line 100
    if-gtz v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "\u5f53\u524d\u5206\u7247\u5df2\u4e0b\u8f7d\u8fdb\u5ea6\u5185\uff0c\u4e0d\u505a\u4efb\u4f55\u5904\u7406\uff0c\u76f4\u63a5\u8fd4\u56de, offset = "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "currentRange1"

    .line 120
    .line 121
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    cmp-long v0, p1, v2

    .line 135
    .line 136
    if-gez v0, :cond_5

    .line 137
    .line 138
    const-string v0, "beforeRange"

    .line 139
    .line 140
    invoke-direct {p0, v0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h(Ljava/lang/String;J)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    cmp-long v0, p1, v2

    .line 154
    .line 155
    if-gez v0, :cond_15

    .line 156
    .line 157
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 163
    .line 164
    .line 165
    move-result-wide v2

    .line 166
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 167
    .line 168
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    add-long/2addr v2, v4

    .line 176
    iget-wide v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 177
    .line 178
    add-long/2addr v2, v4

    .line 179
    cmp-long v0, p1, v2

    .line 180
    .line 181
    if-gez v0, :cond_6

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v1, "\u5f53\u524d\u5206\u7247\u5185\uff0c\u5feb\u8fdb\u5c0f\u4e8e\u9608\u503c\uff0c\u7b49\u5f85\u4e0b\u8f7d, offset = "

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string p2, "currentRange21"

    .line 201
    .line 202
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 207
    .line 208
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 212
    .line 213
    .line 214
    move-result-wide v2

    .line 215
    sub-long/2addr v2, p1

    .line 216
    iget-wide v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 217
    .line 218
    cmp-long v0, v2, v4

    .line 219
    .line 220
    if-gez v0, :cond_7

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v2, "\u5f53\u524d\u5206\u7247\u5185\uff0c\uff08\u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d\uff09\u5feb\u8fdb \u65b0\u589e\u5206\u7247\u5c0f\u4e8e\u9608\u503c\uff0c\u4f7f\u7528\u9608\u503c\u5927\u5c0f, offset = "

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string p2, "currentRange22"

    .line 240
    .line 241
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 245
    .line 246
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 250
    .line 251
    .line 252
    move-result-wide p1

    .line 253
    iget-wide v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 254
    .line 255
    sub-long/2addr p1, v2

    .line 256
    goto :goto_1

    .line 257
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v2, "\u5f53\u524d\u5206\u7247\u5185\uff0c\uff08\u6682\u505c\u5f53\u524d\u7ebf\u7a0b\uff0c\u542f\u52a8\u65b0\u7ebf\u7a0b\u4e0b\u8f7d\uff09\u5feb\u8fdb \u65b0\u589e\u5206\u7247\u5927\u4e8e\u9608\u503c, offset = "

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const-string v2, "currentRange23"

    .line 275
    .line 276
    invoke-direct {p0, v2, v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :goto_1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 280
    .line 281
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_8

    .line 286
    .line 287
    return-void

    .line 288
    :cond_8
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 289
    .line 290
    invoke-direct {v0}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 294
    .line 295
    if-eqz v2, :cond_9

    .line 296
    .line 297
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    if-nez v2, :cond_a

    .line 302
    .line 303
    :cond_9
    const/4 v2, 0x0

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    .line 313
    .line 314
    .line 315
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 316
    .line 317
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    add-long/2addr v2, p1

    .line 325
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    .line 330
    .line 331
    .line 332
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 333
    .line 334
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 348
    .line 349
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 353
    .line 354
    .line 355
    move-result-wide p1

    .line 356
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    .line 357
    .line 358
    .line 359
    const-wide/16 p1, 0x0

    .line 360
    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 365
    .line 366
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    const-wide/16 v4, 0x1

    .line 374
    .line 375
    sub-long/2addr v2, v4

    .line 376
    invoke-virtual {p1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 380
    .line 381
    if-eqz p1, :cond_b

    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    if-eqz p1, :cond_b

    .line 388
    .line 389
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_b
    iget-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 393
    .line 394
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 395
    .line 396
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 397
    .line 398
    if-eqz p2, :cond_c

    .line 399
    .line 400
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    goto :goto_2

    .line 405
    :cond_c
    move-object p2, v1

    .line 406
    :goto_2
    invoke-direct {p0, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->s(Ljava/util/List;)V

    .line 407
    .line 408
    .line 409
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->g:Lcom/transsnet/downloader/proxy/c;

    .line 410
    .line 411
    if-eqz p2, :cond_e

    .line 412
    .line 413
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 414
    .line 415
    if-eqz v2, :cond_d

    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    goto :goto_3

    .line 422
    :cond_d
    move-object v2, v1

    .line 423
    :goto_3
    iget v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 424
    .line 425
    invoke-interface {p2, v2, v3, p1, v0}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    .line 430
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_14

    .line 443
    .line 444
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    check-cast v2, Ljava/util/Map$Entry;

    .line 449
    .line 450
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 455
    .line 456
    if-eqz v4, :cond_10

    .line 457
    .line 458
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    if-nez v4, :cond_12

    .line 463
    .line 464
    :cond_10
    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 465
    .line 466
    if-eqz v4, :cond_11

    .line 467
    .line 468
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    goto :goto_5

    .line 473
    :cond_11
    move-object v4, v1

    .line 474
    :cond_12
    :goto_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-eqz v3, :cond_f

    .line 479
    .line 480
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, Lcom/transsnet/downloader/proxy/c;

    .line 485
    .line 486
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 487
    .line 488
    if-eqz v3, :cond_13

    .line 489
    .line 490
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    goto :goto_6

    .line 495
    :cond_13
    move-object v3, v1

    .line 496
    :goto_6
    iget v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 497
    .line 498
    invoke-interface {v2, v3, v4, p1, v0}, Lcom/transsnet/downloader/proxy/c;->a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 499
    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_14
    return-void

    .line 503
    :cond_15
    const-string v0, "afterRange"

    .line 504
    .line 505
    invoke-direct {p0, v0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h(Ljava/lang/String;J)V

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method public D([BJILjava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 12
    .line 13
    if-nez p5, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->B()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/io/RandomAccessFile;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-wide v2, v0

    .line 30
    :goto_0
    cmp-long p5, v2, v0

    .line 31
    .line 32
    if-nez p5, :cond_3

    .line 33
    .line 34
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    invoke-virtual {p5}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-wide v2, v0

    .line 44
    :goto_1
    cmp-long p5, v2, v0

    .line 45
    .line 46
    if-lez p5, :cond_3

    .line 47
    .line 48
    const-string p5, "read error, create new data file"

    .line 49
    .line 50
    invoke-static {p5}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->B()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    if-eqz p5, :cond_4

    .line 59
    .line 60
    invoke-virtual {p5, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 64
    .line 65
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    cmp-long p5, p2, v0

    .line 73
    .line 74
    const/4 v0, -0x1

    .line 75
    if-lez p5, :cond_6

    .line 76
    .line 77
    :cond_5
    move p1, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    iget-object p5, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 80
    .line 81
    if-eqz p5, :cond_5

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p5, p1, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :goto_2
    if-ne p1, v0, :cond_c

    .line 89
    .line 90
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 91
    .line 92
    const/4 p5, 0x0

    .line 93
    if-eqz p4, :cond_7

    .line 94
    .line 95
    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    move-object p4, p5

    .line 105
    :goto_3
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move-object v0, p5

    .line 119
    :goto_4
    iget-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 120
    .line 121
    if-eqz v1, :cond_9

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    move-object v1, p5

    .line 133
    :goto_5
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 134
    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_6

    .line 146
    :cond_a
    move-object v2, p5

    .line 147
    :goto_6
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 148
    .line 149
    if-eqz v3, :cond_b

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object p5

    .line 159
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v4, "read -1, dataFile created & length= "

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p4, ", rangeId = "

    .line 173
    .line 174
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p4, ", offset = "

    .line 181
    .line 182
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p2, " , start =  "

    .line 189
    .line 190
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p2, ",end =  "

    .line 197
    .line 198
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p2, ", totalProgress = "

    .line 205
    .line 206
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-static {p2}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_c
    return p1
.end method

.method public E(J)V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->a:Lcom/transsnet/downloader/core/task/DownloadTaskUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/task/DownloadTaskUtil;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    cmp-long v2, p1, v2

    .line 31
    .line 32
    if-gtz v2, :cond_1

    .line 33
    .line 34
    cmp-long v0, v0, p1

    .line 35
    .line 36
    if-gtz v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "check  downloadBean = "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 69
    .line 70
    if-eqz v0, :cond_b

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 91
    .line 92
    invoke-virtual {v2, p1, p2}, Lcom/transsion/baselib/db/download/DownloadRange;->contains(J)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadIndex()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 103
    .line 104
    iput-object v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 105
    .line 106
    :cond_4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 107
    .line 108
    iget v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 109
    .line 110
    iget-object v3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 111
    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const-string v3, "range is null"

    .line 124
    .line 125
    :goto_1
    iget-object v4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 131
    .line 132
    .line 133
    move-result-wide v6

    .line 134
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    move-object v4, v5

    .line 140
    :goto_2
    iget-object v6, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 141
    .line 142
    if-eqz v6, :cond_7

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    move-object v6, v5

    .line 154
    :goto_3
    iget-object v7, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 155
    .line 156
    if-eqz v7, :cond_8

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    goto :goto_4

    .line 167
    :cond_8
    move-object v7, v5

    .line 168
    :goto_4
    iget-object v8, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 169
    .line 170
    if-eqz v8, :cond_9

    .line 171
    .line 172
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    move-object v8, v5

    .line 178
    :goto_5
    iget-object v9, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 179
    .line 180
    if-eqz v9, :cond_a

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v10, "download&play set new download thread, offset="

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, ",index = "

    .line 200
    .line 201
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p1, " \n                           currentRange.rangeId = "

    .line 208
    .line 209
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, ", start = "

    .line 216
    .line 217
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, ", end = "

    .line 224
    .line 225
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p1, ",\n                           progress = "

    .line 232
    .line 233
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p1, ",resourceId="

    .line 240
    .line 241
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p1, ",name="

    .line 248
    .line 249
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p1, "\n                    "

    .line 256
    .line 257
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    const-string p2, "download"

    .line 269
    .line 270
    invoke-virtual {v0, p2, p1, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    .line 272
    .line 273
    :cond_b
    :goto_6
    return-void
.end method

.method public F(Lcom/danikula/videocache/m;)V
    .locals 1

    .line 1
    const-string v0, "proxyCache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    .line 7
    .line 8
    return-void
.end method

.method public G()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->A()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :goto_0
    return-wide v0
.end method

.method public H(JILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->l:J

    .line 7
    .line 8
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p4, p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setCurrentOffset(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p4, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    :goto_0
    cmp-long p4, v1, p1

    .line 33
    .line 34
    if-gez p4, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget-object p4, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 38
    .line 39
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz p4, :cond_4

    .line 48
    .line 49
    return v1

    .line 50
    :cond_4
    int-to-long p3, p3

    .line 51
    add-long/2addr p1, p3

    .line 52
    iget-object p3, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 53
    .line 54
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadRange;->totalProgress()J

    .line 58
    .line 59
    .line 60
    move-result-wide p3

    .line 61
    cmp-long p1, p1, p3

    .line 62
    .line 63
    if-lez p1, :cond_5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move v0, v1

    .line 67
    :goto_1
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :catchall_0
    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/transsnet/downloader/proxy/c;)V
    .locals 1

    .line 1
    const-string v0, "resourceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final i()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCompleted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x5

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method public final j()Lzw/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->o:Lzw/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "resourceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i:Lcom/transsion/baselib/db/download/DownloadRange;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j:I

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->k:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->close()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->d:Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->m:Lcom/danikula/videocache/m;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    .line 20
    .line 21
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 5

    .line 1
    const-string v0, "downloadBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "set new video =  "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const/16 v2, 0x78

    .line 46
    .line 47
    int-to-long v2, v2

    .line 48
    div-long/2addr v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    .line 51
    .line 52
    :goto_0
    iget-wide v2, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->a:J

    .line 53
    .line 54
    cmp-long v4, v0, v2

    .line 55
    .line 56
    if-lez v4, :cond_1

    .line 57
    .line 58
    move-wide v0, v2

    .line 59
    :cond_1
    iput-wide v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->b:J

    .line 60
    .line 61
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->B(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/DownloadFileCache;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "audio/mpeg"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "video/mp4"

    .line 20
    .line 21
    :cond_1
    :goto_0
    return-object v0
.end method
