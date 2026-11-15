.class public Lc2/e;
.super Landroidx/media3/exoplayer/i;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/e$a;,
        Lc2/e$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroidx/media3/common/r;

.field private C:Lc2/c;

.field private D:Landroidx/media3/decoder/DecoderInputBuffer;

.field private E:Landroidx/media3/exoplayer/image/ImageOutput;

.field private F:Landroid/graphics/Bitmap;

.field private G:Z

.field private H:Lc2/e$b;

.field private I:Lc2/e$b;

.field private J:I

.field private K:Z

.field private final r:Lc2/c$a;

.field private final s:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final t:Ljava/util/ArrayDeque;

.field private u:Z

.field private v:Z

.field private w:Lc2/e$a;

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Lc2/c$a;Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lc2/e;->r:Lc2/c$a;

    .line 6
    .line 7
    invoke-static {p2}, Lc2/e;->U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lc2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 12
    .line 13
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->f()Landroidx/media3/decoder/DecoderInputBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lc2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 18
    .line 19
    sget-object p1, Lc2/e$a;->c:Lc2/e$a;

    .line 20
    .line 21
    iput-object p1, p0, Lc2/e;->w:Lc2/e$a;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide p1, p0, Lc2/e;->y:J

    .line 36
    .line 37
    iput-wide p1, p0, Lc2/e;->x:J

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lc2/e;->z:I

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lc2/e;->A:I

    .line 44
    .line 45
    return-void
.end method

