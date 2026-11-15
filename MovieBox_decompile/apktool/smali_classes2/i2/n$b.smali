.class final Li2/n$b;
.super Li2/n$i;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Li2/n$e;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:I

.field private final p:I

.field private final q:Z

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:Z

.field private final w:Z

.field private final x:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;ILi2/n$e;IZLcom/google/common/base/n;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li2/n$i;-><init>(ILandroidx/media3/common/f0;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Li2/n$b;->h:Li2/n$e;

    .line 5
    .line 6
    iget-boolean p1, p4, Li2/n$e;->y0:Z

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
    iget-boolean p2, p4, Li2/n$e;->u0:Z

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    and-int p2, p8, p1

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
    iput-boolean p2, p0, Li2/n$b;->m:Z

    .line 29
    .line 30
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 31
    .line 32
    iget-object p2, p2, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p2}, Li2/n;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Li2/n$b;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p5, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput-boolean p2, p0, Li2/n$b;->i:Z

    .line 45
    .line 46
    move p2, v0

    .line 47
    :goto_2
    iget-object p8, p4, Landroidx/media3/common/h0;->p:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    .line 50
    .line 51
    .line 52
    move-result p8

    .line 53
    const v1, 0x7fffffff

    .line 54
    .line 55
    .line 56
    if-ge p2, p8, :cond_3

    .line 57
    .line 58
    iget-object p8, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 59
    .line 60
    iget-object v2, p4, Landroidx/media3/common/h0;->p:Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p8, v2, v0}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 69
    .line 70
    .line 71
    move-result p8

    .line 72
    if-lez p8, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move p8, v0

    .line 79
    move p2, v1

    .line 80
    :goto_3
    iput p2, p0, Li2/n$b;->k:I

    .line 81
    .line 82
    iput p8, p0, Li2/n$b;->j:I

    .line 83
    .line 84
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 85
    .line 86
    iget p2, p2, Landroidx/media3/common/r;->f:I

    .line 87
    .line 88
    iget p8, p4, Landroidx/media3/common/h0;->q:I

    .line 89
    .line 90
    invoke-static {p2, p8}, Li2/n;->y(II)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput p2, p0, Li2/n$b;->l:I

    .line 95
    .line 96
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 97
    .line 98
    iget p8, p2, Landroidx/media3/common/r;->f:I

    .line 99
    .line 100
    if-eqz p8, :cond_5

    .line 101
    .line 102
    and-int/2addr p8, p3

    .line 103
    if-eqz p8, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    move p8, v0

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    :goto_4
    move p8, p3

    .line 109
    :goto_5
    iput-boolean p8, p0, Li2/n$b;->n:Z

    .line 110
    .line 111
    iget p8, p2, Landroidx/media3/common/r;->e:I

    .line 112
    .line 113
    and-int/2addr p8, p3

    .line 114
    if-eqz p8, :cond_6

    .line 115
    .line 116
    move p8, p3

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    move p8, v0

    .line 119
    :goto_6
    iput-boolean p8, p0, Li2/n$b;->q:Z

    .line 120
    .line 121
    invoke-static {p2}, Li2/n;->B(Landroidx/media3/common/r;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput-boolean p2, p0, Li2/n$b;->x:Z

    .line 126
    .line 127
    iget-object p2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 128
    .line 129
    iget p8, p2, Landroidx/media3/common/r;->E:I

    .line 130
    .line 131
    iput p8, p0, Li2/n$b;->r:I

    .line 132
    .line 133
    iget v2, p2, Landroidx/media3/common/r;->F:I

    .line 134
    .line 135
    iput v2, p0, Li2/n$b;->s:I

    .line 136
    .line 137
    iget v2, p2, Landroidx/media3/common/r;->j:I

    .line 138
    .line 139
    iput v2, p0, Li2/n$b;->t:I

    .line 140
    .line 141
    const/4 v3, -0x1

    .line 142
    if-eq v2, v3, :cond_7

    .line 143
    .line 144
    iget v4, p4, Landroidx/media3/common/h0;->s:I

    .line 145
    .line 146
    if-gt v2, v4, :cond_9

    .line 147
    .line 148
    :cond_7
    if-eq p8, v3, :cond_8

    .line 149
    .line 150
    iget v2, p4, Landroidx/media3/common/h0;->r:I

    .line 151
    .line 152
    if-gt p8, v2, :cond_9

    .line 153
    .line 154
    :cond_8
    invoke-interface {p7, p2}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_9

    .line 159
    .line 160
    move p2, p3

    .line 161
    goto :goto_7

    .line 162
    :cond_9
    move p2, v0

    .line 163
    :goto_7
    iput-boolean p2, p0, Li2/n$b;->f:Z

    .line 164
    .line 165
    invoke-static {}, Landroidx/media3/common/util/a1;->p0()[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    move p7, v0

    .line 170
    :goto_8
    array-length p8, p2

    .line 171
    if-ge p7, p8, :cond_b

    .line 172
    .line 173
    iget-object p8, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 174
    .line 175
    aget-object v2, p2, p7

    .line 176
    .line 177
    invoke-static {p8, v2, v0}, Li2/n;->H(Landroidx/media3/common/r;Ljava/lang/String;Z)I

    .line 178
    .line 179
    .line 180
    move-result p8

    .line 181
    if-lez p8, :cond_a

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_a
    add-int/lit8 p7, p7, 0x1

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_b
    move p8, v0

    .line 188
    move p7, v1

    .line 189
    :goto_9
    iput p7, p0, Li2/n$b;->o:I

    .line 190
    .line 191
    iput p8, p0, Li2/n$b;->p:I

    .line 192
    .line 193
    move p2, v0

    .line 194
    :goto_a
    iget-object p7, p4, Landroidx/media3/common/h0;->t:Lcom/google/common/collect/ImmutableList;

    .line 195
    .line 196
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    .line 197
    .line 198
    .line 199
    move-result p7

    .line 200
    if-ge p2, p7, :cond_d

    .line 201
    .line 202
    iget-object p7, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 203
    .line 204
    iget-object p7, p7, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 205
    .line 206
    if-eqz p7, :cond_c

    .line 207
    .line 208
    iget-object p8, p4, Landroidx/media3/common/h0;->t:Lcom/google/common/collect/ImmutableList;

    .line 209
    .line 210
    invoke-interface {p8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p8

    .line 214
    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p7

    .line 218
    if-eqz p7, :cond_c

    .line 219
    .line 220
    move v1, p2

    .line 221
    goto :goto_b

    .line 222
    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_d
    :goto_b
    iput v1, p0, Li2/n$b;->u:I

    .line 226
    .line 227
    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->h(I)I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    const/16 p4, 0x80

    .line 232
    .line 233
    if-ne p2, p4, :cond_e

    .line 234
    .line 235
    move p2, p3

    .line 236
    goto :goto_c

    .line 237
    :cond_e
    move p2, v0

    .line 238
    :goto_c
    iput-boolean p2, p0, Li2/n$b;->v:Z

    .line 239
    .line 240
    invoke-static {p5}, Landroidx/media3/exoplayer/x3;->j(I)I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    const/16 p4, 0x40

    .line 245
    .line 246
    if-ne p2, p4, :cond_f

    .line 247
    .line 248
    goto :goto_d

    .line 249
    :cond_f
    move p3, v0

    .line 250
    :goto_d
    iput-boolean p3, p0, Li2/n$b;->w:Z

    .line 251
    .line 252
    invoke-direct {p0, p5, p6, p1}, Li2/n$b;->g(IZI)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iput p1, p0, Li2/n$b;->e:I

    .line 257
    .line 258
    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Li2/n$b;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Li2/n$b;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Li2/n$b;->e(Li2/n$b;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static f(ILandroidx/media3/common/f0;Li2/n$e;[IZLcom/google/common/base/n;I)Lcom/google/common/collect/ImmutableList;
    .locals 13

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v11, p1

    .line 7
    :goto_0
    iget v2, v11, Landroidx/media3/common/f0;->a:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v12, Li2/n$b;

    .line 12
    .line 13
    aget v7, p3, v1

    .line 14
    .line 15
    move-object v2, v12

    .line 16
    move v3, p0

    .line 17
    move-object v4, p1

    .line 18
    move v5, v1

    .line 19
    move-object v6, p2

    .line 20
    move/from16 v8, p4

    .line 21
    .line 22
    move-object/from16 v9, p5

    .line 23
    .line 24
    move/from16 v10, p6

    .line 25
    .line 26
    invoke-direct/range {v2 .. v10}, Li2/n$b;-><init>(ILandroidx/media3/common/f0;ILi2/n$e;IZLcom/google/common/base/n;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v12}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private g(IZI)I
    .locals 4

    .line 1
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 2
    .line 3
    iget-boolean v0, v0, Li2/n$e;->A0:Z

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Li2/n$b;->f:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 18
    .line 19
    iget-boolean v0, v0, Li2/n$e;->t0:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 27
    .line 28
    iget v2, v2, Landroidx/media3/common/h0$b;->a:I

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 34
    .line 35
    invoke-static {v0, p1, v2}, Li2/n;->C(Li2/n$e;ILandroidx/media3/common/r;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/x3;->l(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-boolean v0, p0, Li2/n$b;->f:Z

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 53
    .line 54
    iget v0, v0, Landroidx/media3/common/r;->j:I

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 60
    .line 61
    iget-boolean v1, v0, Landroidx/media3/common/h0;->C:Z

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    iget-boolean v1, v0, Landroidx/media3/common/h0;->B:Z

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    iget-boolean v1, v0, Li2/n$e;->C0:Z

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    if-nez p2, :cond_4

    .line 74
    .line 75
    :cond_3
    iget-object p2, v0, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 76
    .line 77
    iget p2, p2, Landroidx/media3/common/h0$b;->a:I

    .line 78
    .line 79
    if-eq p2, v3, :cond_4

    .line 80
    .line 81
    and-int/2addr p1, p3

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const/4 v3, 0x1

    .line 86
    :goto_0
    return v3
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li2/n$b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic b(Li2/n$i;)Z
    .locals 0

    .line 1
    check-cast p1, Li2/n$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$b;->h(Li2/n$b;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Li2/n$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Li2/n$b;->e(Li2/n$b;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Li2/n$b;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Li2/n$b;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Li2/n$b;->i:Z

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
    iget-boolean v2, p0, Li2/n$b;->i:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Li2/n$b;->i:Z

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v2, p0, Li2/n$b;->k:I

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget v3, p1, Li2/n$b;->k:I

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v2, p0, Li2/n$b;->j:I

    .line 59
    .line 60
    iget v3, p1, Li2/n$b;->j:I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget v2, p0, Li2/n$b;->l:I

    .line 67
    .line 68
    iget v3, p1, Li2/n$b;->l:I

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-boolean v2, p0, Li2/n$b;->q:Z

    .line 75
    .line 76
    iget-boolean v3, p1, Li2/n$b;->q:Z

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-boolean v2, p0, Li2/n$b;->n:Z

    .line 83
    .line 84
    iget-boolean v3, p1, Li2/n$b;->n:Z

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget v2, p0, Li2/n$b;->o:I

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, p1, Li2/n$b;->o:I

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v2, p0, Li2/n$b;->p:I

    .line 115
    .line 116
    iget v3, p1, Li2/n$b;->p:I

    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->d(II)Lcom/google/common/collect/h2;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-boolean v2, p0, Li2/n$b;->f:Z

    .line 123
    .line 124
    iget-boolean v3, p1, Li2/n$b;->f:Z

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget v2, p0, Li2/n$b;->u:I

    .line 131
    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget v3, p1, Li2/n$b;->u:I

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v2, p0, Li2/n$b;->h:Li2/n$e;

    .line 155
    .line 156
    iget-boolean v2, v2, Landroidx/media3/common/h0;->B:Z

    .line 157
    .line 158
    if-eqz v2, :cond_1

    .line 159
    .line 160
    iget v2, p0, Li2/n$b;->t:I

    .line 161
    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v3, p1, Li2/n$b;->t:I

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {}, Li2/n;->A()Lcom/google/common/collect/Ordering;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    :cond_1
    iget-boolean v2, p0, Li2/n$b;->v:Z

    .line 185
    .line 186
    iget-boolean v3, p1, Li2/n$b;->v:Z

    .line 187
    .line 188
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-boolean v2, p0, Li2/n$b;->w:Z

    .line 193
    .line 194
    iget-boolean v3, p1, Li2/n$b;->w:Z

    .line 195
    .line 196
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-boolean v2, p0, Li2/n$b;->x:Z

    .line 201
    .line 202
    iget-boolean v3, p1, Li2/n$b;->x:Z

    .line 203
    .line 204
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget v2, p0, Li2/n$b;->r:I

    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iget v3, p1, Li2/n$b;->r:I

    .line 215
    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget v2, p0, Li2/n$b;->s:I

    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v3, p1, Li2/n$b;->s:I

    .line 231
    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iget-object v2, p0, Li2/n$b;->g:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v3, p1, Li2/n$b;->g:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_2

    .line 249
    .line 250
    iget v2, p0, Li2/n$b;->t:I

    .line 251
    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget p1, p1, Li2/n$b;->t:I

    .line 257
    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/h2;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/h2;->j()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    return p1
.end method

.method public h(Li2/n$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 2
    .line 3
    iget-boolean v0, v0, Li2/n$e;->w0:Z

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 9
    .line 10
    iget v0, v0, Landroidx/media3/common/r;->E:I

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    iget-object v2, p1, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 15
    .line 16
    iget v2, v2, Landroidx/media3/common/r;->E:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Li2/n$b;->m:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v2, p1, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Li2/n$b;->h:Li2/n$e;

    .line 41
    .line 42
    iget-boolean v2, v0, Li2/n$e;->v0:Z

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 47
    .line 48
    iget v2, v2, Landroidx/media3/common/r;->F:I

    .line 49
    .line 50
    if-eq v2, v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p1, Li2/n$i;->d:Landroidx/media3/common/r;

    .line 53
    .line 54
    iget v1, v1, Landroidx/media3/common/r;->F:I

    .line 55
    .line 56
    if-ne v2, v1, :cond_3

    .line 57
    .line 58
    :cond_2
    iget-boolean v0, v0, Li2/n$e;->x0:Z

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    iget-boolean v0, p0, Li2/n$b;->v:Z

    .line 63
    .line 64
    iget-boolean v1, p1, Li2/n$b;->v:Z

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    iget-boolean v0, p0, Li2/n$b;->w:Z

    .line 69
    .line 70
    iget-boolean p1, p1, Li2/n$b;->w:Z

    .line 71
    .line 72
    if-ne v0, p1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 p1, 0x0

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 78
    :goto_1
    return p1
.end method
