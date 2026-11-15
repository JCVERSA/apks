.class public Lcom/google/android/libraries/places/internal/zzbwf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwe;

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbwf;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final zzc:[B

.field private transient zzd:I

.field private transient zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwe;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    const-string v0, "data"

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
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    const/4 v5, 0x1

    .line 23
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    and-int/lit16 v6, v6, 0xff

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    and-int/lit16 v7, v7, 0xff

    .line 36
    .line 37
    if-ne v6, v7, :cond_0

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    if-lt v6, v7, :cond_3

    .line 43
    .line 44
    :goto_1
    move v3, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-lt v0, v1, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :goto_2
    return v3

    .line 53
    :cond_3
    const/4 p1, -0x1

    .line 54
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ne v1, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    move v0, v2

    .line 28
    nop

    .line 29
    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    .line 13
    .line 14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "\u2026]"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 8
    .line 9
    array-length v5, v4

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    const-string v1, "[size=0]"

    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    sget v6, Lcom/google/android/libraries/places/internal/zzbwy;->zza:I

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    :goto_0
    const/16 v11, 0x40

    .line 22
    .line 23
    if-ge v7, v5, :cond_1f

    .line 24
    .line 25
    aget-byte v12, v4, v7

    .line 26
    .line 27
    if-ltz v12, :cond_7

    .line 28
    .line 29
    add-int/lit8 v13, v8, 0x1

    .line 30
    .line 31
    if-ne v8, v11, :cond_1

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    const/16 v8, 0x7f

    .line 36
    .line 37
    const/16 v14, 0x20

    .line 38
    .line 39
    const/16 v15, 0xd

    .line 40
    .line 41
    const/16 v6, 0xa

    .line 42
    .line 43
    if-eq v12, v6, :cond_3

    .line 44
    .line 45
    if-eq v12, v15, :cond_3

    .line 46
    .line 47
    if-ge v12, v14, :cond_2

    .line 48
    .line 49
    :goto_1
    const/4 v9, -0x1

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_2
    if-lt v12, v8, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/2addr v9, v3

    .line 56
    add-int/2addr v7, v3

    .line 57
    :goto_2
    if-ge v7, v5, :cond_6

    .line 58
    .line 59
    aget-byte v12, v4, v7

    .line 60
    .line 61
    if-ltz v12, :cond_6

    .line 62
    .line 63
    add-int/2addr v7, v3

    .line 64
    add-int/lit8 v17, v13, 0x1

    .line 65
    .line 66
    if-eq v13, v11, :cond_1f

    .line 67
    .line 68
    if-eq v12, v6, :cond_5

    .line 69
    .line 70
    if-eq v12, v15, :cond_5

    .line 71
    .line 72
    if-ge v12, v14, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    if-lt v12, v8, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    add-int/2addr v9, v3

    .line 79
    move/from16 v13, v17

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    move v8, v13

    .line 83
    goto :goto_0

    .line 84
    :cond_7
    shr-int/lit8 v6, v12, 0x5

    .line 85
    .line 86
    const v13, 0xfffd

    .line 87
    .line 88
    .line 89
    const/high16 v14, 0x10000

    .line 90
    .line 91
    const/4 v15, -0x2

    .line 92
    const/16 v10, 0x80

    .line 93
    .line 94
    if-ne v6, v15, :cond_e

    .line 95
    .line 96
    add-int/lit8 v6, v7, 0x1

    .line 97
    .line 98
    if-gt v5, v6, :cond_8

    .line 99
    .line 100
    if-eq v8, v11, :cond_1f

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_8
    aget-byte v6, v4, v6

    .line 104
    .line 105
    and-int/lit16 v15, v6, 0xc0

    .line 106
    .line 107
    if-ne v15, v10, :cond_d

    .line 108
    .line 109
    xor-int/lit16 v6, v6, 0xf80

    .line 110
    .line 111
    shl-int/lit8 v12, v12, 0x6

    .line 112
    .line 113
    xor-int/2addr v6, v12

    .line 114
    if-ge v6, v10, :cond_9

    .line 115
    .line 116
    if-eq v8, v11, :cond_1f

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    add-int/lit8 v10, v8, 0x1

    .line 120
    .line 121
    if-eq v8, v11, :cond_1f

    .line 122
    .line 123
    const/16 v8, 0xa0

    .line 124
    .line 125
    if-ge v6, v8, :cond_a

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_a
    if-ne v6, v13, :cond_b

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_b
    add-int/2addr v7, v2

    .line 132
    if-ge v6, v14, :cond_c

    .line 133
    .line 134
    move v6, v3

    .line 135
    goto :goto_3

    .line 136
    :cond_c
    move v6, v2

    .line 137
    :goto_3
    add-int/2addr v9, v6

    .line 138
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    move v8, v10

    .line 141
    goto :goto_0

    .line 142
    :cond_d
    if-eq v8, v11, :cond_1f

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_e
    shr-int/lit8 v6, v12, 0x4

    .line 146
    .line 147
    const v14, 0xe000

    .line 148
    .line 149
    .line 150
    const v13, 0xd800

    .line 151
    .line 152
    .line 153
    if-ne v6, v15, :cond_16

    .line 154
    .line 155
    add-int/lit8 v6, v7, 0x2

    .line 156
    .line 157
    if-gt v5, v6, :cond_f

    .line 158
    .line 159
    if-eq v8, v11, :cond_1f

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_f
    add-int/lit8 v15, v7, 0x1

    .line 163
    .line 164
    aget-byte v15, v4, v15

    .line 165
    .line 166
    and-int/lit16 v2, v15, 0xc0

    .line 167
    .line 168
    if-ne v2, v10, :cond_15

    .line 169
    .line 170
    aget-byte v2, v4, v6

    .line 171
    .line 172
    and-int/lit16 v6, v2, 0xc0

    .line 173
    .line 174
    if-ne v6, v10, :cond_14

    .line 175
    .line 176
    const v6, -0x1e080

    .line 177
    .line 178
    .line 179
    xor-int/2addr v2, v6

    .line 180
    shl-int/lit8 v6, v15, 0x6

    .line 181
    .line 182
    shl-int/lit8 v10, v12, 0xc

    .line 183
    .line 184
    xor-int/2addr v2, v6

    .line 185
    xor-int/2addr v2, v10

    .line 186
    const/16 v6, 0x800

    .line 187
    .line 188
    if-ge v2, v6, :cond_10

    .line 189
    .line 190
    if-eq v8, v11, :cond_1f

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_10
    if-lt v2, v13, :cond_11

    .line 195
    .line 196
    if-ge v2, v14, :cond_11

    .line 197
    .line 198
    if-eq v8, v11, :cond_1f

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_11
    add-int/lit8 v6, v8, 0x1

    .line 203
    .line 204
    if-eq v8, v11, :cond_1f

    .line 205
    .line 206
    const v8, 0xfffd

    .line 207
    .line 208
    .line 209
    if-ne v2, v8, :cond_12

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_12
    add-int/lit8 v7, v7, 0x3

    .line 214
    .line 215
    const/high16 v8, 0x10000

    .line 216
    .line 217
    if-ge v2, v8, :cond_13

    .line 218
    .line 219
    move v2, v3

    .line 220
    goto :goto_4

    .line 221
    :cond_13
    const/4 v2, 0x2

    .line 222
    :goto_4
    add-int/2addr v9, v2

    .line 223
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    move v8, v6

    .line 226
    const/4 v2, 0x2

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_14
    if-eq v8, v11, :cond_1f

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_15
    if-eq v8, v11, :cond_1f

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_16
    shr-int/lit8 v2, v12, 0x3

    .line 238
    .line 239
    if-ne v2, v15, :cond_1e

    .line 240
    .line 241
    add-int/lit8 v2, v7, 0x3

    .line 242
    .line 243
    if-gt v5, v2, :cond_17

    .line 244
    .line 245
    if-eq v8, v11, :cond_1f

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_17
    add-int/lit8 v6, v7, 0x1

    .line 250
    .line 251
    aget-byte v6, v4, v6

    .line 252
    .line 253
    and-int/lit16 v15, v6, 0xc0

    .line 254
    .line 255
    if-ne v15, v10, :cond_1d

    .line 256
    .line 257
    const/4 v15, 0x2

    .line 258
    add-int/lit8 v19, v7, 0x2

    .line 259
    .line 260
    aget-byte v15, v4, v19

    .line 261
    .line 262
    and-int/lit16 v3, v15, 0xc0

    .line 263
    .line 264
    if-ne v3, v10, :cond_1c

    .line 265
    .line 266
    aget-byte v2, v4, v2

    .line 267
    .line 268
    and-int/lit16 v3, v2, 0xc0

    .line 269
    .line 270
    if-ne v3, v10, :cond_1b

    .line 271
    .line 272
    const v3, 0x381f80

    .line 273
    .line 274
    .line 275
    xor-int/2addr v2, v3

    .line 276
    shl-int/lit8 v3, v15, 0x6

    .line 277
    .line 278
    shl-int/lit8 v6, v6, 0xc

    .line 279
    .line 280
    shl-int/lit8 v10, v12, 0x12

    .line 281
    .line 282
    xor-int/2addr v2, v3

    .line 283
    xor-int/2addr v2, v6

    .line 284
    xor-int/2addr v2, v10

    .line 285
    const v3, 0x10ffff

    .line 286
    .line 287
    .line 288
    if-le v2, v3, :cond_18

    .line 289
    .line 290
    if-eq v8, v11, :cond_1f

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_18
    if-lt v2, v13, :cond_19

    .line 295
    .line 296
    if-ge v2, v14, :cond_19

    .line 297
    .line 298
    if-eq v8, v11, :cond_1f

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_19
    const/high16 v3, 0x10000

    .line 303
    .line 304
    if-ge v2, v3, :cond_1a

    .line 305
    .line 306
    if-eq v8, v11, :cond_1f

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :cond_1a
    const/4 v2, 0x1

    .line 311
    add-int/lit8 v3, v8, 0x1

    .line 312
    .line 313
    if-eq v8, v11, :cond_1f

    .line 314
    .line 315
    const/4 v6, 0x2

    .line 316
    add-int/2addr v9, v6

    .line 317
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 318
    .line 319
    add-int/lit8 v7, v7, 0x4

    .line 320
    .line 321
    move v8, v3

    .line 322
    move v3, v2

    .line 323
    move v2, v6

    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_1b
    if-eq v8, v11, :cond_1f

    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_1c
    if-eq v8, v11, :cond_1f

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_1d
    if-eq v8, v11, :cond_1f

    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :cond_1e
    if-eq v8, v11, :cond_1f

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_1f
    :goto_5
    const-string v2, "[size="

    .line 343
    .line 344
    const-string v3, "]"

    .line 345
    .line 346
    const/4 v4, -0x1

    .line 347
    if-ne v9, v4, :cond_23

    .line 348
    .line 349
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 350
    .line 351
    array-length v4, v4

    .line 352
    if-gt v4, v11, :cond_20

    .line 353
    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v4, "[hex="

    .line 364
    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    goto/16 :goto_7

    .line 379
    .line 380
    :cond_20
    const-string v3, "<this>"

    .line 381
    .line 382
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 386
    .line 387
    array-length v5, v3

    .line 388
    if-lt v5, v11, :cond_22

    .line 389
    .line 390
    if-eq v5, v11, :cond_21

    .line 391
    .line 392
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    invoke-static {v3, v6, v11}, Lkotlin/collections/ArraysKt;->q([BII)[B

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-direct {v5, v3}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_21
    move-object v5, v0

    .line 404
    :goto_6
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v2, " hex="

    .line 420
    .line 421
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    const-string v2, "endIndex > length("

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v2, ")"

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 459
    .line 460
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v2

    .line 464
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    const/4 v5, 0x0

    .line 469
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    const-string v5, "substring(...)"

    .line 474
    .line 475
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const/4 v14, 0x4

    .line 479
    const/4 v15, 0x0

    .line 480
    const-string v11, "\\"

    .line 481
    .line 482
    const-string v12, "\\\\"

    .line 483
    .line 484
    const/4 v13, 0x0

    .line 485
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v16

    .line 489
    const/16 v20, 0x4

    .line 490
    .line 491
    const/16 v21, 0x0

    .line 492
    .line 493
    const-string v17, "\n"

    .line 494
    .line 495
    const-string v18, "\\n"

    .line 496
    .line 497
    const/16 v19, 0x0

    .line 498
    .line 499
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    const-string v11, "\r"

    .line 504
    .line 505
    const-string v12, "\\r"

    .line 506
    .line 507
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    if-ge v9, v4, :cond_24

    .line 516
    .line 517
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 518
    .line 519
    array-length v3, v3

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v2, " text="

    .line 532
    .line 533
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    goto :goto_7

    .line 547
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    const-string v2, "[text="

    .line 553
    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    :goto_7
    return-object v1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    .line 2
    .line 3
    return v0
.end method

.method public zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lcom/google/android/libraries/places/internal/zzbvu;->zza([B[BILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public zze()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int v2, v1, v1

    .line 5
    .line 6
    new-array v2, v2, [C

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget-byte v5, v0, v3

    .line 13
    .line 14
    add-int/lit8 v6, v4, 0x1

    .line 15
    .line 16
    shr-int/lit8 v7, v5, 0x4

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    and-int/lit8 v7, v7, 0xf

    .line 23
    .line 24
    aget-char v7, v8, v7

    .line 25
    .line 26
    aput-char v7, v2, v4

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0xf

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    aget-char v5, v7, v5

    .line 35
    .line 36
    aput-char v5, v2, v6

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x2

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v2}, Lkotlin/text/StringsKt;->B([C)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzo()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbww;->zza([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public zzg()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_5

    .line 6
    .line 7
    add-int/lit8 v3, v0, 0x1

    .line 8
    .line 9
    aget-byte v4, v1, v0

    .line 10
    .line 11
    const/16 v5, 0x41

    .line 12
    .line 13
    if-lt v4, v5, :cond_4

    .line 14
    .line 15
    const/16 v6, 0x5a

    .line 16
    .line 17
    if-le v4, v6, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "copyOf(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x20

    .line 30
    .line 31
    int-to-byte v2, v4

    .line 32
    aput-byte v2, v1, v0

    .line 33
    .line 34
    :goto_1
    array-length v0, v1

    .line 35
    if-ge v3, v0, :cond_3

    .line 36
    .line 37
    add-int/lit8 v0, v3, 0x1

    .line 38
    .line 39
    aget-byte v2, v1, v3

    .line 40
    .line 41
    if-lt v2, v5, :cond_2

    .line 42
    .line 43
    if-le v2, v6, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x20

    .line 47
    .line 48
    int-to-byte v2, v2

    .line 49
    aput-byte v2, v1, v3

    .line 50
    .line 51
    :cond_2
    :goto_2
    move v3, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    :goto_3
    move v0, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    move-object v0, p0

    .line 62
    :goto_4
    return-object v0
.end method

.method public final zzh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzd:I

    .line 2
    .line 3
    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V
    .locals 1

    .line 1
    const-string p2, "buffer"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/google/android/libraries/places/internal/zzbwy;->zza:I

    .line 7
    .line 8
    const-string v0, "<this>"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z
    .locals 0

    .line 1
    const-string p1, "other"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 8
    .line 9
    invoke-virtual {p2, p1, p3, p1, p4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public zzl(I[BII)Z
    .locals 2

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    sub-int/2addr v1, p4

    .line 12
    if-gt p1, v1, :cond_0

    .line 13
    .line 14
    if-ltz p3, :cond_0

    .line 15
    .line 16
    array-length v1, p2

    .line 17
    sub-int/2addr v1, p4

    .line 18
    if-gt p3, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbvv;->zzc([BI[BII)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final zzm(Lcom/google/android/libraries/places/internal/zzbwf;)Z
    .locals 2

    .line 1
    const-string v0, "prefix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final zzn()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public zzo()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public zzp()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwf;->zzc:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "copyOf(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
