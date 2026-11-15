.class public abstract Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/runtime/s1;

.field private static final c:Landroidx/compose/runtime/s1;

.field private static final d:Landroidx/compose/runtime/s1;

.field private static final e:Landroidx/compose/runtime/s1;

.field private static final f:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalResourceIdCache$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalResourceIdCache$1;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    .line 34
    .line 35
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/s1;

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    .line 50
    .line 51
    return-void
.end method

.method public static final a(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const v6, 0x5342453c

    .line 9
    .line 10
    .line 11
    move-object/from16 v7, p2

    .line 12
    .line 13
    invoke-interface {v7, v6}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v8, 0x6

    .line 18
    and-int/lit8 v9, v2, 0x6

    .line 19
    .line 20
    const/4 v10, 0x2

    .line 21
    if-nez v9, :cond_1

    .line 22
    .line 23
    invoke-interface {v7, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v9, v10

    .line 32
    :goto_0
    or-int/2addr v9, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v9, v2

    .line 35
    :goto_1
    and-int/lit8 v11, v2, 0x30

    .line 36
    .line 37
    if-nez v11, :cond_3

    .line 38
    .line 39
    invoke-interface {v7, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-eqz v11, :cond_2

    .line 44
    .line 45
    const/16 v11, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v11, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v9, v11

    .line 51
    :cond_3
    and-int/lit8 v11, v9, 0x13

    .line 52
    .line 53
    const/16 v12, 0x12

    .line 54
    .line 55
    if-ne v11, v12, :cond_5

    .line 56
    .line 57
    invoke-interface {v7}, Landroidx/compose/runtime/i;->h()Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-nez v11, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-interface {v7}, Landroidx/compose/runtime/i;->G()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_6

    .line 74
    .line 75
    const/4 v11, -0x1

    .line 76
    const-string v12, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals (AndroidCompositionLocals.android.kt:91)"

    .line 77
    .line 78
    invoke-static {v6, v9, v11, v12}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    sget-object v11, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 90
    .line 91
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    if-ne v9, v12, :cond_7

    .line 96
    .line 97
    new-instance v9, Landroid/content/res/Configuration;

    .line 98
    .line 99
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-direct {v9, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 108
    .line 109
    .line 110
    const/4 v12, 0x0

    .line 111
    invoke-static {v9, v12, v10, v12}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-interface {v7, v9}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    check-cast v9, Landroidx/compose/runtime/i1;

    .line 119
    .line 120
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    if-ne v12, v13, :cond_8

    .line 129
    .line 130
    new-instance v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;

    .line 131
    .line 132
    invoke-direct {v12, v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;-><init>(Landroidx/compose/runtime/i1;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v7, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 139
    .line 140
    invoke-virtual {v0, v12}, Landroidx/compose/ui/platform/AndroidComposeView;->setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    if-ne v12, v13, :cond_9

    .line 152
    .line 153
    new-instance v12, Landroidx/compose/ui/platform/k0;

    .line 154
    .line 155
    invoke-direct {v12, v6}, Landroidx/compose/ui/platform/k0;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v7, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    check-cast v12, Landroidx/compose/ui/platform/k0;

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$b;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    if-eqz v13, :cond_f

    .line 168
    .line 169
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    if-ne v14, v15, :cond_a

    .line 178
    .line 179
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->b()Landroidx/savedstate/e;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    invoke-static {v0, v14}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->b(Landroid/view/View;Landroidx/savedstate/e;)Landroidx/compose/ui/platform/u0;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    invoke-interface {v7, v14}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    check-cast v14, Landroidx/compose/ui/platform/u0;

    .line 191
    .line 192
    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    invoke-interface {v7, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    if-nez v16, :cond_b

    .line 203
    .line 204
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    if-ne v5, v11, :cond_c

    .line 209
    .line 210
    :cond_b
    new-instance v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1;

    .line 211
    .line 212
    invoke-direct {v5, v14}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1;-><init>(Landroidx/compose/ui/platform/u0;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v7, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 219
    .line 220
    invoke-static {v15, v5, v7, v8}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 221
    .line 222
    .line 223
    invoke-static {v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v6, v5, v7, v4}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->l(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/i;I)Li0/d;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {v6, v7, v4}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->m(Landroid/content/Context;Landroidx/compose/runtime/i;I)Li0/f;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->i()Landroidx/compose/runtime/q;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    invoke-interface {v7, v15}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    check-cast v15, Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getScrollCaptureInProgress$ui_release()Z

    .line 250
    .line 251
    .line 252
    move-result v16

    .line 253
    or-int v15, v15, v16

    .line 254
    .line 255
    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    .line 256
    .line 257
    invoke-static {v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    .line 266
    .line 267
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-static {}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a()Landroidx/compose/runtime/s1;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->a()Landroidx/lifecycle/u;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/s1;

    .line 284
    .line 285
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->b()Landroidx/savedstate/e;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->d()Landroidx/compose/runtime/s1;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    .line 302
    .line 303
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    .line 312
    .line 313
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    .line 318
    .line 319
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->h()Landroidx/compose/runtime/s1;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v15

    .line 331
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 332
    .line 333
    .line 334
    move-result-object v14

    .line 335
    const/16 v15, 0x9

    .line 336
    .line 337
    new-array v15, v15, [Landroidx/compose/runtime/t1;

    .line 338
    .line 339
    aput-object v8, v15, v4

    .line 340
    .line 341
    const/4 v4, 0x1

    .line 342
    aput-object v6, v15, v4

    .line 343
    .line 344
    const/4 v4, 0x2

    .line 345
    aput-object v9, v15, v4

    .line 346
    .line 347
    const/4 v4, 0x3

    .line 348
    aput-object v10, v15, v4

    .line 349
    .line 350
    const/4 v4, 0x4

    .line 351
    aput-object v13, v15, v4

    .line 352
    .line 353
    const/4 v4, 0x5

    .line 354
    aput-object v3, v15, v4

    .line 355
    .line 356
    const/4 v3, 0x6

    .line 357
    aput-object v5, v15, v3

    .line 358
    .line 359
    const/4 v3, 0x7

    .line 360
    aput-object v11, v15, v3

    .line 361
    .line 362
    const/16 v3, 0x8

    .line 363
    .line 364
    aput-object v14, v15, v3

    .line 365
    .line 366
    new-instance v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;

    .line 367
    .line 368
    invoke-direct {v3, v0, v12, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/k0;Lkotlin/jvm/functions/Function2;)V

    .line 369
    .line 370
    .line 371
    const/16 v4, 0x36

    .line 372
    .line 373
    const v5, 0x57b729fc

    .line 374
    .line 375
    .line 376
    const/4 v6, 0x1

    .line 377
    invoke-static {v5, v6, v3, v7, v4}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    sget v4, Landroidx/compose/runtime/t1;->i:I

    .line 382
    .line 383
    or-int/lit8 v4, v4, 0x30

    .line 384
    .line 385
    invoke-static {v15, v3, v7, v4}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_d

    .line 393
    .line 394
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 395
    .line 396
    .line 397
    :cond_d
    :goto_4
    invoke-interface {v7}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    if-eqz v3, :cond_e

    .line 402
    .line 403
    new-instance v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;

    .line 404
    .line 405
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;I)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v3, v4}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 409
    .line 410
    .line 411
    :cond_e
    return-void

    .line 412
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 413
    .line 414
    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    .line 415
    .line 416
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0
.end method

.method private static final b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/res/Configuration;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final c(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k(Ljava/lang/String;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final i()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final j()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final k(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "CompositionLocal "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " not present"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private static final l(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/i;I)Li0/d;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "androidx.compose.ui.platform.obtainImageVectorCache (AndroidCompositionLocals.android.kt:172)"

    .line 9
    .line 10
    const v2, -0x1cf65f46

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne p3, v1, :cond_1

    .line 27
    .line 28
    new-instance p3, Li0/d;

    .line 29
    .line 30
    invoke-direct {p3}, Li0/d;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    check-cast p3, Li0/d;

    .line 37
    .line 38
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    new-instance v1, Landroid/content/res/Configuration;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    check-cast v1, Landroid/content/res/Configuration;

    .line 62
    .line 63
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-ne p1, v2, :cond_4

    .line 72
    .line 73
    new-instance p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;

    .line 74
    .line 75
    invoke-direct {p1, v1, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;-><init>(Landroid/content/res/Configuration;Li0/d;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    check-cast p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;

    .line 82
    .line 83
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-ne v2, v0, :cond_6

    .line 98
    .line 99
    :cond_5
    new-instance v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1$1;

    .line 100
    .line 101
    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    invoke-static {p3, v2, p2, p0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_7

    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-object p3
.end method

.method private static final m(Landroid/content/Context;Landroidx/compose/runtime/i;I)Li0/f;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "androidx.compose.ui.platform.obtainResourceIdCache (AndroidCompositionLocals.android.kt:141)"

    .line 9
    .line 10
    const v2, -0x5060966e

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    new-instance p2, Li0/f;

    .line 29
    .line 30
    invoke-direct {p2}, Li0/f;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    check-cast p2, Li0/f;

    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    .line 48
    new-instance v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;

    .line 49
    .line 50
    invoke-direct {v1, p2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;-><init>(Li0/f;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    check-cast v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;

    .line 57
    .line 58
    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne v3, v0, :cond_4

    .line 73
    .line 74
    :cond_3
    new-instance v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$1$1;

    .line 75
    .line 76
    invoke-direct {v3, p0, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$1$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    invoke-static {p2, v3, p1, p0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_5

    .line 93
    .line 94
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 95
    .line 96
    .line 97
    :cond_5
    return-object p2
.end method
