.class public final Landroidx/compose/ui/input/pointer/l;
.super Landroidx/compose/ui/input/pointer/m;
.source "source.java"


# instance fields
.field private final c:Landroidx/compose/ui/f$c;

.field private final d:Le0/b;

.field private final e:Landroidx/collection/x;

.field private f:Landroidx/compose/ui/layout/l;

.field private g:Landroidx/compose/ui/input/pointer/o;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/f$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 5
    .line 6
    new-instance p1, Le0/b;

    .line 7
    .line 8
    invoke-direct {p1}, Le0/b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 12
    .line 13
    new-instance p1, Landroidx/collection/x;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p1, v0}, Landroidx/collection/x;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/l;->j:Z

    .line 25
    .line 26
    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/x;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 8
    .line 9
    return-void
.end method

.method private final m(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/o;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/compose/ui/input/pointer/w;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/compose/ui/input/pointer/w;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/w;->h()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->h()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-static {v6, v7, v4, v5}, Ly/g;->j(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return v2

    .line 74
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public a(Landroidx/collection/x;Landroidx/compose/ui/layout/l;Landroidx/compose/ui/input/pointer/g;Z)Z
    .locals 36

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/m;->a(Landroidx/collection/x;Landroidx/compose/ui/layout/l;Landroidx/compose/ui/input/pointer/g;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 14
    .line 15
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->j1()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    return v6

    .line 23
    :cond_0
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 24
    .line 25
    const/16 v7, 0x10

    .line 26
    .line 27
    invoke-static {v7}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    :goto_0
    const/4 v11, 0x0

    .line 33
    if-eqz v5, :cond_8

    .line 34
    .line 35
    instance-of v12, v5, Landroidx/compose/ui/node/e1;

    .line 36
    .line 37
    if-eqz v12, :cond_1

    .line 38
    .line 39
    check-cast v5, Landroidx/compose/ui/node/e1;

    .line 40
    .line 41
    invoke-static {v5}, Landroidx/compose/ui/node/f1;->a(Landroidx/compose/ui/node/e1;)Landroidx/compose/ui/layout/l;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iput-object v5, v0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    and-int/2addr v12, v8

    .line 53
    if-eqz v12, :cond_7

    .line 54
    .line 55
    instance-of v12, v5, Landroidx/compose/ui/node/i;

    .line 56
    .line 57
    if-eqz v12, :cond_7

    .line 58
    .line 59
    move-object v12, v5

    .line 60
    check-cast v12, Landroidx/compose/ui/node/i;

    .line 61
    .line 62
    invoke-virtual {v12}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    move v13, v11

    .line 67
    :goto_1
    if-eqz v12, :cond_6

    .line 68
    .line 69
    invoke-virtual {v12}, Landroidx/compose/ui/f$c;->e1()I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    and-int/2addr v14, v8

    .line 74
    if-eqz v14, :cond_5

    .line 75
    .line 76
    add-int/lit8 v13, v13, 0x1

    .line 77
    .line 78
    if-ne v13, v6, :cond_2

    .line 79
    .line 80
    move-object v5, v12

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    if-nez v10, :cond_3

    .line 83
    .line 84
    new-instance v10, Landroidx/compose/runtime/collection/b;

    .line 85
    .line 86
    new-array v14, v7, [Landroidx/compose/ui/f$c;

    .line 87
    .line 88
    invoke-direct {v10, v14, v11}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    if-eqz v5, :cond_4

    .line 92
    .line 93
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    :cond_4
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    invoke-virtual {v12}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    if-ne v13, v6, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    :goto_3
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    goto :goto_0

    .line 113
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/x;->n()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    move v7, v11

    .line 118
    :goto_4
    if-ge v7, v5, :cond_d

    .line 119
    .line 120
    invoke-virtual {v1, v7}, Landroidx/collection/x;->j(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v12

    .line 124
    invoke-virtual {v1, v7}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    move-object v14, v8

    .line 129
    check-cast v14, Landroidx/compose/ui/input/pointer/w;

    .line 130
    .line 131
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 132
    .line 133
    invoke-virtual {v8, v12, v13}, Le0/b;->d(J)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_c

    .line 138
    .line 139
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->k()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    move/from16 v33, v7

    .line 144
    .line 145
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->h()J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    invoke-static {v9, v10}, Ly/g;->p(J)Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    if-eqz v15, :cond_b

    .line 154
    .line 155
    invoke-static {v6, v7}, Ly/g;->p(J)Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-eqz v15, :cond_b

    .line 160
    .line 161
    new-instance v15, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->e()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v16

    .line 167
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/w;->e()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    move/from16 v34, v5

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    :goto_5
    if-ge v5, v11, :cond_a

    .line 186
    .line 187
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v16

    .line 191
    check-cast v16, Landroidx/compose/ui/input/pointer/e;

    .line 192
    .line 193
    move/from16 v35, v4

    .line 194
    .line 195
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/e;->b()J

    .line 196
    .line 197
    .line 198
    move-result-wide v3

    .line 199
    invoke-static {v3, v4}, Ly/g;->p(J)Z

    .line 200
    .line 201
    .line 202
    move-result v17

    .line 203
    if-eqz v17, :cond_9

    .line 204
    .line 205
    move-object/from16 v17, v8

    .line 206
    .line 207
    new-instance v8, Landroidx/compose/ui/input/pointer/e;

    .line 208
    .line 209
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/e;->c()J

    .line 210
    .line 211
    .line 212
    move-result-wide v19

    .line 213
    move/from16 v26, v11

    .line 214
    .line 215
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 216
    .line 217
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v11, v2, v3, v4}, Landroidx/compose/ui/layout/l;->C(Landroidx/compose/ui/layout/l;J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v21

    .line 224
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/e;->a()J

    .line 225
    .line 226
    .line 227
    move-result-wide v23

    .line 228
    const/16 v25, 0x0

    .line 229
    .line 230
    move-object/from16 v18, v8

    .line 231
    .line 232
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/input/pointer/e;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_9
    move-object/from16 v17, v8

    .line 240
    .line 241
    move/from16 v26, v11

    .line 242
    .line 243
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 244
    .line 245
    move-object/from16 v3, p3

    .line 246
    .line 247
    move-object/from16 v8, v17

    .line 248
    .line 249
    move/from16 v11, v26

    .line 250
    .line 251
    move/from16 v4, v35

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    move/from16 v35, v4

    .line 255
    .line 256
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 257
    .line 258
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 259
    .line 260
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v4, v2, v9, v10}, Landroidx/compose/ui/layout/l;->C(Landroidx/compose/ui/layout/l;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v24

    .line 267
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 268
    .line 269
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v4, v2, v6, v7}, Landroidx/compose/ui/layout/l;->C(Landroidx/compose/ui/layout/l;J)J

    .line 273
    .line 274
    .line 275
    move-result-wide v19

    .line 276
    const/16 v31, 0x2db

    .line 277
    .line 278
    const/16 v32, 0x0

    .line 279
    .line 280
    const-wide/16 v4, 0x0

    .line 281
    .line 282
    move-object v6, v15

    .line 283
    move-wide v15, v4

    .line 284
    const-wide/16 v17, 0x0

    .line 285
    .line 286
    const/16 v21, 0x0

    .line 287
    .line 288
    const-wide/16 v22, 0x0

    .line 289
    .line 290
    const/16 v26, 0x0

    .line 291
    .line 292
    const/16 v27, 0x0

    .line 293
    .line 294
    const-wide/16 v29, 0x0

    .line 295
    .line 296
    move-object/from16 v28, v6

    .line 297
    .line 298
    invoke-static/range {v14 .. v32}, Landroidx/compose/ui/input/pointer/w;->c(Landroidx/compose/ui/input/pointer/w;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/w;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v3, v12, v13, v4}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_b
    move/from16 v35, v4

    .line 307
    .line 308
    move/from16 v34, v5

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_c
    move/from16 v35, v4

    .line 312
    .line 313
    move/from16 v34, v5

    .line 314
    .line 315
    move/from16 v33, v7

    .line 316
    .line 317
    :goto_7
    add-int/lit8 v7, v33, 0x1

    .line 318
    .line 319
    move-object/from16 v3, p3

    .line 320
    .line 321
    move/from16 v5, v34

    .line 322
    .line 323
    move/from16 v4, v35

    .line 324
    .line 325
    const/4 v6, 0x1

    .line 326
    const/4 v11, 0x0

    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :cond_d
    move/from16 v35, v4

    .line 330
    .line 331
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 332
    .line 333
    invoke-virtual {v2}, Landroidx/collection/x;->i()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_e

    .line 338
    .line 339
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 340
    .line 341
    invoke-virtual {v1}, Le0/b;->c()V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->h()V

    .line 349
    .line 350
    .line 351
    const/4 v2, 0x1

    .line 352
    return v2

    .line 353
    :cond_e
    const/4 v2, 0x1

    .line 354
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 355
    .line 356
    invoke-virtual {v3}, Le0/b;->f()I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    sub-int/2addr v3, v2

    .line 361
    :goto_8
    const/4 v2, -0x1

    .line 362
    if-ge v2, v3, :cond_10

    .line 363
    .line 364
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Le0/b;->e(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v4

    .line 370
    invoke-virtual {v1, v4, v5}, Landroidx/collection/x;->d(J)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-nez v2, :cond_f

    .line 375
    .line 376
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 377
    .line 378
    invoke-virtual {v2, v3}, Le0/b;->j(I)Z

    .line 379
    .line 380
    .line 381
    :cond_f
    add-int/lit8 v3, v3, -0x1

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 385
    .line 386
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 387
    .line 388
    invoke-virtual {v2}, Landroidx/collection/x;->n()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .line 394
    .line 395
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 396
    .line 397
    invoke-virtual {v2}, Landroidx/collection/x;->n()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    const/4 v3, 0x0

    .line 402
    :goto_9
    if-ge v3, v2, :cond_11

    .line 403
    .line 404
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 405
    .line 406
    invoke-virtual {v4, v3}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    add-int/lit8 v3, v3, 0x1

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_11
    new-instance v2, Landroidx/compose/ui/input/pointer/o;

    .line 417
    .line 418
    move-object/from16 v3, p3

    .line 419
    .line 420
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/o;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/g;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    const/4 v5, 0x0

    .line 432
    :goto_a
    if-ge v5, v4, :cond_13

    .line 433
    .line 434
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    move-object v7, v6

    .line 439
    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    .line 440
    .line 441
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 442
    .line 443
    .line 444
    move-result-wide v7

    .line 445
    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/input/pointer/g;->a(J)Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    if-eqz v7, :cond_12

    .line 450
    .line 451
    move-object v9, v6

    .line 452
    goto :goto_b

    .line 453
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_13
    const/4 v9, 0x0

    .line 457
    :goto_b
    check-cast v9, Landroidx/compose/ui/input/pointer/w;

    .line 458
    .line 459
    if-eqz v9, :cond_1b

    .line 460
    .line 461
    if-nez p4, :cond_15

    .line 462
    .line 463
    const/4 v1, 0x0

    .line 464
    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 465
    .line 466
    :cond_14
    const/4 v4, 0x1

    .line 467
    goto :goto_c

    .line 468
    :cond_15
    const/4 v1, 0x0

    .line 469
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 470
    .line 471
    if-nez v3, :cond_14

    .line 472
    .line 473
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-nez v3, :cond_16

    .line 478
    .line 479
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/w;->l()Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_14

    .line 484
    .line 485
    :cond_16
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 486
    .line 487
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-interface {v3}, Landroidx/compose/ui/layout/l;->k()J

    .line 491
    .line 492
    .line 493
    move-result-wide v3

    .line 494
    invoke-static {v9, v3, v4}, Landroidx/compose/ui/input/pointer/p;->e(Landroidx/compose/ui/input/pointer/w;J)Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    const/4 v4, 0x1

    .line 499
    xor-int/2addr v3, v4

    .line 500
    iput-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 501
    .line 502
    :goto_c
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 503
    .line 504
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/l;->h:Z

    .line 505
    .line 506
    if-eq v3, v5, :cond_19

    .line 507
    .line 508
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    sget-object v5, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    .line 513
    .line 514
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->c()I

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    invoke-static {v3, v6}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-nez v3, :cond_17

    .line 523
    .line 524
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    invoke-static {v3, v6}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-nez v3, :cond_17

    .line 537
    .line 538
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    invoke-static {v3, v6}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_19

    .line 551
    .line 552
    :cond_17
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 553
    .line 554
    if-eqz v3, :cond_18

    .line 555
    .line 556
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    goto :goto_d

    .line 561
    :cond_18
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    :goto_d
    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/o;->f(I)V

    .line 566
    .line 567
    .line 568
    goto :goto_e

    .line 569
    :cond_19
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    sget-object v5, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    .line 574
    .line 575
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    invoke-static {v3, v6}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-eqz v3, :cond_1a

    .line 584
    .line 585
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->h:Z

    .line 586
    .line 587
    if-eqz v3, :cond_1a

    .line 588
    .line 589
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->j:Z

    .line 590
    .line 591
    if-nez v3, :cond_1a

    .line 592
    .line 593
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->c()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/o;->f(I)V

    .line 598
    .line 599
    .line 600
    goto :goto_e

    .line 601
    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    invoke-static {v3, v6}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_1c

    .line 614
    .line 615
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 616
    .line 617
    if-eqz v3, :cond_1c

    .line 618
    .line 619
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-eqz v3, :cond_1c

    .line 624
    .line 625
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->c()I

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/o;->f(I)V

    .line 630
    .line 631
    .line 632
    goto :goto_e

    .line 633
    :cond_1b
    const/4 v1, 0x0

    .line 634
    const/4 v4, 0x1

    .line 635
    :cond_1c
    :goto_e
    if-nez v35, :cond_1e

    .line 636
    .line 637
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 638
    .line 639
    .line 640
    move-result v3

    .line 641
    sget-object v5, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    .line 642
    .line 643
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/q$a;->c()I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-eqz v3, :cond_1e

    .line 652
    .line 653
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/l;->g:Landroidx/compose/ui/input/pointer/o;

    .line 654
    .line 655
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/input/pointer/l;->m(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/o;)Z

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    if-eqz v3, :cond_1d

    .line 660
    .line 661
    goto :goto_f

    .line 662
    :cond_1d
    move v6, v1

    .line 663
    goto :goto_10

    .line 664
    :cond_1e
    :goto_f
    move v6, v4

    .line 665
    :goto_10
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/l;->g:Landroidx/compose/ui/input/pointer/o;

    .line 666
    .line 667
    return v6
.end method

.method public b(Landroidx/compose/ui/input/pointer/g;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/m;->b(Landroidx/compose/ui/input/pointer/g;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->g:Landroidx/compose/ui/input/pointer/o;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/l;->h:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/o;->b()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_4

    .line 24
    .line 25
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroidx/compose/ui/input/pointer/w;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->i()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/input/pointer/g;->a(J)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    iget-boolean v8, p0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 44
    .line 45
    if-nez v6, :cond_1

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    :cond_1
    if-nez v6, :cond_3

    .line 50
    .line 51
    if-nez v8, :cond_3

    .line 52
    .line 53
    :cond_2
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/w;->f()J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-virtual {v6, v7, v8}, Le0/b;->i(J)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sget-object v0, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/l;->j:Z

    .line 82
    .line 83
    return-void
.end method

.method public d()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move v4, v2

    .line 18
    :cond_0
    aget-object v5, v0, v4

    .line 19
    .line 20
    check-cast v5, Landroidx/compose/ui/input/pointer/l;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/l;->d()V

    .line 23
    .line 24
    .line 25
    add-int/2addr v4, v3

    .line 26
    if-lt v4, v1, :cond_0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 29
    .line 30
    const/16 v1, 0x10

    .line 31
    .line 32
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v6, v5

    .line 38
    :goto_0
    if-eqz v0, :cond_9

    .line 39
    .line 40
    instance-of v7, v0, Landroidx/compose/ui/node/e1;

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/ui/node/e1;

    .line 45
    .line 46
    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->t0()V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->e1()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    and-int/2addr v7, v4

    .line 55
    if-eqz v7, :cond_8

    .line 56
    .line 57
    instance-of v7, v0, Landroidx/compose/ui/node/i;

    .line 58
    .line 59
    if-eqz v7, :cond_8

    .line 60
    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Landroidx/compose/ui/node/i;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    move v8, v2

    .line 69
    :goto_1
    if-eqz v7, :cond_7

    .line 70
    .line 71
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->e1()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    and-int/2addr v9, v4

    .line 76
    if-eqz v9, :cond_6

    .line 77
    .line 78
    add-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    if-ne v8, v3, :cond_3

    .line 81
    .line 82
    move-object v0, v7

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    if-nez v6, :cond_4

    .line 85
    .line 86
    new-instance v6, Landroidx/compose/runtime/collection/b;

    .line 87
    .line 88
    new-array v9, v1, [Landroidx/compose/ui/f$c;

    .line 89
    .line 90
    invoke-direct {v6, v9, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-object v0, v5

    .line 99
    :cond_5
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    goto :goto_1

    .line 107
    :cond_7
    if-ne v8, v3, :cond_8

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    :goto_3
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_0

    .line 115
    :cond_9
    return-void
.end method

.method public e(Landroidx/compose/ui/input/pointer/g;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/x;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->g:Landroidx/compose/ui/input/pointer/o;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Landroidx/compose/ui/layout/l;->k()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 37
    .line 38
    const/16 v5, 0x10

    .line 39
    .line 40
    invoke-static {v5}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v8, v7

    .line 46
    :goto_0
    const/4 v9, 0x1

    .line 47
    if-eqz v4, :cond_9

    .line 48
    .line 49
    instance-of v10, v4, Landroidx/compose/ui/node/e1;

    .line 50
    .line 51
    if-eqz v10, :cond_2

    .line 52
    .line 53
    check-cast v4, Landroidx/compose/ui/node/e1;

    .line 54
    .line 55
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 56
    .line 57
    invoke-interface {v4, v0, v9, v2, v3}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->e1()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    and-int/2addr v10, v6

    .line 66
    if-eqz v10, :cond_8

    .line 67
    .line 68
    instance-of v10, v4, Landroidx/compose/ui/node/i;

    .line 69
    .line 70
    if-eqz v10, :cond_8

    .line 71
    .line 72
    move-object v10, v4

    .line 73
    check-cast v10, Landroidx/compose/ui/node/i;

    .line 74
    .line 75
    invoke-virtual {v10}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    move v11, v1

    .line 80
    :goto_1
    if-eqz v10, :cond_7

    .line 81
    .line 82
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->e1()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    and-int/2addr v12, v6

    .line 87
    if-eqz v12, :cond_6

    .line 88
    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    if-ne v11, v9, :cond_3

    .line 92
    .line 93
    move-object v4, v10

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    if-nez v8, :cond_4

    .line 96
    .line 97
    new-instance v8, Landroidx/compose/runtime/collection/b;

    .line 98
    .line 99
    new-array v12, v5, [Landroidx/compose/ui/f$c;

    .line 100
    .line 101
    invoke-direct {v8, v12, v1}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-object v4, v7

    .line 110
    :cond_5
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    if-ne v11, v9, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_0

    .line 126
    :cond_9
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_b

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-lez v2, :cond_b

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_a
    aget-object v3, v0, v1

    .line 149
    .line 150
    check-cast v3, Landroidx/compose/ui/input/pointer/l;

    .line 151
    .line 152
    invoke-virtual {v3, p1}, Landroidx/compose/ui/input/pointer/l;->e(Landroidx/compose/ui/input/pointer/g;)Z

    .line 153
    .line 154
    .line 155
    add-int/2addr v1, v9

    .line 156
    if-lt v1, v2, :cond_a

    .line 157
    .line 158
    :cond_b
    move v1, v9

    .line 159
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/l;->b(Landroidx/compose/ui/input/pointer/g;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/l;->j()V

    .line 163
    .line 164
    .line 165
    return v1
.end method

.method public f(Landroidx/collection/x;Landroidx/compose/ui/layout/l;Landroidx/compose/ui/input/pointer/g;Z)Z
    .locals 11

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/collection/x;->i()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_8

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_8

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/l;->g:Landroidx/compose/ui/input/pointer/o;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    move-object v6, v5

    .line 46
    :goto_0
    const/4 v7, 0x1

    .line 47
    if-eqz v2, :cond_9

    .line 48
    .line 49
    instance-of v8, v2, Landroidx/compose/ui/node/e1;

    .line 50
    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    check-cast v2, Landroidx/compose/ui/node/e1;

    .line 54
    .line 55
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 56
    .line 57
    invoke-interface {v2, p1, v7, v0, v1}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->e1()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    and-int/2addr v8, v4

    .line 66
    if-eqz v8, :cond_8

    .line 67
    .line 68
    instance-of v8, v2, Landroidx/compose/ui/node/i;

    .line 69
    .line 70
    if-eqz v8, :cond_8

    .line 71
    .line 72
    move-object v8, v2

    .line 73
    check-cast v8, Landroidx/compose/ui/node/i;

    .line 74
    .line 75
    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    move v9, p2

    .line 80
    :goto_1
    if-eqz v8, :cond_7

    .line 81
    .line 82
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->e1()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    and-int/2addr v10, v4

    .line 87
    if-eqz v10, :cond_6

    .line 88
    .line 89
    add-int/lit8 v9, v9, 0x1

    .line 90
    .line 91
    if-ne v9, v7, :cond_3

    .line 92
    .line 93
    move-object v2, v8

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    if-nez v6, :cond_4

    .line 96
    .line 97
    new-instance v6, Landroidx/compose/runtime/collection/b;

    .line 98
    .line 99
    new-array v10, v3, [Landroidx/compose/ui/f$c;

    .line 100
    .line 101
    invoke-direct {v6, v10, p2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-object v2, v5

    .line 110
    :cond_5
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    if-ne v9, v7, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    :goto_3
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    goto :goto_0

    .line 126
    :cond_9
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->j1()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_b

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lez v4, :cond_b

    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    move v6, p2

    .line 149
    :cond_a
    aget-object v8, v2, v6

    .line 150
    .line 151
    check-cast v8, Landroidx/compose/ui/input/pointer/l;

    .line 152
    .line 153
    iget-object v9, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 154
    .line 155
    iget-object v10, p0, Landroidx/compose/ui/input/pointer/l;->f:Landroidx/compose/ui/layout/l;

    .line 156
    .line 157
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v9, v10, p3, p4}, Landroidx/compose/ui/input/pointer/l;->f(Landroidx/collection/x;Landroidx/compose/ui/layout/l;Landroidx/compose/ui/input/pointer/g;Z)Z

    .line 161
    .line 162
    .line 163
    add-int/2addr v6, v7

    .line 164
    if-lt v6, v4, :cond_a

    .line 165
    .line 166
    :cond_b
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 167
    .line 168
    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->j1()Z

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eqz p3, :cond_13

    .line 173
    .line 174
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 175
    .line 176
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    move-object v2, v5

    .line 181
    :goto_4
    if-eqz p3, :cond_13

    .line 182
    .line 183
    instance-of v4, p3, Landroidx/compose/ui/node/e1;

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    check-cast p3, Landroidx/compose/ui/node/e1;

    .line 188
    .line 189
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 190
    .line 191
    invoke-interface {p3, p1, v4, v0, v1}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_c
    invoke-virtual {p3}, Landroidx/compose/ui/f$c;->e1()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    and-int/2addr v4, p4

    .line 200
    if-eqz v4, :cond_12

    .line 201
    .line 202
    instance-of v4, p3, Landroidx/compose/ui/node/i;

    .line 203
    .line 204
    if-eqz v4, :cond_12

    .line 205
    .line 206
    move-object v4, p3

    .line 207
    check-cast v4, Landroidx/compose/ui/node/i;

    .line 208
    .line 209
    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    move v6, p2

    .line 214
    :goto_5
    if-eqz v4, :cond_11

    .line 215
    .line 216
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->e1()I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    and-int/2addr v8, p4

    .line 221
    if-eqz v8, :cond_10

    .line 222
    .line 223
    add-int/lit8 v6, v6, 0x1

    .line 224
    .line 225
    if-ne v6, v7, :cond_d

    .line 226
    .line 227
    move-object p3, v4

    .line 228
    goto :goto_6

    .line 229
    :cond_d
    if-nez v2, :cond_e

    .line 230
    .line 231
    new-instance v2, Landroidx/compose/runtime/collection/b;

    .line 232
    .line 233
    new-array v8, v3, [Landroidx/compose/ui/f$c;

    .line 234
    .line 235
    invoke-direct {v2, v8, p2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    :cond_e
    if-eqz p3, :cond_f

    .line 239
    .line 240
    invoke-virtual {v2, p3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-object p3, v5

    .line 244
    :cond_f
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_10
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    goto :goto_5

    .line 252
    :cond_11
    if-ne v6, v7, :cond_12

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_12
    :goto_7
    invoke-static {v2}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    goto :goto_4

    .line 260
    :cond_13
    move p2, v7

    .line 261
    :goto_8
    return p2
.end method

.method public i(JLandroidx/collection/l0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Le0/b;->d(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/collection/ObjectList;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Le0/b;->h(J)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->e:Landroidx/collection/x;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroidx/collection/x;->l(J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    :cond_1
    aget-object v3, v0, v2

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/ui/input/pointer/l;

    .line 43
    .line 44
    invoke-virtual {v3, p1, p2, p3}, Landroidx/compose/ui/input/pointer/l;->i(JLandroidx/collection/l0;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    if-lt v2, v1, :cond_1

    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final k()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Le0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/l;->i:Z

    .line 3
    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Node(pointerInputFilter="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/l;->c:Landroidx/compose/ui/f$c;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", children="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/m;->g()Landroidx/compose/runtime/collection/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", pointerIds="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/l;->d:Le0/b;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x29

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
