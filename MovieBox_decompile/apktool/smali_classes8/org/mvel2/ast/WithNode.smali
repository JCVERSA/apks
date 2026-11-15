.class public Lorg/mvel2/ast/WithNode;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/ast/WithNode$ParmValuePair;
    }
.end annotation


# instance fields
.field protected nestParm:Ljava/lang/String;

.field protected withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 6

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/mvel2/ast/WithNode;->nestParm:Ljava/lang/String;

    .line 15
    .line 16
    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 17
    .line 18
    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 19
    .line 20
    and-int/lit8 p6, p6, 0x10

    .line 21
    .line 22
    if-eqz p6, :cond_0

    .line 23
    .line 24
    const/4 p6, 0x1

    .line 25
    invoke-virtual {p7, p6}, Lorg/mvel2/ParserContext;->setBlockSymbols(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, p3, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 33
    .line 34
    iput-object p2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 35
    .line 36
    invoke-interface {p2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 41
    .line 42
    iget-object v3, p0, Lorg/mvel2/ast/WithNode;->nestParm:Ljava/lang/String;

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    move v1, p4

    .line 46
    move v2, p5

    .line 47
    move-object v5, p7

    .line 48
    invoke-static/range {v0 .. v5}, Lorg/mvel2/ast/WithNode;->compileWithExpressions([CIILjava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)[Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lorg/mvel2/ast/WithNode;->withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->setBlockSymbols(Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public static compileWithExpressions([CIILjava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)[Lorg/mvel2/ast/WithNode$ParmValuePair;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    new-instance v5, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    add-int v6, v0, p2

    .line 17
    .line 18
    const-string v7, ""

    .line 19
    .line 20
    move v9, v0

    .line 21
    move v10, v9

    .line 22
    move-object v11, v7

    .line 23
    const/4 v12, -0x1

    .line 24
    :goto_0
    const-string v14, "."

    .line 25
    .line 26
    const-string v15, "operative assignment not possible here"

    .line 27
    .line 28
    if-ge v9, v6, :cond_11

    .line 29
    .line 30
    aget-char v13, v1, v9

    .line 31
    .line 32
    const/16 v8, 0x22

    .line 33
    .line 34
    const/16 v16, 0x1

    .line 35
    .line 36
    if-eq v13, v8, :cond_e

    .line 37
    .line 38
    const/16 v8, 0x25

    .line 39
    .line 40
    move-object/from16 v17, v7

    .line 41
    .line 42
    const/16 v7, 0x3d

    .line 43
    .line 44
    if-eq v13, v8, :cond_d

    .line 45
    .line 46
    const/16 v8, 0x2f

    .line 47
    .line 48
    if-eq v13, v8, :cond_7

    .line 49
    .line 50
    if-eq v13, v7, :cond_5

    .line 51
    .line 52
    const/16 v8, 0x5b

    .line 53
    .line 54
    if-eq v13, v8, :cond_f

    .line 55
    .line 56
    const/16 v8, 0x7b

    .line 57
    .line 58
    if-eq v13, v8, :cond_f

    .line 59
    .line 60
    const/16 v8, 0x27

    .line 61
    .line 62
    if-eq v13, v8, :cond_f

    .line 63
    .line 64
    const/16 v8, 0x28

    .line 65
    .line 66
    if-eq v13, v8, :cond_f

    .line 67
    .line 68
    packed-switch v13, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto/16 :goto_c

    .line 72
    .line 73
    :pswitch_0
    if-eqz v11, :cond_3

    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_0

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_0
    if-eqz v2, :cond_2

    .line 83
    .line 84
    :try_start_0
    new-instance v7, Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 85
    .line 86
    const/4 v8, -0x1

    .line 87
    if-eq v12, v8, :cond_1

    .line 88
    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    sub-int v13, v9, v10

    .line 108
    .line 109
    invoke-static {v8, v1, v10, v13, v12}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v8, v4}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    :goto_1
    check-cast v8, Lorg/mvel2/compiler/ExecutableStatement;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_3

    .line 122
    :cond_1
    sub-int v8, v9, v10

    .line 123
    .line 124
    invoke-static {v1, v10, v8, v4}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    invoke-direct {v7, v11, v8, v3, v4}, Lorg/mvel2/ast/WithNode$ParmValuePair;-><init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    add-int/lit8 v9, v9, 0x1

    .line 136
    .line 137
    const/4 v11, 0x0

    .line 138
    goto :goto_6

    .line 139
    :goto_3
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    array-length v3, v3

    .line 148
    sub-int v3, v3, p2

    .line 149
    .line 150
    sub-int/2addr v2, v3

    .line 151
    add-int/2addr v10, v2

    .line 152
    invoke-virtual {v0, v10}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_2
    new-instance v2, Lorg/mvel2/CompileException;

    .line 160
    .line 161
    invoke-direct {v2, v15, v1, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 162
    .line 163
    .line 164
    throw v2

    .line 165
    :cond_3
    :goto_4
    if-nez v2, :cond_4

    .line 166
    .line 167
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .line 168
    .line 169
    sub-int v8, v9, v10

    .line 170
    .line 171
    invoke-direct {v7, v1, v10, v8}, Ljava/lang/String;-><init>([CII)V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :catch_1
    move-exception v0

    .line 176
    goto :goto_7

    .line 177
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/16 v8, 0x2e

    .line 183
    .line 184
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    new-instance v8, Ljava/lang/String;

    .line 188
    .line 189
    sub-int v12, v9, v10

    .line 190
    .line 191
    invoke-direct {v8, v1, v10, v12}, Ljava/lang/String;-><init>([CII)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    :goto_5
    new-instance v8, Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 202
    .line 203
    invoke-static {v7, v4}, Lorg/mvel2/util/m;->G0(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lorg/mvel2/compiler/ExecutableStatement;

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    invoke-direct {v8, v12, v7, v3, v4}, Lorg/mvel2/ast/WithNode$ParmValuePair;-><init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/mvel2/CompileException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .line 215
    .line 216
    add-int/lit8 v9, v9, 0x1

    .line 217
    .line 218
    :goto_6
    move v10, v9

    .line 219
    const/4 v12, -0x1

    .line 220
    goto/16 :goto_c

    .line 221
    .line 222
    :goto_7
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    array-length v3, v3

    .line 231
    sub-int v3, v3, p2

    .line 232
    .line 233
    sub-int/2addr v2, v3

    .line 234
    add-int/2addr v10, v2

    .line 235
    invoke-virtual {v0, v10}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_5
    sub-int v7, v9, v10

    .line 243
    .line 244
    const/4 v8, -0x1

    .line 245
    if-eq v12, v8, :cond_6

    .line 246
    .line 247
    move/from16 v8, v16

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_6
    const/4 v8, 0x0

    .line 251
    :goto_8
    sub-int/2addr v7, v8

    .line 252
    invoke-static {v1, v10, v7}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    add-int/lit8 v10, v9, 0x1

    .line 257
    .line 258
    goto/16 :goto_c

    .line 259
    .line 260
    :cond_7
    const/16 v13, 0x20

    .line 261
    .line 262
    if-ge v9, v6, :cond_9

    .line 263
    .line 264
    add-int/lit8 v14, v9, 0x1

    .line 265
    .line 266
    aget-char v14, v1, v14

    .line 267
    .line 268
    if-ne v14, v8, :cond_9

    .line 269
    .line 270
    :goto_9
    if-ge v9, v6, :cond_8

    .line 271
    .line 272
    aget-char v7, v1, v9

    .line 273
    .line 274
    const/16 v8, 0xa

    .line 275
    .line 276
    if-eq v7, v8, :cond_8

    .line 277
    .line 278
    add-int/lit8 v7, v9, 0x1

    .line 279
    .line 280
    aput-char v13, v1, v9

    .line 281
    .line 282
    move v9, v7

    .line 283
    goto :goto_9

    .line 284
    :cond_8
    if-nez v11, :cond_10

    .line 285
    .line 286
    :goto_a
    move v10, v9

    .line 287
    goto :goto_c

    .line 288
    :cond_9
    if-ge v9, v6, :cond_c

    .line 289
    .line 290
    add-int/lit8 v14, v9, 0x1

    .line 291
    .line 292
    aget-char v14, v1, v14

    .line 293
    .line 294
    const/16 v15, 0x2a

    .line 295
    .line 296
    if-ne v14, v15, :cond_c

    .line 297
    .line 298
    add-int/lit8 v7, v6, -0x1

    .line 299
    .line 300
    :goto_b
    if-ge v9, v7, :cond_b

    .line 301
    .line 302
    aget-char v14, v1, v9

    .line 303
    .line 304
    if-ne v14, v15, :cond_a

    .line 305
    .line 306
    add-int/lit8 v14, v9, 0x1

    .line 307
    .line 308
    aget-char v14, v1, v14

    .line 309
    .line 310
    if-eq v14, v8, :cond_b

    .line 311
    .line 312
    :cond_a
    add-int/lit8 v14, v9, 0x1

    .line 313
    .line 314
    aput-char v13, v1, v9

    .line 315
    .line 316
    move v9, v14

    .line 317
    goto :goto_b

    .line 318
    :cond_b
    add-int/lit8 v7, v9, 0x1

    .line 319
    .line 320
    aput-char v13, v1, v9

    .line 321
    .line 322
    add-int/lit8 v9, v9, 0x2

    .line 323
    .line 324
    aput-char v13, v1, v7

    .line 325
    .line 326
    if-nez v11, :cond_10

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_c
    if-ge v9, v6, :cond_10

    .line 330
    .line 331
    add-int/lit8 v8, v9, 0x1

    .line 332
    .line 333
    aget-char v8, v1, v8

    .line 334
    .line 335
    if-ne v8, v7, :cond_10

    .line 336
    .line 337
    const/4 v12, 0x3

    .line 338
    goto :goto_c

    .line 339
    :cond_d
    :pswitch_1
    add-int/lit8 v8, v9, 0x1

    .line 340
    .line 341
    if-ge v8, v6, :cond_10

    .line 342
    .line 343
    aget-char v8, v1, v8

    .line 344
    .line 345
    if-ne v8, v7, :cond_10

    .line 346
    .line 347
    invoke-static {v13}, Lorg/mvel2/util/m;->u0(C)I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    goto :goto_c

    .line 352
    :cond_e
    move-object/from16 v17, v7

    .line 353
    .line 354
    :cond_f
    invoke-static {v1, v9, v6, v13}, Lorg/mvel2/util/m;->d([CIIC)I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    :cond_10
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 359
    .line 360
    move-object/from16 v7, v17

    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :cond_11
    move-object/from16 v17, v7

    .line 365
    .line 366
    if-eq v10, v6, :cond_17

    .line 367
    .line 368
    if-eqz v11, :cond_15

    .line 369
    .line 370
    move-object/from16 v7, v17

    .line 371
    .line 372
    :try_start_2
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    if-eqz v7, :cond_12

    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_12
    if-eqz v2, :cond_14

    .line 380
    .line 381
    new-instance v0, Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 382
    .line 383
    const/4 v7, -0x1

    .line 384
    if-eq v12, v7, :cond_13

    .line 385
    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    sub-int/2addr v6, v10

    .line 405
    invoke-static {v2, v1, v10, v6, v12}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v2, v4}, Lorg/mvel2/util/m;->J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    :goto_d
    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :catch_2
    move-exception v0

    .line 417
    goto :goto_11

    .line 418
    :cond_13
    sub-int/2addr v6, v10

    .line 419
    invoke-static {v1, v10, v6, v4}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    goto :goto_d

    .line 424
    :goto_e
    invoke-direct {v0, v11, v2, v3, v4}, Lorg/mvel2/ast/WithNode$ParmValuePair;-><init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_12

    .line 431
    :cond_14
    new-instance v2, Lorg/mvel2/CompileException;

    .line 432
    .line 433
    invoke-direct {v2, v15, v1, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 434
    .line 435
    .line 436
    throw v2

    .line 437
    :cond_15
    :goto_f
    if-nez v2, :cond_16

    .line 438
    .line 439
    new-instance v0, Ljava/lang/String;

    .line 440
    .line 441
    sub-int/2addr v6, v10

    .line 442
    invoke-direct {v0, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    .line 443
    .line 444
    .line 445
    goto :goto_10

    .line 446
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const/16 v2, 0x2e

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    new-instance v2, Ljava/lang/String;

    .line 457
    .line 458
    sub-int/2addr v6, v10

    .line 459
    invoke-direct {v2, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    :goto_10
    new-instance v2, Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 470
    .line 471
    invoke-static {v0, v4}, Lorg/mvel2/util/m;->G0(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Lorg/mvel2/compiler/ExecutableStatement;

    .line 476
    .line 477
    const/4 v6, 0x0

    .line 478
    invoke-direct {v2, v6, v0, v3, v4}, Lorg/mvel2/ast/WithNode$ParmValuePair;-><init>(Ljava/lang/String;Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_2

    .line 482
    .line 483
    .line 484
    goto :goto_12

    .line 485
    :goto_11
    invoke-static {v0, v1, v10}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    throw v0

    .line 490
    :cond_17
    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    new-array v0, v0, [Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 495
    .line 496
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    return-object v0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getNestedStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/WithNode;->nestParm:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 6
    .line 7
    iget v3, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 8
    .line 9
    iget p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 10
    .line 11
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 12
    .line 13
    invoke-static {v1, p2, v4, p1, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p3

    .line 19
    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/m;->z0(Ljava/lang/String;[CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lorg/mvel2/ast/WithNode;->withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 10
    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p2, v1

    .line 16
    .line 17
    invoke-virtual {v2, p1, p3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->eval(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lorg/mvel2/CompileException;

    .line 25
    .line 26
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 27
    .line 28
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 29
    .line 30
    const-string v0, "with-block against null pointer"

    .line 31
    .line 32
    invoke-direct {p1, v0, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public getWithExpressions()[Lorg/mvel2/ast/WithNode$ParmValuePair;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/WithNode;->withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;

    .line 2
    .line 3
    return-object v0
.end method