.method private Q(Landroidx/media3/common/r;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/e;->r:Lc2/c$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lc2/c$a;->a(Landroidx/media3/common/r;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-static {v0}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private R(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/media3/common/r;

    .line 19
    .line 20
    iget v1, v1, Landroidx/media3/common/r;->L:I

    .line 21
    .line 22
    div-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 30
    .line 31
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/media3/common/r;

    .line 36
    .line 37
    iget v2, v2, Landroidx/media3/common/r;->M:I

    .line 38
    .line 39
    div-int/2addr v1, v2

    .line 40
    iget-object v2, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 41
    .line 42
    iget v2, v2, Landroidx/media3/common/r;->L:I

    .line 43
    .line 44
    rem-int v3, p1, v2

    .line 45
    .line 46
    mul-int/2addr v3, v0

    .line 47
    div-int/2addr p1, v2

    .line 48
    mul-int/2addr p1, v1

    .line 49
    iget-object v2, p0, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    invoke-static {v2, v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method private S(JJ)Z
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    iget-object v0, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    const/4 v9, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v9

    .line 12
    :cond_0
    iget v0, v8, Lc2/e;->A:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    return v9

    .line 24
    :cond_1
    iget-object v0, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    const/4 v10, 0x3

    .line 27
    const/4 v11, 0x1

    .line 28
    if-nez v0, :cond_6

    .line 29
    .line 30
    iget-object v0, v8, Lc2/e;->C:Lc2/c;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, v8, Lc2/e;->C:Lc2/c;

    .line 36
    .line 37
    invoke-interface {v0}, Lc2/c;->dequeueOutputBuffer()Lc2/d;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    return v9

    .line 44
    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lc2/d;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    iget v1, v8, Lc2/e;->z:I

    .line 57
    .line 58
    if-ne v1, v10, :cond_3

    .line 59
    .line 60
    invoke-direct {p0}, Lc2/e;->c0()V

    .line 61
    .line 62
    .line 63
    iget-object v0, v8, Lc2/e;->B:Landroidx/media3/common/r;

    .line 64
    .line 65
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lc2/e;->Y()Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lc2/d;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/media3/decoder/h;->release()V

    .line 79
    .line 80
    .line 81
    iget-object v0, v8, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iput-boolean v11, v8, Lc2/e;->v:Z

    .line 90
    .line 91
    :cond_4
    :goto_0
    return v9

    .line 92
    :cond_5
    iget-object v1, v0, Lc2/d;->a:Landroid/graphics/Bitmap;

    .line 93
    .line 94
    const-string v2, "Non-EOS buffer came back from the decoder without bitmap."

    .line 95
    .line 96
    invoke-static {v1, v2}, Landroidx/media3/common/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lc2/d;->a:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    iput-object v1, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lc2/d;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/media3/decoder/h;->release()V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-boolean v0, v8, Lc2/e;->G:Z

    .line 113
    .line 114
    if-eqz v0, :cond_e

    .line 115
    .line 116
    iget-object v0, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    if-eqz v0, :cond_e

    .line 119
    .line 120
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 121
    .line 122
    if-eqz v0, :cond_e

    .line 123
    .line 124
    iget-object v0, v8, Lc2/e;->B:Landroidx/media3/common/r;

    .line 125
    .line 126
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object v0, v8, Lc2/e;->B:Landroidx/media3/common/r;

    .line 130
    .line 131
    iget v1, v0, Landroidx/media3/common/r;->L:I

    .line 132
    .line 133
    if-ne v1, v11, :cond_7

    .line 134
    .line 135
    iget v2, v0, Landroidx/media3/common/r;->M:I

    .line 136
    .line 137
    if-eq v2, v11, :cond_8

    .line 138
    .line 139
    :cond_7
    const/4 v2, -0x1

    .line 140
    if-eq v1, v2, :cond_8

    .line 141
    .line 142
    iget v0, v0, Landroidx/media3/common/r;->M:I

    .line 143
    .line 144
    if-eq v0, v2, :cond_8

    .line 145
    .line 146
    move v12, v11

    .line 147
    goto :goto_1

    .line 148
    :cond_8
    move v12, v9

    .line 149
    :goto_1
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 150
    .line 151
    invoke-virtual {v0}, Lc2/e$b;->d()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_a

    .line 156
    .line 157
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 158
    .line 159
    if-eqz v12, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0}, Lc2/e$b;->c()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-direct {p0, v1}, Lc2/e;->R(I)Landroid/graphics/Bitmap;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    iget-object v1, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 171
    .line 172
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/graphics/Bitmap;

    .line 177
    .line 178
    :goto_2
    invoke-virtual {v0, v1}, Lc2/e$b;->e(Landroid/graphics/Bitmap;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 182
    .line 183
    invoke-virtual {v0}, Lc2/e$b;->b()Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object v5, v0

    .line 192
    check-cast v5, Landroid/graphics/Bitmap;

    .line 193
    .line 194
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 195
    .line 196
    invoke-virtual {v0}, Lc2/e$b;->a()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    move-object v0, p0

    .line 201
    move-wide v1, p1

    .line 202
    move-wide/from16 v3, p3

    .line 203
    .line 204
    invoke-virtual/range {v0 .. v7}, Lc2/e;->b0(JJLandroid/graphics/Bitmap;J)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_b

    .line 209
    .line 210
    return v9

    .line 211
    :cond_b
    iget-object v0, v8, Lc2/e;->H:Lc2/e$b;

    .line 212
    .line 213
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lc2/e$b;

    .line 218
    .line 219
    invoke-virtual {v0}, Lc2/e$b;->a()J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    invoke-direct {p0, v0, v1}, Lc2/e;->a0(J)V

    .line 224
    .line 225
    .line 226
    iput v10, v8, Lc2/e;->A:I

    .line 227
    .line 228
    const/4 v0, 0x0

    .line 229
    if-eqz v12, :cond_c

    .line 230
    .line 231
    iget-object v1, v8, Lc2/e;->H:Lc2/e$b;

    .line 232
    .line 233
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Lc2/e$b;

    .line 238
    .line 239
    invoke-virtual {v1}, Lc2/e$b;->c()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iget-object v2, v8, Lc2/e;->B:Landroidx/media3/common/r;

    .line 244
    .line 245
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Landroidx/media3/common/r;

    .line 250
    .line 251
    iget v2, v2, Landroidx/media3/common/r;->M:I

    .line 252
    .line 253
    iget-object v3, v8, Lc2/e;->B:Landroidx/media3/common/r;

    .line 254
    .line 255
    invoke-static {v3}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Landroidx/media3/common/r;

    .line 260
    .line 261
    iget v3, v3, Landroidx/media3/common/r;->L:I

    .line 262
    .line 263
    mul-int/2addr v2, v3

    .line 264
    sub-int/2addr v2, v11

    .line 265
    if-ne v1, v2, :cond_d

    .line 266
    .line 267
    :cond_c
    iput-object v0, v8, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 268
    .line 269
    :cond_d
    iget-object v1, v8, Lc2/e;->I:Lc2/e$b;

    .line 270
    .line 271
    iput-object v1, v8, Lc2/e;->H:Lc2/e$b;

    .line 272
    .line 273
    iput-object v0, v8, Lc2/e;->I:Lc2/e$b;

    .line 274
    .line 275
    return v11

    .line 276
    :cond_e
    return v9
.end method

.method private T(J)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lc2/e;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lc2/e;->H:Lc2/e$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lc2/e;->C:Lc2/c;

    .line 16
    .line 17
    if-eqz v2, :cond_d

    .line 18
    .line 19
    iget v3, p0, Lc2/e;->z:I

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq v3, v4, :cond_d

    .line 23
    .line 24
    iget-boolean v3, p0, Lc2/e;->u:Z

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    iget-object v3, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Landroidx/media3/decoder/g;->dequeueInputBuffer()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 39
    .line 40
    iput-object v2, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    iget v2, p0, Lc2/e;->z:I

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v5, 0x0

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 52
    .line 53
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 57
    .line 58
    const/4 p2, 0x4

    .line 59
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/a;->setFlags(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lc2/e;->C:Lc2/c;

    .line 63
    .line 64
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lc2/c;

    .line 69
    .line 70
    iget-object p2, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 71
    .line 72
    invoke-interface {p1, p2}, Lc2/c;->b(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 73
    .line 74
    .line 75
    iput-object v5, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 76
    .line 77
    iput v4, p0, Lc2/e;->z:I

    .line 78
    .line 79
    return v1

    .line 80
    :cond_3
    iget-object v2, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 81
    .line 82
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v4, -0x5

    .line 87
    const/4 v6, 0x1

    .line 88
    if-eq v2, v4, :cond_c

    .line 89
    .line 90
    const/4 v0, -0x4

    .line 91
    if-eq v2, v0, :cond_5

    .line 92
    .line 93
    const/4 p1, -0x3

    .line 94
    if-ne v2, p1, :cond_4

    .line 95
    .line 96
    return v1

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    iget-object v0, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 109
    .line 110
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-gtz v0, :cond_7

    .line 119
    .line 120
    :cond_6
    iget-object v0, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 121
    .line 122
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    :cond_7
    move v0, v6

    .line 135
    goto :goto_0

    .line 136
    :cond_8
    move v0, v1

    .line 137
    :goto_0
    if-eqz v0, :cond_9

    .line 138
    .line 139
    iget-object v2, p0, Lc2/e;->C:Lc2/c;

    .line 140
    .line 141
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lc2/c;

    .line 146
    .line 147
    iget-object v3, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 148
    .line 149
    invoke-static {v3}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 154
    .line 155
    invoke-interface {v2, v3}, Lc2/c;->b(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 156
    .line 157
    .line 158
    iput v1, p0, Lc2/e;->J:I

    .line 159
    .line 160
    :cond_9
    iget-object v2, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 161
    .line 162
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 167
    .line 168
    invoke-direct {p0, p1, p2, v2}, Lc2/e;->X(JLandroidx/media3/decoder/DecoderInputBuffer;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 172
    .line 173
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    iput-boolean v6, p0, Lc2/e;->u:Z

    .line 186
    .line 187
    iput-object v5, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 188
    .line 189
    return v1

    .line 190
    :cond_a
    iget-wide p1, p0, Lc2/e;->y:J

    .line 191
    .line 192
    iget-object v1, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 193
    .line 194
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 199
    .line 200
    iget-wide v1, v1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 201
    .line 202
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide p1

    .line 206
    iput-wide p1, p0, Lc2/e;->y:J

    .line 207
    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    iput-object v5, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_b
    iget-object p1, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 214
    .line 215
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 222
    .line 223
    .line 224
    :goto_1
    iget-boolean p1, p0, Lc2/e;->G:Z

    .line 225
    .line 226
    xor-int/2addr p1, v6

    .line 227
    return p1

    .line 228
    :cond_c
    iget-object p1, v0, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 229
    .line 230
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroidx/media3/common/r;

    .line 235
    .line 236
    iput-object p1, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 237
    .line 238
    iput-boolean v6, p0, Lc2/e;->K:Z

    .line 239
    .line 240
    iput v3, p0, Lc2/e;->z:I

    .line 241
    .line 242
    return v6

    .line 243
    :cond_d
    :goto_2
    return v1
.end method

.method private static U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method private V(Lc2/e$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/r;

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/common/r;->L:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 16
    .line 17
    iget v0, v0, Landroidx/media3/common/r;->M:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lc2/e$b;->c()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/media3/common/r;

    .line 32
    .line 33
    iget v0, v0, Landroidx/media3/common/r;->M:I

    .line 34
    .line 35
    iget-object v2, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 36
    .line 37
    iget v2, v2, Landroidx/media3/common/r;->L:I

    .line 38
    .line 39
    mul-int/2addr v0, v2

    .line 40
    sub-int/2addr v0, v1

    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    :goto_0
    return v1
.end method

.method private W(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc2/e;->A:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lc2/e;->A:I

    .line 8
    .line 9
    return-void
.end method

.method private X(JLandroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Lc2/e;->G:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lc2/e$b;

    .line 12
    .line 13
    iget v2, p0, Lc2/e;->J:I

    .line 14
    .line 15
    iget-wide v3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 16
    .line 17
    invoke-direct {v0, v2, v3, v4}, Lc2/e$b;-><init>(IJ)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lc2/e;->I:Lc2/e$b;

    .line 21
    .line 22
    iget p3, p0, Lc2/e;->J:I

    .line 23
    .line 24
    add-int/2addr p3, v1

    .line 25
    iput p3, p0, Lc2/e;->J:I

    .line 26
    .line 27
    iget-boolean p3, p0, Lc2/e;->G:Z

    .line 28
    .line 29
    if-nez p3, :cond_5

    .line 30
    .line 31
    invoke-virtual {v0}, Lc2/e$b;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v4, 0x7530

    .line 36
    .line 37
    sub-long v6, v2, v4

    .line 38
    .line 39
    cmp-long p3, v6, p1

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-gtz p3, :cond_1

    .line 43
    .line 44
    add-long/2addr v4, v2

    .line 45
    cmp-long p3, p1, v4

    .line 46
    .line 47
    if-gtz p3, :cond_1

    .line 48
    .line 49
    move p3, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move p3, v0

    .line 52
    :goto_0
    iget-object v4, p0, Lc2/e;->H:Lc2/e$b;

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4}, Lc2/e$b;->a()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    cmp-long v4, v4, p1

    .line 61
    .line 62
    if-gtz v4, :cond_2

    .line 63
    .line 64
    cmp-long p1, p1, v2

    .line 65
    .line 66
    if-gez p1, :cond_2

    .line 67
    .line 68
    move p1, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move p1, v0

    .line 71
    :goto_1
    iget-object p2, p0, Lc2/e;->I:Lc2/e$b;

    .line 72
    .line 73
    invoke-static {p2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lc2/e$b;

    .line 78
    .line 79
    invoke-direct {p0, p2}, Lc2/e;->V(Lc2/e$b;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p3, :cond_4

    .line 84
    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v1, v0

    .line 91
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lc2/e;->G:Z

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    if-nez p3, :cond_5

    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    iget-object p1, p0, Lc2/e;->I:Lc2/e$b;

    .line 99
    .line 100
    iput-object p1, p0, Lc2/e;->H:Lc2/e$b;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lc2/e;->I:Lc2/e$b;

    .line 104
    .line 105
    return-void
.end method

.method private Y()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc2/e;->Z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lc2/e;->K:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    iget-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/common/r;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lc2/e;->Q(Landroidx/media3/common/r;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lc2/e;->C:Lc2/c;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Landroidx/media3/decoder/g;->release()V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lc2/e;->r:Lc2/c$a;

    .line 37
    .line 38
    invoke-interface {v0}, Lc2/c$a;->b()Lc2/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lc2/e;->C:Lc2/c;

    .line 43
    .line 44
    iput-boolean v1, p0, Lc2/e;->K:Z

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    .line 48
    .line 49
    const-string v1, "Provided decoder factory can\'t create decoder for format."

    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 55
    .line 56
    const/16 v2, 0xfa5

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    throw v0
.end method

.method private a0(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lc2/e;->x:J

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lc2/e$a;

    .line 18
    .line 19
    iget-wide v0, v0, Lc2/e$a;->a:J

    .line 20
    .line 21
    cmp-long v0, p1, v0

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lc2/e$a;

    .line 32
    .line 33
    iput-object v0, p0, Lc2/e;->w:Lc2/e$a;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private c0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lc2/e;->z:I

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v1, p0, Lc2/e;->y:J

    .line 13
    .line 14
    iget-object v1, p0, Lc2/e;->C:Lc2/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/decoder/g;->release()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lc2/e;->C:Lc2/c;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private d0(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc2/e;->U(Landroidx/media3/exoplayer/image/ImageOutput;)Landroidx/media3/exoplayer/image/ImageOutput;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lc2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 6
    .line 7
    return-void
.end method

.method private e0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

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
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    iget v1, p0, Lc2/e;->A:I

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_2
    return v3

    .line 30
    :cond_3
    return v0
.end method


# virtual methods
.method protected C()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 3
    .line 4
    sget-object v0, Lc2/e$a;->c:Lc2/e$a;

    .line 5
    .line 6
    iput-object v0, p0, Lc2/e;->w:Lc2/e$a;

    .line 7
    .line 8
    iget-object v0, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lc2/e;->c0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lc2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected D(ZZ)V
    .locals 0

    .line 1
    iput p2, p0, Lc2/e;->A:I

    .line 2
    .line 3
    return-void
.end method

.method protected F(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lc2/e;->W(I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lc2/e;->v:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lc2/e;->u:Z

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lc2/e;->F:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iput-object p2, p0, Lc2/e;->H:Lc2/e$b;

    .line 14
    .line 15
    iput-object p2, p0, Lc2/e;->I:Lc2/e$b;

    .line 16
    .line 17
    iput-boolean p1, p0, Lc2/e;->G:Z

    .line 18
    .line 19
    iput-object p2, p0, Lc2/e;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 20
    .line 21
    iget-object p1, p0, Lc2/e;->C:Lc2/c;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/media3/decoder/g;->flush()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected G()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc2/e;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected I()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc2/e;->c0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lc2/e;->W(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 4

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/i;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc2/e;->w:Lc2/e$a;

    .line 5
    .line 6
    iget-wide p1, p1, Lc2/e$a;->b:J

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-wide p1, p0, Lc2/e;->y:J

    .line 26
    .line 27
    cmp-long p3, p1, v0

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    iget-wide v2, p0, Lc2/e;->x:J

    .line 32
    .line 33
    cmp-long p3, v2, v0

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    cmp-long p1, v2, p1

    .line 38
    .line 39
    if-ltz p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lc2/e;->t:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    new-instance p2, Lc2/e$a;

    .line 45
    .line 46
    iget-wide v0, p0, Lc2/e;->y:J

    .line 47
    .line 48
    invoke-direct {p2, v0, v1, p4, p5}, Lc2/e$a;-><init>(JJ)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    new-instance p1, Lc2/e$a;

    .line 56
    .line 57
    invoke-direct {p1, v0, v1, p4, p5}, Lc2/e$a;-><init>(JJ)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lc2/e;->w:Lc2/e$a;

    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method protected Z()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public a(Landroidx/media3/common/r;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/e;->r:Lc2/c$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lc2/c$a;->a(Landroidx/media3/common/r;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected b0(JJLandroid/graphics/Bitmap;J)Z
    .locals 0

    .line 1
    sub-long p1, p6, p1

    .line 2
    .line 3
    invoke-direct {p0}, Lc2/e;->e0()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    const-wide/16 p3, 0x7530

    .line 10
    .line 11
    cmp-long p1, p1, p3

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lc2/e;->E:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 19
    .line 20
    iget-object p2, p0, Lc2/e;->w:Lc2/e$a;

    .line 21
    .line 22
    iget-wide p2, p2, Lc2/e$a;->b:J

    .line 23
    .line 24
    sub-long/2addr p6, p2

    .line 25
    invoke-interface {p1, p6, p7, p5}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ImageRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, p2}, Lc2/e;->d0(Landroidx/media3/exoplayer/image/ImageOutput;)V

    .line 18
    .line 19
    .line 20
    :goto_1
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc2/e;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget v0, p0, Lc2/e;->A:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lc2/e;->G:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
.end method

.method public render(JJ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc2/e;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lc2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lc2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x5

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/media3/common/r;

    .line 37
    .line 38
    iput-object v0, p0, Lc2/e;->B:Landroidx/media3/common/r;

    .line 39
    .line 40
    iput-boolean v3, p0, Lc2/e;->K:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, -0x4

    .line 44
    if-ne v1, p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lc2/e;->s:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 53
    .line 54
    .line 55
    iput-boolean v3, p0, Lc2/e;->u:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Lc2/e;->v:Z

    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lc2/e;->C:Lc2/c;

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    invoke-direct {p0}, Lc2/e;->Y()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    :try_start_0
    const-string v0, "drainAndFeedDecoder"

    .line 72
    .line 73
    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lc2/e;->S(JJ)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    :goto_2
    invoke-direct {p0, p1, p2}, Lc2/e;->T(J)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    move-exception p1

    .line 95
    const/4 p2, 0x0

    .line 96
    const/16 p3, 0xfa3

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    throw p1
.end method
