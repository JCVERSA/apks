.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Landroidx/work/impl/o;

.field private final mWorkContinuation:Landroidx/work/impl/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/w;)V
    .locals 1
    .param p1    # Landroidx/work/impl/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/work/impl/o;

    invoke-direct {v0}, Landroidx/work/impl/o;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/work/impl/utils/EnqueueRunnable;-><init>(Landroidx/work/impl/w;Landroidx/work/impl/o;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/w;Landroidx/work/impl/o;)V
    .locals 0
    .param p1    # Landroidx/work/impl/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 4
    iput-object p2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/o;

    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/w;)Z
    .locals 5
    .param p0    # Landroidx/work/impl/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroidx/work/impl/w;->l(Landroidx/work/impl/w;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/work/impl/w;->g()Landroidx/work/impl/d0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/work/impl/w;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v3, v3, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/work/impl/w;->d()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0}, Landroidx/work/impl/w;->b()Landroidx/work/ExistingWorkPolicy;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/d0;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Landroidx/work/impl/w;->k()V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/d0;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/r;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    array-length v8, v0

    .line 19
    if-lez v8, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v8, v7

    .line 24
    :goto_0
    if-eqz v8, :cond_5

    .line 25
    .line 26
    array-length v9, v0

    .line 27
    move v10, v7

    .line 28
    move v12, v10

    .line 29
    move v13, v12

    .line 30
    const/4 v11, 0x1

    .line 31
    :goto_1
    if-ge v10, v9, :cond_6

    .line 32
    .line 33
    aget-object v14, v0, v10

    .line 34
    .line 35
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 36
    .line 37
    .line 38
    move-result-object v15

    .line 39
    invoke-interface {v15, v14}, Lj4/v;->j(Ljava/lang/String;)Lj4/u;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    if-nez v15, :cond_1

    .line 44
    .line 45
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "Prerequisite "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v7

    .line 77
    :cond_1
    iget-object v14, v15, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 78
    .line 79
    sget-object v15, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 80
    .line 81
    if-ne v14, v15, :cond_2

    .line 82
    .line 83
    const/4 v15, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move v15, v7

    .line 86
    :goto_2
    and-int/2addr v11, v15

    .line 87
    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 88
    .line 89
    if-ne v14, v15, :cond_3

    .line 90
    .line 91
    const/4 v13, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 94
    .line 95
    if-ne v14, v15, :cond_4

    .line 96
    .line 97
    const/4 v12, 0x1

    .line 98
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    move v12, v7

    .line 102
    move v13, v12

    .line 103
    const/4 v11, 0x1

    .line 104
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_16

    .line 109
    .line 110
    if-nez v8, :cond_16

    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-interface {v10, v1}, Lj4/v;->s(Ljava/lang/String;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-nez v14, :cond_16

    .line 125
    .line 126
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    .line 127
    .line 128
    if-eq v2, v14, :cond_7

    .line 129
    .line 130
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 131
    .line 132
    if-ne v2, v14, :cond_8

    .line 133
    .line 134
    :cond_7
    move-object/from16 v14, p0

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 138
    .line 139
    if-ne v2, v14, :cond_b

    .line 140
    .line 141
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-eqz v14, :cond_b

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    check-cast v14, Lj4/u$b;

    .line 156
    .line 157
    iget-object v14, v14, Lj4/u$b;->b:Landroidx/work/WorkInfo$State;

    .line 158
    .line 159
    sget-object v15, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 160
    .line 161
    if-eq v14, v15, :cond_a

    .line 162
    .line 163
    sget-object v15, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 164
    .line 165
    if-ne v14, v15, :cond_9

    .line 166
    .line 167
    :cond_a
    return v7

    .line 168
    :cond_b
    move-object/from16 v14, p0

    .line 169
    .line 170
    invoke-static {v1, v14, v7}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/d0;Z)Landroidx/work/impl/utils/CancelWorkRunnable;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_c

    .line 190
    .line 191
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    check-cast v15, Lj4/u$b;

    .line 196
    .line 197
    iget-object v15, v15, Lj4/u$b;->a:Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {v2, v15}, Lj4/v;->a(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    const/4 v6, 0x1

    .line 204
    goto/16 :goto_c

    .line 205
    .line 206
    :goto_5
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->h0()Lj4/b;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    new-instance v15, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v16

    .line 223
    if-eqz v16, :cond_11

    .line 224
    .line 225
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    move-object/from16 v6, v16

    .line 230
    .line 231
    check-cast v6, Lj4/u$b;

    .line 232
    .line 233
    iget-object v7, v6, Lj4/u$b;->a:Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface {v8, v7}, Lj4/b;->d(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-nez v7, :cond_10

    .line 240
    .line 241
    iget-object v7, v6, Lj4/u$b;->b:Landroidx/work/WorkInfo$State;

    .line 242
    .line 243
    move-object/from16 v17, v8

    .line 244
    .line 245
    sget-object v8, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 246
    .line 247
    if-ne v7, v8, :cond_d

    .line 248
    .line 249
    const/4 v8, 0x1

    .line 250
    goto :goto_7

    .line 251
    :cond_d
    const/4 v8, 0x0

    .line 252
    :goto_7
    and-int/2addr v8, v11

    .line 253
    sget-object v11, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 254
    .line 255
    if-ne v7, v11, :cond_e

    .line 256
    .line 257
    const/4 v13, 0x1

    .line 258
    goto :goto_8

    .line 259
    :cond_e
    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 260
    .line 261
    if-ne v7, v11, :cond_f

    .line 262
    .line 263
    const/4 v12, 0x1

    .line 264
    :cond_f
    :goto_8
    iget-object v6, v6, Lj4/u$b;->a:Ljava/lang/String;

    .line 265
    .line 266
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move v11, v8

    .line 270
    goto :goto_9

    .line 271
    :cond_10
    move-object/from16 v17, v8

    .line 272
    .line 273
    :goto_9
    move-object/from16 v8, v17

    .line 274
    .line 275
    const/4 v7, 0x0

    .line 276
    goto :goto_6

    .line 277
    :cond_11
    sget-object v6, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 278
    .line 279
    if-ne v2, v6, :cond_14

    .line 280
    .line 281
    if-nez v12, :cond_12

    .line 282
    .line 283
    if-eqz v13, :cond_14

    .line 284
    .line 285
    :cond_12
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v2, v1}, Lj4/v;->s(Ljava/lang/String;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_13

    .line 302
    .line 303
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, Lj4/u$b;

    .line 308
    .line 309
    iget-object v7, v7, Lj4/u$b;->a:Ljava/lang/String;

    .line 310
    .line 311
    invoke-interface {v2, v7}, Lj4/v;->a(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    const/4 v12, 0x0

    .line 320
    const/4 v13, 0x0

    .line 321
    :cond_14
    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, [Ljava/lang/String;

    .line 326
    .line 327
    array-length v2, v0

    .line 328
    if-lez v2, :cond_15

    .line 329
    .line 330
    const/4 v8, 0x1

    .line 331
    goto :goto_b

    .line 332
    :cond_15
    const/4 v8, 0x0

    .line 333
    :goto_b
    const/4 v6, 0x0

    .line 334
    goto :goto_c

    .line 335
    :cond_16
    move-object/from16 v14, p0

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_1d

    .line 347
    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    check-cast v7, Landroidx/work/r;

    .line 353
    .line 354
    invoke-virtual {v7}, Landroidx/work/r;->d()Lj4/u;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    if-eqz v8, :cond_19

    .line 359
    .line 360
    if-nez v11, :cond_19

    .line 361
    .line 362
    if-eqz v13, :cond_17

    .line 363
    .line 364
    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 365
    .line 366
    iput-object v15, v10, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_17
    if-eqz v12, :cond_18

    .line 370
    .line 371
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 372
    .line 373
    iput-object v15, v10, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_18
    sget-object v15, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 377
    .line 378
    iput-object v15, v10, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 379
    .line 380
    goto :goto_e

    .line 381
    :cond_19
    iput-wide v3, v10, Lj4/u;->n:J

    .line 382
    .line 383
    :goto_e
    iget-object v15, v10, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 384
    .line 385
    move-object/from16 p1, v2

    .line 386
    .line 387
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 388
    .line 389
    if-ne v15, v2, :cond_1a

    .line 390
    .line 391
    const/4 v6, 0x1

    .line 392
    :cond_1a
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/d0;->r()Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    invoke-static {v15, v10}, Landroidx/work/impl/utils/b;->b(Ljava/util/List;Lj4/u;)Lj4/u;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    invoke-interface {v2, v10}, Lj4/v;->q(Lj4/u;)V

    .line 405
    .line 406
    .line 407
    if-eqz v8, :cond_1b

    .line 408
    .line 409
    array-length v2, v0

    .line 410
    const/4 v10, 0x0

    .line 411
    :goto_f
    if-ge v10, v2, :cond_1b

    .line 412
    .line 413
    aget-object v15, v0, v10

    .line 414
    .line 415
    move-object/from16 v17, v0

    .line 416
    .line 417
    new-instance v0, Lj4/a;

    .line 418
    .line 419
    move/from16 p2, v2

    .line 420
    .line 421
    invoke-virtual {v7}, Landroidx/work/r;->b()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-direct {v0, v2, v15}, Lj4/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->h0()Lj4/b;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-interface {v2, v0}, Lj4/b;->c(Lj4/a;)V

    .line 433
    .line 434
    .line 435
    add-int/lit8 v10, v10, 0x1

    .line 436
    .line 437
    move/from16 v2, p2

    .line 438
    .line 439
    move-object/from16 v0, v17

    .line 440
    .line 441
    goto :goto_f

    .line 442
    :cond_1b
    move-object/from16 v17, v0

    .line 443
    .line 444
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->o0()Lj4/z;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v7}, Landroidx/work/r;->b()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v7}, Landroidx/work/r;->c()Ljava/util/Set;

    .line 453
    .line 454
    .line 455
    move-result-object v10

    .line 456
    invoke-interface {v0, v2, v10}, Lj4/z;->d(Ljava/lang/String;Ljava/util/Set;)V

    .line 457
    .line 458
    .line 459
    if-nez v9, :cond_1c

    .line 460
    .line 461
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->l0()Lj4/o;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    new-instance v2, Lj4/n;

    .line 466
    .line 467
    invoke-virtual {v7}, Landroidx/work/r;->b()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    invoke-direct {v2, v1, v7}, Lj4/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-interface {v0, v2}, Lj4/o;->b(Lj4/n;)V

    .line 475
    .line 476
    .line 477
    :cond_1c
    move-object/from16 v2, p1

    .line 478
    .line 479
    move-object/from16 v0, v17

    .line 480
    .line 481
    goto/16 :goto_d

    .line 482
    .line 483
    :cond_1d
    return v6
.end method

.method private static processContinuation(Landroidx/work/impl/w;)Z
    .locals 7
    .param p0    # Landroidx/work/impl/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/w;->e()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroidx/work/impl/w;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/work/impl/w;->j()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/w;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    or-int/2addr v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v6, "Already enqueued work ids ("

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v6, ", "

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/work/impl/w;->c()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ")"

    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v4, v2}, Landroidx/work/j;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/w;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    or-int/2addr p0, v1

    .line 83
    return p0
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/w;->g()Landroidx/work/impl/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/w;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public getOperation()Landroidx/work/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/w;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/work/impl/w;->g()Landroidx/work/impl/d0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/work/impl/d0;->l()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/n;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/o;

    .line 38
    .line 39
    sget-object v1, Landroidx/work/l;->a:Landroidx/work/l$b$c;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/work/impl/o;->a(Landroidx/work/l$b;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "WorkContinuation has cycles ("

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ")"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/o;

    .line 76
    .line 77
    new-instance v2, Landroidx/work/l$b$a;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Landroidx/work/l$b$a;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/work/impl/o;->a(Landroidx/work/l$b;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/w;->g()Landroidx/work/impl/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Landroidx/work/impl/d0;->r()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v2, v0}, Landroidx/work/impl/t;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
