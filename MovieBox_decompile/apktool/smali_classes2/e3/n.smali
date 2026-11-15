.class public final Le3/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;
.implements Lk2/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/n$a;
    }
.end annotation


# static fields
.field public static final G:Lk2/x;


# instance fields
.field private A:[Le3/n$a;

.field private B:[[J

.field private C:I

.field private D:J

.field private E:I

.field private F:Lz2/a;

.field private final a:Lh3/s$a;

.field private final b:I

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Landroidx/media3/common/util/j0;

.field private final e:Landroidx/media3/common/util/j0;

.field private final f:Landroidx/media3/common/util/j0;

.field private final g:Ljava/util/ArrayDeque;

.field private final h:Le3/q;

.field private final i:Ljava/util/List;

.field private j:Lcom/google/common/collect/ImmutableList;

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:Landroidx/media3/common/util/j0;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:J

.field private x:Z

.field private y:J

.field private z:Lk2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le3/m;

    .line 2
    .line 3
    invoke-direct {v0}, Le3/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le3/n;->G:Lk2/x;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lh3/s$a;->a:Lh3/s$a;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Le3/n;-><init>(Lh3/s$a;I)V

    return-void
.end method

.method public constructor <init>(Lh3/s$a;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le3/n;->a:Lh3/s$a;

    .line 4
    iput p2, p0, Le3/n;->b:I

    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Le3/n;->j:Lcom/google/common/collect/ImmutableList;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    .line 6
    :goto_0
    iput p1, p0, Le3/n;->k:I

    .line 7
    new-instance p1, Le3/q;

    invoke-direct {p1}, Le3/q;-><init>()V

    iput-object p1, p0, Le3/n;->h:Le3/q;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le3/n;->i:Ljava/util/List;

    .line 9
    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 10
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 11
    new-instance p1, Landroidx/media3/common/util/j0;

    sget-object v0, Landroidx/media3/container/g;->a:[B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p1, p0, Le3/n;->c:Landroidx/media3/common/util/j0;

    .line 12
    new-instance p1, Landroidx/media3/common/util/j0;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Le3/n;->d:Landroidx/media3/common/util/j0;

    .line 13
    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Le3/n;->e:Landroidx/media3/common/util/j0;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Le3/n;->p:I

    .line 15
    sget-object p1, Lk2/t;->j1:Lk2/t;

    iput-object p1, p0, Le3/n;->z:Lk2/t;

    .line 16
    new-array p1, p2, [Le3/n$a;

    iput-object p1, p0, Le3/n;->A:[Le3/n$a;

    return-void
.end method

.method private static A(Landroidx/media3/common/util/j0;)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Le3/n;->j(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Le3/n;->j(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private B(Landroidx/media3/container/d$b;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v9, 0x2

    .line 6
    const/4 v10, 0x0

    .line 7
    const v2, 0x6d657461

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-static {v2}, Le3/b;->t(Landroidx/media3/container/d$b;)Landroidx/media3/common/x;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-boolean v4, v0, Le3/n;->x:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Le3/n;->w(Landroidx/media3/common/x;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2}, Le3/n;->o(Landroidx/media3/common/x;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_0
    move-object v13, v2

    .line 41
    move-object v14, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {v0, v2}, Le3/n;->J(Landroidx/media3/common/x;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    iput-boolean v11, v0, Le3/n;->v:Z

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    move-object v14, v3

    .line 53
    const/4 v13, 0x0

    .line 54
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iget v2, v0, Le3/n;->E:I

    .line 60
    .line 61
    if-ne v2, v11, :cond_3

    .line 62
    .line 63
    move v7, v11

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v7, v10

    .line 66
    :goto_1
    new-instance v8, Lk2/e0;

    .line 67
    .line 68
    invoke-direct {v8}, Lk2/e0;-><init>()V

    .line 69
    .line 70
    .line 71
    const v2, 0x75647461

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-static {v2}, Le3/b;->H(Landroidx/media3/container/d$c;)Landroidx/media3/common/x;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v8, v2}, Lk2/e0;->c(Landroidx/media3/common/x;)Z

    .line 85
    .line 86
    .line 87
    move-object/from16 v16, v2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/16 v16, 0x0

    .line 91
    .line 92
    :goto_2
    new-instance v6, Landroidx/media3/common/x;

    .line 93
    .line 94
    const v2, 0x6d766864

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroidx/media3/container/d$c;

    .line 106
    .line 107
    iget-object v2, v2, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    .line 108
    .line 109
    invoke-static {v2}, Le3/b;->v(Landroidx/media3/common/util/j0;)Landroidx/media3/container/f;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-array v3, v11, [Landroidx/media3/common/x$a;

    .line 114
    .line 115
    aput-object v2, v3, v10

    .line 116
    .line 117
    invoke-direct {v6, v3}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    .line 118
    .line 119
    .line 120
    iget v2, v0, Le3/n;->b:I

    .line 121
    .line 122
    and-int/2addr v2, v11

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    move/from16 v17, v11

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move/from16 v17, v10

    .line 129
    .line 130
    :goto_3
    new-instance v18, Le3/l;

    .line 131
    .line 132
    invoke-direct/range {v18 .. v18}, Le3/l;-><init>()V

    .line 133
    .line 134
    .line 135
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    const/4 v5, 0x0

    .line 141
    move-object/from16 v1, p1

    .line 142
    .line 143
    move-object v2, v8

    .line 144
    move-object/from16 v19, v6

    .line 145
    .line 146
    move/from16 v6, v17

    .line 147
    .line 148
    move-object v12, v8

    .line 149
    move-object/from16 v8, v18

    .line 150
    .line 151
    invoke-static/range {v1 .. v8}, Le3/b;->G(Landroidx/media3/container/d$b;Lk2/e0;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-boolean v2, v0, Le3/n;->x:Z

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-ne v2, v3, :cond_6

    .line 168
    .line 169
    move v2, v11

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    move v2, v10

    .line 172
    :goto_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 173
    .line 174
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    new-array v6, v9, [Ljava/lang/Object;

    .line 191
    .line 192
    aput-object v4, v6, v10

    .line 193
    .line 194
    aput-object v5, v6, v11

    .line 195
    .line 196
    const-string v4, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)"

    .line 197
    .line 198
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v2, v3}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    invoke-static {v1}, Le3/k;->b(Ljava/util/List;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    move v6, v10

    .line 210
    move v8, v6

    .line 211
    const/4 v7, -0x1

    .line 212
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ge v6, v5, :cond_12

    .line 222
    .line 223
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Le3/w;

    .line 228
    .line 229
    iget v3, v5, Le3/w;->b:I

    .line 230
    .line 231
    if-nez v3, :cond_8

    .line 232
    .line 233
    move-object/from16 v22, v1

    .line 234
    .line 235
    move/from16 v23, v8

    .line 236
    .line 237
    const/4 v1, -0x1

    .line 238
    const/4 v8, 0x2

    .line 239
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    move/from16 v26, v11

    .line 245
    .line 246
    move-object v11, v2

    .line 247
    move/from16 v2, v26

    .line 248
    .line 249
    goto/16 :goto_b

    .line 250
    .line 251
    :cond_8
    iget-object v3, v5, Le3/w;->a:Le3/t;

    .line 252
    .line 253
    new-instance v4, Le3/n$a;

    .line 254
    .line 255
    move-object/from16 v22, v1

    .line 256
    .line 257
    iget-object v1, v0, Le3/n;->z:Lk2/t;

    .line 258
    .line 259
    add-int/lit8 v23, v8, 0x1

    .line 260
    .line 261
    iget v11, v3, Le3/t;->b:I

    .line 262
    .line 263
    invoke-interface {v1, v8, v11}, Lk2/t;->track(II)Lk2/s0;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-direct {v4, v3, v5, v1}, Le3/n$a;-><init>(Le3/t;Le3/w;Lk2/s0;)V

    .line 268
    .line 269
    .line 270
    move-object v11, v2

    .line 271
    iget-wide v1, v3, Le3/t;->e:J

    .line 272
    .line 273
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    cmp-long v8, v1, v20

    .line 279
    .line 280
    if-eqz v8, :cond_9

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_9
    iget-wide v1, v5, Le3/w;->h:J

    .line 284
    .line 285
    :goto_6
    iget-object v8, v4, Le3/n$a;->c:Lk2/s0;

    .line 286
    .line 287
    invoke-interface {v8, v1, v2}, Lk2/s0;->f(J)V

    .line 288
    .line 289
    .line 290
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 291
    .line 292
    .line 293
    move-result-wide v9

    .line 294
    iget-object v1, v3, Le3/t;->g:Landroidx/media3/common/r;

    .line 295
    .line 296
    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 297
    .line 298
    const-string v2, "audio/true-hd"

    .line 299
    .line 300
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_a

    .line 305
    .line 306
    iget v1, v5, Le3/w;->e:I

    .line 307
    .line 308
    mul-int/lit8 v1, v1, 0x10

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_a
    iget v1, v5, Le3/w;->e:I

    .line 312
    .line 313
    add-int/lit8 v1, v1, 0x1e

    .line 314
    .line 315
    :goto_7
    iget-object v2, v3, Le3/t;->g:Landroidx/media3/common/r;

    .line 316
    .line 317
    invoke-virtual {v2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    .line 322
    .line 323
    .line 324
    iget v1, v3, Le3/t;->b:I

    .line 325
    .line 326
    const/4 v5, 0x2

    .line 327
    if-ne v1, v5, :cond_e

    .line 328
    .line 329
    iget-object v1, v3, Le3/t;->g:Landroidx/media3/common/r;

    .line 330
    .line 331
    iget v1, v1, Landroidx/media3/common/r;->f:I

    .line 332
    .line 333
    iget v5, v0, Le3/n;->b:I

    .line 334
    .line 335
    and-int/lit8 v5, v5, 0x8

    .line 336
    .line 337
    if-eqz v5, :cond_c

    .line 338
    .line 339
    const/4 v5, -0x1

    .line 340
    if-ne v7, v5, :cond_b

    .line 341
    .line 342
    const/4 v5, 0x1

    .line 343
    goto :goto_8

    .line 344
    :cond_b
    const/4 v5, 0x2

    .line 345
    :goto_8
    or-int/2addr v1, v5

    .line 346
    :cond_c
    iget-boolean v5, v0, Le3/n;->x:Z

    .line 347
    .line 348
    if-eqz v5, :cond_d

    .line 349
    .line 350
    const v5, 0x8000

    .line 351
    .line 352
    .line 353
    or-int/2addr v1, v5

    .line 354
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    check-cast v5, Ljava/lang/Integer;

    .line 359
    .line 360
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-virtual {v2, v5}, Landroidx/media3/common/r$b;->P(I)Landroidx/media3/common/r$b;

    .line 365
    .line 366
    .line 367
    :cond_d
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 368
    .line 369
    .line 370
    :cond_e
    iget v1, v3, Le3/t;->b:I

    .line 371
    .line 372
    invoke-static {v1, v12, v2}, Le3/j;->l(ILk2/e0;Landroidx/media3/common/r$b;)V

    .line 373
    .line 374
    .line 375
    iget v1, v3, Le3/t;->b:I

    .line 376
    .line 377
    iget-object v5, v3, Le3/t;->g:Landroidx/media3/common/r;

    .line 378
    .line 379
    iget-object v5, v5, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 380
    .line 381
    iget-object v8, v0, Le3/n;->i:Ljava/util/List;

    .line 382
    .line 383
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_f

    .line 388
    .line 389
    move-wide/from16 v24, v9

    .line 390
    .line 391
    const/4 v8, 0x0

    .line 392
    goto :goto_9

    .line 393
    :cond_f
    new-instance v8, Landroidx/media3/common/x;

    .line 394
    .line 395
    move-wide/from16 v24, v9

    .line 396
    .line 397
    iget-object v9, v0, Le3/n;->i:Ljava/util/List;

    .line 398
    .line 399
    invoke-direct {v8, v9}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    :goto_9
    const/4 v9, 0x3

    .line 403
    new-array v9, v9, [Landroidx/media3/common/x;

    .line 404
    .line 405
    const/4 v10, 0x0

    .line 406
    aput-object v8, v9, v10

    .line 407
    .line 408
    const/4 v8, 0x1

    .line 409
    aput-object v16, v9, v8

    .line 410
    .line 411
    const/4 v8, 0x2

    .line 412
    aput-object v19, v9, v8

    .line 413
    .line 414
    invoke-static {v1, v13, v2, v5, v9}, Le3/j;->m(ILandroidx/media3/common/x;Landroidx/media3/common/r$b;Landroidx/media3/common/x;[Landroidx/media3/common/x;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v11}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 418
    .line 419
    .line 420
    iget-object v1, v4, Le3/n$a;->c:Lk2/s0;

    .line 421
    .line 422
    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-interface {v1, v2}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 427
    .line 428
    .line 429
    iget v1, v3, Le3/t;->b:I

    .line 430
    .line 431
    if-ne v1, v8, :cond_10

    .line 432
    .line 433
    const/4 v1, -0x1

    .line 434
    if-ne v7, v1, :cond_11

    .line 435
    .line 436
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    goto :goto_a

    .line 441
    :cond_10
    const/4 v1, -0x1

    .line 442
    :cond_11
    :goto_a
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-wide/from16 v9, v24

    .line 446
    .line 447
    const/4 v2, 0x1

    .line 448
    :goto_b
    add-int/2addr v6, v2

    .line 449
    move-object/from16 v1, v22

    .line 450
    .line 451
    move/from16 v8, v23

    .line 452
    .line 453
    move-object/from16 v26, v11

    .line 454
    .line 455
    move v11, v2

    .line 456
    move-object/from16 v2, v26

    .line 457
    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :cond_12
    iput v7, v0, Le3/n;->C:I

    .line 461
    .line 462
    iput-wide v9, v0, Le3/n;->D:J

    .line 463
    .line 464
    const/4 v1, 0x0

    .line 465
    new-array v1, v1, [Le3/n$a;

    .line 466
    .line 467
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    check-cast v1, [Le3/n$a;

    .line 472
    .line 473
    iput-object v1, v0, Le3/n;->A:[Le3/n$a;

    .line 474
    .line 475
    invoke-static {v1}, Le3/n;->k([Le3/n$a;)[[J

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    iput-object v1, v0, Le3/n;->B:[[J

    .line 480
    .line 481
    iget-object v1, v0, Le3/n;->z:Lk2/t;

    .line 482
    .line 483
    invoke-interface {v1}, Lk2/t;->endTracks()V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Le3/n;->z:Lk2/t;

    .line 487
    .line 488
    invoke-interface {v1, v0}, Lk2/t;->d(Lk2/m0;)V

    .line 489
    .line 490
    .line 491
    return-void
.end method

.method private C(J)V
    .locals 13

    .line 1
    iget v0, p0, Le3/n;->l:I

    .line 2
    .line 3
    const v1, 0x6d707664

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lz2/a;

    .line 9
    .line 10
    iget v1, p0, Le3/n;->n:I

    .line 11
    .line 12
    int-to-long v2, v1

    .line 13
    add-long v9, p1, v2

    .line 14
    .line 15
    iget-wide v2, p0, Le3/n;->m:J

    .line 16
    .line 17
    int-to-long v4, v1

    .line 18
    sub-long v11, v2, v4

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move-wide v5, p1

    .line 29
    invoke-direct/range {v2 .. v12}, Lz2/a;-><init>(JJJJJ)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Le3/n;->F:Lz2/a;

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private D(Lk2/s;)Z
    .locals 8

    .line 1
    iget v0, p0, Le3/n;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0, v3, v2, v1}, Lk2/s;->readFully([BIIZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Le3/n;->z()V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    iput v2, p0, Le3/n;->n:I

    .line 26
    .line 27
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    iput-wide v4, p0, Le3/n;->m:J

    .line 39
    .line 40
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Le3/n;->l:I

    .line 47
    .line 48
    :cond_1
    iget-wide v4, p0, Le3/n;->m:J

    .line 49
    .line 50
    const-wide/16 v6, 0x1

    .line 51
    .line 52
    cmp-long v0, v4, v6

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0, v2, v2}, Lk2/s;->readFully([BII)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Le3/n;->n:I

    .line 66
    .line 67
    add-int/2addr v0, v2

    .line 68
    iput v0, p0, Le3/n;->n:I

    .line 69
    .line 70
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    iput-wide v4, p0, Le3/n;->m:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long v0, v4, v6

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-wide/16 v6, -0x1

    .line 90
    .line 91
    cmp-long v0, v4, v6

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroidx/media3/container/d$b;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-wide v4, v0, Landroidx/media3/container/d$b;->b:J

    .line 106
    .line 107
    :cond_3
    cmp-long v0, v4, v6

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    sub-long/2addr v4, v6

    .line 116
    iget v0, p0, Le3/n;->n:I

    .line 117
    .line 118
    int-to-long v6, v0

    .line 119
    add-long/2addr v4, v6

    .line 120
    iput-wide v4, p0, Le3/n;->m:J

    .line 121
    .line 122
    :cond_4
    :goto_0
    iget-wide v4, p0, Le3/n;->m:J

    .line 123
    .line 124
    iget v0, p0, Le3/n;->n:I

    .line 125
    .line 126
    int-to-long v6, v0

    .line 127
    cmp-long v0, v4, v6

    .line 128
    .line 129
    if-ltz v0, :cond_b

    .line 130
    .line 131
    iget v0, p0, Le3/n;->l:I

    .line 132
    .line 133
    invoke-static {v0}, Le3/n;->H(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    iget-wide v4, p0, Le3/n;->m:J

    .line 144
    .line 145
    add-long/2addr v2, v4

    .line 146
    iget v0, p0, Le3/n;->n:I

    .line 147
    .line 148
    int-to-long v6, v0

    .line 149
    sub-long/2addr v2, v6

    .line 150
    int-to-long v6, v0

    .line 151
    cmp-long v0, v4, v6

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget v0, p0, Le3/n;->l:I

    .line 156
    .line 157
    const v4, 0x6d657461

    .line 158
    .line 159
    .line 160
    if-ne v0, v4, :cond_5

    .line 161
    .line 162
    invoke-direct {p0, p1}, Le3/n;->x(Lk2/s;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object p1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 166
    .line 167
    new-instance v0, Landroidx/media3/container/d$b;

    .line 168
    .line 169
    iget v4, p0, Le3/n;->l:I

    .line 170
    .line 171
    invoke-direct {v0, v4, v2, v3}, Landroidx/media3/container/d$b;-><init>(IJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-wide v4, p0, Le3/n;->m:J

    .line 178
    .line 179
    iget p1, p0, Le3/n;->n:I

    .line 180
    .line 181
    int-to-long v6, p1

    .line 182
    cmp-long p1, v4, v6

    .line 183
    .line 184
    if-nez p1, :cond_6

    .line 185
    .line 186
    invoke-direct {p0, v2, v3}, Le3/n;->y(J)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-direct {p0}, Le3/n;->n()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    iget v0, p0, Le3/n;->l:I

    .line 195
    .line 196
    invoke-static {v0}, Le3/n;->I(I)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    iget p1, p0, Le3/n;->n:I

    .line 203
    .line 204
    if-ne p1, v2, :cond_8

    .line 205
    .line 206
    move p1, v1

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    move p1, v3

    .line 209
    :goto_1
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 210
    .line 211
    .line 212
    iget-wide v4, p0, Le3/n;->m:J

    .line 213
    .line 214
    const-wide/32 v6, 0x7fffffff

    .line 215
    .line 216
    .line 217
    cmp-long p1, v4, v6

    .line 218
    .line 219
    if-gtz p1, :cond_9

    .line 220
    .line 221
    move p1, v1

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    move p1, v3

    .line 224
    :goto_2
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 228
    .line 229
    iget-wide v4, p0, Le3/n;->m:J

    .line 230
    .line 231
    long-to-int v0, v4

    .line 232
    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Le3/n;->f:Landroidx/media3/common/util/j0;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    .line 247
    .line 248
    iput-object p1, p0, Le3/n;->o:Landroidx/media3/common/util/j0;

    .line 249
    .line 250
    iput v1, p0, Le3/n;->k:I

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_a
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 254
    .line 255
    .line 256
    move-result-wide v2

    .line 257
    iget p1, p0, Le3/n;->n:I

    .line 258
    .line 259
    int-to-long v4, p1

    .line 260
    sub-long/2addr v2, v4

    .line 261
    invoke-direct {p0, v2, v3}, Le3/n;->C(J)V

    .line 262
    .line 263
    .line 264
    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Le3/n;->o:Landroidx/media3/common/util/j0;

    .line 266
    .line 267
    iput v1, p0, Le3/n;->k:I

    .line 268
    .line 269
    :goto_3
    return v1

    .line 270
    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    .line 271
    .line 272
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    throw p1
.end method

.method private E(Lk2/s;Lk2/l0;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Le3/n;->m:J

    .line 2
    .line 3
    iget v2, p0, Le3/n;->n:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    sub-long/2addr v0, v2

    .line 7
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-object v4, p0, Le3/n;->o:Landroidx/media3/common/util/j0;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->e()[B

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    iget v8, p0, Le3/n;->n:I

    .line 23
    .line 24
    long-to-int v0, v0

    .line 25
    invoke-interface {p1, v7, v8, v0}, Lk2/s;->readFully([BII)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Le3/n;->l:I

    .line 29
    .line 30
    const v0, 0x66747970

    .line 31
    .line 32
    .line 33
    if-ne p1, v0, :cond_0

    .line 34
    .line 35
    iput-boolean v5, p0, Le3/n;->u:Z

    .line 36
    .line 37
    invoke-static {v4}, Le3/n;->A(Landroidx/media3/common/util/j0;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Le3/n;->E:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroidx/media3/container/d$b;

    .line 59
    .line 60
    new-instance v0, Landroidx/media3/container/d$c;

    .line 61
    .line 62
    iget v1, p0, Le3/n;->l:I

    .line 63
    .line 64
    invoke-direct {v0, v1, v4}, Landroidx/media3/container/d$c;-><init>(ILandroidx/media3/common/util/j0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/media3/container/d$b;->c(Landroidx/media3/container/d$c;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v4, p0, Le3/n;->u:Z

    .line 72
    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    iget v4, p0, Le3/n;->l:I

    .line 76
    .line 77
    const v7, 0x6d646174

    .line 78
    .line 79
    .line 80
    if-ne v4, v7, :cond_2

    .line 81
    .line 82
    iput v5, p0, Le3/n;->E:I

    .line 83
    .line 84
    :cond_2
    const-wide/32 v7, 0x40000

    .line 85
    .line 86
    .line 87
    cmp-long v4, v0, v7

    .line 88
    .line 89
    if-gez v4, :cond_4

    .line 90
    .line 91
    long-to-int v0, v0

    .line 92
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    move p1, v6

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    add-long/2addr v7, v0

    .line 102
    iput-wide v7, p2, Lk2/l0;->a:J

    .line 103
    .line 104
    move p1, v5

    .line 105
    :goto_1
    invoke-direct {p0, v2, v3}, Le3/n;->y(J)V

    .line 106
    .line 107
    .line 108
    iget-boolean v0, p0, Le3/n;->v:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iput-boolean v5, p0, Le3/n;->x:Z

    .line 113
    .line 114
    iget-wide v0, p0, Le3/n;->w:J

    .line 115
    .line 116
    iput-wide v0, p2, Lk2/l0;->a:J

    .line 117
    .line 118
    iput-boolean v6, p0, Le3/n;->v:Z

    .line 119
    .line 120
    move p1, v5

    .line 121
    :cond_5
    if-eqz p1, :cond_6

    .line 122
    .line 123
    iget p1, p0, Le3/n;->k:I

    .line 124
    .line 125
    const/4 p2, 0x2

    .line 126
    if-eq p1, p2, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move v5, v6

    .line 130
    :goto_2
    return v5
.end method

.method private F(Lk2/s;Lk2/l0;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Lk2/s;->getPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget v4, v0, Le3/n;->p:I

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Le3/n;->s(J)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iput v4, v0, Le3/n;->p:I

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    return v5

    .line 23
    :cond_0
    iget-object v4, v0, Le3/n;->A:[Le3/n$a;

    .line 24
    .line 25
    iget v6, v0, Le3/n;->p:I

    .line 26
    .line 27
    aget-object v4, v4, v6

    .line 28
    .line 29
    iget-object v14, v4, Le3/n$a;->c:Lk2/s0;

    .line 30
    .line 31
    iget v15, v4, Le3/n$a;->e:I

    .line 32
    .line 33
    iget-object v6, v4, Le3/n$a;->b:Le3/w;

    .line 34
    .line 35
    iget-object v7, v6, Le3/w;->c:[J

    .line 36
    .line 37
    aget-wide v8, v7, v15

    .line 38
    .line 39
    iget-wide v10, v0, Le3/n;->y:J

    .line 40
    .line 41
    add-long/2addr v8, v10

    .line 42
    iget-object v6, v6, Le3/w;->d:[I

    .line 43
    .line 44
    aget v6, v6, v15

    .line 45
    .line 46
    iget-object v13, v4, Le3/n$a;->d:Lk2/t0;

    .line 47
    .line 48
    sub-long v2, v8, v2

    .line 49
    .line 50
    iget v7, v0, Le3/n;->q:I

    .line 51
    .line 52
    int-to-long v10, v7

    .line 53
    add-long/2addr v2, v10

    .line 54
    const-wide/16 v10, 0x0

    .line 55
    .line 56
    cmp-long v7, v2, v10

    .line 57
    .line 58
    const/4 v12, 0x1

    .line 59
    if-ltz v7, :cond_11

    .line 60
    .line 61
    const-wide/32 v10, 0x40000

    .line 62
    .line 63
    .line 64
    cmp-long v7, v2, v10

    .line 65
    .line 66
    if-ltz v7, :cond_1

    .line 67
    .line 68
    move-object/from16 v1, p2

    .line 69
    .line 70
    move/from16 v17, v12

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_1
    iget-object v7, v4, Le3/n$a;->a:Le3/t;

    .line 75
    .line 76
    iget v7, v7, Le3/t;->h:I

    .line 77
    .line 78
    if-ne v7, v12, :cond_2

    .line 79
    .line 80
    const-wide/16 v7, 0x8

    .line 81
    .line 82
    add-long/2addr v2, v7

    .line 83
    add-int/lit8 v6, v6, -0x8

    .line 84
    .line 85
    :cond_2
    long-to-int v2, v2

    .line 86
    invoke-interface {v1, v2}, Lk2/s;->skipFully(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v4, Le3/n$a;->a:Le3/t;

    .line 90
    .line 91
    iget-object v2, v2, Le3/t;->g:Landroidx/media3/common/r;

    .line 92
    .line 93
    invoke-direct {v0, v2}, Le3/n;->l(Landroidx/media3/common/r;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    iput-boolean v12, v0, Le3/n;->t:Z

    .line 100
    .line 101
    :cond_3
    iget-object v2, v4, Le3/n$a;->a:Le3/t;

    .line 102
    .line 103
    iget v3, v2, Le3/t;->k:I

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    iget-object v2, v0, Le3/n;->d:Landroidx/media3/common/util/j0;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    aput-byte v10, v2, v10

    .line 115
    .line 116
    aput-byte v10, v2, v12

    .line 117
    .line 118
    const/4 v3, 0x2

    .line 119
    aput-byte v10, v2, v3

    .line 120
    .line 121
    iget-object v3, v4, Le3/n$a;->a:Le3/t;

    .line 122
    .line 123
    iget v3, v3, Le3/t;->k:I

    .line 124
    .line 125
    const/4 v7, 0x4

    .line 126
    rsub-int/lit8 v3, v3, 0x4

    .line 127
    .line 128
    add-int/2addr v6, v3

    .line 129
    :goto_0
    iget v8, v0, Le3/n;->r:I

    .line 130
    .line 131
    if-ge v8, v6, :cond_8

    .line 132
    .line 133
    iget v8, v0, Le3/n;->s:I

    .line 134
    .line 135
    if-nez v8, :cond_7

    .line 136
    .line 137
    iget-object v8, v4, Le3/n$a;->a:Le3/t;

    .line 138
    .line 139
    iget v9, v8, Le3/t;->k:I

    .line 140
    .line 141
    iget-boolean v5, v0, Le3/n;->t:Z

    .line 142
    .line 143
    if-nez v5, :cond_4

    .line 144
    .line 145
    iget-object v5, v8, Le3/t;->g:Landroidx/media3/common/r;

    .line 146
    .line 147
    invoke-static {v5}, Landroidx/media3/container/g;->o(Landroidx/media3/common/r;)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    add-int/2addr v5, v9

    .line 152
    iget-object v8, v4, Le3/n$a;->b:Le3/w;

    .line 153
    .line 154
    iget-object v8, v8, Le3/w;->d:[I

    .line 155
    .line 156
    aget v8, v8, v15

    .line 157
    .line 158
    iget v11, v0, Le3/n;->q:I

    .line 159
    .line 160
    sub-int/2addr v8, v11

    .line 161
    if-gt v5, v8, :cond_4

    .line 162
    .line 163
    iget-object v5, v4, Le3/n$a;->a:Le3/t;

    .line 164
    .line 165
    iget-object v5, v5, Le3/t;->g:Landroidx/media3/common/r;

    .line 166
    .line 167
    invoke-static {v5}, Landroidx/media3/container/g;->o(Landroidx/media3/common/r;)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    iget-object v8, v4, Le3/n$a;->a:Le3/t;

    .line 172
    .line 173
    iget v8, v8, Le3/t;->k:I

    .line 174
    .line 175
    add-int v9, v8, v5

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    move v5, v10

    .line 179
    :goto_1
    invoke-interface {v1, v2, v3, v9}, Lk2/s;->readFully([BII)V

    .line 180
    .line 181
    .line 182
    iget v8, v0, Le3/n;->q:I

    .line 183
    .line 184
    add-int/2addr v8, v9

    .line 185
    iput v8, v0, Le3/n;->q:I

    .line 186
    .line 187
    iget-object v8, v0, Le3/n;->d:Landroidx/media3/common/util/j0;

    .line 188
    .line 189
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/j0;->W(I)V

    .line 190
    .line 191
    .line 192
    iget-object v8, v0, Le3/n;->d:Landroidx/media3/common/util/j0;

    .line 193
    .line 194
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-ltz v8, :cond_6

    .line 199
    .line 200
    sub-int/2addr v8, v5

    .line 201
    iput v8, v0, Le3/n;->s:I

    .line 202
    .line 203
    iget-object v8, v0, Le3/n;->c:Landroidx/media3/common/util/j0;

    .line 204
    .line 205
    invoke-virtual {v8, v10}, Landroidx/media3/common/util/j0;->W(I)V

    .line 206
    .line 207
    .line 208
    iget-object v8, v0, Le3/n;->c:Landroidx/media3/common/util/j0;

    .line 209
    .line 210
    invoke-interface {v14, v8, v7}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 211
    .line 212
    .line 213
    iget v8, v0, Le3/n;->r:I

    .line 214
    .line 215
    add-int/2addr v8, v7

    .line 216
    iput v8, v0, Le3/n;->r:I

    .line 217
    .line 218
    if-lez v5, :cond_5

    .line 219
    .line 220
    iget-object v8, v0, Le3/n;->d:Landroidx/media3/common/util/j0;

    .line 221
    .line 222
    invoke-interface {v14, v8, v5}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 223
    .line 224
    .line 225
    iget v8, v0, Le3/n;->r:I

    .line 226
    .line 227
    add-int/2addr v8, v5

    .line 228
    iput v8, v0, Le3/n;->r:I

    .line 229
    .line 230
    iget-object v8, v4, Le3/n$a;->a:Le3/t;

    .line 231
    .line 232
    iget-object v8, v8, Le3/t;->g:Landroidx/media3/common/r;

    .line 233
    .line 234
    invoke-static {v2, v7, v5, v8}, Landroidx/media3/container/g;->k([BIILandroidx/media3/common/r;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_5

    .line 239
    .line 240
    iput-boolean v12, v0, Le3/n;->t:Z

    .line 241
    .line 242
    :cond_5
    :goto_2
    const/4 v5, -0x1

    .line 243
    goto :goto_0

    .line 244
    :cond_6
    const-string v1, "Invalid NAL length"

    .line 245
    .line 246
    const/4 v5, 0x0

    .line 247
    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    throw v1

    .line 252
    :cond_7
    const/4 v5, 0x0

    .line 253
    invoke-interface {v14, v1, v8, v10}, Lk2/s0;->e(Landroidx/media3/common/j;IZ)I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    iget v9, v0, Le3/n;->q:I

    .line 258
    .line 259
    add-int/2addr v9, v8

    .line 260
    iput v9, v0, Le3/n;->q:I

    .line 261
    .line 262
    iget v9, v0, Le3/n;->r:I

    .line 263
    .line 264
    add-int/2addr v9, v8

    .line 265
    iput v9, v0, Le3/n;->r:I

    .line 266
    .line 267
    iget v9, v0, Le3/n;->s:I

    .line 268
    .line 269
    sub-int/2addr v9, v8

    .line 270
    iput v9, v0, Le3/n;->s:I

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_8
    const/4 v5, 0x0

    .line 274
    :cond_9
    move v1, v6

    .line 275
    goto :goto_4

    .line 276
    :cond_a
    const/4 v5, 0x0

    .line 277
    iget-object v2, v2, Le3/t;->g:Landroidx/media3/common/r;

    .line 278
    .line 279
    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 280
    .line 281
    const-string v3, "audio/ac4"

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_c

    .line 288
    .line 289
    iget v2, v0, Le3/n;->r:I

    .line 290
    .line 291
    if-nez v2, :cond_b

    .line 292
    .line 293
    iget-object v2, v0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 294
    .line 295
    invoke-static {v6, v2}, Lk2/c;->a(ILandroidx/media3/common/util/j0;)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 299
    .line 300
    const/4 v3, 0x7

    .line 301
    invoke-interface {v14, v2, v3}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 302
    .line 303
    .line 304
    iget v2, v0, Le3/n;->r:I

    .line 305
    .line 306
    add-int/2addr v2, v3

    .line 307
    iput v2, v0, Le3/n;->r:I

    .line 308
    .line 309
    :cond_b
    add-int/lit8 v6, v6, 0x7

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_c
    if-eqz v13, :cond_d

    .line 313
    .line 314
    invoke-virtual {v13, v1}, Lk2/t0;->d(Lk2/s;)V

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_3
    iget v2, v0, Le3/n;->r:I

    .line 318
    .line 319
    if-ge v2, v6, :cond_9

    .line 320
    .line 321
    sub-int v2, v6, v2

    .line 322
    .line 323
    invoke-interface {v14, v1, v2, v10}, Lk2/s0;->e(Landroidx/media3/common/j;IZ)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    iget v3, v0, Le3/n;->q:I

    .line 328
    .line 329
    add-int/2addr v3, v2

    .line 330
    iput v3, v0, Le3/n;->q:I

    .line 331
    .line 332
    iget v3, v0, Le3/n;->r:I

    .line 333
    .line 334
    add-int/2addr v3, v2

    .line 335
    iput v3, v0, Le3/n;->r:I

    .line 336
    .line 337
    iget v3, v0, Le3/n;->s:I

    .line 338
    .line 339
    sub-int/2addr v3, v2

    .line 340
    iput v3, v0, Le3/n;->s:I

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :goto_4
    iget-object v2, v4, Le3/n$a;->b:Le3/w;

    .line 344
    .line 345
    iget-object v3, v2, Le3/w;->f:[J

    .line 346
    .line 347
    aget-wide v8, v3, v15

    .line 348
    .line 349
    iget-object v2, v2, Le3/w;->g:[I

    .line 350
    .line 351
    aget v2, v2, v15

    .line 352
    .line 353
    iget-boolean v3, v0, Le3/n;->t:Z

    .line 354
    .line 355
    if-nez v3, :cond_e

    .line 356
    .line 357
    const/high16 v3, 0x4000000

    .line 358
    .line 359
    or-int/2addr v2, v3

    .line 360
    :cond_e
    if-eqz v13, :cond_f

    .line 361
    .line 362
    const/4 v3, 0x0

    .line 363
    const/16 v16, 0x0

    .line 364
    .line 365
    move-object v6, v13

    .line 366
    move-object v7, v14

    .line 367
    move v11, v10

    .line 368
    move v10, v2

    .line 369
    move-object v2, v5

    .line 370
    move v5, v11

    .line 371
    move v11, v1

    .line 372
    move/from16 v17, v12

    .line 373
    .line 374
    move v12, v3

    .line 375
    move-object v1, v13

    .line 376
    move-object/from16 v13, v16

    .line 377
    .line 378
    invoke-virtual/range {v6 .. v13}, Lk2/t0;->c(Lk2/s0;JIIILk2/s0$a;)V

    .line 379
    .line 380
    .line 381
    add-int/lit8 v15, v15, 0x1

    .line 382
    .line 383
    iget-object v3, v4, Le3/n$a;->b:Le3/w;

    .line 384
    .line 385
    iget v3, v3, Le3/w;->b:I

    .line 386
    .line 387
    if-ne v15, v3, :cond_10

    .line 388
    .line 389
    invoke-virtual {v1, v14, v2}, Lk2/t0;->a(Lk2/s0;Lk2/s0$a;)V

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_f
    move v5, v10

    .line 394
    move/from16 v17, v12

    .line 395
    .line 396
    const/4 v11, 0x0

    .line 397
    const/4 v12, 0x0

    .line 398
    move-object v6, v14

    .line 399
    move-wide v7, v8

    .line 400
    move v9, v2

    .line 401
    move v10, v1

    .line 402
    invoke-interface/range {v6 .. v12}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 403
    .line 404
    .line 405
    :cond_10
    :goto_5
    iget v1, v4, Le3/n$a;->e:I

    .line 406
    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    .line 409
    iput v1, v4, Le3/n$a;->e:I

    .line 410
    .line 411
    const/4 v1, -0x1

    .line 412
    iput v1, v0, Le3/n;->p:I

    .line 413
    .line 414
    iput v5, v0, Le3/n;->q:I

    .line 415
    .line 416
    iput v5, v0, Le3/n;->r:I

    .line 417
    .line 418
    iput v5, v0, Le3/n;->s:I

    .line 419
    .line 420
    iput-boolean v5, v0, Le3/n;->t:Z

    .line 421
    .line 422
    return v5

    .line 423
    :cond_11
    move/from16 v17, v12

    .line 424
    .line 425
    move-object/from16 v1, p2

    .line 426
    .line 427
    :goto_6
    iput-wide v8, v1, Lk2/l0;->a:J

    .line 428
    .line 429
    return v17
.end method

.method private G(Lk2/s;Lk2/l0;)I
    .locals 4

    .line 1
    iget-object v0, p0, Le3/n;->h:Le3/q;

    .line 2
    .line 3
    iget-object v1, p0, Le3/n;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Le3/q;->c(Lk2/s;Lk2/l0;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p2, Lk2/l0;->a:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p2, v0, v2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Le3/n;->n()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return p1
.end method

.method private static H(I)Z
    .locals 1

    .line 1
    const v0, 0x6d6f6f76

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x7472616b

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x6d646961

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x6d696e66

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x7374626c

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x65647473

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x6d657461

    .line 32
    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x61787465

    .line 37
    .line 38
    .line 39
    if-ne p0, v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 45
    :goto_1
    return p0
.end method

.method private static I(I)Z
    .locals 1

    .line 1
    const v0, 0x6d646864

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x6d766864

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x68646c72    # 4.3148E24f

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x73747364

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x73747473

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x73747373

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x63747473

    .line 32
    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x656c7374

    .line 37
    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    const v0, 0x73747363

    .line 42
    .line 43
    .line 44
    if-eq p0, v0, :cond_1

    .line 45
    .line 46
    const v0, 0x7374737a

    .line 47
    .line 48
    .line 49
    if-eq p0, v0, :cond_1

    .line 50
    .line 51
    const v0, 0x73747a32

    .line 52
    .line 53
    .line 54
    if-eq p0, v0, :cond_1

    .line 55
    .line 56
    const v0, 0x7374636f

    .line 57
    .line 58
    .line 59
    if-eq p0, v0, :cond_1

    .line 60
    .line 61
    const v0, 0x636f3634

    .line 62
    .line 63
    .line 64
    if-eq p0, v0, :cond_1

    .line 65
    .line 66
    const v0, 0x746b6864

    .line 67
    .line 68
    .line 69
    if-eq p0, v0, :cond_1

    .line 70
    .line 71
    const v0, 0x66747970

    .line 72
    .line 73
    .line 74
    if-eq p0, v0, :cond_1

    .line 75
    .line 76
    const v0, 0x75647461

    .line 77
    .line 78
    .line 79
    if-eq p0, v0, :cond_1

    .line 80
    .line 81
    const v0, 0x6b657973

    .line 82
    .line 83
    .line 84
    if-eq p0, v0, :cond_1

    .line 85
    .line 86
    const v0, 0x696c7374

    .line 87
    .line 88
    .line 89
    if-ne p0, v0, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/4 p0, 0x0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 95
    :goto_1
    return p0
.end method

.method private J(Landroidx/media3/common/x;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Le3/n;->b:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x40

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-string v1, "auxiliary.tracks.offset"

    .line 12
    .line 13
    invoke-static {p1, v1}, Le3/j;->a(Landroidx/media3/common/x;Ljava/lang/String;)Landroidx/media3/container/b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroidx/media3/common/util/j0;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/media3/container/b;->b:[B

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->O()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    cmp-long p1, v1, v3

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iput-wide v1, p0, Le3/n;->w:J

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    return v0
.end method

.method private K(Le3/n$a;J)V
    .locals 3

    .line 1
    iget-object v0, p1, Le3/n$a;->b:Le3/w;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Le3/w;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Le3/w;->b(J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    iput v1, p1, Le3/n$a;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic h(Le3/t;)Le3/t;
    .locals 0

    .line 1
    invoke-static {p0}, Le3/n;->t(Le3/t;)Le3/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Le3/n;->u()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static j(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x71742020

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method private static k([Le3/n$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [[J

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    new-array v1, v1, [I

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    array-length v3, p0

    .line 11
    new-array v3, v3, [Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    array-length v6, p0

    .line 16
    if-ge v5, v6, :cond_0

    .line 17
    .line 18
    aget-object v6, p0, v5

    .line 19
    .line 20
    iget-object v6, v6, Le3/n$a;->b:Le3/w;

    .line 21
    .line 22
    iget v6, v6, Le3/w;->b:I

    .line 23
    .line 24
    new-array v6, v6, [J

    .line 25
    .line 26
    aput-object v6, v0, v5

    .line 27
    .line 28
    aget-object v6, p0, v5

    .line 29
    .line 30
    iget-object v6, v6, Le3/n$a;->b:Le3/w;

    .line 31
    .line 32
    iget-object v6, v6, Le3/w;->f:[J

    .line 33
    .line 34
    aget-wide v7, v6, v4

    .line 35
    .line 36
    aput-wide v7, v2, v5

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    move v7, v4

    .line 44
    :goto_1
    array-length v8, p0

    .line 45
    if-ge v7, v8, :cond_4

    .line 46
    .line 47
    const-wide v8, 0x7fffffffffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v10, -0x1

    .line 53
    move v11, v4

    .line 54
    :goto_2
    array-length v12, p0

    .line 55
    if-ge v11, v12, :cond_2

    .line 56
    .line 57
    aget-boolean v12, v3, v11

    .line 58
    .line 59
    if-nez v12, :cond_1

    .line 60
    .line 61
    aget-wide v12, v2, v11

    .line 62
    .line 63
    cmp-long v14, v12, v8

    .line 64
    .line 65
    if-gtz v14, :cond_1

    .line 66
    .line 67
    move v10, v11

    .line 68
    move-wide v8, v12

    .line 69
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    aget v8, v1, v10

    .line 73
    .line 74
    aget-object v9, v0, v10

    .line 75
    .line 76
    aput-wide v5, v9, v8

    .line 77
    .line 78
    aget-object v11, p0, v10

    .line 79
    .line 80
    iget-object v11, v11, Le3/n$a;->b:Le3/w;

    .line 81
    .line 82
    iget-object v12, v11, Le3/w;->d:[I

    .line 83
    .line 84
    aget v12, v12, v8

    .line 85
    .line 86
    int-to-long v12, v12

    .line 87
    add-long/2addr v5, v12

    .line 88
    const/4 v12, 0x1

    .line 89
    add-int/2addr v8, v12

    .line 90
    aput v8, v1, v10

    .line 91
    .line 92
    array-length v9, v9

    .line 93
    if-ge v8, v9, :cond_3

    .line 94
    .line 95
    iget-object v9, v11, Le3/w;->f:[J

    .line 96
    .line 97
    aget-wide v8, v9, v8

    .line 98
    .line 99
    aput-wide v8, v2, v10

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    aput-boolean v12, v3, v10

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-object v0
.end method

.method private l(Landroidx/media3/common/r;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget p1, p0, Le3/n;->b:I

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0x20

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    return v1

    .line 22
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "video/hevc"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget p1, p0, Le3/n;->b:I

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x80

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_1
    return v1

    .line 41
    :cond_3
    return v2
.end method

.method public static m(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    or-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    :cond_1
    return v0
.end method

.method private n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le3/n;->k:I

    .line 3
    .line 4
    iput v0, p0, Le3/n;->n:I

    .line 5
    .line 6
    return-void
.end method

.method private o(Landroidx/media3/common/x;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "auxiliary.tracks.map"

    .line 2
    .line 3
    invoke-static {p1, v0}, Le3/j;->a(Landroidx/media3/common/x;Ljava/lang/String;)Landroidx/media3/container/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/media3/container/b;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/container/b;->b()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_3

    .line 33
    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x1

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    if-eq v3, v4, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    if-eq v3, v5, :cond_2

    .line 52
    .line 53
    if-eq v3, v4, :cond_0

    .line 54
    .line 55
    move v4, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v4, v5

    .line 60
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-object v0
.end method

.method private static r(Le3/w;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Le3/w;->a(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Le3/w;->b(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method private s(J)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    move v6, v4

    .line 5
    const/4 v7, 0x0

    .line 6
    const-wide v8, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    const-wide v11, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v13, 0x1

    .line 18
    const-wide v14, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v3, v0, Le3/n;->A:[Le3/n$a;

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    if-ge v7, v5, :cond_7

    .line 27
    .line 28
    aget-object v3, v3, v7

    .line 29
    .line 30
    iget v5, v3, Le3/n$a;->e:I

    .line 31
    .line 32
    iget-object v3, v3, Le3/n$a;->b:Le3/w;

    .line 33
    .line 34
    iget v1, v3, Le3/w;->b:I

    .line 35
    .line 36
    if-ne v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    iget-object v1, v3, Le3/w;->c:[J

    .line 40
    .line 41
    aget-wide v2, v1, v5

    .line 42
    .line 43
    iget-object v1, v0, Le3/n;->B:[[J

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, [[J

    .line 50
    .line 51
    aget-object v1, v1, v7

    .line 52
    .line 53
    aget-wide v16, v1, v5

    .line 54
    .line 55
    sub-long v2, v2, p1

    .line 56
    .line 57
    const-wide/16 v18, 0x0

    .line 58
    .line 59
    cmp-long v1, v2, v18

    .line 60
    .line 61
    if-ltz v1, :cond_2

    .line 62
    .line 63
    const-wide/32 v18, 0x40000

    .line 64
    .line 65
    .line 66
    cmp-long v1, v2, v18

    .line 67
    .line 68
    if-ltz v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 74
    :goto_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    if-nez v13, :cond_4

    .line 77
    .line 78
    :cond_3
    if-ne v1, v13, :cond_5

    .line 79
    .line 80
    cmp-long v5, v2, v14

    .line 81
    .line 82
    if-gez v5, :cond_5

    .line 83
    .line 84
    :cond_4
    move v13, v1

    .line 85
    move-wide v14, v2

    .line 86
    move v6, v7

    .line 87
    move-wide/from16 v11, v16

    .line 88
    .line 89
    :cond_5
    cmp-long v2, v16, v8

    .line 90
    .line 91
    if-gez v2, :cond_6

    .line 92
    .line 93
    move v10, v1

    .line 94
    move v4, v7

    .line 95
    move-wide/from16 v8, v16

    .line 96
    .line 97
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v1, v8, v1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    if-eqz v10, :cond_8

    .line 110
    .line 111
    const-wide/32 v1, 0xa00000

    .line 112
    .line 113
    .line 114
    add-long/2addr v8, v1

    .line 115
    cmp-long v1, v11, v8

    .line 116
    .line 117
    if-gez v1, :cond_9

    .line 118
    .line 119
    :cond_8
    move v4, v6

    .line 120
    :cond_9
    return v4
.end method

.method private static synthetic t(Le3/t;)Le3/t;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic u()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Le3/n;

    .line 2
    .line 3
    sget-object v1, Lh3/s$a;->a:Lh3/s$a;

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Le3/n;-><init>(Lh3/s$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Lk2/r;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    return-object v1
.end method

.method private static v(Le3/w;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le3/n;->r(Le3/w;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Le3/w;->c:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private w(Landroidx/media3/common/x;)V
    .locals 4

    .line 1
    const-string v0, "auxiliary.tracks.interleaved"

    .line 2
    .line 3
    invoke-static {p1, v0}, Le3/j;->a(Landroidx/media3/common/x;Ljava/lang/String;)Landroidx/media3/container/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/media3/container/b;->b:[B

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-byte p1, p1, v0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Le3/n;->w:J

    .line 17
    .line 18
    const-wide/16 v2, 0x10

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Le3/n;->y:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private x(Lk2/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {p1, v0, v2, v1}, Lk2/s;->peekFully([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 19
    .line 20
    invoke-static {v0}, Le3/b;->f(Landroidx/media3/common/util/j0;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Le3/n;->e:Landroidx/media3/common/util/j0;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->f()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private y(J)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/media3/container/d$b;

    .line 17
    .line 18
    iget-wide v2, v0, Landroidx/media3/container/d$b;->b:J

    .line 19
    .line 20
    cmp-long v0, v2, p1

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/media3/container/d$b;

    .line 31
    .line 32
    iget v2, v0, Landroidx/media3/container/d;->a:I

    .line 33
    .line 34
    const v3, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v0}, Le3/n;->B(Landroidx/media3/container/d$b;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Le3/n;->v:Z

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iput v1, p0, Le3/n;->k:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroidx/media3/container/d$b;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroidx/media3/container/d$b;->b(Landroidx/media3/container/d$b;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget p1, p0, Le3/n;->k:I

    .line 75
    .line 76
    if-eq p1, v1, :cond_3

    .line 77
    .line 78
    invoke-direct {p0}, Le3/n;->n()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method private z()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Le3/n;->E:I

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v1, v2, :cond_1

    .line 6
    .line 7
    iget v1, p0, Le3/n;->b:I

    .line 8
    .line 9
    and-int/2addr v1, v2

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Le3/n;->z:Lk2/t;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-interface {v1, v0, v2}, Lk2/t;->track(II)Lk2/s0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Le3/n;->F:Lz2/a;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Landroidx/media3/common/x;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    new-array v4, v4, [Landroidx/media3/common/x$a;

    .line 29
    .line 30
    aput-object v2, v4, v0

    .line 31
    .line 32
    invoke-direct {v3, v4}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v3

    .line 36
    :goto_0
    new-instance v2, Landroidx/media3/common/r$b;

    .line 37
    .line 38
    invoke-direct {v2}, Landroidx/media3/common/r$b;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v1, v0}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Le3/n;->z:Lk2/t;

    .line 53
    .line 54
    invoke-interface {v0}, Lk2/t;->endTracks()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Le3/n;->z:Lk2/t;

    .line 58
    .line 59
    new-instance v1, Lk2/m0$b;

    .line 60
    .line 61
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v3}, Lk2/m0$b;-><init>(J)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Lk2/t;->d(Lk2/m0;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 3

    .line 1
    iget v0, p0, Le3/n;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-static {p1, v0}, Le3/s;->d(Lk2/s;Z)Lk2/q0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    iput-object v0, p0, Le3/n;->j:Lcom/google/common/collect/ImmutableList;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_2
    return v1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Le3/n;->k:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Le3/n;->G(Lk2/s;Lk2/l0;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2}, Le3/n;->F(Lk2/s;Lk2/l0;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2}, Le3/n;->E(Lk2/s;Lk2/l0;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    invoke-direct {p0, p1}, Le3/n;->D(Lk2/s;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 2

    .line 1
    iget v0, p0, Le3/n;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lh3/t;

    .line 8
    .line 9
    iget-object v1, p0, Le3/n;->a:Lh3/s$a;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lh3/t;-><init>(Lk2/t;Lh3/s$a;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Le3/n;->z:Lk2/t;

    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le3/n;->q()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le3/n;->D:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lk2/m0$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le3/n;->p(JI)Lk2/m0$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public p(JI)Lk2/m0$a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v0, Le3/n;->A:[Le3/n$a;

    .line 8
    .line 9
    array-length v5, v4

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    new-instance v1, Lk2/m0$a;

    .line 13
    .line 14
    sget-object v2, Lk2/n0;->c:Lk2/n0;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const/4 v5, -0x1

    .line 21
    if-eq v3, v5, :cond_1

    .line 22
    .line 23
    move v6, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v6, v0, Le3/n;->C:I

    .line 26
    .line 27
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide/16 v9, -0x1

    .line 33
    .line 34
    if-eq v6, v5, :cond_3

    .line 35
    .line 36
    aget-object v4, v4, v6

    .line 37
    .line 38
    iget-object v4, v4, Le3/n$a;->b:Le3/w;

    .line 39
    .line 40
    invoke-static {v4, v1, v2}, Le3/n;->r(Le3/w;J)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v5, :cond_2

    .line 45
    .line 46
    new-instance v1, Lk2/m0$a;

    .line 47
    .line 48
    sget-object v2, Lk2/n0;->c:Lk2/n0;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    iget-object v11, v4, Le3/w;->f:[J

    .line 55
    .line 56
    aget-wide v12, v11, v6

    .line 57
    .line 58
    iget-object v11, v4, Le3/w;->c:[J

    .line 59
    .line 60
    aget-wide v14, v11, v6

    .line 61
    .line 62
    cmp-long v11, v12, v1

    .line 63
    .line 64
    if-gez v11, :cond_4

    .line 65
    .line 66
    iget v11, v4, Le3/w;->b:I

    .line 67
    .line 68
    add-int/lit8 v11, v11, -0x1

    .line 69
    .line 70
    if-ge v6, v11, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v1, v2}, Le3/w;->b(J)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v1, v5, :cond_4

    .line 77
    .line 78
    if-eq v1, v6, :cond_4

    .line 79
    .line 80
    iget-object v2, v4, Le3/w;->f:[J

    .line 81
    .line 82
    aget-wide v9, v2, v1

    .line 83
    .line 84
    iget-object v2, v4, Le3/w;->c:[J

    .line 85
    .line 86
    aget-wide v1, v2, v1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move-wide v12, v1

    .line 95
    :cond_4
    move-wide v1, v9

    .line 96
    move-wide v9, v7

    .line 97
    :goto_1
    if-ne v3, v5, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_2
    iget-object v4, v0, Le3/n;->A:[Le3/n$a;

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    if-ge v3, v5, :cond_7

    .line 104
    .line 105
    iget v5, v0, Le3/n;->C:I

    .line 106
    .line 107
    if-eq v3, v5, :cond_6

    .line 108
    .line 109
    aget-object v4, v4, v3

    .line 110
    .line 111
    iget-object v4, v4, Le3/n$a;->b:Le3/w;

    .line 112
    .line 113
    invoke-static {v4, v12, v13, v14, v15}, Le3/n;->v(Le3/w;JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    cmp-long v11, v9, v7

    .line 118
    .line 119
    if-eqz v11, :cond_5

    .line 120
    .line 121
    invoke-static {v4, v9, v10, v1, v2}, Le3/n;->v(Le3/w;JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    :cond_5
    move-wide v14, v5

    .line 126
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    new-instance v3, Lk2/n0;

    .line 130
    .line 131
    invoke-direct {v3, v12, v13, v14, v15}, Lk2/n0;-><init>(JJ)V

    .line 132
    .line 133
    .line 134
    cmp-long v4, v9, v7

    .line 135
    .line 136
    if-nez v4, :cond_8

    .line 137
    .line 138
    new-instance v1, Lk2/m0$a;

    .line 139
    .line 140
    invoke-direct {v1, v3}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_8
    new-instance v4, Lk2/n0;

    .line 145
    .line 146
    invoke-direct {v4, v9, v10, v1, v2}, Lk2/n0;-><init>(JJ)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lk2/m0$a;

    .line 150
    .line 151
    invoke-direct {v1, v3, v4}, Lk2/m0$a;-><init>(Lk2/n0;Lk2/n0;)V

    .line 152
    .line 153
    .line 154
    return-object v1
.end method

.method public q()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/n;->j:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Le3/n;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Le3/n;->n:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Le3/n;->p:I

    .line 11
    .line 12
    iput v0, p0, Le3/n;->q:I

    .line 13
    .line 14
    iput v0, p0, Le3/n;->r:I

    .line 15
    .line 16
    iput v0, p0, Le3/n;->s:I

    .line 17
    .line 18
    iput-boolean v0, p0, Le3/n;->t:Z

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    cmp-long p1, p1, v1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget p1, p0, Le3/n;->k:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Le3/n;->n()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Le3/n;->h:Le3/q;

    .line 36
    .line 37
    invoke-virtual {p1}, Le3/q;->g()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Le3/n;->i:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Le3/n;->A:[Le3/n$a;

    .line 47
    .line 48
    array-length p2, p1

    .line 49
    :goto_0
    if-ge v0, p2, :cond_3

    .line 50
    .line 51
    aget-object v1, p1, v0

    .line 52
    .line 53
    invoke-direct {p0, v1, p3, p4}, Le3/n;->K(Le3/n$a;J)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v1, Le3/n$a;->d:Lk2/t0;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lk2/t0;->b()V

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    return-void
.end method
