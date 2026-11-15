.class public abstract Landroidx/compose/material/DragGestureDetectorCopyKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->a:F

    .line 9
    .line 10
    const/16 v1, 0x12

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sput v1, Landroidx/compose/material/DragGestureDetectorCopyKt;->b:F

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->c:F

    .line 21
    .line 22
    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/c;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v8, :cond_2

    .line 43
    .line 44
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 47
    .line 48
    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/input/pointer/w;

    .line 53
    .line 54
    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 57
    .line 58
    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/ui/input/pointer/c;

    .line 61
    .line 62
    iget-object v12, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v3

    .line 73
    move v3, v1

    .line 74
    move-object v1, v12

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_2
    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 86
    .line 87
    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 88
    .line 89
    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/input/pointer/c;

    .line 96
    .line 97
    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v18, v3

    .line 105
    .line 106
    move v3, v0

    .line 107
    move-object v0, v10

    .line 108
    move-object/from16 v10, v18

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    move v5, v1

    .line 113
    move-object v1, v11

    .line 114
    move-object/from16 v11, v19

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/c;->n0()Landroidx/compose/ui/input/pointer/o;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2, v0, v1}, Landroidx/compose/material/DragGestureDetectorCopyKt;->b(Landroidx/compose/ui/input/pointer/o;J)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/c;->getViewConfiguration()Landroidx/compose/ui/platform/o2;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move/from16 v5, p3

    .line 137
    .line 138
    invoke-static {v2, v5}, Landroidx/compose/material/DragGestureDetectorCopyKt;->c(Landroidx/compose/ui/platform/o2;I)F

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 143
    .line 144
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 148
    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-object/from16 v1, p4

    .line 152
    .line 153
    move-object v10, v5

    .line 154
    move-object v5, v3

    .line 155
    move v3, v2

    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_1
    iput-object v1, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v0, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v10, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v9, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput v3, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 166
    .line 167
    iput v2, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 168
    .line 169
    iput v8, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 170
    .line 171
    invoke-static {v0, v9, v5, v8, v9}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/c;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    if-ne v11, v4, :cond_5

    .line 176
    .line 177
    return-object v4

    .line 178
    :cond_5
    move/from16 v18, v3

    .line 179
    .line 180
    move v3, v2

    .line 181
    move-object v2, v11

    .line 182
    move-object v11, v10

    .line 183
    move-object v10, v5

    .line 184
    move/from16 v5, v18

    .line 185
    .line 186
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/o;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    const/4 v14, 0x0

    .line 197
    move v15, v14

    .line 198
    :goto_3
    if-ge v15, v13, :cond_7

    .line 199
    .line 200
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    move-object/from16 v17, v16

    .line 205
    .line 206
    check-cast v17, Landroidx/compose/ui/input/pointer/w;

    .line 207
    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 213
    .line 214
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 222
    .line 223
    const/4 v7, 0x2

    .line 224
    const/4 v8, 0x1

    .line 225
    const/4 v9, 0x0

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    const/16 v16, 0x0

    .line 228
    .line 229
    :goto_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    move-object/from16 v6, v16

    .line 233
    .line 234
    check-cast v6, Landroidx/compose/ui/input/pointer/w;

    .line 235
    .line 236
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->p()Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-eqz v7, :cond_8

    .line 241
    .line 242
    :goto_5
    const/4 v9, 0x0

    .line 243
    goto/16 :goto_a

    .line 244
    .line 245
    :cond_8
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_c

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_6
    if-ge v14, v6, :cond_a

    .line 260
    .line 261
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    move-object v8, v7

    .line 266
    check-cast v8, Landroidx/compose/ui/input/pointer/w;

    .line 267
    .line 268
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_9

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_a
    const/4 v7, 0x0

    .line 279
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    .line 280
    .line 281
    if-nez v7, :cond_b

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 285
    .line 286
    .line 287
    move-result-wide v6

    .line 288
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 289
    .line 290
    move v2, v3

    .line 291
    move v3, v5

    .line 292
    move-object v5, v10

    .line 293
    move-object v10, v11

    .line 294
    const/4 v7, 0x2

    .line 295
    :goto_8
    const/4 v8, 0x1

    .line 296
    const/4 v9, 0x0

    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_c
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->h()J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->k()J

    .line 304
    .line 305
    .line 306
    move-result-wide v12

    .line 307
    invoke-static {v7, v8}, Ly/g;->m(J)F

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    invoke-static {v12, v13}, Ly/g;->m(J)F

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    sub-float/2addr v2, v7

    .line 316
    add-float/2addr v2, v3

    .line 317
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    cmpg-float v3, v3, v5

    .line 322
    .line 323
    if-gez v3, :cond_f

    .line 324
    .line 325
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 326
    .line 327
    iput-object v1, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v0, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v11, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v6, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 334
    .line 335
    iput v5, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 336
    .line 337
    iput v2, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 338
    .line 339
    const/4 v7, 0x2

    .line 340
    iput v7, v10, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 341
    .line 342
    invoke-interface {v0, v3, v10}, Landroidx/compose/ui/input/pointer/c;->m0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-ne v3, v4, :cond_d

    .line 347
    .line 348
    return-object v4

    .line 349
    :cond_d
    move v3, v5

    .line 350
    move-object v5, v6

    .line 351
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->p()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_e

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_e
    move-object v5, v10

    .line 359
    move-object v10, v11

    .line 360
    goto :goto_8

    .line 361
    :cond_f
    const/4 v7, 0x2

    .line 362
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    mul-float/2addr v3, v5

    .line 367
    sub-float/2addr v2, v3

    .line 368
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->p()Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-eqz v2, :cond_10

    .line 380
    .line 381
    move-object v9, v6

    .line 382
    :goto_a
    return-object v9

    .line 383
    :cond_10
    move v3, v5

    .line 384
    move-object v5, v10

    .line 385
    move-object v10, v11

    .line 386
    const/4 v2, 0x0

    .line 387
    goto :goto_8
.end method

.method private static final b(Landroidx/compose/ui/input/pointer/o;J)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Landroidx/compose/ui/input/pointer/w;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/w;

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    .line 46
    move v1, p0

    .line 47
    :cond_2
    xor-int/2addr p0, v1

    .line 48
    return p0
.end method

.method public static final c(Landroidx/compose/ui/platform/o2;I)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/h0$a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/h0;->g(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/compose/ui/platform/o2;->f()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget p1, Landroidx/compose/material/DragGestureDetectorCopyKt;->c:F

    .line 18
    .line 19
    mul-float/2addr p0, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/o2;->f()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0
.end method
