.class public final Lsd/b;
.super Lsd/q;
.source "source.java"


# static fields
.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lsd/b;->b:[C

    .line 8
    .line 9
    new-array v2, v0, [C

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v2, Lsd/b;->c:[C

    .line 15
    .line 16
    new-array v0, v0, [C

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lsd/b;->d:[C

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aget-char v0, v1, v0

    .line 25
    .line 26
    sput-char v0, Lsd/b;->e:C

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsd/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-char v1, Lsd/b;->e:C

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v3

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sget-object v4, Lsd/b;->b:[C

    .line 54
    .line 55
    invoke-static {v4, v0}, Lsd/a;->h([CC)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v4, v1}, Lsd/a;->h([CC)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sget-object v6, Lsd/b;->c:[C

    .line 64
    .line 65
    invoke-static {v6, v0}, Lsd/a;->h([CC)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v6, v1}, Lsd/a;->h([CC)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const-string v6, "Invalid start/end guards: "

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    if-eqz v0, :cond_4

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_4
    if-nez v4, :cond_16

    .line 128
    .line 129
    if-nez v1, :cond_16

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    sget-char v1, Lsd/b;->e:C

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_0
    const/16 v0, 0x14

    .line 152
    .line 153
    move v1, v3

    .line 154
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    sub-int/2addr v4, v3

    .line 159
    if-ge v1, v4, :cond_8

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_7

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    const/16 v5, 0x2d

    .line 176
    .line 177
    if-eq v4, v5, :cond_7

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/16 v5, 0x24

    .line 184
    .line 185
    if-ne v4, v5, :cond_5

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    sget-object v4, Lsd/b;->d:[C

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-static {v4, v5}, Lsd/a;->h([CC)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_6

    .line 199
    .line 200
    add-int/lit8 v0, v0, 0xa

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "Cannot encode : \'"

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const/16 p1, 0x27

    .line 223
    .line 224
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x9

    .line 236
    .line 237
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    sub-int/2addr v1, v3

    .line 245
    add-int/2addr v0, v1

    .line 246
    new-array v0, v0, [Z

    .line 247
    .line 248
    move v1, v2

    .line 249
    move v4, v1

    .line 250
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-ge v1, v5, :cond_15

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v1, :cond_9

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    sub-int/2addr v6, v3

    .line 271
    if-ne v1, v6, :cond_e

    .line 272
    .line 273
    :cond_9
    const/16 v6, 0x2a

    .line 274
    .line 275
    if-eq v5, v6, :cond_d

    .line 276
    .line 277
    const/16 v6, 0x45

    .line 278
    .line 279
    if-eq v5, v6, :cond_c

    .line 280
    .line 281
    const/16 v6, 0x4e

    .line 282
    .line 283
    if-eq v5, v6, :cond_b

    .line 284
    .line 285
    const/16 v6, 0x54

    .line 286
    .line 287
    if-eq v5, v6, :cond_a

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_a
    const/16 v5, 0x41

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_b
    const/16 v5, 0x42

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_c
    const/16 v5, 0x44

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_d
    const/16 v5, 0x43

    .line 300
    .line 301
    :cond_e
    :goto_5
    move v6, v2

    .line 302
    :goto_6
    sget-object v7, Lsd/a;->d:[C

    .line 303
    .line 304
    array-length v8, v7

    .line 305
    if-ge v6, v8, :cond_10

    .line 306
    .line 307
    aget-char v7, v7, v6

    .line 308
    .line 309
    if-ne v5, v7, :cond_f

    .line 310
    .line 311
    sget-object v5, Lsd/a;->e:[I

    .line 312
    .line 313
    aget v5, v5, v6

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_10
    move v5, v2

    .line 320
    :goto_7
    move v6, v2

    .line 321
    move v8, v6

    .line 322
    move v7, v3

    .line 323
    :goto_8
    const/4 v9, 0x7

    .line 324
    if-ge v6, v9, :cond_13

    .line 325
    .line 326
    aput-boolean v7, v0, v4

    .line 327
    .line 328
    add-int/lit8 v4, v4, 0x1

    .line 329
    .line 330
    rsub-int/lit8 v9, v6, 0x6

    .line 331
    .line 332
    shr-int v9, v5, v9

    .line 333
    .line 334
    and-int/2addr v9, v3

    .line 335
    if-eqz v9, :cond_12

    .line 336
    .line 337
    if-ne v8, v3, :cond_11

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_12
    :goto_9
    xor-int/lit8 v7, v7, 0x1

    .line 344
    .line 345
    add-int/lit8 v6, v6, 0x1

    .line 346
    .line 347
    move v8, v2

    .line 348
    goto :goto_8

    .line 349
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    sub-int/2addr v5, v3

    .line 354
    if-ge v1, v5, :cond_14

    .line 355
    .line 356
    aput-boolean v2, v0, v4

    .line 357
    .line 358
    add-int/lit8 v4, v4, 0x1

    .line 359
    .line 360
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_15
    return-object v0

    .line 364
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 365
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0
.end method

.method protected g()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
