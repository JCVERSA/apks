.class public final Lhm/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lhm/c;->d()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lhm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lhm/c;->e(Lhm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d()Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x7d0

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v0, "/member/MemberActivity"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "extra_member_scroll_bottom"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object v0
.end method

.method private static final e(Lhm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/compose/runtime/v1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-virtual {p0, p1, p2, p4, p3}, Lhm/c;->c(IILandroidx/compose/runtime/i;I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final f(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/blankj/utilcode/util/y;->d(Landroid/app/Activity;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method


# virtual methods
.method public final c(IILandroidx/compose/runtime/i;I)V
    .locals 37

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x30

    .line 9
    .line 10
    const v5, -0x6b44c074

    .line 11
    .line 12
    .line 13
    move-object/from16 v6, p3

    .line 14
    .line 15
    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 16
    .line 17
    .line 18
    move-result-object v15

    .line 19
    const/4 v14, 0x6

    .line 20
    and-int/lit8 v6, v2, 0x6

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->c(I)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v6, 0x2

    .line 33
    :goto_0
    or-int/2addr v6, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v6, v2

    .line 36
    :goto_1
    and-int/lit8 v7, v2, 0x30

    .line 37
    .line 38
    const/16 v8, 0x10

    .line 39
    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->c(I)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v7, v8

    .line 52
    :goto_2
    or-int/2addr v6, v7

    .line 53
    :cond_3
    and-int/lit8 v7, v6, 0x13

    .line 54
    .line 55
    const/16 v10, 0x12

    .line 56
    .line 57
    if-ne v7, v10, :cond_5

    .line 58
    .line 59
    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    .line 67
    .line 68
    .line 69
    move-object v0, v15

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_6

    .line 77
    .line 78
    const/4 v7, -0x1

    .line 79
    const-string v10, "com.transsion.member.task.TaskCompleteTips.TaskCompleteView (TaskCompleteTips.kt:100)"

    .line 80
    .line 81
    invoke-static {v5, v6, v7, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    sget v5, Lcom/transsion/member/R$mipmap;->ic_succeed:I

    .line 85
    .line 86
    invoke-static {v5, v15, v3}, Li0/e;->c(ILandroidx/compose/runtime/i;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v5, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    sget-object v13, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 97
    .line 98
    int-to-float v10, v0

    .line 99
    invoke-static {v10}, Lo0/i;->g(F)F

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    sget v11, Lcom/tn/lib/widget/R$color;->white_90:I

    .line 108
    .line 109
    invoke-static {v11, v15, v3}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v11

    .line 113
    const/16 v9, 0x8

    .line 114
    .line 115
    int-to-float v9, v9

    .line 116
    invoke-static {v9}, Lo0/i;->g(F)F

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    invoke-static/range {v16 .. v16}, Lq/g;->c(F)Lq/f;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-static {v10, v11, v12, v14}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const v11, 0x2952b718

    .line 129
    .line 130
    .line 131
    invoke-interface {v15, v11}, Landroidx/compose/runtime/i;->x(I)V

    .line 132
    .line 133
    .line 134
    sget-object v11, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 135
    .line 136
    invoke-virtual {v11}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-static {v11, v7, v15, v4}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const v14, -0x4ee9b9da

    .line 145
    .line 146
    .line 147
    invoke-interface {v15, v14}, Landroidx/compose/runtime/i;->x(I)V

    .line 148
    .line 149
    .line 150
    invoke-static {v15, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    sget-object v31, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 159
    .line 160
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/f;)Lkotlin/jvm/functions/Function3;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    instance-of v14, v14, Landroidx/compose/runtime/f;

    .line 173
    .line 174
    if-nez v14, :cond_7

    .line 175
    .line 176
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    .line 180
    .line 181
    .line 182
    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    if-eqz v14, :cond_8

    .line 187
    .line 188
    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    invoke-static {v12, v4, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v12, v11, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-interface {v12}, Landroidx/compose/runtime/i;->e()Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-nez v11, :cond_9

    .line 222
    .line 223
    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-nez v11, :cond_a

    .line 236
    .line 237
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-interface {v12, v11}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-interface {v12, v7, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-static {v15}, Landroidx/compose/runtime/h2;->b(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v4}, Landroidx/compose/runtime/h2;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/h2;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-interface {v10, v4, v15, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const v4, 0x7ab4aae9

    .line 267
    .line 268
    .line 269
    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->x(I)V

    .line 270
    .line 271
    .line 272
    sget-object v23, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    .line 273
    .line 274
    int-to-float v14, v8

    .line 275
    invoke-static {v14}, Lo0/i;->g(F)F

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    const/4 v12, 0x6

    .line 284
    invoke-static {v7, v15, v12}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 285
    .line 286
    .line 287
    const/16 v7, 0x20

    .line 288
    .line 289
    int-to-float v7, v7

    .line 290
    invoke-static {v7}, Lo0/i;->g(F)F

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    const/16 v17, 0x1b0

    .line 299
    .line 300
    const/16 v18, 0x78

    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v10, 0x0

    .line 304
    const/4 v11, 0x0

    .line 305
    const/16 v19, 0x0

    .line 306
    .line 307
    const/16 v20, 0x0

    .line 308
    .line 309
    move/from16 v32, v9

    .line 310
    .line 311
    move-object v9, v10

    .line 312
    move-object v10, v11

    .line 313
    move/from16 v11, v19

    .line 314
    .line 315
    move/from16 v19, v12

    .line 316
    .line 317
    move-object/from16 v12, v20

    .line 318
    .line 319
    move-object v4, v13

    .line 320
    move-object v13, v15

    .line 321
    move/from16 v33, v14

    .line 322
    .line 323
    move/from16 v3, v19

    .line 324
    .line 325
    move/from16 v14, v17

    .line 326
    .line 327
    move-object v0, v15

    .line 328
    move/from16 v15, v18

    .line 329
    .line 330
    invoke-static/range {v6 .. v15}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;Landroidx/compose/runtime/i;II)V

    .line 331
    .line 332
    .line 333
    invoke-static/range {v32 .. v32}, Lo0/i;->g(F)F

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-static {v6, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 342
    .line 343
    .line 344
    sget v6, Lcom/transsion/member/R$string;->member_task_claim_toast:I

    .line 345
    .line 346
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    const/4 v8, 0x1

    .line 351
    new-array v8, v8, [Ljava/lang/Object;

    .line 352
    .line 353
    const/4 v9, 0x0

    .line 354
    aput-object v7, v8, v9

    .line 355
    .line 356
    invoke-static {v6, v8, v0, v9}, Li0/h;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/i;I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    sget v7, Lcom/tn/lib/widget/R$color;->gray_light_80:I

    .line 361
    .line 362
    invoke-static {v7, v0, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 363
    .line 364
    .line 365
    move-result-wide v7

    .line 366
    move-wide v8, v7

    .line 367
    const/16 v34, 0xe

    .line 368
    .line 369
    invoke-static/range {v34 .. v34}, Lo0/x;->c(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v10

    .line 373
    sget-object v35, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    .line 374
    .line 375
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    sget-object v36, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 380
    .line 381
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    .line 386
    .line 387
    .line 388
    move-result v18

    .line 389
    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    .line 390
    .line 391
    .line 392
    move-result v20

    .line 393
    const/16 v21, 0x5

    .line 394
    .line 395
    const/16 v22, 0x0

    .line 396
    .line 397
    const/16 v17, 0x0

    .line 398
    .line 399
    const/16 v19, 0x0

    .line 400
    .line 401
    move-object/from16 v16, v4

    .line 402
    .line 403
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 404
    .line 405
    .line 406
    move-result-object v19

    .line 407
    const/16 v22, 0x2

    .line 408
    .line 409
    const/4 v7, 0x0

    .line 410
    const/high16 v20, 0x3f800000    # 1.0f

    .line 411
    .line 412
    const/16 v21, 0x0

    .line 413
    .line 414
    move-object/from16 v18, v23

    .line 415
    .line 416
    move-object/from16 v23, v7

    .line 417
    .line 418
    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    const/16 v29, 0x0

    .line 423
    .line 424
    const v30, 0x1ff90

    .line 425
    .line 426
    .line 427
    const/4 v12, 0x0

    .line 428
    const-wide/16 v15, 0x0

    .line 429
    .line 430
    const/16 v17, 0x0

    .line 431
    .line 432
    const/16 v18, 0x0

    .line 433
    .line 434
    const-wide/16 v19, 0x0

    .line 435
    .line 436
    const/16 v22, 0x0

    .line 437
    .line 438
    const/16 v23, 0x0

    .line 439
    .line 440
    const/16 v24, 0x0

    .line 441
    .line 442
    const/16 v25, 0x0

    .line 443
    .line 444
    const/16 v26, 0x0

    .line 445
    .line 446
    const v28, 0x30c00

    .line 447
    .line 448
    .line 449
    move-object/from16 v27, v0

    .line 450
    .line 451
    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 452
    .line 453
    .line 454
    invoke-static/range {v32 .. v32}, Lo0/i;->g(F)F

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    invoke-static {v6, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 463
    .line 464
    .line 465
    const/16 v6, 0x40

    .line 466
    .line 467
    int-to-float v6, v6

    .line 468
    invoke-static {v6}, Lo0/i;->g(F)F

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    const/16 v7, 0x1c

    .line 477
    .line 478
    int-to-float v7, v7

    .line 479
    invoke-static {v7}, Lo0/i;->g(F)F

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    sget v7, Lcom/tn/lib/widget/R$color;->yellow_light_50:I

    .line 488
    .line 489
    const/4 v8, 0x0

    .line 490
    invoke-static {v7, v0, v8}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 491
    .line 492
    .line 493
    move-result-wide v9

    .line 494
    int-to-float v7, v3

    .line 495
    invoke-static {v7}, Lo0/i;->g(F)F

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    invoke-static {v7}, Lq/g;->c(F)Lq/f;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-static {v6, v9, v10, v7}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    const v6, 0x6e3c21fe

    .line 508
    .line 509
    .line 510
    invoke-interface {v0, v6}, Landroidx/compose/runtime/i;->P(I)V

    .line 511
    .line 512
    .line 513
    invoke-interface {v0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    sget-object v7, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 518
    .line 519
    invoke-virtual {v7}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    if-ne v6, v7, :cond_b

    .line 524
    .line 525
    new-instance v6, Lhm/a;

    .line 526
    .line 527
    invoke-direct {v6}, Lhm/a;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-interface {v0, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    :cond_b
    move-object v15, v6

    .line 534
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 535
    .line 536
    invoke-interface {v0}, Landroidx/compose/runtime/i;->K()V

    .line 537
    .line 538
    .line 539
    const/16 v16, 0x7

    .line 540
    .line 541
    const/16 v17, 0x0

    .line 542
    .line 543
    const/4 v12, 0x0

    .line 544
    const/4 v13, 0x0

    .line 545
    const/4 v14, 0x0

    .line 546
    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    invoke-virtual {v5}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    const v7, 0x2bb5b5d7

    .line 555
    .line 556
    .line 557
    invoke-interface {v0, v7}, Landroidx/compose/runtime/i;->x(I)V

    .line 558
    .line 559
    .line 560
    const/4 v7, 0x0

    .line 561
    invoke-static {v5, v7, v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->j(Landroidx/compose/ui/b;ZLandroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    const v8, -0x4ee9b9da

    .line 566
    .line 567
    .line 568
    invoke-interface {v0, v8}, Landroidx/compose/runtime/i;->x(I)V

    .line 569
    .line 570
    .line 571
    invoke-static {v0, v7}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    invoke-interface {v0}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->a(Landroidx/compose/ui/f;)Lkotlin/jvm/functions/Function3;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-interface {v0}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 588
    .line 589
    .line 590
    move-result-object v10

    .line 591
    instance-of v10, v10, Landroidx/compose/runtime/f;

    .line 592
    .line 593
    if-nez v10, :cond_c

    .line 594
    .line 595
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 596
    .line 597
    .line 598
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/i;->C()V

    .line 599
    .line 600
    .line 601
    invoke-interface {v0}, Landroidx/compose/runtime/i;->e()Z

    .line 602
    .line 603
    .line 604
    move-result v10

    .line 605
    if-eqz v10, :cond_d

    .line 606
    .line 607
    invoke-interface {v0, v9}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 608
    .line 609
    .line 610
    goto :goto_5

    .line 611
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/i;->o()V

    .line 612
    .line 613
    .line 614
    :goto_5
    invoke-static {v0}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 619
    .line 620
    .line 621
    move-result-object v10

    .line 622
    invoke-static {v9, v5, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    invoke-static {v9, v7, v5}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    invoke-interface {v9}, Landroidx/compose/runtime/i;->e()Z

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    if-nez v7, :cond_e

    .line 641
    .line 642
    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v10

    .line 650
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    if-nez v7, :cond_f

    .line 655
    .line 656
    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    invoke-interface {v9, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    invoke-interface {v9, v7, v5}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 668
    .line 669
    .line 670
    :cond_f
    invoke-static {v0}, Landroidx/compose/runtime/h2;->b(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-static {v5}, Landroidx/compose/runtime/h2;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/h2;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    const/4 v7, 0x0

    .line 679
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    invoke-interface {v6, v5, v0, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    const v5, 0x7ab4aae9

    .line 687
    .line 688
    .line 689
    invoke-interface {v0, v5}, Landroidx/compose/runtime/i;->x(I)V

    .line 690
    .line 691
    .line 692
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 693
    .line 694
    sget v5, Lcom/transsion/member/R$string;->member_claim:I

    .line 695
    .line 696
    invoke-static {v5, v0, v7}, Li0/h;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v6

    .line 700
    sget v5, Lcom/tn/lib/widget/R$color;->gray_dark_00:I

    .line 701
    .line 702
    invoke-static {v5, v0, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 703
    .line 704
    .line 705
    move-result-wide v8

    .line 706
    invoke-static/range {v34 .. v34}, Lo0/x;->c(I)J

    .line 707
    .line 708
    .line 709
    move-result-wide v10

    .line 710
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 711
    .line 712
    .line 713
    move-result-object v14

    .line 714
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/text/font/p$a;->d()Landroidx/compose/ui/text/font/p;

    .line 715
    .line 716
    .line 717
    move-result-object v13

    .line 718
    const/16 v29, 0x0

    .line 719
    .line 720
    const v30, 0x1ff92

    .line 721
    .line 722
    .line 723
    const/4 v7, 0x0

    .line 724
    const/4 v12, 0x0

    .line 725
    const-wide/16 v15, 0x0

    .line 726
    .line 727
    const/16 v17, 0x0

    .line 728
    .line 729
    const/16 v18, 0x0

    .line 730
    .line 731
    const-wide/16 v19, 0x0

    .line 732
    .line 733
    const/16 v21, 0x0

    .line 734
    .line 735
    const/16 v22, 0x0

    .line 736
    .line 737
    const/16 v23, 0x0

    .line 738
    .line 739
    const/16 v24, 0x0

    .line 740
    .line 741
    const/16 v25, 0x0

    .line 742
    .line 743
    const/16 v26, 0x0

    .line 744
    .line 745
    const v28, 0x30c00

    .line 746
    .line 747
    .line 748
    move-object/from16 v27, v0

    .line 749
    .line 750
    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 751
    .line 752
    .line 753
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 754
    .line 755
    .line 756
    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    .line 757
    .line 758
    .line 759
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 760
    .line 761
    .line 762
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 763
    .line 764
    .line 765
    invoke-static/range {v33 .. v33}, Lo0/i;->g(F)F

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    invoke-static {v4, v0, v3}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 774
    .line 775
    .line 776
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 777
    .line 778
    .line 779
    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    .line 780
    .line 781
    .line 782
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 783
    .line 784
    .line 785
    invoke-interface {v0}, Landroidx/compose/runtime/i;->N()V

    .line 786
    .line 787
    .line 788
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    if-eqz v3, :cond_10

    .line 793
    .line 794
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 795
    .line 796
    .line 797
    :cond_10
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    if-eqz v0, :cond_11

    .line 802
    .line 803
    new-instance v3, Lhm/b;

    .line 804
    .line 805
    move-object/from16 v4, p0

    .line 806
    .line 807
    move/from16 v5, p1

    .line 808
    .line 809
    invoke-direct {v3, v4, v5, v1, v2}, Lhm/b;-><init>(Lhm/c;III)V

    .line 810
    .line 811
    .line 812
    invoke-interface {v0, v3}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 813
    .line 814
    .line 815
    goto :goto_7

    .line 816
    :cond_11
    move-object/from16 v4, p0

    .line 817
    .line 818
    :goto_7
    return-void
.end method

.method public final g(I)V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x18

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Lle/h;->a(Landroid/app/Activity;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v2, v4, :cond_0

    .line 21
    .line 22
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v2, v4

    .line 29
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/report/k;->p(I)Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    instance-of v0, v1, Landroidx/lifecycle/u;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, v1}, Lhm/c;->f(Landroid/app/Activity;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    const/16 v2, 0x190

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 81
    .line 82
    add-int/lit8 v2, v2, -0x20

    .line 83
    .line 84
    :goto_1
    new-instance v3, Landroidx/compose/ui/platform/ComposeView;

    .line 85
    .line 86
    const/4 v9, 0x6

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    move-object v5, v3

    .line 91
    move-object v6, v1

    .line 92
    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    move-object v0, v1

    .line 99
    check-cast v0, Landroidx/lifecycle/u;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-object v0, v5

    .line 103
    :goto_2
    invoke-static {v3, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    .line 104
    .line 105
    .line 106
    instance-of v0, v1, Landroidx/lifecycle/y0;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    move-object v0, v1

    .line 111
    check-cast v0, Landroidx/lifecycle/y0;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move-object v0, v5

    .line 115
    :goto_3
    invoke-static {v3, v0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    .line 116
    .line 117
    .line 118
    instance-of v0, v1, Landroidx/savedstate/e;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    move-object v5, v1

    .line 123
    check-cast v5, Landroidx/savedstate/e;

    .line 124
    .line 125
    :cond_5
    invoke-static {v3, v5}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lhm/c$a;

    .line 129
    .line 130
    invoke-direct {v0, p0, v2, p1}, Lhm/c$a;-><init>(Lhm/c;II)V

    .line 131
    .line 132
    .line 133
    const p1, 0x6fcd65af

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v4, v0}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x2

    .line 151
    new-array p1, p1, [F

    .line 152
    .line 153
    fill-array-data p1, :array_0

    .line 154
    .line 155
    .line 156
    const-string v0, "translationY"

    .line 157
    .line 158
    invoke-static {v3, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-wide/16 v5, 0x1f4

    .line 163
    .line 164
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/tn/lib/widget/toast/core/b;

    .line 168
    .line 169
    invoke-direct {v0, v1}, Lcom/tn/lib/widget/toast/core/b;-><init>(Landroid/app/Activity;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lcom/tn/lib/widget/toast/core/b;->e(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Lcom/tn/lib/widget/toast/core/b;->setDuration(I)V

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    const/16 v2, 0x3e

    .line 180
    .line 181
    const/16 v3, 0x30

    .line 182
    .line 183
    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/lib/widget/toast/core/b;->setGravity(III)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/b;->show()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_4
    return-void

    .line 193
    :array_0
    .array-data 4
        -0x3d480000    # -92.0f
        0x0
    .end array-data
.end method
