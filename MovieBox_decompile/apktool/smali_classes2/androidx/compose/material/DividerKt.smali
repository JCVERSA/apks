.class public abstract Landroidx/compose/material/DividerKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;JFFLandroidx/compose/runtime/i;II)V
    .locals 23

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    const v0, -0x4a783646

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    and-int/lit8 v2, p7, 0x1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    or-int/lit8 v3, v6, 0x6

    .line 17
    .line 18
    move v4, v3

    .line 19
    move-object/from16 v3, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v3, v6, 0x6

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    move-object/from16 v3, p0

    .line 27
    .line 28
    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x2

    .line 37
    :goto_0
    or-int/2addr v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object/from16 v3, p0

    .line 40
    .line 41
    move v4, v6

    .line 42
    :goto_1
    and-int/lit8 v5, v6, 0x30

    .line 43
    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    and-int/lit8 v5, p7, 0x2

    .line 47
    .line 48
    move-wide/from16 v7, p1

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    const/16 v5, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/16 v5, 0x10

    .line 62
    .line 63
    :goto_2
    or-int/2addr v4, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move-wide/from16 v7, p1

    .line 66
    .line 67
    :goto_3
    and-int/lit8 v5, p7, 0x4

    .line 68
    .line 69
    if-eqz v5, :cond_6

    .line 70
    .line 71
    or-int/lit16 v4, v4, 0x180

    .line 72
    .line 73
    :cond_5
    move/from16 v9, p3

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_6
    and-int/lit16 v9, v6, 0x180

    .line 77
    .line 78
    if-nez v9, :cond_5

    .line 79
    .line 80
    move/from16 v9, p3

    .line 81
    .line 82
    invoke-interface {v1, v9}, Landroidx/compose/runtime/i;->b(F)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_7

    .line 87
    .line 88
    const/16 v10, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    const/16 v10, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v4, v10

    .line 94
    :goto_5
    and-int/lit8 v10, p7, 0x8

    .line 95
    .line 96
    if-eqz v10, :cond_9

    .line 97
    .line 98
    or-int/lit16 v4, v4, 0xc00

    .line 99
    .line 100
    :cond_8
    move/from16 v11, p4

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_9
    and-int/lit16 v11, v6, 0xc00

    .line 104
    .line 105
    if-nez v11, :cond_8

    .line 106
    .line 107
    move/from16 v11, p4

    .line 108
    .line 109
    invoke-interface {v1, v11}, Landroidx/compose/runtime/i;->b(F)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    const/16 v12, 0x800

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/16 v12, 0x400

    .line 119
    .line 120
    :goto_6
    or-int/2addr v4, v12

    .line 121
    :goto_7
    and-int/lit16 v12, v4, 0x493

    .line 122
    .line 123
    const/16 v13, 0x492

    .line 124
    .line 125
    if-ne v12, v13, :cond_d

    .line 126
    .line 127
    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_b

    .line 132
    .line 133
    goto :goto_9

    .line 134
    :cond_b
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    .line 135
    .line 136
    .line 137
    move-object v2, v3

    .line 138
    :cond_c
    :goto_8
    move v4, v9

    .line 139
    move v5, v11

    .line 140
    goto/16 :goto_f

    .line 141
    .line 142
    :cond_d
    :goto_9
    invoke-interface {v1}, Landroidx/compose/runtime/i;->B()V

    .line 143
    .line 144
    .line 145
    and-int/lit8 v12, v6, 0x1

    .line 146
    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v14, 0x1

    .line 149
    if-eqz v12, :cond_10

    .line 150
    .line 151
    invoke-interface {v1}, Landroidx/compose/runtime/i;->I()Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    if-eqz v12, :cond_e

    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_e
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    .line 159
    .line 160
    .line 161
    and-int/lit8 v2, p7, 0x2

    .line 162
    .line 163
    if-eqz v2, :cond_f

    .line 164
    .line 165
    and-int/lit8 v4, v4, -0x71

    .line 166
    .line 167
    :cond_f
    move-object v2, v3

    .line 168
    goto :goto_c

    .line 169
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 170
    .line 171
    sget-object v2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 172
    .line 173
    goto :goto_b

    .line 174
    :cond_11
    move-object v2, v3

    .line 175
    :goto_b
    and-int/lit8 v3, p7, 0x2

    .line 176
    .line 177
    if-eqz v3, :cond_12

    .line 178
    .line 179
    sget-object v3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    .line 180
    .line 181
    const/4 v7, 0x6

    .line 182
    invoke-virtual {v3, v1, v7}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroidx/compose/material/b;->g()J

    .line 187
    .line 188
    .line 189
    move-result-wide v15

    .line 190
    const/16 v21, 0xe

    .line 191
    .line 192
    const/16 v22, 0x0

    .line 193
    .line 194
    const v17, 0x3df5c28f    # 0.12f

    .line 195
    .line 196
    .line 197
    const/16 v18, 0x0

    .line 198
    .line 199
    const/16 v19, 0x0

    .line 200
    .line 201
    const/16 v20, 0x0

    .line 202
    .line 203
    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v7

    .line 207
    and-int/lit8 v4, v4, -0x71

    .line 208
    .line 209
    :cond_12
    if-eqz v5, :cond_13

    .line 210
    .line 211
    int-to-float v3, v14

    .line 212
    invoke-static {v3}, Lo0/i;->g(F)F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    move v9, v3

    .line 217
    :cond_13
    if-eqz v10, :cond_14

    .line 218
    .line 219
    int-to-float v3, v13

    .line 220
    invoke-static {v3}, Lo0/i;->g(F)F

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    move v11, v3

    .line 225
    :cond_14
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/i;->s()V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_15

    .line 233
    .line 234
    const/4 v3, -0x1

    .line 235
    const-string v5, "androidx.compose.material.Divider (Divider.kt:48)"

    .line 236
    .line 237
    invoke-static {v0, v4, v3, v5}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_15
    const/4 v0, 0x0

    .line 241
    cmpg-float v3, v11, v0

    .line 242
    .line 243
    if-nez v3, :cond_16

    .line 244
    .line 245
    sget-object v3, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 246
    .line 247
    goto :goto_d

    .line 248
    :cond_16
    sget-object v15, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 249
    .line 250
    const/16 v20, 0xe

    .line 251
    .line 252
    const/16 v21, 0x0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const/16 v18, 0x0

    .line 257
    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    move/from16 v16, v11

    .line 261
    .line 262
    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    :goto_d
    sget-object v4, Lo0/i;->b:Lo0/i$a;

    .line 267
    .line 268
    invoke-virtual {v4}, Lo0/i$a;->a()F

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-static {v9, v4}, Lo0/i;->i(FF)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_17

    .line 277
    .line 278
    const v4, -0x7b61a87

    .line 279
    .line 280
    .line 281
    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Lo0/e;

    .line 293
    .line 294
    invoke-interface {v4}, Lo0/e;->getDensity()F

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    const/high16 v5, 0x3f800000    # 1.0f

    .line 299
    .line 300
    div-float/2addr v5, v4

    .line 301
    invoke-static {v5}, Lo0/i;->g(F)F

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    .line 306
    .line 307
    .line 308
    goto :goto_e

    .line 309
    :cond_17
    const v4, -0x7b5358a

    .line 310
    .line 311
    .line 312
    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    .line 316
    .line 317
    .line 318
    move v4, v9

    .line 319
    :goto_e
    invoke-interface {v2, v3}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    const/4 v5, 0x0

    .line 324
    invoke-static {v3, v0, v14, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const/4 v3, 0x2

    .line 333
    const/4 v4, 0x0

    .line 334
    move-object/from16 p0, v0

    .line 335
    .line 336
    move-wide/from16 p1, v7

    .line 337
    .line 338
    move-object/from16 p3, v5

    .line 339
    .line 340
    move/from16 p4, v3

    .line 341
    .line 342
    move-object/from16 p5, v4

    .line 343
    .line 344
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0, v1, v13}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_c

    .line 356
    .line 357
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_8

    .line 361
    .line 362
    :goto_f
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    if-eqz v9, :cond_18

    .line 367
    .line 368
    new-instance v10, Landroidx/compose/material/DividerKt$Divider$1;

    .line 369
    .line 370
    move-object v0, v10

    .line 371
    move-object v1, v2

    .line 372
    move-wide v2, v7

    .line 373
    move/from16 v6, p6

    .line 374
    .line 375
    move/from16 v7, p7

    .line 376
    .line 377
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/f;JFFII)V

    .line 378
    .line 379
    .line 380
    invoke-interface {v9, v10}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 381
    .line 382
    .line 383
    :cond_18
    return-void
.end method
