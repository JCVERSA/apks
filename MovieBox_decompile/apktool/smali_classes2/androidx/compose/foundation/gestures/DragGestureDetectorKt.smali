.class public abstract Landroidx/compose/foundation/gestures/DragGestureDetectorKt;
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
    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

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
    sput v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->b:F

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->c:F

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/input/pointer/o;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->d(Landroidx/compose/ui/input/pointer/o;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/e0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 2
    .line 3
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p4

    .line 11
    move-object v3, p5

    .line 12
    move-object v4, p1

    .line 13
    move-object/from16 v5, p6

    .line 14
    .line 15
    move-object v6, p3

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move-object/from16 v1, p7

    .line 22
    .line 23
    invoke-static {p0, v9, v1}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->c(Landroidx/compose/ui/input/pointer/e0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-ne v3, v5, :cond_1

    .line 40
    .line 41
    iget-object v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$4:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 44
    .line 45
    iget-object v7, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$3:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, Landroidx/compose/ui/input/pointer/c;

    .line 48
    .line 49
    iget-object v8, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$2:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v8, Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    iget-object v9, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$1:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v9, Landroidx/compose/ui/input/pointer/c;

    .line 56
    .line 57
    iget-object v10, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object/from16 v16, v10

    .line 65
    .line 66
    move-object v10, v1

    .line 67
    move-object/from16 v1, v16

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 82
    .line 83
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/c;->n0()Landroidx/compose/ui/input/pointer/o;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-wide/from16 v7, p1

    .line 88
    .line 89
    invoke-static {v3, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/o;J)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    goto/16 :goto_c

    .line 96
    .line 97
    :cond_3
    move-object v3, v0

    .line 98
    move-object v9, v1

    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v1, p3

    .line 102
    .line 103
    :goto_1
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 104
    .line 105
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-wide v7, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 109
    .line 110
    move-object v7, v0

    .line 111
    move-object v8, v3

    .line 112
    move-object v3, v10

    .line 113
    :goto_2
    iput-object v1, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$0:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v0, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$1:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v8, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$2:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v7, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$3:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v3, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->L$4:Ljava/lang/Object;

    .line 122
    .line 123
    iput v5, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->label:I

    .line 124
    .line 125
    invoke-static {v7, v6, v9, v5, v6}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/c;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    if-ne v10, v2, :cond_4

    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_4
    move-object/from16 v16, v9

    .line 133
    .line 134
    move-object v9, v0

    .line 135
    move-object v0, v10

    .line 136
    move-object/from16 v10, v16

    .line 137
    .line 138
    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/o;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    const/4 v13, 0x0

    .line 149
    :goto_4
    if-ge v13, v12, :cond_6

    .line 150
    .line 151
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    move-object v15, v14

    .line 156
    check-cast v15, Landroidx/compose/ui/input/pointer/w;

    .line 157
    .line 158
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    move-object/from16 p0, v7

    .line 163
    .line 164
    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 165
    .line 166
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_5

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 174
    .line 175
    const/4 v5, 0x1

    .line 176
    const/4 v6, 0x0

    .line 177
    move-object/from16 v7, p0

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    move-object/from16 p0, v7

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    :goto_5
    check-cast v14, Landroidx/compose/ui/input/pointer/w;

    .line 184
    .line 185
    if-nez v14, :cond_7

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    goto :goto_a

    .line 189
    :cond_7
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_b

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    const/4 v5, 0x0

    .line 204
    :goto_6
    if-ge v5, v4, :cond_9

    .line 205
    .line 206
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    move-object v7, v6

    .line 211
    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    .line 212
    .line 213
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_8

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_9
    const/4 v6, 0x0

    .line 224
    :goto_7
    check-cast v6, Landroidx/compose/ui/input/pointer/w;

    .line 225
    .line 226
    if-nez v6, :cond_a

    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_a
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    iput-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_b
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/p;->h(Landroidx/compose/ui/input/pointer/w;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    if-nez v8, :cond_c

    .line 241
    .line 242
    invoke-static {v4, v5}, Ly/g;->k(J)F

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    goto :goto_8

    .line 247
    :cond_c
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 248
    .line 249
    if-ne v8, v0, :cond_d

    .line 250
    .line 251
    invoke-static {v4, v5}, Ly/g;->n(J)F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    goto :goto_8

    .line 256
    :cond_d
    invoke-static {v4, v5}, Ly/g;->m(J)F

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    :goto_8
    const/4 v4, 0x0

    .line 261
    cmpg-float v0, v0, v4

    .line 262
    .line 263
    if-nez v0, :cond_e

    .line 264
    .line 265
    const/4 v0, 0x1

    .line 266
    goto :goto_9

    .line 267
    :cond_e
    const/4 v0, 0x0

    .line 268
    :goto_9
    if-nez v0, :cond_13

    .line 269
    .line 270
    :goto_a
    if-nez v14, :cond_f

    .line 271
    .line 272
    :goto_b
    const/4 v6, 0x0

    .line 273
    goto :goto_c

    .line 274
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->p()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_10
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/p;->d(Landroidx/compose/ui/input/pointer/w;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_12

    .line 286
    .line 287
    move-object v6, v14

    .line 288
    :goto_c
    if-eqz v6, :cond_11

    .line 289
    .line 290
    const/4 v4, 0x1

    .line 291
    goto :goto_d

    .line 292
    :cond_11
    const/4 v4, 0x0

    .line 293
    :goto_d
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    return-object v0

    .line 298
    :cond_12
    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    move-object v0, v9

    .line 306
    move-object v9, v10

    .line 307
    const/4 v5, 0x1

    .line 308
    const/4 v6, 0x0

    .line 309
    move-wide/from16 v16, v3

    .line 310
    .line 311
    move-object v3, v8

    .line 312
    move-wide/from16 v7, v16

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_13
    :goto_e
    move-object/from16 v7, p0

    .line 317
    .line 318
    move-object v0, v9

    .line 319
    move-object v9, v10

    .line 320
    const/4 v5, 0x1

    .line 321
    const/4 v6, 0x0

    .line 322
    goto/16 :goto_2
.end method

.method private static final d(Landroidx/compose/ui/input/pointer/o;J)Z
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

.method public static final e(Landroidx/compose/ui/platform/o2;I)F
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
    sget p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->c:F

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
