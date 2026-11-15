.class public final Lno/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lno/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lno/b;->b:Landroid/content/ContentResolver;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/core/k;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "_data"

    .line 6
    .line 7
    const-string v4, "getString(...)"

    .line 8
    .line 9
    const-string v0, "emitter"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v5, "mounted"

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_9

    .line 25
    .line 26
    :try_start_0
    const-string v6, "_id"

    .line 27
    .line 28
    const-string v7, "_data"

    .line 29
    .line 30
    const-string v8, "_size"

    .line 31
    .line 32
    const-string v9, "mime_type"

    .line 33
    .line 34
    const-string v10, "height"

    .line 35
    .line 36
    const-string v11, "width"

    .line 37
    .line 38
    const-string v12, "_display_name"

    .line 39
    .line 40
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    iget-object v13, v1, Lno/b;->b:Landroid/content/ContentResolver;

    .line 45
    .line 46
    if-eqz v13, :cond_0

    .line 47
    .line 48
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 49
    .line 50
    const-string v16, "mime_type=? or mime_type=? or mime_type=? or mime_type =?"

    .line 51
    .line 52
    const-string v0, "image/jpeg"

    .line 53
    .line 54
    const-string v6, "image/png"

    .line 55
    .line 56
    const-string v7, "image/gif"

    .line 57
    .line 58
    const-string v8, "image/webp"

    .line 59
    .line 60
    filled-new-array {v0, v6, v7, v8}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v17

    .line 64
    const-string v18, "date_added DESC"

    .line 65
    .line 66
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    move-object v6, v0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    const/4 v5, 0x0

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :catch_0
    move-exception v0

    .line 77
    const/4 v5, 0x0

    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_0
    const/4 v6, 0x0

    .line 81
    :goto_0
    const/4 v0, 0x0

    .line 82
    :goto_1
    if-eqz v6, :cond_6

    .line 83
    .line 84
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const/4 v8, 0x1

    .line 89
    if-ne v7, v8, :cond_6

    .line 90
    .line 91
    const-string v0, "_display_name"

    .line 92
    .line 93
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "_size"

    .line 116
    .line 117
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    div-int/lit16 v10, v0, 0x400

    .line 126
    .line 127
    const-string v0, "width"

    .line 128
    .line 129
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    const-string v0, "height"

    .line 138
    .line 139
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    const-string v0, "_id"

    .line 148
    .line 149
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v13, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 158
    .line 159
    :try_start_2
    iget-object v14, v1, Lno/b;->b:Landroid/content/ContentResolver;

    .line 160
    .line 161
    if-eqz v14, :cond_1

    .line 162
    .line 163
    sget-object v15, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 164
    .line 165
    const-string v5, "image_id"

    .line 166
    .line 167
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v16

    .line 171
    const-string v17, "image_id=?"

    .line 172
    .line 173
    filled-new-array {v0}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v18

    .line 177
    const/16 v19, 0x0

    .line 178
    .line 179
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 180
    .line 181
    .line 182
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    move-object v5, v0

    .line 184
    goto :goto_2

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    const/4 v5, 0x0

    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :catch_1
    move-exception v0

    .line 190
    const/4 v5, 0x0

    .line 191
    goto :goto_5

    .line 192
    :cond_1
    const/4 v5, 0x0

    .line 193
    :goto_2
    if-eqz v5, :cond_2

    .line 194
    .line 195
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-ne v0, v8, :cond_2

    .line 200
    .line 201
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 210
    .line 211
    .line 212
    move-object v13, v0

    .line 213
    goto :goto_3

    .line 214
    :catchall_2
    move-exception v0

    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :catch_2
    move-exception v0

    .line 218
    goto :goto_5

    .line 219
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 220
    .line 221
    :goto_4
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :catchall_3
    move-exception v0

    .line 226
    move-object v5, v6

    .line 227
    goto/16 :goto_9

    .line 228
    .line 229
    :catch_3
    move-exception v0

    .line 230
    move-object v5, v6

    .line 231
    goto/16 :goto_8

    .line 232
    .line 233
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 234
    .line 235
    .line 236
    if-eqz v5, :cond_3

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_3
    :goto_6
    :try_start_6
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 240
    .line 241
    const-string v15, "SelectVideoManager"

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v5, "size:"

    .line 249
    .line 250
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v5, ",path:"

    .line 257
    .line 258
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v5, ",thumbPath:"

    .line 265
    .line 266
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v16

    .line 276
    const/16 v18, 0x4

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 286
    .line 287
    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v7}, Lcom/transsion/publish/api/PhotoEntity;->setImageTitle(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v9}, Lcom/transsion/publish/api/PhotoEntity;->setLocalPath(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    int-to-long v9, v10

    .line 297
    invoke-virtual {v0, v9, v10}, Lcom/transsion/publish/api/PhotoEntity;->setImageSize(J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v13}, Lcom/transsion/publish/api/PhotoEntity;->setThumbPath(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v12}, Lcom/transsion/publish/api/PhotoEntity;->setHeight(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v11}, Lcom/transsion/publish/api/PhotoEntity;->setWidth(I)V

    .line 307
    .line 308
    .line 309
    invoke-interface/range {p1 .. p1}, Lio/reactivex/rxjava3/core/k;->isDisposed()Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_4

    .line 314
    .line 315
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 316
    .line 317
    .line 318
    move v0, v8

    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :goto_7
    if-eqz v5, :cond_5

    .line 326
    .line 327
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 328
    .line 329
    .line 330
    :cond_5
    throw v0

    .line 331
    :cond_6
    if-nez v0, :cond_7

    .line 332
    .line 333
    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 334
    .line 335
    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 339
    .line 340
    .line 341
    :cond_7
    if-eqz v6, :cond_9

    .line 342
    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    .line 345
    .line 346
    goto :goto_a

    .line 347
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 351
    .line 352
    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 356
    .line 357
    .line 358
    if-eqz v5, :cond_9

    .line 359
    .line 360
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 361
    .line 362
    .line 363
    goto :goto_a

    .line 364
    :catchall_4
    move-exception v0

    .line 365
    :goto_9
    if-eqz v5, :cond_8

    .line 366
    .line 367
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 368
    .line 369
    .line 370
    :cond_8
    throw v0

    .line 371
    :cond_9
    :goto_a
    return-void
.end method
