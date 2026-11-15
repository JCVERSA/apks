.class public final Lvl/a;
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
    const-string v0, "DR_VersionDiffCompareStep"

    .line 5
    .line 6
    iput-object v0, p0, Lvl/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;Lul/b$a;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "request"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "chain"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getLocalPageData()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getRemotePageData()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-interface {v2, v1}, Lul/b$a;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    return-object v1

    .line 44
    :cond_0
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lvl/a;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v5, "<VersionDiffCompareStep> load start"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v5}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    const-wide/16 v7, 0x0

    .line 84
    .line 85
    if-eqz v2, :cond_9

    .line 86
    .line 87
    check-cast v2, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-wide v9, v7

    .line 94
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_8

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 105
    .line 106
    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getSize()Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    if-eqz v12, :cond_2

    .line 111
    .line 112
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move-wide v12, v7

    .line 118
    :goto_1
    add-long/2addr v9, v12

    .line 119
    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 128
    .line 129
    if-eqz v12, :cond_6

    .line 130
    .line 131
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    if-nez v13, :cond_5

    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    if-eqz v13, :cond_3

    .line 150
    .line 151
    sget-object v14, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 152
    .line 153
    invoke-virtual {v12, v14}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v3, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-virtual {v0, v11}, Lvl/a;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    if-eqz v13, :cond_1

    .line 168
    .line 169
    if-nez v12, :cond_4

    .line 170
    .line 171
    sget-object v12, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 172
    .line 173
    invoke-virtual {v11, v12}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_4
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    if-eqz v11, :cond_1

    .line 189
    .line 190
    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_6
    invoke-virtual {v0, v11}, Lvl/a;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    if-eqz v13, :cond_1

    .line 203
    .line 204
    if-nez v12, :cond_7

    .line 205
    .line 206
    sget-object v12, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 207
    .line 208
    invoke-virtual {v11, v12}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_7
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_8
    move-wide/from16 v18, v9

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_9
    move-wide/from16 v18, v7

    .line 223
    .line 224
    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_b

    .line 237
    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-nez v7, :cond_a

    .line 253
    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    move-object v8, v2

    .line 263
    check-cast v8, Lcom/transsion/lib_web/download_render/data/FileData;

    .line 264
    .line 265
    sget-object v9, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    .line 266
    .line 267
    invoke-virtual {v8, v9}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_b
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lvl/a;->b()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v6, "<VersionDiffCompareStep> load end"

    .line 281
    .line 282
    invoke-virtual {v1, v2, v6}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 286
    .line 287
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Ljava/lang/Iterable;

    .line 292
    .line 293
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Ljava/lang/Iterable;

    .line 302
    .line 303
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v16

    .line 307
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/Iterable;

    .line 312
    .line 313
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v17

    .line 317
    move-object v14, v1

    .line 318
    invoke-direct/range {v14 .. v19}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    .line 319
    .line 320
    .line 321
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvl/a;->a:Ljava/lang/String;

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
