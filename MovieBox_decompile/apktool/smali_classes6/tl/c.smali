.class public final Ltl/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ltl/d;


# instance fields
.field private final a:J

.field private final b:Lcom/transsion/lib_web/download_render/data/PageData;

.field private final c:Ljava/lang/String;

.field private final d:Lul/a;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(JLcom/transsion/lib_web/download_render/data/PageData;)V
    .locals 3

    .line 1
    const-string v0, "pageData"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Ltl/c;->a:J

    .line 10
    .line 11
    iput-object p3, p0, Ltl/c;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 12
    .line 13
    const-string p1, "DR_FileDownloadTask"

    .line 14
    .line 15
    iput-object p1, p0, Ltl/c;->c:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p1, Lul/a;

    .line 18
    .line 19
    new-instance p2, Lvl/b;

    .line 20
    .line 21
    invoke-direct {p2}, Lvl/b;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance p3, Lvl/a;

    .line 25
    .line 26
    invoke-direct {p3}, Lvl/a;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v1, v0, [Lul/b;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object p2, v1, v2

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    aput-object p3, v1, p2

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-direct {p1, p2, v2, v0, p3}, Lul/a;-><init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Ltl/c;->d:Lul/a;

    .line 47
    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Ltl/c;->e:Ljava/util/List;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Ltl/c;->b(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "loadingUrl"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 7
    .line 8
    invoke-virtual {v0, p4}, Lcom/transsion/lib_web/download_render/utils/a;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 12
    .line 13
    iput p5, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    .line 15
    iput-wide p6, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 4
    .line 5
    iget-object v2, v0, Ltl/c;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, v0, Ltl/c;->a:J

    .line 8
    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v6, "<FileDownloadTask> start id:"

    .line 15
    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageListData;->getH5Pages()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, v0, Ltl/c;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 81
    .line 82
    const-string v2, "Collection contains no element matching the predicate."

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_2
    :goto_0
    new-instance v2, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 89
    .line 90
    const/16 v13, 0x1ff

    .line 91
    .line 92
    const/4 v14, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    move-object v3, v2

    .line 103
    invoke-direct/range {v3 .. v14}, Lcom/transsion/lib_web/download_render/data/PageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/util/Collection;

    .line 111
    .line 112
    const-string v3, "<FileDownloadTask> end id:"

    .line 113
    .line 114
    if-eqz v1, :cond_f

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-nez v5, :cond_5

    .line 129
    .line 130
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 131
    .line 132
    iget-object v2, v0, Ltl/c;->c:Ljava/lang/String;

    .line 133
    .line 134
    iget-wide v4, v0, Ltl/c;->a:J

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ", pageData.url.isNull"

    .line 148
    .line 149
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v2, v3}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 167
    .line 168
    iget-object v2, v0, Ltl/c;->c:Ljava/lang/String;

    .line 169
    .line 170
    iget-wide v4, v0, Ltl/c;->a:J

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, ", pageData.versionCode.isNull"

    .line 184
    .line 185
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v2, v3}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_6
    sget-object v4, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->g(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/PageData;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    if-nez v6, :cond_7

    .line 203
    .line 204
    new-instance v6, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 205
    .line 206
    const/16 v17, 0x1ff

    .line 207
    .line 208
    const/16 v18, 0x0

    .line 209
    .line 210
    const/4 v8, 0x0

    .line 211
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    const/4 v15, 0x0

    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    move-object v7, v6

    .line 221
    invoke-direct/range {v7 .. v18}, Lcom/transsion/lib_web/download_render/data/PageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 225
    .line 226
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v8

    .line 233
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 234
    .line 235
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    .line 239
    .line 240
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 241
    .line 242
    .line 243
    iget-object v12, v0, Ltl/c;->d:Lul/a;

    .line 244
    .line 245
    new-instance v13, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;

    .line 246
    .line 247
    invoke-direct {v13, v6, v2}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;-><init>(Lcom/transsion/lib_web/download_render/data/PageData;Lcom/transsion/lib_web/download_render/data/PageData;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12, v13}, Lul/a;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->u(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v5, v1}, Lcom/transsion/lib_web/download_render/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    check-cast v12, Ljava/util/Collection;

    .line 265
    .line 266
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    const/4 v14, 0x0

    .line 271
    if-eqz v12, :cond_9

    .line 272
    .line 273
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    check-cast v12, Ljava/util/Collection;

    .line 278
    .line 279
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    if-eqz v12, :cond_9

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    check-cast v12, Ljava/util/Collection;

    .line 290
    .line 291
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    if-nez v12, :cond_8

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_8
    move v4, v14

    .line 299
    goto :goto_2

    .line 300
    :cond_9
    :goto_1
    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->t(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v5, v14}, Lcom/transsion/lib_web/download_render/c;->s(Ljava/lang/String;Z)V

    .line 304
    .line 305
    .line 306
    const/4 v4, 0x1

    .line 307
    :goto_2
    iget-object v12, v0, Ltl/c;->e:Ljava/util/List;

    .line 308
    .line 309
    new-instance v15, Lwl/b;

    .line 310
    .line 311
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    invoke-direct {v15, v5, v1, v14}, Lwl/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    iget-object v12, v0, Ltl/c;->e:Ljava/util/List;

    .line 322
    .line 323
    new-instance v14, Lwl/a;

    .line 324
    .line 325
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    invoke-direct {v14, v5, v1, v15}, Lwl/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    iget-object v12, v0, Ltl/c;->e:Ljava/util/List;

    .line 336
    .line 337
    new-instance v14, Lwl/c;

    .line 338
    .line 339
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    new-instance v13, Ltl/b;

    .line 344
    .line 345
    invoke-direct {v13, v7, v10, v11}, Ltl/b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {v14, v5, v1, v15, v13}, Lwl/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Ltl/c;->e:Ljava/util/List;

    .line 355
    .line 356
    check-cast v1, Ljava/lang/Iterable;

    .line 357
    .line 358
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    if-eqz v12, :cond_a

    .line 367
    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v12

    .line 372
    check-cast v12, Lwl/d;

    .line 373
    .line 374
    invoke-interface {v12}, Lwl/d;->invoke()V

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_a
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 379
    .line 380
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v12

    .line 388
    if-ne v1, v12, :cond_b

    .line 389
    .line 390
    sget-object v1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    .line 391
    .line 392
    const/4 v12, 0x1

    .line 393
    invoke-virtual {v1, v5, v12}, Lcom/transsion/lib_web/download_render/c;->s(Ljava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    :cond_b
    if-eqz v4, :cond_e

    .line 397
    .line 398
    sget-object v4, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    .line 399
    .line 400
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    if-nez v1, :cond_c

    .line 405
    .line 406
    const-string v1, ""

    .line 407
    .line 408
    :cond_c
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v12

    .line 412
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 429
    .line 430
    .line 431
    move-result v14

    .line 432
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    if-eqz v2, :cond_d

    .line 437
    .line 438
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    move/from16 v16, v2

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_d
    const/16 v16, 0x0

    .line 446
    .line 447
    :goto_4
    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 448
    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 450
    .line 451
    .line 452
    move-result-wide v17

    .line 453
    sub-long v17, v17, v8

    .line 454
    .line 455
    iget-boolean v15, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 456
    .line 457
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getTotalFileSize()J

    .line 458
    .line 459
    .line 460
    move-result-wide v19

    .line 461
    iget-wide v10, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 462
    .line 463
    move-object v6, v1

    .line 464
    move v7, v12

    .line 465
    move v8, v13

    .line 466
    move v9, v14

    .line 467
    move-wide/from16 v21, v10

    .line 468
    .line 469
    move/from16 v10, v16

    .line 470
    .line 471
    move v11, v2

    .line 472
    move-wide/from16 v12, v17

    .line 473
    .line 474
    move v14, v15

    .line 475
    move-wide/from16 v15, v19

    .line 476
    .line 477
    move-wide/from16 v17, v21

    .line 478
    .line 479
    invoke-virtual/range {v4 .. v18}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b(Ljava/lang/String;Ljava/lang/String;IIIIIJZJJ)V

    .line 480
    .line 481
    .line 482
    :cond_e
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 483
    .line 484
    iget-object v2, v0, Ltl/c;->c:Ljava/lang/String;

    .line 485
    .line 486
    iget-wide v4, v0, Ltl/c;->a:J

    .line 487
    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v1, v2, v3}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :cond_f
    :goto_5
    sget-object v1, Lpl/h;->a:Lpl/h;

    .line 508
    .line 509
    iget-object v2, v0, Ltl/c;->c:Ljava/lang/String;

    .line 510
    .line 511
    iget-wide v4, v0, Ltl/c;->a:J

    .line 512
    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v3, ", pageData.files.isNullOrEmpty"

    .line 525
    .line 526
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-virtual {v1, v2, v3}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    return-void
.end method
