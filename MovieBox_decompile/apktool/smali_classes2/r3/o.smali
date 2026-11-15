.class public final Lr3/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/o$a;,
        Lr3/o$b;
    }
.end annotation


# static fields
.field private static final m:[F


# instance fields
.field private final a:Lr3/n0;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:[Z

.field private final e:Lr3/o$a;

.field private final f:Lr3/w;

.field private g:Lr3/o$b;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lk2/s0;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr3/o;->m:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lr3/n0;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/o;->a:Lr3/n0;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/o;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    new-array p2, p2, [Z

    .line 10
    .line 11
    iput-object p2, p0, Lr3/o;->d:[Z

    .line 12
    .line 13
    new-instance p2, Lr3/o$a;

    .line 14
    .line 15
    const/16 v0, 0x80

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lr3/o$a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lr3/o;->e:Lr3/o$a;

    .line 21
    .line 22
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v1, p0, Lr3/o;->l:J

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lr3/w;

    .line 32
    .line 33
    const/16 p2, 0xb2

    .line 34
    .line 35
    invoke-direct {p1, p2, v0}, Lr3/w;-><init>(II)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lr3/o;->f:Lr3/w;

    .line 39
    .line 40
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 41
    .line 42
    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lr3/o;->c:Landroidx/media3/common/util/j0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lr3/o;->f:Lr3/w;

    .line 50
    .line 51
    iput-object p1, p0, Lr3/o;->c:Landroidx/media3/common/util/j0;

    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private static b(Lr3/o$a;ILjava/lang/String;Ljava/lang/String;)Landroidx/media3/common/r;
    .locals 8

    .line 1
    iget-object v0, p0, Lr3/o$a;->e:[B

    .line 2
    .line 3
    iget p0, p0, Lr3/o$a;->c:I

    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroidx/media3/common/util/i0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->s(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->s(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const-string v4, "Invalid aspect ratio"

    .line 49
    .line 50
    const-string v5, "H263Reader"

    .line 51
    .line 52
    const/16 v6, 0xf

    .line 53
    .line 54
    if-ne p1, v6, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    invoke-static {v5, v4}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    int-to-float p1, p1

    .line 71
    int-to-float v1, v1

    .line 72
    div-float v2, p1, v1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    sget-object v1, Lr3/o;->m:[F

    .line 76
    .line 77
    array-length v7, v1

    .line 78
    if-ge p1, v7, :cond_3

    .line 79
    .line 80
    aget v2, v1, p1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v5, v4}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/4 v1, 0x2

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 125
    .line 126
    .line 127
    const/16 p1, 0xb

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    const-string p1, "Unhandled video object layer shape"

    .line 148
    .line 149
    invoke-static {v5, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 153
    .line 154
    .line 155
    const/16 p1, 0x10

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    if-nez p1, :cond_6

    .line 171
    .line 172
    const-string p1, "Invalid vop_increment_time_resolution"

    .line 173
    .line 174
    invoke-static {v5, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    :goto_1
    if-lez p1, :cond_7

    .line 182
    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    .line 185
    shr-int/lit8 p1, p1, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 192
    .line 193
    .line 194
    const/16 p1, 0xd

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroidx/media3/common/r$b;

    .line 214
    .line 215
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p2, p3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    const-string p3, "video/mp4v-es"

    .line 227
    .line 228
    invoke-virtual {p2, p3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, v2}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lr3/o;->g:Lr3/o$b;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/o;->j:Lk2/s0;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-wide v3, p0, Lr3/o;->h:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-long v5, v5

    .line 30
    add-long/2addr v3, v5

    .line 31
    iput-wide v3, p0, Lr3/o;->h:J

    .line 32
    .line 33
    iget-object v3, p0, Lr3/o;->j:Lk2/s0;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-interface {v3, p1, v4}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v3, p0, Lr3/o;->d:[Z

    .line 43
    .line 44
    invoke-static {v2, v0, v1, v3}, Landroidx/media3/container/g;->e([BII[Z)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, v1, :cond_2

    .line 49
    .line 50
    iget-boolean p1, p0, Lr3/o;->k:Z

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lr3/o;->e:Lr3/o$a;

    .line 55
    .line 56
    invoke-virtual {p1, v2, v0, v1}, Lr3/o$a;->a([BII)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lr3/o;->g:Lr3/o$b;

    .line 60
    .line 61
    invoke-virtual {p1, v2, v0, v1}, Lr3/o$b;->a([BII)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lr3/o;->f:Lr3/w;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1, v2, v0, v1}, Lr3/w;->a([BII)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    add-int/lit8 v5, v3, 0x3

    .line 77
    .line 78
    aget-byte v4, v4, v5

    .line 79
    .line 80
    and-int/lit16 v4, v4, 0xff

    .line 81
    .line 82
    sub-int v6, v3, v0

    .line 83
    .line 84
    iget-boolean v7, p0, Lr3/o;->k:Z

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    const/4 v9, 0x0

    .line 88
    if-nez v7, :cond_5

    .line 89
    .line 90
    if-lez v6, :cond_3

    .line 91
    .line 92
    iget-object v7, p0, Lr3/o;->e:Lr3/o$a;

    .line 93
    .line 94
    invoke-virtual {v7, v2, v0, v3}, Lr3/o$a;->a([BII)V

    .line 95
    .line 96
    .line 97
    :cond_3
    if-gez v6, :cond_4

    .line 98
    .line 99
    neg-int v7, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v7, v9

    .line 102
    :goto_1
    iget-object v10, p0, Lr3/o;->e:Lr3/o$a;

    .line 103
    .line 104
    invoke-virtual {v10, v4, v7}, Lr3/o$a;->b(II)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_5

    .line 109
    .line 110
    iget-object v7, p0, Lr3/o;->j:Lk2/s0;

    .line 111
    .line 112
    iget-object v10, p0, Lr3/o;->e:Lr3/o$a;

    .line 113
    .line 114
    iget v11, v10, Lr3/o$a;->d:I

    .line 115
    .line 116
    iget-object v12, p0, Lr3/o;->i:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v12}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Ljava/lang/String;

    .line 123
    .line 124
    iget-object v13, p0, Lr3/o;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v10, v11, v12, v13}, Lr3/o;->b(Lr3/o$a;ILjava/lang/String;Ljava/lang/String;)Landroidx/media3/common/r;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-interface {v7, v10}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 131
    .line 132
    .line 133
    iput-boolean v8, p0, Lr3/o;->k:Z

    .line 134
    .line 135
    :cond_5
    iget-object v7, p0, Lr3/o;->g:Lr3/o$b;

    .line 136
    .line 137
    invoke-virtual {v7, v2, v0, v3}, Lr3/o$b;->a([BII)V

    .line 138
    .line 139
    .line 140
    iget-object v7, p0, Lr3/o;->f:Lr3/w;

    .line 141
    .line 142
    if-eqz v7, :cond_8

    .line 143
    .line 144
    if-lez v6, :cond_6

    .line 145
    .line 146
    invoke-virtual {v7, v2, v0, v3}, Lr3/w;->a([BII)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    neg-int v9, v6

    .line 151
    :goto_2
    iget-object v0, p0, Lr3/o;->f:Lr3/w;

    .line 152
    .line 153
    invoke-virtual {v0, v9}, Lr3/w;->b(I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    iget-object v0, p0, Lr3/o;->f:Lr3/w;

    .line 160
    .line 161
    iget-object v6, v0, Lr3/w;->d:[B

    .line 162
    .line 163
    iget v0, v0, Lr3/w;->e:I

    .line 164
    .line 165
    invoke-static {v6, v0}, Landroidx/media3/container/g;->L([BI)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iget-object v6, p0, Lr3/o;->c:Landroidx/media3/common/util/j0;

    .line 170
    .line 171
    invoke-static {v6}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Landroidx/media3/common/util/j0;

    .line 176
    .line 177
    iget-object v7, p0, Lr3/o;->f:Lr3/w;

    .line 178
    .line 179
    iget-object v7, v7, Lr3/w;->d:[B

    .line 180
    .line 181
    invoke-virtual {v6, v7, v0}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lr3/o;->a:Lr3/n0;

    .line 185
    .line 186
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lr3/n0;

    .line 191
    .line 192
    iget-wide v6, p0, Lr3/o;->l:J

    .line 193
    .line 194
    iget-object v9, p0, Lr3/o;->c:Landroidx/media3/common/util/j0;

    .line 195
    .line 196
    invoke-virtual {v0, v6, v7, v9}, Lr3/n0;->a(JLandroidx/media3/common/util/j0;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    const/16 v0, 0xb2

    .line 200
    .line 201
    if-ne v4, v0, :cond_8

    .line 202
    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    add-int/lit8 v6, v3, 0x2

    .line 208
    .line 209
    aget-byte v0, v0, v6

    .line 210
    .line 211
    if-ne v0, v8, :cond_8

    .line 212
    .line 213
    iget-object v0, p0, Lr3/o;->f:Lr3/w;

    .line 214
    .line 215
    invoke-virtual {v0, v4}, Lr3/w;->e(I)V

    .line 216
    .line 217
    .line 218
    :cond_8
    sub-int v0, v1, v3

    .line 219
    .line 220
    iget-wide v6, p0, Lr3/o;->h:J

    .line 221
    .line 222
    int-to-long v8, v0

    .line 223
    sub-long/2addr v6, v8

    .line 224
    iget-object v3, p0, Lr3/o;->g:Lr3/o$b;

    .line 225
    .line 226
    iget-boolean v8, p0, Lr3/o;->k:Z

    .line 227
    .line 228
    invoke-virtual {v3, v6, v7, v0, v8}, Lr3/o$b;->b(JIZ)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lr3/o;->g:Lr3/o$b;

    .line 232
    .line 233
    iget-wide v6, p0, Lr3/o;->l:J

    .line 234
    .line 235
    invoke-virtual {v0, v4, v6, v7}, Lr3/o$b;->c(IJ)V

    .line 236
    .line 237
    .line 238
    move v0, v5

    .line 239
    goto/16 :goto_0
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lr3/o;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/o;->g:Lr3/o$b;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lr3/o;->g:Lr3/o$b;

    .line 9
    .line 10
    iget-wide v0, p0, Lr3/o;->h:J

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget-boolean v3, p0, Lr3/o;->k:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lr3/o$b;->b(JIZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lr3/o;->g:Lr3/o$b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lr3/o$b;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public e(Lk2/t;Lr3/l0$d;)V
    .locals 2

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
    iput-object v0, p0, Lr3/o;->i:Ljava/lang/String;

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
    iput-object v0, p0, Lr3/o;->j:Lk2/s0;

    .line 20
    .line 21
    new-instance v1, Lr3/o$b;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lr3/o$b;-><init>(Lk2/s0;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lr3/o;->g:Lr3/o$b;

    .line 27
    .line 28
    iget-object v0, p0, Lr3/o;->a:Lr3/n0;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lr3/n0;->b(Lk2/t;Lr3/l0$d;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr3/o;->d:[Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/container/g;->c([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/o;->e:Lr3/o$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lr3/o$a;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lr3/o;->g:Lr3/o$b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lr3/o$b;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lr3/o;->f:Lr3/w;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lr3/w;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lr3/o;->h:J

    .line 28
    .line 29
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Lr3/o;->l:J

    .line 35
    .line 36
    return-void
.end method
