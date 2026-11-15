.class public abstract Lcl/w;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcl/w;->f(Lcom/google/accompanist/systemuicontroller/c;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcl/w;->h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcl/w;->i(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcl/w;->g(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    const-string v0, "filterItem"

    .line 10
    .line 11
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "title"

    .line 15
    .line 16
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "dismiss"

    .line 20
    .line 21
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x27b465e7

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p3

    .line 28
    .line 29
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 30
    .line 31
    .line 32
    move-result-object v15

    .line 33
    and-int/lit8 v1, v9, 0x6

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v15, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x2

    .line 46
    :goto_0
    or-int/2addr v1, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v9

    .line 49
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const/16 v2, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v2, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v1, v2

    .line 65
    :cond_3
    and-int/lit16 v2, v9, 0x180

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const/16 v2, 0x100

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v2, 0x80

    .line 79
    .line 80
    :goto_3
    or-int/2addr v1, v2

    .line 81
    :cond_5
    and-int/lit16 v2, v1, 0x93

    .line 82
    .line 83
    const/16 v4, 0x92

    .line 84
    .line 85
    if-ne v2, v4, :cond_7

    .line 86
    .line 87
    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    .line 95
    .line 96
    .line 97
    move-object v0, v15

    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_8

    .line 105
    .line 106
    const/4 v2, -0x1

    .line 107
    const-string v4, "com.transsion.home.view.filter.popup.SingleSelectFilter (SingleFilterPopupWindow.kt:44)"

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_8
    const/4 v0, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v10, 0x1

    .line 115
    invoke-static {v0, v15, v2, v10}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->e(Landroid/view/Window;Landroidx/compose/runtime/i;II)Lcom/google/accompanist/systemuicontroller/c;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget v4, Lcom/tn/lib/widget/R$color;->black_80:I

    .line 120
    .line 121
    invoke-static {v4, v15, v2}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    new-instance v11, Landroid/os/Handler;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    .line 133
    .line 134
    const v12, -0x615d173a

    .line 135
    .line 136
    .line 137
    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->P(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-interface {v15, v4, v5}, Landroidx/compose/runtime/i;->d(J)Z

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    or-int/2addr v13, v14

    .line 149
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    if-nez v13, :cond_9

    .line 154
    .line 155
    sget-object v13, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 156
    .line 157
    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    if-ne v14, v13, :cond_a

    .line 162
    .line 163
    :cond_9
    new-instance v14, Lcl/p;

    .line 164
    .line 165
    invoke-direct {v14, v0, v4, v5}, Lcl/p;-><init>(Lcom/google/accompanist/systemuicontroller/c;J)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v15, v14}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    check-cast v14, Ljava/lang/Runnable;

    .line 172
    .line 173
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 174
    .line 175
    .line 176
    const-wide/16 v2, 0x64

    .line 177
    .line 178
    invoke-virtual {v11, v14, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    .line 180
    .line 181
    invoke-interface {v15, v12}, Landroidx/compose/runtime/i;->P(I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    and-int/lit16 v1, v1, 0x380

    .line 189
    .line 190
    const/16 v3, 0x100

    .line 191
    .line 192
    if-ne v1, v3, :cond_b

    .line 193
    .line 194
    move v13, v10

    .line 195
    goto :goto_5

    .line 196
    :cond_b
    const/4 v13, 0x0

    .line 197
    :goto_5
    or-int v1, v2, v13

    .line 198
    .line 199
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-nez v1, :cond_c

    .line 204
    .line 205
    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-ne v2, v1, :cond_d

    .line 212
    .line 213
    :cond_c
    new-instance v2, Lcl/q;

    .line 214
    .line 215
    invoke-direct {v2, v0, v8}, Lcl/q;-><init>(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_d
    move-object v11, v2

    .line 222
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 225
    .line 226
    .line 227
    const v0, 0x4c5de2

    .line 228
    .line 229
    .line 230
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v15, v11}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-nez v0, :cond_e

    .line 242
    .line 243
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-ne v1, v0, :cond_f

    .line 250
    .line 251
    :cond_e
    new-instance v1, Lcl/r;

    .line 252
    .line 253
    invoke-direct {v1, v11}, Lcl/r;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_f
    move-object v12, v1

    .line 260
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 261
    .line 262
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 263
    .line 264
    .line 265
    new-instance v13, Landroidx/compose/ui/window/c;

    .line 266
    .line 267
    const/16 v20, 0x3

    .line 268
    .line 269
    const/16 v21, 0x0

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const/16 v18, 0x0

    .line 274
    .line 275
    const/16 v19, 0x0

    .line 276
    .line 277
    move-object/from16 v16, v13

    .line 278
    .line 279
    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/c;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 280
    .line 281
    .line 282
    new-instance v14, Lcl/w$a;

    .line 283
    .line 284
    move-object v0, v14

    .line 285
    move-wide v1, v4

    .line 286
    move-object/from16 v3, p0

    .line 287
    .line 288
    move-object v4, v11

    .line 289
    move-object/from16 v5, p1

    .line 290
    .line 291
    invoke-direct/range {v0 .. v5}, Lcl/w$a;-><init>(JLcom/transsion/home/bean/Item;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const/16 v0, 0x36

    .line 295
    .line 296
    const v1, -0x2fb8d150

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v10, v14, v15, v0}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const/16 v14, 0x1b0

    .line 304
    .line 305
    const/4 v1, 0x0

    .line 306
    move-object v10, v12

    .line 307
    move-object v11, v13

    .line 308
    move-object v12, v0

    .line 309
    move-object v13, v15

    .line 310
    move-object v0, v15

    .line 311
    move v15, v1

    .line 312
    invoke-static/range {v10 .. v15}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    .line 313
    .line 314
    .line 315
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_10

    .line 320
    .line 321
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 322
    .line 323
    .line 324
    :cond_10
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_11

    .line 329
    .line 330
    new-instance v1, Lcl/s;

    .line 331
    .line 332
    invoke-direct {v1, v6, v7, v8, v9}, Lcl/s;-><init>(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 336
    .line 337
    .line 338
    :cond_11
    return-void
.end method

.method private static final f(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 8

    .line 1
    const/16 v6, 0xe

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final g(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const/16 v7, 0xe

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v1 .. v8}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final h(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final i(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
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
    invoke-static {p0, p1, p2, p4, p3}, Lcl/w;->e(Lcom/transsion/home/bean/Item;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method
