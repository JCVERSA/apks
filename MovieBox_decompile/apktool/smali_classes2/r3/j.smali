.class public final Lr3/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/l0$c;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lr3/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lr3/j;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lr3/j;->a:I

    .line 5
    iput-object p2, p0, Lr3/j;->b:Ljava/util/List;

    return-void
.end method

.method private b(Lr3/l0$b;)Lr3/g0;
    .locals 2

    .line 1
    new-instance v0, Lr3/g0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lr3/j;->d(Lr3/l0$b;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "video/mp2t"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lr3/g0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private c(Lr3/l0$b;)Lr3/n0;
    .locals 2

    .line 1
    new-instance v0, Lr3/n0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lr3/j;->d(Lr3/l0$b;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "video/mp2t"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lr3/n0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private d(Lr3/l0$b;)Ljava/util/List;
    .locals 11

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lr3/j;->e(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lr3/j;->b:Ljava/util/List;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 13
    .line 14
    iget-object p1, p1, Lr3/l0$b;->e:[B

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lr3/j;->b:Ljava/util/List;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_6

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->H()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->H()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->f()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v2

    .line 40
    const/16 v2, 0x86

    .line 41
    .line 42
    if-ne v1, v2, :cond_5

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->H()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    and-int/lit8 v1, v1, 0x1f

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    move v4, v2

    .line 57
    :goto_1
    if-ge v4, v1, :cond_5

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->H()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    and-int/lit16 v7, v6, 0x80

    .line 69
    .line 70
    const/4 v8, 0x1

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    move v7, v8

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move v7, v2

    .line 76
    :goto_2
    if-eqz v7, :cond_2

    .line 77
    .line 78
    and-int/lit8 v6, v6, 0x3f

    .line 79
    .line 80
    const-string v9, "application/cea-708"

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const-string v9, "application/cea-608"

    .line 84
    .line 85
    move v6, v8

    .line 86
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->H()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    int-to-byte v10, v10

    .line 91
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/j0;->X(I)V

    .line 92
    .line 93
    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    and-int/lit8 v7, v10, 0x40

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_3
    move v8, v2

    .line 102
    :goto_4
    invoke-static {v8}, Landroidx/media3/common/util/j;->e(Z)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    const/4 v7, 0x0

    .line 108
    :goto_5
    new-instance v8, Landroidx/media3/common/r$b;

    .line 109
    .line 110
    invoke-direct {v8}, Landroidx/media3/common/r$b;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v9}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    return-object p1
.end method

.method private e(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lr3/j;->a:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method


# virtual methods
.method public a(ILr3/l0$b;)Lr3/l0;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "video/mp2t"

    .line 3
    .line 4
    if-eq p1, v0, :cond_e

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq p1, v2, :cond_d

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_d

    .line 11
    .line 12
    const/16 v3, 0x15

    .line 13
    .line 14
    if-eq p1, v3, :cond_c

    .line 15
    .line 16
    const/16 v3, 0x1b

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq p1, v3, :cond_a

    .line 20
    .line 21
    const/16 v2, 0x24

    .line 22
    .line 23
    if-eq p1, v2, :cond_9

    .line 24
    .line 25
    const/16 v2, 0x2d

    .line 26
    .line 27
    if-eq p1, v2, :cond_8

    .line 28
    .line 29
    const/16 v2, 0x59

    .line 30
    .line 31
    if-eq p1, v2, :cond_7

    .line 32
    .line 33
    const/16 v2, 0xac

    .line 34
    .line 35
    if-eq p1, v2, :cond_6

    .line 36
    .line 37
    const/16 v2, 0x101

    .line 38
    .line 39
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    const/16 v2, 0x8a

    .line 42
    .line 43
    if-eq p1, v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x8b

    .line 46
    .line 47
    if-eq p1, v2, :cond_3

    .line 48
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    packed-switch p1, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    packed-switch p1, :pswitch_data_2

    .line 56
    .line 57
    .line 58
    return-object v4

    .line 59
    :pswitch_0
    const/16 p1, 0x10

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lr3/j;->e(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v4, Lr3/e0;

    .line 69
    .line 70
    new-instance p1, Lr3/x;

    .line 71
    .line 72
    const-string p2, "application/x-scte35"

    .line 73
    .line 74
    invoke-direct {p1, p2, v1}, Lr3/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, p1}, Lr3/e0;-><init>(Lr3/d0;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-object v4

    .line 81
    :pswitch_1
    const/16 p1, 0x40

    .line 82
    .line 83
    invoke-direct {p0, p1}, Lr3/j;->e(I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    return-object v4

    .line 90
    :pswitch_2
    new-instance p1, Lr3/y;

    .line 91
    .line 92
    new-instance v0, Lr3/c;

    .line 93
    .line 94
    iget-object v2, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-direct {v0, v2, p2, v1}, Lr3/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :pswitch_3
    invoke-direct {p0, v0}, Lr3/j;->e(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    new-instance v4, Lr3/y;

    .line 115
    .line 116
    new-instance p1, Lr3/s;

    .line 117
    .line 118
    iget-object v0, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-direct {p1, v0, p2, v1}, Lr3/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v4, p1}, Lr3/y;-><init>(Lr3/m;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-object v4

    .line 131
    :pswitch_4
    new-instance p1, Lr3/y;

    .line 132
    .line 133
    new-instance v0, Lr3/o;

    .line 134
    .line 135
    invoke-direct {p0, p2}, Lr3/j;->c(Lr3/l0$b;)Lr3/n0;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {v0, p2, v1}, Lr3/o;-><init>(Lr3/n0;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :pswitch_5
    invoke-direct {p0, v0}, Lr3/j;->e(I)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    new-instance v4, Lr3/y;

    .line 154
    .line 155
    new-instance p1, Lr3/i;

    .line 156
    .line 157
    iget-object v0, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    const/4 v2, 0x0

    .line 164
    invoke-direct {p1, v2, v0, p2, v1}, Lr3/i;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v4, p1}, Lr3/y;-><init>(Lr3/m;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-object v4

    .line 171
    :cond_3
    new-instance p1, Lr3/y;

    .line 172
    .line 173
    new-instance v0, Lr3/k;

    .line 174
    .line 175
    iget-object v2, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    const/16 v3, 0x1520

    .line 182
    .line 183
    invoke-direct {v0, v2, p2, v3, v1}, Lr3/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_4
    :pswitch_6
    new-instance p1, Lr3/y;

    .line 191
    .line 192
    new-instance v0, Lr3/k;

    .line 193
    .line 194
    iget-object v2, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    const/16 v3, 0x1000

    .line 201
    .line 202
    invoke-direct {v0, v2, p2, v3, v1}, Lr3/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 206
    .line 207
    .line 208
    return-object p1

    .line 209
    :cond_5
    new-instance p1, Lr3/e0;

    .line 210
    .line 211
    new-instance p2, Lr3/x;

    .line 212
    .line 213
    const-string v0, "application/vnd.dvb.ait"

    .line 214
    .line 215
    invoke-direct {p2, v0, v1}, Lr3/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p1, p2}, Lr3/e0;-><init>(Lr3/d0;)V

    .line 219
    .line 220
    .line 221
    return-object p1

    .line 222
    :cond_6
    new-instance p1, Lr3/y;

    .line 223
    .line 224
    new-instance v0, Lr3/f;

    .line 225
    .line 226
    iget-object v2, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    invoke-direct {v0, v2, p2, v1}, Lr3/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 236
    .line 237
    .line 238
    return-object p1

    .line 239
    :cond_7
    new-instance p1, Lr3/y;

    .line 240
    .line 241
    new-instance v0, Lr3/l;

    .line 242
    .line 243
    iget-object p2, p2, Lr3/l0$b;->d:Ljava/util/List;

    .line 244
    .line 245
    invoke-direct {v0, p2, v1}, Lr3/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 249
    .line 250
    .line 251
    return-object p1

    .line 252
    :cond_8
    new-instance p1, Lr3/y;

    .line 253
    .line 254
    new-instance p2, Lr3/u;

    .line 255
    .line 256
    invoke-direct {p2, v1}, Lr3/u;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-direct {p1, p2}, Lr3/y;-><init>(Lr3/m;)V

    .line 260
    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_9
    new-instance p1, Lr3/y;

    .line 264
    .line 265
    new-instance v0, Lr3/q;

    .line 266
    .line 267
    invoke-direct {p0, p2}, Lr3/j;->b(Lr3/l0$b;)Lr3/g0;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-direct {v0, p2, v1}, Lr3/q;-><init>(Lr3/g0;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    :cond_a
    invoke-direct {p0, v2}, Lr3/j;->e(I)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_b

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_b
    new-instance v4, Lr3/y;

    .line 286
    .line 287
    new-instance p1, Lr3/p;

    .line 288
    .line 289
    invoke-direct {p0, p2}, Lr3/j;->b(Lr3/l0$b;)Lr3/g0;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, v0}, Lr3/j;->e(I)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const/16 v2, 0x8

    .line 299
    .line 300
    invoke-direct {p0, v2}, Lr3/j;->e(I)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    invoke-direct {p1, p2, v0, v2, v1}, Lr3/p;-><init>(Lr3/g0;ZZLjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, p1}, Lr3/y;-><init>(Lr3/m;)V

    .line 308
    .line 309
    .line 310
    :goto_3
    return-object v4

    .line 311
    :cond_c
    new-instance p1, Lr3/y;

    .line 312
    .line 313
    new-instance p2, Lr3/r;

    .line 314
    .line 315
    invoke-direct {p2, v1}, Lr3/r;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, p2}, Lr3/y;-><init>(Lr3/m;)V

    .line 319
    .line 320
    .line 321
    return-object p1

    .line 322
    :cond_d
    new-instance p1, Lr3/y;

    .line 323
    .line 324
    new-instance v0, Lr3/t;

    .line 325
    .line 326
    iget-object v2, p2, Lr3/l0$b;->b:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {p2}, Lr3/l0$b;->a()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    invoke-direct {v0, v2, p2, v1}, Lr3/t;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 336
    .line 337
    .line 338
    return-object p1

    .line 339
    :cond_e
    :pswitch_7
    new-instance p1, Lr3/y;

    .line 340
    .line 341
    new-instance v0, Lr3/n;

    .line 342
    .line 343
    invoke-direct {p0, p2}, Lr3/j;->c(Lr3/l0$b;)Lr3/n0;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-direct {v0, p2, v1}, Lr3/n;-><init>(Lr3/n0;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-direct {p1, v0}, Lr3/y;-><init>(Lr3/m;)V

    .line 351
    .line 352
    .line 353
    return-object p1

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
