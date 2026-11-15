.class public final Lr3/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/p$b;
    }
.end annotation


# instance fields
.field private final a:Lr3/g0;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lr3/w;

.field private final f:Lr3/w;

.field private final g:Lr3/w;

.field private h:J

.field private final i:[Z

.field private j:Ljava/lang/String;

.field private k:Lk2/s0;

.field private l:Lr3/p$b;

.field private m:Z

.field private n:J

.field private o:Z

.field private final p:Landroidx/media3/common/util/j0;


# direct methods
.method public constructor <init>(Lr3/g0;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/p;->a:Lr3/g0;

    .line 5
    .line 6
    iput-boolean p2, p0, Lr3/p;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lr3/p;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lr3/p;->d:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Z

    .line 14
    .line 15
    iput-object p1, p0, Lr3/p;->i:[Z

    .line 16
    .line 17
    new-instance p1, Lr3/w;

    .line 18
    .line 19
    const/4 p2, 0x7

    .line 20
    const/16 p3, 0x80

    .line 21
    .line 22
    invoke-direct {p1, p2, p3}, Lr3/w;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lr3/p;->e:Lr3/w;

    .line 26
    .line 27
    new-instance p1, Lr3/w;

    .line 28
    .line 29
    const/16 p2, 0x8

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Lr3/w;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lr3/p;->f:Lr3/w;

    .line 35
    .line 36
    new-instance p1, Lr3/w;

    .line 37
    .line 38
    const/4 p2, 0x6

    .line 39
    invoke-direct {p1, p2, p3}, Lr3/w;-><init>(II)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lr3/p;->g:Lr3/w;

    .line 43
    .line 44
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iput-wide p1, p0, Lr3/p;->n:J

    .line 50
    .line 51
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lr3/p;->p:Landroidx/media3/common/util/j0;

    .line 57
    .line 58
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/p;->k:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private f(JIIJ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr3/p;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lr3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lr3/w;->b(I)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 19
    .line 20
    invoke-virtual {v0, p4}, Lr3/w;->b(I)Z

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lr3/p;->m:Z

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 29
    .line 30
    invoke-virtual {v0}, Lr3/w;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 37
    .line 38
    invoke-virtual {v0}, Lr3/w;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lr3/p;->e:Lr3/w;

    .line 50
    .line 51
    iget-object v3, v2, Lr3/w;->d:[B

    .line 52
    .line 53
    iget v2, v2, Lr3/w;->e:I

    .line 54
    .line 55
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lr3/p;->f:Lr3/w;

    .line 63
    .line 64
    iget-object v3, v2, Lr3/w;->d:[B

    .line 65
    .line 66
    iget v2, v2, Lr3/w;->e:I

    .line 67
    .line 68
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lr3/p;->e:Lr3/w;

    .line 76
    .line 77
    iget-object v3, v2, Lr3/w;->d:[B

    .line 78
    .line 79
    iget v2, v2, Lr3/w;->e:I

    .line 80
    .line 81
    invoke-static {v3, v1, v2}, Landroidx/media3/container/g;->C([BII)Landroidx/media3/container/g$m;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p0, Lr3/p;->f:Lr3/w;

    .line 86
    .line 87
    iget-object v4, v3, Lr3/w;->d:[B

    .line 88
    .line 89
    iget v3, v3, Lr3/w;->e:I

    .line 90
    .line 91
    invoke-static {v4, v1, v3}, Landroidx/media3/container/g;->A([BII)Landroidx/media3/container/g$l;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget v3, v2, Landroidx/media3/container/g$m;->a:I

    .line 96
    .line 97
    iget v4, v2, Landroidx/media3/container/g$m;->b:I

    .line 98
    .line 99
    iget v5, v2, Landroidx/media3/container/g$m;->c:I

    .line 100
    .line 101
    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/j;->d(III)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v4, p0, Lr3/p;->k:Lk2/s0;

    .line 106
    .line 107
    new-instance v5, Landroidx/media3/common/r$b;

    .line 108
    .line 109
    invoke-direct {v5}, Landroidx/media3/common/r$b;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lr3/p;->j:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, p0, Lr3/p;->d:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "video/avc"

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5, v3}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget v5, v2, Landroidx/media3/container/g$m;->f:I

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v5, v2, Landroidx/media3/container/g$m;->g:I

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-instance v5, Landroidx/media3/common/i$b;

    .line 147
    .line 148
    invoke-direct {v5}, Landroidx/media3/common/i$b;-><init>()V

    .line 149
    .line 150
    .line 151
    iget v6, v2, Landroidx/media3/container/g$m;->q:I

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget v6, v2, Landroidx/media3/container/g$m;->r:I

    .line 158
    .line 159
    invoke-virtual {v5, v6}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iget v6, v2, Landroidx/media3/container/g$m;->s:I

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    iget v6, v2, Landroidx/media3/container/g$m;->i:I

    .line 170
    .line 171
    add-int/lit8 v6, v6, 0x8

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget v6, v2, Landroidx/media3/container/g$m;->j:I

    .line 178
    .line 179
    add-int/lit8 v6, v6, 0x8

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v5}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v3, v5}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget v5, v2, Landroidx/media3/container/g$m;->h:F

    .line 194
    .line 195
    invoke-virtual {v3, v5}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v3, v0}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget v3, v2, Landroidx/media3/container/g$m;->t:I

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->l0(I)Landroidx/media3/common/r$b;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v4, v0}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 214
    .line 215
    .line 216
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lr3/p;->m:Z

    .line 218
    .line 219
    iget-object v0, p0, Lr3/p;->a:Lr3/g0;

    .line 220
    .line 221
    iget v3, v2, Landroidx/media3/container/g$m;->t:I

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Lr3/g0;->g(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Lr3/p$b;->f(Landroidx/media3/container/g$m;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lr3/p$b;->e(Landroidx/media3/container/g$l;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 237
    .line 238
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 242
    .line 243
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 248
    .line 249
    invoke-virtual {v0}, Lr3/w;->c()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 256
    .line 257
    iget-object v2, v0, Lr3/w;->d:[B

    .line 258
    .line 259
    iget v0, v0, Lr3/w;->e:I

    .line 260
    .line 261
    invoke-static {v2, v1, v0}, Landroidx/media3/container/g;->C([BII)Landroidx/media3/container/g$m;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v1, p0, Lr3/p;->a:Lr3/g0;

    .line 266
    .line 267
    iget v2, v0, Landroidx/media3/container/g$m;->t:I

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Lr3/g0;->g(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lr3/p;->l:Lr3/p$b;

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Lr3/p$b;->f(Landroidx/media3/container/g$m;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 278
    .line 279
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 284
    .line 285
    invoke-virtual {v0}, Lr3/w;->c()Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_3

    .line 290
    .line 291
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 292
    .line 293
    iget-object v2, v0, Lr3/w;->d:[B

    .line 294
    .line 295
    iget v0, v0, Lr3/w;->e:I

    .line 296
    .line 297
    invoke-static {v2, v1, v0}, Landroidx/media3/container/g;->A([BII)Landroidx/media3/container/g$l;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v1, p0, Lr3/p;->l:Lr3/p$b;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Lr3/p$b;->e(Landroidx/media3/container/g$l;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 307
    .line 308
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 309
    .line 310
    .line 311
    :cond_3
    :goto_0
    iget-object v0, p0, Lr3/p;->g:Lr3/w;

    .line 312
    .line 313
    invoke-virtual {v0, p4}, Lr3/w;->b(I)Z

    .line 314
    .line 315
    .line 316
    move-result p4

    .line 317
    if-eqz p4, :cond_4

    .line 318
    .line 319
    iget-object p4, p0, Lr3/p;->g:Lr3/w;

    .line 320
    .line 321
    iget-object v0, p4, Lr3/w;->d:[B

    .line 322
    .line 323
    iget p4, p4, Lr3/w;->e:I

    .line 324
    .line 325
    invoke-static {v0, p4}, Landroidx/media3/container/g;->L([BI)I

    .line 326
    .line 327
    .line 328
    move-result p4

    .line 329
    iget-object v0, p0, Lr3/p;->p:Landroidx/media3/common/util/j0;

    .line 330
    .line 331
    iget-object v1, p0, Lr3/p;->g:Lr3/w;

    .line 332
    .line 333
    iget-object v1, v1, Lr3/w;->d:[B

    .line 334
    .line 335
    invoke-virtual {v0, v1, p4}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 336
    .line 337
    .line 338
    iget-object p4, p0, Lr3/p;->p:Landroidx/media3/common/util/j0;

    .line 339
    .line 340
    const/4 v0, 0x4

    .line 341
    invoke-virtual {p4, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 342
    .line 343
    .line 344
    iget-object p4, p0, Lr3/p;->a:Lr3/g0;

    .line 345
    .line 346
    iget-object v0, p0, Lr3/p;->p:Landroidx/media3/common/util/j0;

    .line 347
    .line 348
    invoke-virtual {p4, p5, p6, v0}, Lr3/g0;->c(JLandroidx/media3/common/util/j0;)V

    .line 349
    .line 350
    .line 351
    :cond_4
    iget-object p4, p0, Lr3/p;->l:Lr3/p$b;

    .line 352
    .line 353
    iget-boolean p5, p0, Lr3/p;->m:Z

    .line 354
    .line 355
    invoke-virtual {p4, p1, p2, p3, p5}, Lr3/p$b;->b(JIZ)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_5

    .line 360
    .line 361
    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lr3/p;->o:Z

    .line 363
    .line 364
    :cond_5
    return-void
.end method

.method private g([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr3/p;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lr3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lr3/w;->a([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lr3/w;->a([BII)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lr3/p;->g:Lr3/w;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Lr3/w;->a([BII)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lr3/p$b;->a([BII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private h(JIJ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lr3/p;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lr3/p$b;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lr3/w;->e(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lr3/w;->e(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lr3/p;->g:Lr3/w;

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Lr3/w;->e(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lr3/p;->l:Lr3/p$b;

    .line 29
    .line 30
    iget-boolean v7, p0, Lr3/p;->o:Z

    .line 31
    .line 32
    move-wide v2, p1

    .line 33
    move v4, p3

    .line 34
    move-wide v5, p4

    .line 35
    invoke-virtual/range {v1 .. v7}, Lr3/p$b;->i(JIJZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    invoke-direct {p0}, Lr3/p;->b()V

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->g()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    iget-wide v1, v7, Lr3/p;->h:J

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-long v3, v3

    .line 24
    add-long/2addr v1, v3

    .line 25
    iput-wide v1, v7, Lr3/p;->h:J

    .line 26
    .line 27
    iget-object v1, v7, Lr3/p;->k:Lk2/s0;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    move-object/from16 v3, p1

    .line 34
    .line 35
    invoke-interface {v1, v3, v2}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, v7, Lr3/p;->i:[Z

    .line 39
    .line 40
    invoke-static {v9, v0, v8, v1}, Landroidx/media3/container/g;->e([BII[Z)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v8, :cond_0

    .line 45
    .line 46
    invoke-direct {p0, v9, v0, v8}, Lr3/p;->g([BII)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-static {v9, v1}, Landroidx/media3/container/g;->j([BI)I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-lez v1, :cond_1

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x1

    .line 57
    .line 58
    aget-byte v2, v9, v2

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    :goto_1
    move v11, v1

    .line 66
    move v12, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const/4 v2, 0x3

    .line 69
    goto :goto_1

    .line 70
    :goto_2
    sub-int v1, v11, v0

    .line 71
    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    invoke-direct {p0, v9, v0, v11}, Lr3/p;->g([BII)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sub-int v3, v8, v11

    .line 78
    .line 79
    iget-wide v4, v7, Lr3/p;->h:J

    .line 80
    .line 81
    int-to-long v13, v3

    .line 82
    sub-long v13, v4, v13

    .line 83
    .line 84
    if-gez v1, :cond_3

    .line 85
    .line 86
    neg-int v0, v1

    .line 87
    :goto_3
    move v4, v0

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    const/4 v0, 0x0

    .line 90
    goto :goto_3

    .line 91
    :goto_4
    iget-wide v5, v7, Lr3/p;->n:J

    .line 92
    .line 93
    move-object v0, p0

    .line 94
    move-wide v1, v13

    .line 95
    invoke-direct/range {v0 .. v6}, Lr3/p;->f(JIIJ)V

    .line 96
    .line 97
    .line 98
    iget-wide v4, v7, Lr3/p;->n:J

    .line 99
    .line 100
    move v3, v10

    .line 101
    invoke-direct/range {v0 .. v5}, Lr3/p;->h(JIJ)V

    .line 102
    .line 103
    .line 104
    add-int v0, v11, v12

    .line 105
    .line 106
    goto :goto_0
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lr3/p;->n:J

    .line 2
    .line 3
    iget-boolean p1, p0, Lr3/p;->o:Z

    .line 4
    .line 5
    and-int/lit8 p2, p3, 0x2

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    or-int/2addr p1, p2

    .line 13
    iput-boolean p1, p0, Lr3/p;->o:Z

    .line 14
    .line 15
    return-void
.end method

.method public d(Z)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lr3/p;->b()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lr3/p;->a:Lr3/g0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lr3/g0;->e()V

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lr3/p;->h:J

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    iget-wide v5, p0, Lr3/p;->n:J

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v6}, Lr3/p;->f(JIIJ)V

    .line 19
    .line 20
    .line 21
    iget-wide v8, p0, Lr3/p;->h:J

    .line 22
    .line 23
    const/16 v10, 0x9

    .line 24
    .line 25
    iget-wide v11, p0, Lr3/p;->n:J

    .line 26
    .line 27
    move-object v7, p0

    .line 28
    invoke-direct/range {v7 .. v12}, Lr3/p;->h(JIJ)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lr3/p;->h:J

    .line 32
    .line 33
    iget-wide v5, p0, Lr3/p;->n:J

    .line 34
    .line 35
    invoke-direct/range {v0 .. v6}, Lr3/p;->f(JIIJ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public e(Lk2/t;Lr3/l0$d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lr3/l0$d;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lr3/l0$d;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lr3/p;->j:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lr3/l0$d;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lk2/t;->track(II)Lk2/s0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lr3/p;->k:Lk2/s0;

    .line 20
    .line 21
    new-instance v1, Lr3/p$b;

    .line 22
    .line 23
    iget-boolean v2, p0, Lr3/p;->b:Z

    .line 24
    .line 25
    iget-boolean v3, p0, Lr3/p;->c:Z

    .line 26
    .line 27
    invoke-direct {v1, v0, v2, v3}, Lr3/p$b;-><init>(Lk2/s0;ZZ)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lr3/p;->l:Lr3/p$b;

    .line 31
    .line 32
    iget-object v0, p0, Lr3/p;->a:Lr3/g0;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lr3/g0;->d(Lk2/t;Lr3/l0$d;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lr3/p;->h:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lr3/p;->o:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lr3/p;->n:J

    .line 14
    .line 15
    iget-object v0, p0, Lr3/p;->i:[Z

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/container/g;->c([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lr3/p;->e:Lr3/w;

    .line 21
    .line 22
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lr3/p;->f:Lr3/w;

    .line 26
    .line 27
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lr3/p;->g:Lr3/w;

    .line 31
    .line 32
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lr3/p;->a:Lr3/g0;

    .line 36
    .line 37
    invoke-virtual {v0}, Lr3/g0;->b()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lr3/p;->l:Lr3/p$b;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lr3/p$b;->g()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
