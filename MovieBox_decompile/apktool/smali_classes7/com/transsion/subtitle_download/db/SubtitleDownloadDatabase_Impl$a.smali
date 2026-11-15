.class Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;
.super Landroidx/room/f0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->n0()Landroidx/room/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;->d:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroidx/room/f0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `st_download_table` (`id` TEXT NOT NULL, `resourceStreamType` INTEGER NOT NULL, `resourceId` TEXT NOT NULL, `lan` TEXT, `lanName` TEXT, `url` TEXT, `size` INTEGER, `delay` INTEGER, `downloads` INTEGER, `type` INTEGER NOT NULL, `postId` TEXT, `subtitleName` TEXT, `subjectId` TEXT, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, `subjectName` TEXT, `status` INTEGER NOT NULL, `fileCharsetName` TEXT, `path` TEXT, `zipPath` TEXT NOT NULL, `taskId` TEXT, `failCount` INTEGER NOT NULL, `ugcVideoId` TEXT, `ugcVideoCollectionId` TEXT, `ops` TEXT, PRIMARY KEY(`id`, `resourceStreamType`))"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'b69203d51150b93b225b86bfd78bf875\')"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `st_download_table`"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ly3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;->d:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->m0(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;Ly3/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Ly3/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/b;->a(Ly3/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Ly3/b;)Landroidx/room/f0$a;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/room/util/m$a;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    const-string v3, "id"

    .line 13
    .line 14
    const-string v4, "TEXT"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x1

    .line 18
    move-object v2, v1

    .line 19
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "id"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroidx/room/util/m$a;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x1

    .line 31
    const-string v4, "resourceStreamType"

    .line 32
    .line 33
    const-string v5, "INTEGER"

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    move-object v3, v1

    .line 37
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "resourceStreamType"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/room/util/m$a;

    .line 46
    .line 47
    const-string v4, "resourceId"

    .line 48
    .line 49
    const-string v5, "TEXT"

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v3, v1

    .line 53
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v2, "resourceId"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance v1, Landroidx/room/util/m$a;

    .line 62
    .line 63
    const-string v4, "lan"

    .line 64
    .line 65
    const-string v5, "TEXT"

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    move-object v3, v1

    .line 69
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const-string v2, "lan"

    .line 73
    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroidx/room/util/m$a;

    .line 78
    .line 79
    const-string v4, "lanName"

    .line 80
    .line 81
    const-string v5, "TEXT"

    .line 82
    .line 83
    move-object v3, v1

    .line 84
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    const-string v2, "lanName"

    .line 88
    .line 89
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    new-instance v1, Landroidx/room/util/m$a;

    .line 93
    .line 94
    const-string v4, "url"

    .line 95
    .line 96
    const-string v5, "TEXT"

    .line 97
    .line 98
    move-object v3, v1

    .line 99
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string v2, "url"

    .line 103
    .line 104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroidx/room/util/m$a;

    .line 108
    .line 109
    const-string v4, "size"

    .line 110
    .line 111
    const-string v5, "INTEGER"

    .line 112
    .line 113
    move-object v3, v1

    .line 114
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    const-string v2, "size"

    .line 118
    .line 119
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/room/util/m$a;

    .line 123
    .line 124
    const-string v4, "delay"

    .line 125
    .line 126
    const-string v5, "INTEGER"

    .line 127
    .line 128
    move-object v3, v1

    .line 129
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string v2, "delay"

    .line 133
    .line 134
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v1, Landroidx/room/util/m$a;

    .line 138
    .line 139
    const-string v4, "downloads"

    .line 140
    .line 141
    const-string v5, "INTEGER"

    .line 142
    .line 143
    move-object v3, v1

    .line 144
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    const-string v2, "downloads"

    .line 148
    .line 149
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    new-instance v1, Landroidx/room/util/m$a;

    .line 153
    .line 154
    const-string v4, "type"

    .line 155
    .line 156
    const-string v5, "INTEGER"

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    move-object v3, v1

    .line 160
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    const-string v2, "type"

    .line 164
    .line 165
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    new-instance v1, Landroidx/room/util/m$a;

    .line 169
    .line 170
    const-string v4, "postId"

    .line 171
    .line 172
    const-string v5, "TEXT"

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    move-object v3, v1

    .line 176
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    const-string v2, "postId"

    .line 180
    .line 181
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroidx/room/util/m$a;

    .line 185
    .line 186
    const-string v4, "subtitleName"

    .line 187
    .line 188
    const-string v5, "TEXT"

    .line 189
    .line 190
    move-object v3, v1

    .line 191
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    const-string v2, "subtitleName"

    .line 195
    .line 196
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    new-instance v1, Landroidx/room/util/m$a;

    .line 200
    .line 201
    const-string v4, "subjectId"

    .line 202
    .line 203
    const-string v5, "TEXT"

    .line 204
    .line 205
    move-object v3, v1

    .line 206
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    const-string v2, "subjectId"

    .line 210
    .line 211
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    new-instance v1, Landroidx/room/util/m$a;

    .line 215
    .line 216
    const-string v4, "ep"

    .line 217
    .line 218
    const-string v5, "INTEGER"

    .line 219
    .line 220
    const/4 v6, 0x1

    .line 221
    move-object v3, v1

    .line 222
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const-string v2, "ep"

    .line 226
    .line 227
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    new-instance v1, Landroidx/room/util/m$a;

    .line 231
    .line 232
    const-string v4, "se"

    .line 233
    .line 234
    const-string v5, "INTEGER"

    .line 235
    .line 236
    move-object v3, v1

    .line 237
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    const-string v2, "se"

    .line 241
    .line 242
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    new-instance v1, Landroidx/room/util/m$a;

    .line 246
    .line 247
    const-string v4, "resolution"

    .line 248
    .line 249
    const-string v5, "INTEGER"

    .line 250
    .line 251
    move-object v3, v1

    .line 252
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    const-string v2, "resolution"

    .line 256
    .line 257
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v1, Landroidx/room/util/m$a;

    .line 261
    .line 262
    const-string v4, "subjectName"

    .line 263
    .line 264
    const-string v5, "TEXT"

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    move-object v3, v1

    .line 268
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    const-string v2, "subjectName"

    .line 272
    .line 273
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    new-instance v1, Landroidx/room/util/m$a;

    .line 277
    .line 278
    const-string v4, "status"

    .line 279
    .line 280
    const-string v5, "INTEGER"

    .line 281
    .line 282
    const/4 v6, 0x1

    .line 283
    move-object v3, v1

    .line 284
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    const-string v2, "status"

    .line 288
    .line 289
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    new-instance v1, Landroidx/room/util/m$a;

    .line 293
    .line 294
    const-string v4, "fileCharsetName"

    .line 295
    .line 296
    const-string v5, "TEXT"

    .line 297
    .line 298
    const/4 v6, 0x0

    .line 299
    move-object v3, v1

    .line 300
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    const-string v2, "fileCharsetName"

    .line 304
    .line 305
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    new-instance v1, Landroidx/room/util/m$a;

    .line 309
    .line 310
    const-string v4, "path"

    .line 311
    .line 312
    const-string v5, "TEXT"

    .line 313
    .line 314
    move-object v3, v1

    .line 315
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    const-string v2, "path"

    .line 319
    .line 320
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    new-instance v1, Landroidx/room/util/m$a;

    .line 324
    .line 325
    const-string v4, "zipPath"

    .line 326
    .line 327
    const-string v5, "TEXT"

    .line 328
    .line 329
    const/4 v6, 0x1

    .line 330
    move-object v3, v1

    .line 331
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    const-string v2, "zipPath"

    .line 335
    .line 336
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    new-instance v1, Landroidx/room/util/m$a;

    .line 340
    .line 341
    const-string v4, "taskId"

    .line 342
    .line 343
    const-string v5, "TEXT"

    .line 344
    .line 345
    const/4 v6, 0x0

    .line 346
    move-object v3, v1

    .line 347
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    const-string v2, "taskId"

    .line 351
    .line 352
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    new-instance v1, Landroidx/room/util/m$a;

    .line 356
    .line 357
    const-string v4, "failCount"

    .line 358
    .line 359
    const-string v5, "INTEGER"

    .line 360
    .line 361
    const/4 v6, 0x1

    .line 362
    move-object v3, v1

    .line 363
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 364
    .line 365
    .line 366
    const-string v2, "failCount"

    .line 367
    .line 368
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    new-instance v1, Landroidx/room/util/m$a;

    .line 372
    .line 373
    const-string v4, "ugcVideoId"

    .line 374
    .line 375
    const-string v5, "TEXT"

    .line 376
    .line 377
    const/4 v6, 0x0

    .line 378
    move-object v3, v1

    .line 379
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 380
    .line 381
    .line 382
    const-string v2, "ugcVideoId"

    .line 383
    .line 384
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    new-instance v1, Landroidx/room/util/m$a;

    .line 388
    .line 389
    const-string v4, "ugcVideoCollectionId"

    .line 390
    .line 391
    const-string v5, "TEXT"

    .line 392
    .line 393
    move-object v3, v1

    .line 394
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    const-string v2, "ugcVideoCollectionId"

    .line 398
    .line 399
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    new-instance v1, Landroidx/room/util/m$a;

    .line 403
    .line 404
    const-string v4, "ops"

    .line 405
    .line 406
    const-string v5, "TEXT"

    .line 407
    .line 408
    move-object v3, v1

    .line 409
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    const-string v2, "ops"

    .line 413
    .line 414
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    new-instance v1, Ljava/util/HashSet;

    .line 418
    .line 419
    const/4 v2, 0x0

    .line 420
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 421
    .line 422
    .line 423
    new-instance v3, Ljava/util/HashSet;

    .line 424
    .line 425
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Landroidx/room/util/m;

    .line 429
    .line 430
    const-string v5, "st_download_table"

    .line 431
    .line 432
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 433
    .line 434
    .line 435
    invoke-static {p1, v5}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {v4, p1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    .line 445
    new-instance v0, Landroidx/room/f0$a;

    .line 446
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v3, "st_download_table(com.transsion.subtitle_download.db.SubtitleDownloadTable).\n Expected:\n"

    .line 453
    .line 454
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v3, "\n Found:\n"

    .line 461
    .line 462
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-direct {v0, v2, p1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-object v0

    .line 476
    :cond_0
    new-instance p1, Landroidx/room/f0$a;

    .line 477
    .line 478
    const/4 v0, 0x1

    .line 479
    const/4 v1, 0x0

    .line 480
    invoke-direct {p1, v0, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    return-object p1
.end method
