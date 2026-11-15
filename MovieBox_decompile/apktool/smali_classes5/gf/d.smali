.class public abstract Lgf/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lgf/e;


# instance fields
.field public a:Lgf/o0;

.field private final b:Lkotlin/Lazy;

.field public c:Lgf/e;

.field private d:Lgf/f;

.field private e:Lgf/g;


# direct methods
.method public constructor <init>(Lgf/o0;)V
    .locals 1

    .line 1
    const-string v0, "pb"

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
    iput-object p1, p0, Lgf/d;->a:Lgf/o0;

    .line 10
    .line 11
    new-instance p1, Lgf/c;

    .line 12
    .line 13
    invoke-direct {p1}, Lgf/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lgf/d;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p1, Lgf/f;

    .line 23
    .line 24
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 25
    .line 26
    invoke-direct {p1, v0, p0}, Lgf/f;-><init>(Lgf/o0;Lgf/e;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lgf/d;->d:Lgf/f;

    .line 30
    .line 31
    new-instance p1, Lgf/g;

    .line 32
    .line 33
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Lgf/g;-><init>(Lgf/o0;Lgf/e;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lgf/d;->e:Lgf/g;

    .line 39
    .line 40
    new-instance p1, Lgf/f;

    .line 41
    .line 42
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 43
    .line 44
    invoke-direct {p1, v0, p0}, Lgf/f;-><init>(Lgf/o0;Lgf/e;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lgf/d;->d:Lgf/f;

    .line 48
    .line 49
    new-instance p1, Lgf/g;

    .line 50
    .line 51
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 52
    .line 53
    invoke-direct {p1, v0, p0}, Lgf/g;-><init>(Lgf/o0;Lgf/e;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lgf/d;->e:Lgf/g;

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic c()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lgf/d;->e()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final e()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "kv_permission_x"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mmkvWithID(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public b()Lgf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/d;->d:Lgf/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/d;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method public finish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgf/d;->c:Lgf/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lgf/e;->request()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_8

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 16
    .line 17
    iget-object v1, v1, Lgf/o0;->k:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 25
    .line 26
    iget-object v1, v1, Lgf/o0;->l:Ljava/util/Set;

    .line 27
    .line 28
    check-cast v1, Ljava/util/Collection;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 34
    .line 35
    iget-object v1, v1, Lgf/o0;->i:Ljava/util/Set;

    .line 36
    .line 37
    check-cast v1, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 43
    .line 44
    invoke-virtual {v1}, Lgf/o0;->F()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 51
    .line 52
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 53
    .line 54
    invoke-virtual {v2}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 67
    .line 68
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 69
    .line 70
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 78
    .line 79
    invoke-virtual {v1}, Lgf/o0;->L()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v2, 0x17

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 88
    .line 89
    invoke-virtual {v1}, Lgf/o0;->p()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lt v1, v2, :cond_4

    .line 94
    .line 95
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 96
    .line 97
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 110
    .line 111
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 112
    .line 113
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 121
    .line 122
    invoke-virtual {v1}, Lgf/o0;->M()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 129
    .line 130
    invoke-virtual {v1}, Lgf/o0;->p()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-lt v1, v2, :cond_6

    .line 135
    .line 136
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 137
    .line 138
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 147
    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 151
    .line 152
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 153
    .line 154
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_2
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 162
    .line 163
    invoke-virtual {v1}, Lgf/o0;->I()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    .line 171
    const/16 v2, 0x1e

    .line 172
    .line 173
    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 174
    .line 175
    if-lt v1, v2, :cond_7

    .line 176
    .line 177
    invoke-static {}, Lgf/a;->a()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 184
    .line 185
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 186
    .line 187
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_3
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 195
    .line 196
    invoke-virtual {v1}, Lgf/o0;->H()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    const/16 v2, 0x1a

    .line 205
    .line 206
    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 207
    .line 208
    if-lt v1, v2, :cond_a

    .line 209
    .line 210
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 211
    .line 212
    invoke-virtual {v1}, Lgf/o0;->p()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-lt v1, v2, :cond_a

    .line 217
    .line 218
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 219
    .line 220
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v1}, Lgf/b;->a(Landroid/content/pm/PackageManager;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_9

    .line 233
    .line 234
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 235
    .line 236
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 237
    .line 238
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_b
    :goto_4
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 250
    .line 251
    invoke-virtual {v1}, Lgf/o0;->J()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_d

    .line 256
    .line 257
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 258
    .line 259
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 260
    .line 261
    invoke-virtual {v2}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lcf/c;->b(Landroid/content/Context;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 270
    .line 271
    if-eqz v1, :cond_c

    .line 272
    .line 273
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 274
    .line 275
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 276
    .line 277
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :cond_d
    :goto_5
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 285
    .line 286
    invoke-virtual {v1}, Lgf/o0;->K()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_f

    .line 291
    .line 292
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 293
    .line 294
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 295
    .line 296
    invoke-virtual {v2}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lcf/c;->c(Landroid/content/Context;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    const-string v2, "android.permission.PICTURE_IN_PICTURE"

    .line 305
    .line 306
    if-eqz v1, :cond_e

    .line 307
    .line 308
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 309
    .line 310
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 311
    .line 312
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_6
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 320
    .line 321
    invoke-virtual {v1}, Lgf/o0;->G()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_11

    .line 326
    .line 327
    sget-object v1, Lcf/c;->a:Lcf/c;

    .line 328
    .line 329
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 330
    .line 331
    invoke-virtual {v2}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v3, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 336
    .line 337
    invoke-virtual {v1, v2, v3}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_10

    .line 342
    .line 343
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 344
    .line 345
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 346
    .line 347
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :cond_11
    :goto_7
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 355
    .line 356
    iget-object v1, v1, Lgf/o0;->p:Ldf/c;

    .line 357
    .line 358
    if-eqz v1, :cond_12

    .line 359
    .line 360
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    new-instance v3, Ljava/util/ArrayList;

    .line 368
    .line 369
    iget-object v4, p0, Lgf/d;->a:Lgf/o0;

    .line 370
    .line 371
    iget-object v4, v4, Lgf/o0;->j:Ljava/util/Set;

    .line 372
    .line 373
    check-cast v4, Ljava/util/Collection;

    .line 374
    .line 375
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v1, v2, v3, v0}, Ldf/c;->a(ZLjava/util/List;Ljava/util/List;)V

    .line 379
    .line 380
    .line 381
    :cond_12
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 382
    .line 383
    invoke-virtual {v0}, Lgf/o0;->j()V

    .line 384
    .line 385
    .line 386
    :goto_8
    return-void
.end method
