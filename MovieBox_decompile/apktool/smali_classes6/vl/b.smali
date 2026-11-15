.class public final Lvl/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lul/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DR_VersionSameCompareStep"

    .line 5
    .line 6
    iput-object v0, p0, Lvl/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;Lul/b$a;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 12

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chain"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getLocalPageData()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getRemotePageData()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-interface {p2, p1}, Lul/b$a;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 39
    .line 40
    invoke-virtual {p0}, Lvl/b;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v2, "<VersionSameCompareStep> load start"

    .line 45
    .line 46
    invoke-virtual {p1, p2, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageData;->getDownloadStatus()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lvl/b;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string v0, "<VersionSameCompareStep> load end (no change)"

    .line 66
    .line 67
    invoke-virtual {p1, p2, v0}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 71
    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-wide/16 v5, 0x0

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-nez p2, :cond_2

    .line 100
    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 123
    .line 124
    .line 125
    check-cast p2, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    move-wide v10, v4

    .line 134
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_a

    .line 139
    .line 140
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/data/FileData;->getSize()Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    if-eqz v7, :cond_4

    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide v7

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    move-wide v7, v4

    .line 158
    :goto_1
    add-long/2addr v10, v7

    .line 159
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 168
    .line 169
    if-eqz v7, :cond_8

    .line 170
    .line 171
    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_7

    .line 184
    .line 185
    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    if-eqz v8, :cond_5

    .line 190
    .line 191
    sget-object v9, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 192
    .line 193
    invoke-virtual {v7, v9}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_5
    invoke-virtual {p0, v6}, Lvl/b;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    if-eqz v8, :cond_3

    .line 208
    .line 209
    if-nez v7, :cond_6

    .line 210
    .line 211
    sget-object v7, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_6
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_7
    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    if-eqz v6, :cond_3

    .line 229
    .line 230
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_8
    invoke-virtual {p0, v6}, Lvl/b;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    if-eqz v8, :cond_3

    .line 243
    .line 244
    if-nez v7, :cond_9

    .line 245
    .line 246
    sget-object v7, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 247
    .line 248
    invoke-virtual {v6, v7}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_9
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_c

    .line 272
    .line 273
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    check-cast p2, Ljava/util/Map$Entry;

    .line 278
    .line 279
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_b

    .line 288
    .line 289
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    move-object v5, p2

    .line 298
    check-cast v5, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 299
    .line 300
    sget-object v6, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 301
    .line 302
    invoke-virtual {v5, v6}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_c
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 310
    .line 311
    invoke-virtual {p0}, Lvl/b;->b()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    const-string v3, "<VersionSameCompareStep> load end"

    .line 316
    .line 317
    invoke-virtual {p1, p2, v3}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    new-instance p1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    check-cast p2, Ljava/lang/Iterable;

    .line 327
    .line 328
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, Ljava/lang/Iterable;

    .line 337
    .line 338
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    check-cast p2, Ljava/lang/Iterable;

    .line 347
    .line 348
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    move-object v6, p1

    .line 353
    invoke-direct/range {v6 .. v11}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    .line 354
    .line 355
    .line 356
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvl/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lul/b$b;->a(Lul/b;Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
