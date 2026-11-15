.class final Li2/n$j;
.super Li2/n$i;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private final e:Z

.field private final f:Li2/n$e;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Z

.field private final q:I

.field private final r:Z

.field private final s:I

.field private final t:Z

.field private final u:Z

.field private final v:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILi2/n$e;ILjava/lang/String;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Li2/n$j;->f:Li2/n$e;

    .line 5
    .line 6
    iget-boolean p1, p4, Li2/n$e;->r0:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x10

    .line 14
    .line 15
    :goto_0
    iget-boolean p2, p4, Li2/n$e;->q0:Z

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    and-int p2, p7, p1

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    move p2, p3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p2, v0

    .line 28
    :goto_1
    iput-boolean p2, p0, Li2/n$j;->r:Z

    .line 29
    .line 30
    const/high16 p2, -0x40800000    # -1.0f

    .line 31
    .line 32
    const/4 p7, -0x1

    .line 33
    if-eqz p8, :cond_6

    .line 34
    .line 35
    iget-object v1, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 36
    .line 37
    iget v2, v1, Landroidx/media3/common/r;->v:I

    .line 38
    .line 39
    if-eq v2, p7, :cond_2

    .line 40
    .line 41
    iget v3, p4, Landroidx/media3/common/h0;->a:I

    .line 42
    .line 43
    if-gt v2, v3, :cond_6

    .line 44
    .line 45
    :cond_2
    iget v2, v1, Landroidx/media3/common/r;->w:I

    .line 46
    .line 47
    if-eq v2, p7, :cond_3

    .line 48
    .line 49
    iget v3, p4, Landroidx/media3/common/h0;->b:I

    .line 50
    .line 51
    if-gt v2, v3, :cond_6

    .line 52
    .line 53
    :cond_3
    iget v2, v1, Landroidx/media3/common/r;->x:F

    .line 54
    .line 55
    cmpl-float v3, v2, p2

    .line 56
    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    iget v3, p4, Landroidx/media3/common/h0;->c:I

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    cmpg-float v2, v2, v3

    .line 63
    .line 64
    if-gtz v2, :cond_6

    .line 65
    .line 66
    :cond_4
    iget v1, v1, Landroidx/media3/common/r;->j:I

    .line 67
    .line 68
    if-eq v1, p7, :cond_5

    .line 69
    .line 70
    iget v2, p4, Landroidx/media3/common/h0;->d:I

    .line 71
    .line 72
    if-gt v1, v2, :cond_6

    .line 73
    .line 74
    :cond_5
    move v1, p3

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    move v1, v0

    .line 77
    :goto_2
    iput-boolean v1, p0, Li2/n$j;->e:Z

    .line 78
    .line 79
    if-eqz p8, :cond_b

    .line 80
    .line 81
    iget-object p8, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 82
    .line 83
    iget v1, p8, Landroidx/media3/common/r;->v:I

    .line 84
    .line 85
    if-eq v1, p7, :cond_7

    .line 86
    .line 87
    iget v2, p4, Landroidx/media3/common/h0;->e:I

    .line 88
    .line 89
    if-lt v1, v2, :cond_b

    .line 90
    .line 91
    :cond_7
    iget v1, p8, Landroidx/media3/common/r;->w:I

    .line 92
    .line 93
    if-eq v1, p7, :cond_8

    .line 94
    .line 95
    iget v2, p4, Landroidx/media3/common/h0;->f:I

    .line 96
    .line 97
    if-lt v1, v2, :cond_b

    .line 98
    .line 99
    :cond_8
    iget v1, p8, Landroidx/media3/common/r;->x:F

    .line 100
    .line 101
    cmpl-float v2, v1, p2

    .line 102
    .line 103
    if-eqz v2, :cond_9

    .line 104
    .line 105
    iget v2, p4, Landroidx/media3/common/h0;->g:I

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    cmpl-float v1, v1, v2

    .line 109
    .line 110
    if-ltz v1, :cond_b

    .line 111
    .line 112
    :cond_9
    iget p8, p8, Landroidx/media3/common/r;->j:I

    .line 113
    .line 114
    if-eq p8, p7, :cond_a

    .line 115
    .line 116
    iget p7, p4, Landroidx/media3/common/h0;->h:I

    .line 117
    .line 118
    if-lt p8, p7, :cond_b

    .line 119
    .line 120
    :cond_a
    move p7, p3

    .line 121
    goto :goto_3

    .line 122
    :cond_b
    move p7, v0

    .line 123
    :goto_3
    iput-boolean p7, p0, Li2/n$j;->g:Z

    .line 124
    .line 125
    invoke-static {p5, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result p7

    .line 129
    iput-boolean p7, p0, Li2/n$j;->h:Z

    .line 130
    .line 131
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 132
    .line 133
    iget p8, p7, Landroidx/media3/common/r;->x:F

    .line 134
    .line 135
    cmpl-float p2, p8, p2

    .line 136
    .line 137
    if-eqz p2, :cond_c

    .line 138
    .line 139
    const/high16 p2, 0x41200000    # 10.0f

    .line 140
    .line 141
    cmpl-float p2, p8, p2

    .line 142
    .line 143
    if-ltz p2, :cond_c

    .line 144
    .line 145
    move p2, p3

    .line 146
    goto :goto_4

    .line 147
    :cond_c
    move p2, v0

    .line 148
    :goto_4
    iput-boolean p2, p0, Li2/n$j;->i:Z

    .line 149
    .line 150
    iget p2, p7, Landroidx/media3/common/r;->j:I

    .line 151
    .line 152
    iput p2, p0, Li2/n$j;->j:I

    .line 153
    .line 154
    invoke-virtual {p7}, Landroidx/media3/common/r;->e()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    iput p2, p0, Li2/n$j;->k:I

    .line 159
    .line 160
    move p2, v0

    .line 161
    :goto_5
    iget-object p7, p4, Landroidx/media3/common/h0;->n:Lcom/google/common/collect/ImmutableList;

    .line 162
    .line 163
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    .line 164
    .line 165
    .line 166
    move-result p7

    .line 167
    const p8, 0x7fffffff

    .line 168
    .line 169
    .line 170
    if-ge p2, p7, :cond_e

    .line 171
    .line 172
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 173
    .line 174
    iget-object v1, p4, Landroidx/media3/common/h0;->n:Lcom/google/common/collect/ImmutableList;

    .line 175
    .line 176
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p7, v1, v0}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 183
    .line 184
    .line 185
    move-result p7

    .line 186
    if-lez p7, :cond_d

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_d
    add-int/lit8 p2, p2, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_e
    move p2, p8

    .line 193
    move p7, v0

    .line 194
    :goto_6
    iput p2, p0, Li2/n$j;->m:I

    .line 195
    .line 196
    iput p7, p0, Li2/n$j;->n:I

    .line 197
    .line 198
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 199
    .line 200
    iget p2, p2, Landroidx/media3/common/r;->f:I

    .line 201
    .line 202
    iget p7, p4, Landroidx/media3/common/h0;->o:I

    .line 203
    .line 204
    invoke-static {p2, p7}, Li2/n;->y(II)I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    iput p2, p0, Li2/n$j;->o:I

    .line 209
    .line 210
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 211
    .line 212
    iget p2, p2, Landroidx/media3/common/r;->f:I

    .line 213
    .line 214
    if-eqz p2, :cond_10

    .line 215
    .line 216
    and-int/2addr p2, p3

    .line 217
    if-eqz p2, :cond_f

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_f
    move p2, v0

    .line 221
    goto :goto_8

    .line 222
    :cond_10
    :goto_7
    move p2, p3

    .line 223
    :goto_8
    iput-boolean p2, p0, Li2/n$j;->p:Z

    .line 224
    .line 225
    invoke-static {p6}, Li2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    if-nez p2, :cond_11

    .line 230
    .line 231
    move p2, p3

    .line 232
    goto :goto_9

    .line 233
    :cond_11
    move p2, v0

    .line 234
    :goto_9
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 235
    .line 236
    invoke-static {p7, p6, p2}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    iput p2, p0, Li2/n$j;->q:I

    .line 241
    .line 242
    move p2, v0

    .line 243
    :goto_a
    iget-object p6, p4, Landroidx/media3/common/h0;->m:Lcom/google/common/collect/ImmutableList;

    .line 244
    .line 245
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    .line 246
    .line 247
    .line 248
    move-result p6

    .line 249
    if-ge p2, p6, :cond_13

    .line 250
    .line 251
    iget-object p6, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 252
    .line 253
    iget-object p6, p6, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz p6, :cond_12

    .line 256
    .line 257
    iget-object p7, p4, Landroidx/media3/common/h0;->m:Lcom/google/common/collect/ImmutableList;

    .line 258
    .line 259
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p7

    .line 263
    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p6

    .line 267
    if-eqz p6, :cond_12

    .line 268
    .line 269
    move p8, p2

    .line 270
    goto :goto_b

    .line 271
    :cond_12
    add-int/lit8 p2, p2, 0x1

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_13
    :goto_b
    iput p8, p0, Li2/n$j;->l:I

    .line 275
    .line 276
    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->h(I)I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    const/16 p4, 0x80

    .line 281
    .line 282
    if-ne p2, p4, :cond_14

    .line 283
    .line 284
    move p2, p3

    .line 285
    goto :goto_c

    .line 286
    :cond_14
    move p2, v0

    .line 287
    :goto_c
    iput-boolean p2, p0, Li2/n$j;->t:Z

    .line 288
    .line 289
    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->j(I)I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    const/16 p4, 0x40

    .line 294
    .line 295
    if-ne p2, p4, :cond_15

    .line 296
    .line 297
    goto :goto_d

    .line 298
    :cond_15
    move p3, v0

    .line 299
    :goto_d
    iput-boolean p3, p0, Li2/n$j;->u:Z

    .line 300
    .line 301
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 302
    .line 303
    iget-object p2, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {p2}, Li2/n;->z(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    iput p2, p0, Li2/n$j;->v:I

    .line 310
    .line 311
    invoke-direct {p0, p5, p1}, Li2/n$j;->j(II)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    iput p1, p0, Li2/n$j;->s:I

    .line 316
    .line 317
    return-void
.end method

.method public static synthetic d(Li2/n$j;Li2/n$j;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li2/n$j;->g(Li2/n$j;Li2/n$j;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Li2/n$j;Li2/n$j;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li2/n$j;->f(Li2/n$j;Li2/n$j;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static f(Li2/n$j;Li2/n$j;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Li2/n$j;->h:Z

    .line 6
    .line 7
    iget-boolean v2, p1, Li2/n$j;->h:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Li2/n$j;->m:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, p1, Li2/n$j;->m:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Li2/n$j;->n:I

    .line 38
    .line 39
    iget v2, p1, Li2/n$j;->n:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Li2/n$j;->o:I

    .line 46
    .line 47
    iget v2, p1, Li2/n$j;->o:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-boolean v1, p0, Li2/n$j;->p:Z

    .line 54
    .line 55
    iget-boolean v2, p1, Li2/n$j;->p:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Li2/n$j;->q:I

    .line 62
    .line 63
    iget v2, p1, Li2/n$j;->q:I

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-boolean v1, p0, Li2/n$j;->i:Z

    .line 70
    .line 71
    iget-boolean v2, p1, Li2/n$j;->i:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-boolean v1, p0, Li2/n$j;->e:Z

    .line 78
    .line 79
    iget-boolean v2, p1, Li2/n$j;->e:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-boolean v1, p0, Li2/n$j;->g:Z

    .line 86
    .line 87
    iget-boolean v2, p1, Li2/n$j;->g:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget v1, p0, Li2/n$j;->l:I

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget v2, p1, Li2/n$j;->l:I

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-boolean v1, p0, Li2/n$j;->t:Z

    .line 118
    .line 119
    iget-boolean v2, p1, Li2/n$j;->t:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-boolean v1, p0, Li2/n$j;->u:Z

    .line 126
    .line 127
    iget-boolean v2, p1, Li2/n$j;->u:Z

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-boolean v1, p0, Li2/n$j;->t:Z

    .line 134
    .line 135
    if-eqz v1, :cond_0

    .line 136
    .line 137
    iget-boolean v1, p0, Li2/n$j;->u:Z

    .line 138
    .line 139
    if-eqz v1, :cond_0

    .line 140
    .line 141
    iget p0, p0, Li2/n$j;->v:I

    .line 142
    .line 143
    iget p1, p1, Li2/n$j;->v:I

    .line 144
    .line 145
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/h2;->j()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0
.end method

.method private static g(Li2/n$j;Li2/n$j;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Li2/n$j;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Li2/n$j;->h:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Li2/n;->A()Lcom/google/common/collect/Ordering;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Li2/n;->A()Lcom/google/common/collect/Ordering;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Li2/n$j;->f:Li2/n$e;

    .line 27
    .line 28
    iget-boolean v2, v2, Landroidx/media3/common/h0;->B:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget v2, p0, Li2/n$j;->j:I

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v3, p1, Li2/n$j;->j:I

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {}, Li2/n;->A()Lcom/google/common/collect/Ordering;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_1
    iget v2, p0, Li2/n$j;->k:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget v3, p1, Li2/n$j;->k:I

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget p0, p0, Li2/n$j;->j:I

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget p1, p1, Li2/n$j;->j:I

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/google/common/collect/h2;->j()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0
.end method

.method public static h(Ljava/util/List;Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Li2/w;

    .line 6
    .line 7
    invoke-direct {v1}, Li2/w;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Li2/n$j;

    .line 15
    .line 16
    new-instance v2, Li2/w;

    .line 17
    .line 18
    invoke-direct {v2}, Li2/w;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Li2/n$j;

    .line 26
    .line 27
    new-instance v3, Li2/w;

    .line 28
    .line 29
    invoke-direct {v3}, Li2/w;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Li2/x;

    .line 49
    .line 50
    invoke-direct {v1}, Li2/x;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Li2/n$j;

    .line 58
    .line 59
    new-instance v1, Li2/x;

    .line 60
    .line 61
    invoke-direct {v1}, Li2/x;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Li2/n$j;

    .line 69
    .line 70
    new-instance v1, Li2/x;

    .line 71
    .line 72
    invoke-direct {v1}, Li2/x;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/h2;->j()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public static i(ILandroidx/media3/common/f0;Li2/n$e;[ILjava/lang/String;ILandroid/graphics/Point;)Lcom/google/common/collect/ImmutableList;
    .locals 16

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v0, p6

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, v10, Landroidx/media3/common/h0;->i:I

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v0, v10, Landroidx/media3/common/h0;->j:I

    .line 20
    .line 21
    :goto_1
    iget-boolean v2, v10, Landroidx/media3/common/h0;->l:Z

    .line 22
    .line 23
    invoke-static {v9, v1, v0, v2}, Li2/n;->x(Landroidx/media3/common/f0;IIZ)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    const/4 v13, 0x0

    .line 32
    move v14, v13

    .line 33
    :goto_2
    iget v0, v9, Landroidx/media3/common/f0;->a:I

    .line 34
    .line 35
    if-ge v14, v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v9, v14}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/media3/common/r;->e()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const v1, 0x7fffffff

    .line 46
    .line 47
    .line 48
    if-eq v11, v1, :cond_3

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    if-gt v0, v11, :cond_2

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    move v8, v13

    .line 57
    goto :goto_4

    .line 58
    :cond_3
    :goto_3
    const/4 v0, 0x1

    .line 59
    move v8, v0

    .line 60
    :goto_4
    new-instance v15, Li2/n$j;

    .line 61
    .line 62
    aget v5, p3, v14

    .line 63
    .line 64
    move-object v0, v15

    .line 65
    move/from16 v1, p0

    .line 66
    .line 67
    move-object/from16 v2, p1

    .line 68
    .line 69
    move v3, v14

    .line 70
    move-object/from16 v4, p2

    .line 71
    .line 72
    move-object/from16 v6, p4

    .line 73
    .line 74
    move/from16 v7, p5

    .line 75
    .line 76
    invoke-direct/range {v0 .. v8}, Li2/n$j;-><init>(ILandroidx/media3/common/f0;ILi2/n$e;ILjava/lang/String;IZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12, v15}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 80
    .line 81
    .line 82
    add-int/lit8 v14, v14, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method private j(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/r;->f:I

    .line 4
    .line 5
    and-int/lit16 v0, v0, 0x4000

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Li2/n$j;->f:Li2/n$e;

    .line 12
    .line 13
    iget-boolean v0, v0, Li2/n$e;->A0:Z

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-boolean v0, p0, Li2/n$j;->e:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Li2/n$j;->f:Li2/n$e;

    .line 27
    .line 28
    iget-boolean v0, v0, Li2/n$e;->p0:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-boolean v0, p0, Li2/n$j;->g:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-boolean v0, p0, Li2/n$j;->e:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 48
    .line 49
    iget v0, v0, Landroidx/media3/common/r;->j:I

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    if-eq v0, v1, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Li2/n$j;->f:Li2/n$e;

    .line 55
    .line 56
    iget-boolean v1, v0, Landroidx/media3/common/h0;->C:Z

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-boolean v0, v0, Landroidx/media3/common/h0;->B:Z

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    and-int/2addr p1, p2

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x2

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p1, 0x1

    .line 70
    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li2/n$j;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic b(Li2/n$i;)Z
    .locals 0

    .line 1
    check-cast p1, Li2/n$j;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$j;->k(Li2/n$j;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public k(Li2/n$j;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Li2/n$j;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Li2/n$j;->f:Li2/n$e;

    .line 20
    .line 21
    iget-boolean v0, v0, Li2/n$e;->s0:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p0, Li2/n$j;->t:Z

    .line 26
    .line 27
    iget-boolean v1, p1, Li2/n$j;->t:Z

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Li2/n$j;->u:Z

    .line 32
    .line 33
    iget-boolean p1, p1, Li2/n$j;->u:Z

    .line 34
    .line 35
    if-ne v0, p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 41
    :goto_1
    return p1
.end method
