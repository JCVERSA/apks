.class public final Lcom/cloud/tmc/integration/utils/TouchEventUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/TouchEventUtils;",
        "",
        "()V",
        "TAG",
        "",
        "simulateTouchEvent",
        "",
        "view",
        "Landroid/view/View;",
        "points",
        "",
        "Landroid/graphics/Point;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/TouchEventUtils;

.field private static final TAG:Ljava/lang/String; = "TouchEventUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/TouchEventUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/TouchEventUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/TouchEventUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/TouchEventUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final simulateTouchEvent(Landroid/view/View;Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "view"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "points"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v11

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v13, v3

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    add-int/lit8 v14, v13, 0x1

    .line 39
    .line 40
    if-gez v13, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 43
    .line 44
    .line 45
    :cond_0
    move-object v15, v3

    .line 46
    check-cast v15, Landroid/graphics/Point;

    .line 47
    .line 48
    const-string v10, " eventTime: "

    .line 49
    .line 50
    const-string v9, " y: "

    .line 51
    .line 52
    const-string v8, " x: "

    .line 53
    .line 54
    const-string v7, "TouchEventUtils"

    .line 55
    .line 56
    const/16 v24, 0x0

    .line 57
    .line 58
    if-nez v13, :cond_1

    .line 59
    .line 60
    const/16 v3, 0x32

    .line 61
    .line 62
    int-to-long v3, v3

    .line 63
    add-long v5, v11, v3

    .line 64
    .line 65
    iget v3, v15, Landroid/graphics/Point;->x:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    iget v4, v15, Landroid/graphics/Point;->y:I

    .line 69
    .line 70
    int-to-float v4, v4

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    move/from16 v17, v3

    .line 74
    .line 75
    move/from16 v18, v4

    .line 76
    .line 77
    move-wide v3, v11

    .line 78
    move-wide/from16 v19, v5

    .line 79
    .line 80
    move-object/from16 v25, v7

    .line 81
    .line 82
    move/from16 v7, v16

    .line 83
    .line 84
    move-object/from16 v26, v8

    .line 85
    .line 86
    move/from16 v8, v17

    .line 87
    .line 88
    move-object/from16 v27, v9

    .line 89
    .line 90
    move/from16 v9, v18

    .line 91
    .line 92
    move-object v1, v10

    .line 93
    move/from16 v10, v24

    .line 94
    .line 95
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget v4, v15, Landroid/graphics/Point;->x:I

    .line 104
    .line 105
    iget v5, v15, Landroid/graphics/Point;->y:I

    .line 106
    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v7, "simulateTouchEvent: ACTION_DOWN "

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-object/from16 v3, v26

    .line 121
    .line 122
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-object/from16 v4, v27

    .line 129
    .line 130
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, " downTime: "

    .line 137
    .line 138
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-wide/from16 v7, v19

    .line 148
    .line 149
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    move-object/from16 v6, v25

    .line 157
    .line 158
    invoke-static {v6, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    move-object v6, v7

    .line 163
    move-object v3, v8

    .line 164
    move-object v4, v9

    .line 165
    move-object v1, v10

    .line 166
    :goto_1
    const-string v5, "  downTime: "

    .line 167
    .line 168
    if-eqz v13, :cond_2

    .line 169
    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    add-int/lit8 v7, v7, -0x1

    .line 175
    .line 176
    if-eq v13, v7, :cond_2

    .line 177
    .line 178
    mul-int/lit8 v7, v13, 0x32

    .line 179
    .line 180
    int-to-long v7, v7

    .line 181
    add-long/2addr v7, v11

    .line 182
    mul-int/lit8 v9, v14, 0x32

    .line 183
    .line 184
    int-to-long v9, v9

    .line 185
    add-long/2addr v9, v11

    .line 186
    move-object/from16 v25, v2

    .line 187
    .line 188
    iget v2, v15, Landroid/graphics/Point;->x:I

    .line 189
    .line 190
    int-to-float v2, v2

    .line 191
    move/from16 v26, v14

    .line 192
    .line 193
    iget v14, v15, Landroid/graphics/Point;->y:I

    .line 194
    .line 195
    int-to-float v14, v14

    .line 196
    const/16 v20, 0x2

    .line 197
    .line 198
    move-wide/from16 v16, v7

    .line 199
    .line 200
    move-wide/from16 v18, v9

    .line 201
    .line 202
    move/from16 v21, v2

    .line 203
    .line 204
    move/from16 v22, v14

    .line 205
    .line 206
    move/from16 v23, v24

    .line 207
    .line 208
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    iget v14, v15, Landroid/graphics/Point;->x:I

    .line 217
    .line 218
    iget v0, v15, Landroid/graphics/Point;->y:I

    .line 219
    .line 220
    move-object/from16 v27, v15

    .line 221
    .line 222
    new-instance v15, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    move-wide/from16 v28, v11

    .line 228
    .line 229
    const-string v11, "simulateTouchEvent: ACTION_MOVE "

    .line 230
    .line 231
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v6, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_2
    move-object/from16 v25, v2

    .line 270
    .line 271
    move-wide/from16 v28, v11

    .line 272
    .line 273
    move/from16 v26, v14

    .line 274
    .line 275
    move-object/from16 v27, v15

    .line 276
    .line 277
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    add-int/lit8 v0, v0, -0x1

    .line 282
    .line 283
    if-ne v13, v0, :cond_3

    .line 284
    .line 285
    mul-int/lit8 v13, v13, 0x32

    .line 286
    .line 287
    int-to-long v7, v13

    .line 288
    add-long v11, v28, v7

    .line 289
    .line 290
    mul-int/lit8 v14, v26, 0x32

    .line 291
    .line 292
    int-to-long v7, v14

    .line 293
    add-long v7, v28, v7

    .line 294
    .line 295
    move-object/from16 v0, v27

    .line 296
    .line 297
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 298
    .line 299
    int-to-float v2, v2

    .line 300
    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 301
    .line 302
    int-to-float v9, v9

    .line 303
    const/16 v20, 0x1

    .line 304
    .line 305
    move-wide/from16 v16, v11

    .line 306
    .line 307
    move-wide/from16 v18, v7

    .line 308
    .line 309
    move/from16 v21, v2

    .line 310
    .line 311
    move/from16 v22, v9

    .line 312
    .line 313
    move/from16 v23, v24

    .line 314
    .line 315
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    move-object/from16 v9, p0

    .line 320
    .line 321
    invoke-virtual {v9, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 326
    .line 327
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 328
    .line 329
    new-instance v13, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v14, "simulateTouchEvent: ACTION_UP "

    .line 335
    .line 336
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v6, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_3
    move-object/from16 v9, p0

    .line 375
    .line 376
    :goto_3
    move-object/from16 v1, p1

    .line 377
    .line 378
    move-object v0, v9

    .line 379
    move-object/from16 v2, v25

    .line 380
    .line 381
    move/from16 v13, v26

    .line 382
    .line 383
    move-wide/from16 v11, v28

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_4
    return-void
.end method
