.class abstract Lq9/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/b$f;,
        Lq9/b$e;,
        Lq9/b$c;,
        Lq9/b$b;,
        Lq9/b$d;,
        Lq9/b$g;,
        Lq9/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n0(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lq9/b;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static A(Lq9/a$a;Li9/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, v0, Lq9/a$a;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Lq9/a$a;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lq9/a$a;

    .line 23
    .line 24
    iget v4, v3, Lq9/a;->a:I

    .line 25
    .line 26
    const v5, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    move-object/from16 v5, p7

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const v4, 0x6d766864

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Lq9/a$b;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move-wide v6, p2

    .line 51
    move-object v8, p4

    .line 52
    move/from16 v9, p5

    .line 53
    .line 54
    move/from16 v10, p6

    .line 55
    .line 56
    invoke-static/range {v4 .. v10}, Lq9/b;->z(Lq9/a$a;Lq9/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lq9/o;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object/from16 v5, p7

    .line 61
    .line 62
    invoke-interface {v5, v4}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lq9/o;

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    move-object v6, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v6, 0x6d646961

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lq9/a$a;

    .line 84
    .line 85
    const v6, 0x6d696e66

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lq9/a$a;

    .line 97
    .line 98
    const v6, 0x7374626c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lq9/a$a;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    invoke-static {v4, v3, p1}, Lq9/b;->v(Lq9/o;Lq9/a$a;Li9/x;)Lq9/r;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v1
.end method

.method public static B(Lq9/a$b;)Landroid/util/Pair;
    .locals 7

    .line 1
    iget-object p0, p0, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v2, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lt v3, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const v6, 0x6d657461

    .line 29
    .line 30
    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 34
    .line 35
    .line 36
    add-int v1, v3, v4

    .line 37
    .line 38
    invoke-static {p0, v1}, Lq9/b;->C(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const v6, 0x736d7461

    .line 44
    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 49
    .line 50
    .line 51
    add-int v2, v3, v4

    .line 52
    .line 53
    invoke-static {p0, v2}, Lq9/b;->u(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_1
    :goto_1
    add-int/2addr v3, v4

    .line 58
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method private static C(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lq9/b;->e(Lcom/google/android/exoplayer2/util/d0;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x696c7374

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-static {p0, v0}, Lq9/b;->l(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static D(Lcom/google/android/exoplayer2/util/d0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lq9/b$d;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    add-int/lit8 v5, v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x32

    .line 30
    .line 31
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const v8, 0x656e6376

    .line 39
    .line 40
    .line 41
    move/from16 v10, p1

    .line 42
    .line 43
    if-ne v10, v8, :cond_2

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lq9/b;->s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, Lq9/p;

    .line 66
    .line 67
    iget-object v11, v11, Lq9/p;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_0
    iget-object v11, v4, Lq9/b$d;->a:[Lq9/p;

    .line 74
    .line 75
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v8, Lq9/p;

    .line 78
    .line 79
    aput-object v8, v11, p8

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    const v8, 0x6d317620

    .line 85
    .line 86
    .line 87
    const-string v11, "video/3gpp"

    .line 88
    .line 89
    if-ne v10, v8, :cond_3

    .line 90
    .line 91
    const-string v8, "video/mpeg"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const v8, 0x48323633

    .line 95
    .line 96
    .line 97
    if-ne v10, v8, :cond_4

    .line 98
    .line 99
    move-object v8, v11

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v8, 0x0

    .line 102
    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    const/4 v13, 0x0

    .line 106
    const/4 v15, 0x0

    .line 107
    const/16 v16, -0x1

    .line 108
    .line 109
    const/16 v17, -0x1

    .line 110
    .line 111
    const/16 v18, -0x1

    .line 112
    .line 113
    const/16 v19, -0x1

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    const/16 v21, 0x0

    .line 118
    .line 119
    const/16 v22, 0x0

    .line 120
    .line 121
    :goto_2
    sub-int v9, v7, v1

    .line 122
    .line 123
    if-ge v9, v2, :cond_2a

    .line 124
    .line 125
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    move-object/from16 p8, v11

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-nez v11, :cond_5

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 141
    .line 142
    .line 143
    move-result v23

    .line 144
    move-object/from16 v24, v3

    .line 145
    .line 146
    sub-int v3, v23, v1

    .line 147
    .line 148
    if-ne v3, v2, :cond_6

    .line 149
    .line 150
    :goto_3
    move/from16 v33, v6

    .line 151
    .line 152
    move-object/from16 v27, v12

    .line 153
    .line 154
    move/from16 v28, v14

    .line 155
    .line 156
    move-object/from16 v26, v15

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    goto/16 :goto_17

    .line 160
    .line 161
    :cond_5
    move-object/from16 v24, v3

    .line 162
    .line 163
    :cond_6
    if-lez v11, :cond_7

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    const/4 v3, 0x0

    .line 168
    :goto_4
    const-string v1, "childAtomSize must be positive"

    .line 169
    .line 170
    invoke-static {v3, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const v3, 0x61766343

    .line 178
    .line 179
    .line 180
    if-ne v1, v3, :cond_a

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    if-nez v8, :cond_8

    .line 184
    .line 185
    const/4 v3, 0x1

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    const/4 v3, 0x0

    .line 188
    :goto_5
    invoke-static {v3, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v9, v9, 0x8

    .line 192
    .line 193
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 194
    .line 195
    .line 196
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/a;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    .line 201
    .line 202
    iget v3, v1, Lcom/google/android/exoplayer2/video/a;->b:I

    .line 203
    .line 204
    iput v3, v4, Lq9/b$d;->c:I

    .line 205
    .line 206
    if-nez v22, :cond_9

    .line 207
    .line 208
    iget v14, v1, Lcom/google/android/exoplayer2/video/a;->e:F

    .line 209
    .line 210
    :cond_9
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    .line 211
    .line 212
    const-string v1, "video/avc"

    .line 213
    .line 214
    :goto_6
    move-object v8, v1

    .line 215
    :goto_7
    move/from16 v33, v6

    .line 216
    .line 217
    move/from16 v25, v10

    .line 218
    .line 219
    :goto_8
    const/4 v2, 0x0

    .line 220
    goto/16 :goto_16

    .line 221
    .line 222
    :cond_a
    const v3, 0x68766343

    .line 223
    .line 224
    .line 225
    if-ne v1, v3, :cond_d

    .line 226
    .line 227
    const/4 v1, 0x0

    .line 228
    if-nez v8, :cond_b

    .line 229
    .line 230
    const/4 v3, 0x1

    .line 231
    goto :goto_9

    .line 232
    :cond_b
    const/4 v3, 0x0

    .line 233
    :goto_9
    invoke-static {v3, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    add-int/lit8 v9, v9, 0x8

    .line 237
    .line 238
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 239
    .line 240
    .line 241
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/f;->a(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/f;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/f;->a:Ljava/util/List;

    .line 246
    .line 247
    iget v3, v1, Lcom/google/android/exoplayer2/video/f;->b:I

    .line 248
    .line 249
    iput v3, v4, Lq9/b$d;->c:I

    .line 250
    .line 251
    if-nez v22, :cond_c

    .line 252
    .line 253
    iget v14, v1, Lcom/google/android/exoplayer2/video/f;->e:F

    .line 254
    .line 255
    :cond_c
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/f;->f:Ljava/lang/String;

    .line 256
    .line 257
    const-string v1, "video/hevc"

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_d
    const v3, 0x64766343

    .line 261
    .line 262
    .line 263
    if-eq v1, v3, :cond_e

    .line 264
    .line 265
    const v3, 0x64767643

    .line 266
    .line 267
    .line 268
    if-ne v1, v3, :cond_f

    .line 269
    .line 270
    :cond_e
    move/from16 v33, v6

    .line 271
    .line 272
    move/from16 v25, v10

    .line 273
    .line 274
    move-object/from16 v27, v12

    .line 275
    .line 276
    move/from16 v28, v14

    .line 277
    .line 278
    move-object/from16 v26, v15

    .line 279
    .line 280
    const/4 v2, 0x0

    .line 281
    goto/16 :goto_15

    .line 282
    .line 283
    :cond_f
    const v3, 0x76706343

    .line 284
    .line 285
    .line 286
    if-ne v1, v3, :cond_12

    .line 287
    .line 288
    const/4 v1, 0x0

    .line 289
    if-nez v8, :cond_10

    .line 290
    .line 291
    const/4 v3, 0x1

    .line 292
    goto :goto_a

    .line 293
    :cond_10
    const/4 v3, 0x0

    .line 294
    :goto_a
    invoke-static {v3, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const v1, 0x76703038

    .line 298
    .line 299
    .line 300
    if-ne v10, v1, :cond_11

    .line 301
    .line 302
    const-string v1, "video/x-vnd.on2.vp8"

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_11
    const-string v1, "video/x-vnd.on2.vp9"

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_12
    const v3, 0x61763143

    .line 309
    .line 310
    .line 311
    if-ne v1, v3, :cond_14

    .line 312
    .line 313
    const/4 v1, 0x0

    .line 314
    if-nez v8, :cond_13

    .line 315
    .line 316
    const/4 v3, 0x1

    .line 317
    goto :goto_b

    .line 318
    :cond_13
    const/4 v3, 0x0

    .line 319
    :goto_b
    invoke-static {v3, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v1, "video/av01"

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_14
    const v3, 0x636c6c69

    .line 326
    .line 327
    .line 328
    if-ne v1, v3, :cond_16

    .line 329
    .line 330
    if-nez v20, :cond_15

    .line 331
    .line 332
    invoke-static {}, Lq9/b;->a()Ljava/nio/ByteBuffer;

    .line 333
    .line 334
    .line 335
    move-result-object v20

    .line 336
    :cond_15
    move-object/from16 v1, v20

    .line 337
    .line 338
    const/16 v3, 0x15

    .line 339
    .line 340
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 355
    .line 356
    .line 357
    move-object/from16 v20, v1

    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :cond_16
    const v3, 0x6d646376

    .line 362
    .line 363
    .line 364
    if-ne v1, v3, :cond_18

    .line 365
    .line 366
    if-nez v20, :cond_17

    .line 367
    .line 368
    invoke-static {}, Lq9/b;->a()Ljava/nio/ByteBuffer;

    .line 369
    .line 370
    .line 371
    move-result-object v20

    .line 372
    :cond_17
    move-object/from16 v1, v20

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 379
    .line 380
    .line 381
    move-result v9

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    move/from16 v25, v10

    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 389
    .line 390
    .line 391
    move-result v10

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    move-object/from16 v26, v15

    .line 397
    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    move-object/from16 v27, v12

    .line 403
    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 405
    .line 406
    .line 407
    move-result v12

    .line 408
    move/from16 v28, v14

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 411
    .line 412
    .line 413
    move-result v14

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 415
    .line 416
    .line 417
    move-result-wide v29

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 419
    .line 420
    .line 421
    move-result-wide v31

    .line 422
    move/from16 v33, v6

    .line 423
    .line 424
    const/4 v6, 0x1

    .line 425
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 450
    .line 451
    .line 452
    const-wide/16 v2, 0x2710

    .line 453
    .line 454
    div-long v9, v29, v2

    .line 455
    .line 456
    long-to-int v4, v9

    .line 457
    int-to-short v4, v4

    .line 458
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 459
    .line 460
    .line 461
    div-long v2, v31, v2

    .line 462
    .line 463
    long-to-int v2, v2

    .line 464
    int-to-short v2, v2

    .line 465
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 466
    .line 467
    .line 468
    move-object/from16 v20, v1

    .line 469
    .line 470
    move-object/from16 v15, v26

    .line 471
    .line 472
    move-object/from16 v12, v27

    .line 473
    .line 474
    move/from16 v14, v28

    .line 475
    .line 476
    goto/16 :goto_8

    .line 477
    .line 478
    :cond_18
    move/from16 v33, v6

    .line 479
    .line 480
    move/from16 v25, v10

    .line 481
    .line 482
    move-object/from16 v27, v12

    .line 483
    .line 484
    move/from16 v28, v14

    .line 485
    .line 486
    move-object/from16 v26, v15

    .line 487
    .line 488
    const v2, 0x64323633

    .line 489
    .line 490
    .line 491
    if-ne v1, v2, :cond_1b

    .line 492
    .line 493
    const/4 v2, 0x0

    .line 494
    if-nez v8, :cond_19

    .line 495
    .line 496
    const/4 v3, 0x1

    .line 497
    goto :goto_c

    .line 498
    :cond_19
    const/4 v3, 0x0

    .line 499
    :goto_c
    invoke-static {v3, v2}, Li9/o;->a(ZLjava/lang/String;)V

    .line 500
    .line 501
    .line 502
    move-object/from16 v8, p8

    .line 503
    .line 504
    :cond_1a
    :goto_d
    move-object/from16 v15, v26

    .line 505
    .line 506
    :goto_e
    move-object/from16 v12, v27

    .line 507
    .line 508
    :goto_f
    move/from16 v14, v28

    .line 509
    .line 510
    goto/16 :goto_16

    .line 511
    .line 512
    :cond_1b
    const/4 v2, 0x0

    .line 513
    const v3, 0x65736473

    .line 514
    .line 515
    .line 516
    if-ne v1, v3, :cond_1e

    .line 517
    .line 518
    if-nez v8, :cond_1c

    .line 519
    .line 520
    const/4 v3, 0x1

    .line 521
    goto :goto_10

    .line 522
    :cond_1c
    const/4 v3, 0x0

    .line 523
    :goto_10
    invoke-static {v3, v2}, Li9/o;->a(ZLjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-static {v0, v9}, Lq9/b;->i(Lcom/google/android/exoplayer2/util/d0;I)Lq9/b$b;

    .line 527
    .line 528
    .line 529
    move-result-object v21

    .line 530
    invoke-static/range {v21 .. v21}, Lq9/b$b;->a(Lq9/b$b;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static/range {v21 .. v21}, Lq9/b$b;->b(Lq9/b$b;)[B

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    if-eqz v3, :cond_1d

    .line 539
    .line 540
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 541
    .line 542
    .line 543
    move-result-object v15

    .line 544
    goto :goto_11

    .line 545
    :cond_1d
    move-object/from16 v15, v26

    .line 546
    .line 547
    :goto_11
    move-object v8, v1

    .line 548
    goto :goto_e

    .line 549
    :cond_1e
    const v3, 0x70617370

    .line 550
    .line 551
    .line 552
    if-ne v1, v3, :cond_1f

    .line 553
    .line 554
    invoke-static {v0, v9}, Lq9/b;->q(Lcom/google/android/exoplayer2/util/d0;I)F

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    move v14, v1

    .line 559
    move-object/from16 v15, v26

    .line 560
    .line 561
    move-object/from16 v12, v27

    .line 562
    .line 563
    const/16 v22, 0x1

    .line 564
    .line 565
    goto/16 :goto_16

    .line 566
    .line 567
    :cond_1f
    const v3, 0x73763364

    .line 568
    .line 569
    .line 570
    if-ne v1, v3, :cond_20

    .line 571
    .line 572
    invoke-static {v0, v9, v11}, Lq9/b;->r(Lcom/google/android/exoplayer2/util/d0;II)[B

    .line 573
    .line 574
    .line 575
    move-result-object v12

    .line 576
    move-object/from16 v15, v26

    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_20
    const v3, 0x73743364

    .line 580
    .line 581
    .line 582
    const/4 v4, 0x2

    .line 583
    if-ne v1, v3, :cond_25

    .line 584
    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    const/4 v3, 0x3

    .line 590
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 591
    .line 592
    .line 593
    if-nez v1, :cond_1a

    .line 594
    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    if-eqz v1, :cond_24

    .line 600
    .line 601
    const/4 v6, 0x1

    .line 602
    if-eq v1, v6, :cond_23

    .line 603
    .line 604
    if-eq v1, v4, :cond_22

    .line 605
    .line 606
    if-eq v1, v3, :cond_21

    .line 607
    .line 608
    goto :goto_d

    .line 609
    :cond_21
    move/from16 v16, v3

    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_22
    move/from16 v16, v4

    .line 613
    .line 614
    goto :goto_d

    .line 615
    :cond_23
    move/from16 v16, v6

    .line 616
    .line 617
    goto :goto_d

    .line 618
    :cond_24
    const/16 v16, 0x0

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_25
    const/4 v6, 0x1

    .line 622
    const v3, 0x636f6c72

    .line 623
    .line 624
    .line 625
    if-ne v1, v3, :cond_1a

    .line 626
    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    const v3, 0x6e636c78

    .line 632
    .line 633
    .line 634
    if-eq v1, v3, :cond_27

    .line 635
    .line 636
    const v3, 0x6e636c63

    .line 637
    .line 638
    .line 639
    if-ne v1, v3, :cond_26

    .line 640
    .line 641
    goto :goto_12

    .line 642
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    const-string v4, "Unsupported color type: "

    .line 648
    .line 649
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-static {v1}, Lq9/a;->a(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    const-string v3, "AtomParsers"

    .line 664
    .line 665
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_d

    .line 669
    .line 670
    :cond_27
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 679
    .line 680
    .line 681
    const/16 v9, 0x13

    .line 682
    .line 683
    if-ne v11, v9, :cond_28

    .line 684
    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 686
    .line 687
    .line 688
    move-result v9

    .line 689
    and-int/lit16 v9, v9, 0x80

    .line 690
    .line 691
    if-eqz v9, :cond_28

    .line 692
    .line 693
    move v9, v6

    .line 694
    goto :goto_13

    .line 695
    :cond_28
    const/4 v9, 0x0

    .line 696
    :goto_13
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->b(I)I

    .line 697
    .line 698
    .line 699
    move-result v17

    .line 700
    if-eqz v9, :cond_29

    .line 701
    .line 702
    move/from16 v18, v6

    .line 703
    .line 704
    goto :goto_14

    .line 705
    :cond_29
    move/from16 v18, v4

    .line 706
    .line 707
    :goto_14
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/c;->c(I)I

    .line 708
    .line 709
    .line 710
    move-result v19

    .line 711
    goto/16 :goto_d

    .line 712
    .line 713
    :goto_15
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/d;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    if-eqz v1, :cond_1a

    .line 718
    .line 719
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/d;->c:Ljava/lang/String;

    .line 720
    .line 721
    const-string v8, "video/dolby-vision"

    .line 722
    .line 723
    goto/16 :goto_d

    .line 724
    .line 725
    :goto_16
    add-int/2addr v7, v11

    .line 726
    move/from16 v1, p2

    .line 727
    .line 728
    move/from16 v2, p3

    .line 729
    .line 730
    move-object/from16 v4, p7

    .line 731
    .line 732
    move-object/from16 v11, p8

    .line 733
    .line 734
    move-object/from16 v3, v24

    .line 735
    .line 736
    move/from16 v10, v25

    .line 737
    .line 738
    move/from16 v6, v33

    .line 739
    .line 740
    goto/16 :goto_2

    .line 741
    .line 742
    :cond_2a
    move-object/from16 v24, v3

    .line 743
    .line 744
    goto/16 :goto_3

    .line 745
    .line 746
    :goto_17
    if-nez v8, :cond_2b

    .line 747
    .line 748
    return-void

    .line 749
    :cond_2b
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 750
    .line 751
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 752
    .line 753
    .line 754
    move/from16 v1, p4

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    move/from16 v1, v33

    .line 773
    .line 774
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    move/from16 v14, v28

    .line 779
    .line 780
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/p1$b;->a0(F)Lcom/google/android/exoplayer2/p1$b;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    move/from16 v1, p5

    .line 785
    .line 786
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->d0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    move-object/from16 v9, v27

    .line 791
    .line 792
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/p1$b;->b0([B)Lcom/google/android/exoplayer2/p1$b;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    move/from16 v12, v16

    .line 797
    .line 798
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/p1$b;->h0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    move-object/from16 v9, v26

    .line 803
    .line 804
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    move-object/from16 v3, v24

    .line 809
    .line 810
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    move/from16 v12, v17

    .line 815
    .line 816
    const/4 v1, -0x1

    .line 817
    move/from16 v3, v18

    .line 818
    .line 819
    move/from16 v4, v19

    .line 820
    .line 821
    if-ne v12, v1, :cond_2c

    .line 822
    .line 823
    if-ne v3, v1, :cond_2c

    .line 824
    .line 825
    if-ne v4, v1, :cond_2c

    .line 826
    .line 827
    if-eqz v20, :cond_2e

    .line 828
    .line 829
    :cond_2c
    new-instance v1, Lcom/google/android/exoplayer2/video/c;

    .line 830
    .line 831
    if-eqz v20, :cond_2d

    .line 832
    .line 833
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    .line 834
    .line 835
    .line 836
    move-result-object v9

    .line 837
    goto :goto_18

    .line 838
    :cond_2d
    move-object v9, v2

    .line 839
    :goto_18
    invoke-direct {v1, v12, v3, v4, v9}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/p1$b;

    .line 843
    .line 844
    .line 845
    :cond_2e
    if-eqz v21, :cond_2f

    .line 846
    .line 847
    invoke-static/range {v21 .. v21}, Lq9/b$b;->d(Lq9/b$b;)J

    .line 848
    .line 849
    .line 850
    move-result-wide v1

    .line 851
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-static/range {v21 .. v21}, Lq9/b$b;->c(Lq9/b$b;)J

    .line 860
    .line 861
    .line 862
    move-result-wide v2

    .line 863
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 868
    .line 869
    .line 870
    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    move-object/from16 v1, p7

    .line 875
    .line 876
    iput-object v0, v1, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 877
    .line 878
    return-void
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/d0;III)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v0, p2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Li9/o;->a(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_1
    sub-int v3, v0, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v1

    .line 32
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v4, v5}, Li9/o;->a(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static d(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const v0, 0x76696465

    .line 9
    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    const v0, 0x74657874

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const v0, 0x7362746c

    .line 21
    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const v0, 0x73756274

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    const v0, 0x636c6370

    .line 31
    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const v0, 0x6d657461

    .line 37
    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x5

    .line 42
    return p0

    .line 43
    :cond_3
    const/4 p0, -0x1

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 46
    return p0
.end method

.method public static e(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static f(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lq9/b$d;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    add-int/lit8 v7, v1, 0x10

    .line 16
    .line 17
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    if-eqz p6, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v9, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    const/4 v10, 0x4

    .line 38
    const/4 v11, 0x2

    .line 39
    const/4 v12, 0x1

    .line 40
    const/16 v13, 0x10

    .line 41
    .line 42
    if-eqz v9, :cond_3

    .line 43
    .line 44
    if-ne v9, v12, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-ne v9, v11, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->l()D

    .line 53
    .line 54
    .line 55
    move-result-wide v13

    .line 56
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    long-to-int v7, v13

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const/16 v13, 0x14

    .line 66
    .line 67
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 68
    .line 69
    .line 70
    const/4 v15, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    return-void

    .line 73
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->E()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    sub-int/2addr v15, v10

    .line 89
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-ne v9, v12, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 99
    .line 100
    .line 101
    :cond_4
    move v9, v14

    .line 102
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const v14, 0x656e6361

    .line 107
    .line 108
    .line 109
    move/from16 v11, p1

    .line 110
    .line 111
    if-ne v11, v14, :cond_7

    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Lq9/b;->s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    if-eqz v14, :cond_6

    .line 118
    .line 119
    iget-object v11, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v11, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v12, Lq9/p;

    .line 134
    .line 135
    iget-object v12, v12, Lq9/p;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :goto_3
    iget-object v12, v6, Lq9/b$d;->a:[Lq9/p;

    .line 142
    .line 143
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v14, Lq9/p;

    .line 146
    .line 147
    aput-object v14, v12, p9

    .line 148
    .line 149
    :cond_6
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    const v12, 0x61632d33

    .line 153
    .line 154
    .line 155
    const v14, 0x616c6163

    .line 156
    .line 157
    .line 158
    if-ne v11, v12, :cond_8

    .line 159
    .line 160
    const-string v11, "audio/ac3"

    .line 161
    .line 162
    :goto_4
    move-object/from16 v19, v11

    .line 163
    .line 164
    const/4 v11, -0x1

    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_8
    const v12, 0x65632d33

    .line 168
    .line 169
    .line 170
    if-ne v11, v12, :cond_9

    .line 171
    .line 172
    const-string v11, "audio/eac3"

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    const v12, 0x61632d34

    .line 176
    .line 177
    .line 178
    if-ne v11, v12, :cond_a

    .line 179
    .line 180
    const-string v11, "audio/ac4"

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    const v12, 0x64747363

    .line 184
    .line 185
    .line 186
    if-ne v11, v12, :cond_b

    .line 187
    .line 188
    const-string v11, "audio/vnd.dts"

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_b
    const v12, 0x64747368

    .line 192
    .line 193
    .line 194
    if-eq v11, v12, :cond_1e

    .line 195
    .line 196
    const v12, 0x6474736c

    .line 197
    .line 198
    .line 199
    if-ne v11, v12, :cond_c

    .line 200
    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :cond_c
    const v12, 0x64747365

    .line 204
    .line 205
    .line 206
    if-ne v11, v12, :cond_d

    .line 207
    .line 208
    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_d
    const v12, 0x64747378

    .line 212
    .line 213
    .line 214
    if-ne v11, v12, :cond_e

    .line 215
    .line 216
    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_e
    const v12, 0x73616d72

    .line 220
    .line 221
    .line 222
    if-ne v11, v12, :cond_f

    .line 223
    .line 224
    const-string v11, "audio/3gpp"

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_f
    const v12, 0x73617762

    .line 228
    .line 229
    .line 230
    if-ne v11, v12, :cond_10

    .line 231
    .line 232
    const-string v11, "audio/amr-wb"

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_10
    const v12, 0x6c70636d

    .line 236
    .line 237
    .line 238
    const-string v19, "audio/raw"

    .line 239
    .line 240
    if-eq v11, v12, :cond_1d

    .line 241
    .line 242
    const v12, 0x736f7774

    .line 243
    .line 244
    .line 245
    if-ne v11, v12, :cond_11

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_11
    const v12, 0x74776f73

    .line 249
    .line 250
    .line 251
    if-ne v11, v12, :cond_12

    .line 252
    .line 253
    const/high16 v11, 0x10000000

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_12
    const v12, 0x2e6d7032

    .line 257
    .line 258
    .line 259
    if-eq v11, v12, :cond_1c

    .line 260
    .line 261
    const v12, 0x2e6d7033

    .line 262
    .line 263
    .line 264
    if-ne v11, v12, :cond_13

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_13
    const v12, 0x6d686131

    .line 268
    .line 269
    .line 270
    if-ne v11, v12, :cond_14

    .line 271
    .line 272
    const-string v11, "audio/mha1"

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_14
    const v12, 0x6d686d31

    .line 276
    .line 277
    .line 278
    if-ne v11, v12, :cond_15

    .line 279
    .line 280
    const-string v11, "audio/mhm1"

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_15
    if-ne v11, v14, :cond_16

    .line 284
    .line 285
    const-string v11, "audio/alac"

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_16
    const v12, 0x616c6177

    .line 289
    .line 290
    .line 291
    if-ne v11, v12, :cond_17

    .line 292
    .line 293
    const-string v11, "audio/g711-alaw"

    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :cond_17
    const v12, 0x756c6177

    .line 298
    .line 299
    .line 300
    if-ne v11, v12, :cond_18

    .line 301
    .line 302
    const-string v11, "audio/g711-mlaw"

    .line 303
    .line 304
    goto/16 :goto_4

    .line 305
    .line 306
    :cond_18
    const v12, 0x4f707573

    .line 307
    .line 308
    .line 309
    if-ne v11, v12, :cond_19

    .line 310
    .line 311
    const-string v11, "audio/opus"

    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_19
    const v12, 0x664c6143

    .line 316
    .line 317
    .line 318
    if-ne v11, v12, :cond_1a

    .line 319
    .line 320
    const-string v11, "audio/flac"

    .line 321
    .line 322
    goto/16 :goto_4

    .line 323
    .line 324
    :cond_1a
    const v12, 0x6d6c7061

    .line 325
    .line 326
    .line 327
    if-ne v11, v12, :cond_1b

    .line 328
    .line 329
    const-string v11, "audio/true-hd"

    .line 330
    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :cond_1b
    const/4 v11, -0x1

    .line 334
    const/16 v19, 0x0

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_1c
    :goto_5
    const-string v11, "audio/mpeg"

    .line 338
    .line 339
    goto/16 :goto_4

    .line 340
    .line 341
    :cond_1d
    :goto_6
    const/4 v11, 0x2

    .line 342
    goto :goto_8

    .line 343
    :cond_1e
    :goto_7
    const-string v11, "audio/vnd.dts.hd"

    .line 344
    .line 345
    goto/16 :goto_4

    .line 346
    .line 347
    :goto_8
    move-object/from16 v12, v19

    .line 348
    .line 349
    const/16 v19, 0x0

    .line 350
    .line 351
    const/16 v20, 0x0

    .line 352
    .line 353
    const/16 v21, 0x0

    .line 354
    .line 355
    :goto_9
    sub-int v10, v13, v1

    .line 356
    .line 357
    if-ge v10, v2, :cond_2f

    .line 358
    .line 359
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-lez v10, :cond_1f

    .line 367
    .line 368
    const/4 v14, 0x1

    .line 369
    goto :goto_a

    .line 370
    :cond_1f
    const/4 v14, 0x0

    .line 371
    :goto_a
    const-string v8, "childAtomSize must be positive"

    .line 372
    .line 373
    invoke-static {v14, v8}, Li9/o;->a(ZLjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    const v14, 0x6d686143

    .line 381
    .line 382
    .line 383
    if-ne v8, v14, :cond_20

    .line 384
    .line 385
    add-int/lit8 v8, v10, -0xd

    .line 386
    .line 387
    new-array v14, v8, [B

    .line 388
    .line 389
    add-int/lit8 v1, v13, 0xd

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 392
    .line 393
    .line 394
    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v14, v1, v8}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 396
    .line 397
    .line 398
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 399
    .line 400
    .line 401
    move-result-object v21

    .line 402
    :goto_b
    const/4 v8, -0x1

    .line 403
    :goto_c
    const/4 v14, 0x1

    .line 404
    const/16 v16, 0x0

    .line 405
    .line 406
    const/16 v17, 0x2

    .line 407
    .line 408
    :goto_d
    const v18, 0x616c6163

    .line 409
    .line 410
    .line 411
    goto/16 :goto_13

    .line 412
    .line 413
    :cond_20
    const v1, 0x65736473

    .line 414
    .line 415
    .line 416
    if-eq v8, v1, :cond_21

    .line 417
    .line 418
    if-eqz p6, :cond_22

    .line 419
    .line 420
    const v14, 0x77617665

    .line 421
    .line 422
    .line 423
    if-ne v8, v14, :cond_22

    .line 424
    .line 425
    :cond_21
    const/4 v2, 0x4

    .line 426
    const/4 v14, 0x1

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    const/16 v17, 0x2

    .line 430
    .line 431
    const v18, 0x616c6163

    .line 432
    .line 433
    .line 434
    goto/16 :goto_10

    .line 435
    .line 436
    :cond_22
    const v1, 0x64616333

    .line 437
    .line 438
    .line 439
    if-ne v8, v1, :cond_23

    .line 440
    .line 441
    add-int/lit8 v1, v13, 0x8

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 444
    .line 445
    .line 446
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->c(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    iput-object v1, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 455
    .line 456
    :goto_e
    const/4 v2, 0x4

    .line 457
    const/4 v14, 0x1

    .line 458
    const/16 v16, 0x0

    .line 459
    .line 460
    const/16 v17, 0x2

    .line 461
    .line 462
    goto/16 :goto_f

    .line 463
    .line 464
    :cond_23
    const v1, 0x64656333

    .line 465
    .line 466
    .line 467
    if-ne v8, v1, :cond_24

    .line 468
    .line 469
    add-int/lit8 v1, v13, 0x8

    .line 470
    .line 471
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 472
    .line 473
    .line 474
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->g(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iput-object v1, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_24
    const v1, 0x64616334

    .line 486
    .line 487
    .line 488
    if-ne v8, v1, :cond_25

    .line 489
    .line 490
    add-int/lit8 v1, v13, 0x8

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 493
    .line 494
    .line 495
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/c;->b(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    iput-object v1, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_25
    const v1, 0x646d6c70

    .line 507
    .line 508
    .line 509
    if-ne v8, v1, :cond_27

    .line 510
    .line 511
    if-lez v15, :cond_26

    .line 512
    .line 513
    move v7, v15

    .line 514
    const/4 v8, -0x1

    .line 515
    const/4 v9, 0x2

    .line 516
    goto :goto_c

    .line 517
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const/4 v14, 0x0

    .line 535
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    throw v0

    .line 540
    :cond_27
    const/4 v14, 0x0

    .line 541
    const v1, 0x64647473

    .line 542
    .line 543
    .line 544
    if-ne v8, v1, :cond_28

    .line 545
    .line 546
    new-instance v1, Lcom/google/android/exoplayer2/p1$b;

    .line 547
    .line 548
    invoke-direct {v1}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/p1$b;->f0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    iput-object v1, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 580
    .line 581
    goto :goto_e

    .line 582
    :cond_28
    const v1, 0x644f7073

    .line 583
    .line 584
    .line 585
    if-ne v8, v1, :cond_29

    .line 586
    .line 587
    add-int/lit8 v1, v10, -0x8

    .line 588
    .line 589
    sget-object v8, Lq9/b;->a:[B

    .line 590
    .line 591
    array-length v14, v8

    .line 592
    add-int/2addr v14, v1

    .line 593
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 594
    .line 595
    .line 596
    move-result-object v14

    .line 597
    add-int/lit8 v2, v13, 0x8

    .line 598
    .line 599
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 600
    .line 601
    .line 602
    array-length v2, v8

    .line 603
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 604
    .line 605
    .line 606
    invoke-static {v14}, Lcom/google/android/exoplayer2/audio/c0;->a([B)Ljava/util/List;

    .line 607
    .line 608
    .line 609
    move-result-object v21

    .line 610
    goto/16 :goto_b

    .line 611
    .line 612
    :cond_29
    const v1, 0x64664c61

    .line 613
    .line 614
    .line 615
    if-ne v8, v1, :cond_2a

    .line 616
    .line 617
    add-int/lit8 v1, v10, -0xc

    .line 618
    .line 619
    add-int/lit8 v2, v10, -0x8

    .line 620
    .line 621
    new-array v2, v2, [B

    .line 622
    .line 623
    const/16 v8, 0x66

    .line 624
    .line 625
    const/4 v14, 0x0

    .line 626
    aput-byte v8, v2, v14

    .line 627
    .line 628
    const/16 v8, 0x4c

    .line 629
    .line 630
    const/4 v14, 0x1

    .line 631
    aput-byte v8, v2, v14

    .line 632
    .line 633
    const/16 v8, 0x61

    .line 634
    .line 635
    const/16 v17, 0x2

    .line 636
    .line 637
    aput-byte v8, v2, v17

    .line 638
    .line 639
    const/4 v8, 0x3

    .line 640
    const/16 v18, 0x43

    .line 641
    .line 642
    aput-byte v18, v2, v8

    .line 643
    .line 644
    add-int/lit8 v8, v13, 0xc

    .line 645
    .line 646
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 647
    .line 648
    .line 649
    const/4 v8, 0x4

    .line 650
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 651
    .line 652
    .line 653
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 654
    .line 655
    .line 656
    move-result-object v21

    .line 657
    const/4 v8, -0x1

    .line 658
    const/16 v16, 0x0

    .line 659
    .line 660
    goto/16 :goto_d

    .line 661
    .line 662
    :cond_2a
    const v1, 0x616c6163

    .line 663
    .line 664
    .line 665
    const/4 v2, 0x4

    .line 666
    const/4 v14, 0x1

    .line 667
    const/16 v17, 0x2

    .line 668
    .line 669
    if-ne v8, v1, :cond_2b

    .line 670
    .line 671
    add-int/lit8 v7, v10, -0xc

    .line 672
    .line 673
    new-array v8, v7, [B

    .line 674
    .line 675
    add-int/lit8 v9, v13, 0xc

    .line 676
    .line 677
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 678
    .line 679
    .line 680
    const/4 v9, 0x0

    .line 681
    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 682
    .line 683
    .line 684
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/f;->h([B)Landroid/util/Pair;

    .line 685
    .line 686
    .line 687
    move-result-object v7

    .line 688
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v1, Ljava/lang/Integer;

    .line 691
    .line 692
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v7, Ljava/lang/Integer;

    .line 699
    .line 700
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v7

    .line 704
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 705
    .line 706
    .line 707
    move-result-object v21

    .line 708
    move/from16 v16, v9

    .line 709
    .line 710
    const/4 v8, -0x1

    .line 711
    const v18, 0x616c6163

    .line 712
    .line 713
    .line 714
    move v9, v7

    .line 715
    move v7, v1

    .line 716
    goto :goto_13

    .line 717
    :cond_2b
    const/16 v16, 0x0

    .line 718
    .line 719
    :goto_f
    const/4 v8, -0x1

    .line 720
    goto/16 :goto_d

    .line 721
    .line 722
    :goto_10
    if-ne v8, v1, :cond_2c

    .line 723
    .line 724
    move v1, v13

    .line 725
    :goto_11
    const/4 v8, -0x1

    .line 726
    goto :goto_12

    .line 727
    :cond_2c
    invoke-static {v0, v1, v13, v10}, Lq9/b;->c(Lcom/google/android/exoplayer2/util/d0;III)I

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    goto :goto_11

    .line 732
    :goto_12
    if-eq v1, v8, :cond_2e

    .line 733
    .line 734
    invoke-static {v0, v1}, Lq9/b;->i(Lcom/google/android/exoplayer2/util/d0;I)Lq9/b$b;

    .line 735
    .line 736
    .line 737
    move-result-object v19

    .line 738
    invoke-static/range {v19 .. v19}, Lq9/b$b;->a(Lq9/b$b;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v12

    .line 742
    invoke-static/range {v19 .. v19}, Lq9/b$b;->b(Lq9/b$b;)[B

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    if-eqz v1, :cond_2e

    .line 747
    .line 748
    const-string v2, "audio/mp4a-latm"

    .line 749
    .line 750
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    if-eqz v2, :cond_2d

    .line 755
    .line 756
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/a;->f([B)Lcom/google/android/exoplayer2/audio/a$b;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    iget v7, v2, Lcom/google/android/exoplayer2/audio/a$b;->a:I

    .line 761
    .line 762
    iget v9, v2, Lcom/google/android/exoplayer2/audio/a$b;->b:I

    .line 763
    .line 764
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/a$b;->c:Ljava/lang/String;

    .line 765
    .line 766
    move-object/from16 v20, v2

    .line 767
    .line 768
    :cond_2d
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 769
    .line 770
    .line 771
    move-result-object v21

    .line 772
    :cond_2e
    :goto_13
    add-int/2addr v13, v10

    .line 773
    move/from16 v1, p2

    .line 774
    .line 775
    move/from16 v2, p3

    .line 776
    .line 777
    move/from16 v14, v18

    .line 778
    .line 779
    goto/16 :goto_9

    .line 780
    .line 781
    :cond_2f
    iget-object v0, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 782
    .line 783
    if-nez v0, :cond_31

    .line 784
    .line 785
    if-eqz v12, :cond_31

    .line 786
    .line 787
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 788
    .line 789
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    move-object/from16 v1, v20

    .line 801
    .line 802
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/p1$b;->f0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/p1$b;->Y(I)Lcom/google/android/exoplayer2/p1$b;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    move-object/from16 v1, v21

    .line 819
    .line 820
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    if-eqz v19, :cond_30

    .line 833
    .line 834
    invoke-static/range {v19 .. v19}, Lq9/b$b;->d(Lq9/b$b;)J

    .line 835
    .line 836
    .line 837
    move-result-wide v1

    .line 838
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-static/range {v19 .. v19}, Lq9/b$b;->c(Lq9/b$b;)J

    .line 847
    .line 848
    .line 849
    move-result-wide v2

    .line 850
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 855
    .line 856
    .line 857
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    iput-object v0, v6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 862
    .line 863
    :cond_31
    return-void
.end method

.method static g(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x66726d61

    .line 26
    .line 27
    .line 28
    if-ne v9, v10, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const v10, 0x7363686d

    .line 40
    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->A(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const v10, 0x73636869

    .line 54
    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "cenc"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    const-string p1, "cbc1"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    const-string p1, "cens"

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    const-string p1, "cbcs"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 103
    .line 104
    invoke-static {p2, v0}, Li9/o;->a(ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eq v5, v1, :cond_7

    .line 108
    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 113
    .line 114
    invoke-static {p2, v0}, Li9/o;->a(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v7, v4}, Lq9/b;->t(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;)Lq9/p;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    move v2, p1

    .line 124
    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 125
    .line 126
    invoke-static {v2, p1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lq9/p;

    .line 134
    .line 135
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method private static h(Lq9/a$a;)Landroid/util/Pair;
    .locals 8

    .line 1
    const v0, 0x656c7374

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lq9/a;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v2, v1, [J

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v1, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v0, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    aput-wide v6, v2, v4

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->w()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    :goto_2
    aput-wide v6, v3, v4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v5, :cond_3

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Unsupported media rate."

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/d0;I)Lq9/b$b;
    .locals 12

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lq9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lq9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->h(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lq9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array v5, p1, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lq9/b$b;

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    cmp-long p1, v3, v6

    .line 115
    .line 116
    const-wide/16 v8, -0x1

    .line 117
    .line 118
    if-lez p1, :cond_4

    .line 119
    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v8

    .line 123
    :goto_0
    cmp-long p1, v0, v6

    .line 124
    .line 125
    if-lez p1, :cond_5

    .line 126
    .line 127
    move-wide v6, v0

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move-wide v6, v8

    .line 130
    :goto_1
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v10

    .line 133
    invoke-direct/range {v1 .. v7}, Lq9/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_6
    :goto_2
    new-instance p0, Lq9/b$b;

    .line 138
    .line 139
    const-wide/16 v4, -0x1

    .line 140
    .line 141
    const-wide/16 v6, -0x1

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    move-object v1, p0

    .line 145
    invoke-direct/range {v1 .. v7}, Lq9/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method private static j(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static k(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lq9/h;->c(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/d0;)Landroid/util/Pair;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lq9/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    shr-int/lit8 v1, p0, 0xa

    .line 48
    .line 49
    and-int/lit8 v1, v1, 0x1f

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x60

    .line 52
    .line 53
    int-to-char v1, v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    shr-int/lit8 v1, p0, 0x5

    .line 58
    .line 59
    and-int/lit8 v1, v1, 0x1f

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x60

    .line 62
    .line 63
    int-to-char v1, v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    and-int/lit8 p0, p0, 0x1f

    .line 68
    .line 69
    add-int/lit8 p0, p0, 0x60

    .line 70
    .line 71
    int-to-char p0, p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public static n(Lq9/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    iget-object v0, v0, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 30
    .line 31
    invoke-static {v0}, Lq9/b;->k(Lcom/google/android/exoplayer2/util/d0;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_0
    const/16 v5, 0x8

    .line 57
    .line 58
    if-ge v4, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x4

    .line 65
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v6, v5

    .line 69
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/d0;->A(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-le v4, v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/lit8 v7, v7, -0x1

    .line 107
    .line 108
    if-ltz v7, :cond_2

    .line 109
    .line 110
    if-ge v7, v1, :cond_2

    .line 111
    .line 112
    aget-object v7, v3, v7

    .line 113
    .line 114
    add-int v8, v4, v6

    .line 115
    .line 116
    invoke-static {p0, v8, v7}, Lq9/h;->f(Lcom/google/android/exoplayer2/util/d0;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v9, "Skipped metadata with unknown key index: "

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "AtomParsers"

    .line 144
    .line 145
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 149
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static o(Lcom/google/android/exoplayer2/util/d0;IIILq9/b$d;)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x6d657474

    .line 7
    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/p1$b;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, p4, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private static p(Lcom/google/android/exoplayer2/util/d0;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lq9/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x10

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method private static q(Lcom/google/android/exoplayer2/util/d0;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static r(Lcom/google/android/exoplayer2/util/d0;II)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x70726f6a

    .line 19
    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Li9/o;->a(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x73696e66

    .line 31
    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lq9/b;->g(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static t(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;)Lq9/p;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x74656e63

    .line 20
    .line 21
    .line 22
    if-ne v3, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Lq9/a;->c(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 40
    .line 41
    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 v1, p1, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0xf

    .line 54
    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    new-array v7, p1, [B

    .line 73
    .line 74
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-array v2, p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    new-instance p0, Lq9/p;

    .line 92
    .line 93
    move-object v3, p0

    .line 94
    move-object v5, p3

    .line 95
    invoke-direct/range {v3 .. v10}, Lq9/p;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method

.method private static u(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0xc

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ge v2, p1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const v6, 0x73617574

    .line 27
    .line 28
    .line 29
    if-ne v5, v6, :cond_3

    .line 30
    .line 31
    const/16 p1, 0xe

    .line 32
    .line 33
    if-ge v4, p1, :cond_0

    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_0
    const/4 p1, 0x5

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eq p1, v1, :cond_1

    .line 45
    .line 46
    const/16 v2, 0xd

    .line 47
    .line 48
    if-eq p1, v2, :cond_1

    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_1
    if-ne p1, v1, :cond_2

    .line 52
    .line 53
    const/high16 p1, 0x43700000    # 240.0f

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 66
    .line 67
    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    .line 68
    .line 69
    invoke-direct {v2, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    .line 70
    .line 71
    .line 72
    new-array p0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    aput-object v2, p0, p1

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    add-int/2addr v2, v4

    .line 82
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-object v3
.end method

.method private static v(Lq9/o;Lq9/a$a;Li9/x;)Lq9/r;
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const v3, 0x7374737a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    new-instance v5, Lq9/b$e;

    .line 17
    .line 18
    iget-object v6, v1, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    invoke-direct {v5, v3, v6}, Lq9/b$e;-><init>(Lq9/a$b;Lcom/google/android/exoplayer2/p1;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v3, 0x73747a32

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_31

    .line 32
    .line 33
    new-instance v5, Lq9/b$f;

    .line 34
    .line 35
    invoke-direct {v5, v3}, Lq9/b$f;-><init>(Lq9/a$b;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v5}, Lq9/b$c;->getSampleCount()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v6, 0x0

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    new-instance v9, Lq9/r;

    .line 46
    .line 47
    new-array v2, v6, [J

    .line 48
    .line 49
    new-array v3, v6, [I

    .line 50
    .line 51
    new-array v5, v6, [J

    .line 52
    .line 53
    new-array v6, v6, [I

    .line 54
    .line 55
    const-wide/16 v7, 0x0

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v0, v9

    .line 59
    move-object/from16 v1, p0

    .line 60
    .line 61
    invoke-direct/range {v0 .. v8}, Lq9/r;-><init>(Lq9/o;[J[II[J[IJ)V

    .line 62
    .line 63
    .line 64
    return-object v9

    .line 65
    :cond_1
    const v7, 0x7374636f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v7}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const/4 v8, 0x1

    .line 73
    if-nez v7, :cond_2

    .line 74
    .line 75
    const v7, 0x636f3634

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v7}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Lq9/a$b;

    .line 87
    .line 88
    move v9, v8

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v9, v6

    .line 91
    :goto_1
    iget-object v7, v7, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 92
    .line 93
    const v10, 0x73747363

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v10}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Lq9/a$b;

    .line 105
    .line 106
    iget-object v10, v10, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 107
    .line 108
    const v11, 0x73747473

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v11}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Lq9/a$b;

    .line 120
    .line 121
    iget-object v11, v11, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 122
    .line 123
    const v12, 0x73747373

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v12}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    if-eqz v12, :cond_3

    .line 131
    .line 132
    iget-object v12, v12, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    const/4 v12, 0x0

    .line 136
    :goto_2
    const v13, 0x63747473

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v13}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iget-object v0, v0, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/4 v0, 0x0

    .line 149
    :goto_3
    new-instance v13, Lq9/b$a;

    .line 150
    .line 151
    invoke-direct {v13, v10, v7, v9}, Lq9/b$a;-><init>(Lcom/google/android/exoplayer2/util/d0;Lcom/google/android/exoplayer2/util/d0;Z)V

    .line 152
    .line 153
    .line 154
    const/16 v7, 0xc

    .line 155
    .line 156
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    sub-int/2addr v9, v8

    .line 164
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    move v15, v6

    .line 183
    :goto_4
    const/4 v4, -0x1

    .line 184
    if-eqz v12, :cond_7

    .line 185
    .line 186
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-lez v7, :cond_6

    .line 194
    .line 195
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 196
    .line 197
    .line 198
    move-result v16

    .line 199
    add-int/lit8 v16, v16, -0x1

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_6
    move/from16 v16, v4

    .line 203
    .line 204
    const/4 v12, 0x0

    .line 205
    goto :goto_5

    .line 206
    :cond_7
    move/from16 v16, v4

    .line 207
    .line 208
    move v7, v6

    .line 209
    :goto_5
    invoke-interface {v5}, Lq9/b$c;->a()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iget-object v8, v1, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 214
    .line 215
    iget-object v8, v8, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 216
    .line 217
    if-eq v6, v4, :cond_9

    .line 218
    .line 219
    const-string v4, "audio/raw"

    .line 220
    .line 221
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_8

    .line 226
    .line 227
    const-string v4, "audio/g711-mlaw"

    .line 228
    .line 229
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_8

    .line 234
    .line 235
    const-string v4, "audio/g711-alaw"

    .line 236
    .line 237
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_9

    .line 242
    .line 243
    :cond_8
    if-nez v9, :cond_9

    .line 244
    .line 245
    if-nez v15, :cond_9

    .line 246
    .line 247
    if-nez v7, :cond_9

    .line 248
    .line 249
    move/from16 p1, v7

    .line 250
    .line 251
    const/4 v4, 0x1

    .line 252
    goto :goto_6

    .line 253
    :cond_9
    move/from16 p1, v7

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    :goto_6
    if-eqz v4, :cond_b

    .line 257
    .line 258
    iget v0, v13, Lq9/b$a;->a:I

    .line 259
    .line 260
    new-array v4, v0, [J

    .line 261
    .line 262
    new-array v0, v0, [I

    .line 263
    .line 264
    :goto_7
    invoke-virtual {v13}, Lq9/b$a;->a()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_a

    .line 269
    .line 270
    iget v5, v13, Lq9/b$a;->b:I

    .line 271
    .line 272
    iget-wide v9, v13, Lq9/b$a;->d:J

    .line 273
    .line 274
    aput-wide v9, v4, v5

    .line 275
    .line 276
    iget v9, v13, Lq9/b$a;->c:I

    .line 277
    .line 278
    aput v9, v0, v5

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_a
    int-to-long v9, v14

    .line 282
    invoke-static {v6, v4, v0, v9, v10}, Lq9/d;->a(I[J[IJ)Lq9/d$b;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iget-object v4, v0, Lq9/d$b;->a:[J

    .line 287
    .line 288
    iget-object v5, v0, Lq9/d$b;->b:[I

    .line 289
    .line 290
    iget v6, v0, Lq9/d$b;->c:I

    .line 291
    .line 292
    iget-object v9, v0, Lq9/d$b;->d:[J

    .line 293
    .line 294
    iget-object v10, v0, Lq9/d$b;->e:[I

    .line 295
    .line 296
    iget-wide v11, v0, Lq9/d$b;->f:J

    .line 297
    .line 298
    move-object v14, v1

    .line 299
    move v0, v3

    .line 300
    move-object v2, v4

    .line 301
    move-object v3, v5

    .line 302
    move v4, v6

    .line 303
    move-object v13, v10

    .line 304
    move-wide v15, v11

    .line 305
    move-object v12, v9

    .line 306
    goto/16 :goto_14

    .line 307
    .line 308
    :cond_b
    new-array v4, v3, [J

    .line 309
    .line 310
    new-array v6, v3, [I

    .line 311
    .line 312
    new-array v7, v3, [J

    .line 313
    .line 314
    new-array v8, v3, [I

    .line 315
    .line 316
    move-object/from16 v24, v11

    .line 317
    .line 318
    move/from16 v2, v16

    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    const/4 v11, 0x0

    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    const/16 v22, 0x0

    .line 325
    .line 326
    const/16 v23, 0x0

    .line 327
    .line 328
    const-wide/16 v25, 0x0

    .line 329
    .line 330
    const-wide/16 v27, 0x0

    .line 331
    .line 332
    move/from16 v16, v15

    .line 333
    .line 334
    move v15, v14

    .line 335
    move v14, v10

    .line 336
    move/from16 v37, v9

    .line 337
    .line 338
    move/from16 v9, p1

    .line 339
    .line 340
    :goto_8
    move/from16 p1, v37

    .line 341
    .line 342
    const-string v10, "AtomParsers"

    .line 343
    .line 344
    if-ge v1, v3, :cond_14

    .line 345
    .line 346
    move-wide/from16 v28, v27

    .line 347
    .line 348
    move/from16 v27, v21

    .line 349
    .line 350
    const/16 v21, 0x1

    .line 351
    .line 352
    :goto_9
    if-nez v27, :cond_c

    .line 353
    .line 354
    invoke-virtual {v13}, Lq9/b$a;->a()Z

    .line 355
    .line 356
    .line 357
    move-result v21

    .line 358
    if-eqz v21, :cond_c

    .line 359
    .line 360
    move/from16 v30, v14

    .line 361
    .line 362
    move/from16 v31, v15

    .line 363
    .line 364
    iget-wide v14, v13, Lq9/b$a;->d:J

    .line 365
    .line 366
    move/from16 v32, v3

    .line 367
    .line 368
    iget v3, v13, Lq9/b$a;->c:I

    .line 369
    .line 370
    move/from16 v27, v3

    .line 371
    .line 372
    move-wide/from16 v28, v14

    .line 373
    .line 374
    move/from16 v14, v30

    .line 375
    .line 376
    move/from16 v15, v31

    .line 377
    .line 378
    move/from16 v3, v32

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_c
    move/from16 v32, v3

    .line 382
    .line 383
    move/from16 v30, v14

    .line 384
    .line 385
    move/from16 v31, v15

    .line 386
    .line 387
    if-nez v21, :cond_d

    .line 388
    .line 389
    const-string v2, "Unexpected end of chunk data"

    .line 390
    .line 391
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    move v3, v1

    .line 411
    move/from16 v2, v22

    .line 412
    .line 413
    move/from16 v1, v27

    .line 414
    .line 415
    goto/16 :goto_e

    .line 416
    .line 417
    :cond_d
    if-eqz v0, :cond_f

    .line 418
    .line 419
    :goto_a
    if-nez v23, :cond_e

    .line 420
    .line 421
    if-lez v16, :cond_e

    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 424
    .line 425
    .line 426
    move-result v23

    .line 427
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 428
    .line 429
    .line 430
    move-result v22

    .line 431
    add-int/lit8 v16, v16, -0x1

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_e
    add-int/lit8 v23, v23, -0x1

    .line 435
    .line 436
    :cond_f
    move/from16 v3, v22

    .line 437
    .line 438
    aput-wide v28, v4, v1

    .line 439
    .line 440
    invoke-interface {v5}, Lq9/b$c;->readNextSampleSize()I

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    aput v10, v6, v1

    .line 445
    .line 446
    if-le v10, v11, :cond_10

    .line 447
    .line 448
    move v11, v10

    .line 449
    :cond_10
    int-to-long v14, v3

    .line 450
    add-long v14, v25, v14

    .line 451
    .line 452
    aput-wide v14, v7, v1

    .line 453
    .line 454
    if-nez v12, :cond_11

    .line 455
    .line 456
    const/4 v10, 0x1

    .line 457
    goto :goto_b

    .line 458
    :cond_11
    const/4 v10, 0x0

    .line 459
    :goto_b
    aput v10, v8, v1

    .line 460
    .line 461
    if-ne v1, v2, :cond_12

    .line 462
    .line 463
    const/4 v10, 0x1

    .line 464
    aput v10, v8, v1

    .line 465
    .line 466
    add-int/lit8 v9, v9, -0x1

    .line 467
    .line 468
    if-lez v9, :cond_12

    .line 469
    .line 470
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Lcom/google/android/exoplayer2/util/d0;

    .line 475
    .line 476
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    sub-int/2addr v2, v10

    .line 481
    :cond_12
    move v15, v2

    .line 482
    move v10, v3

    .line 483
    move/from16 v14, v31

    .line 484
    .line 485
    int-to-long v2, v14

    .line 486
    add-long v25, v25, v2

    .line 487
    .line 488
    add-int/lit8 v2, v30, -0x1

    .line 489
    .line 490
    if-nez v2, :cond_13

    .line 491
    .line 492
    if-lez p1, :cond_13

    .line 493
    .line 494
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    add-int/lit8 v14, p1, -0x1

    .line 503
    .line 504
    :goto_c
    move/from16 p1, v2

    .line 505
    .line 506
    goto :goto_d

    .line 507
    :cond_13
    move v3, v14

    .line 508
    move/from16 v14, p1

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :goto_d
    aget v2, v6, v1

    .line 512
    .line 513
    move/from16 v21, v3

    .line 514
    .line 515
    int-to-long v2, v2

    .line 516
    add-long v2, v28, v2

    .line 517
    .line 518
    add-int/lit8 v22, v27, -0x1

    .line 519
    .line 520
    add-int/lit8 v1, v1, 0x1

    .line 521
    .line 522
    move-wide/from16 v27, v2

    .line 523
    .line 524
    move v2, v15

    .line 525
    move/from16 v15, v21

    .line 526
    .line 527
    move/from16 v21, v22

    .line 528
    .line 529
    move/from16 v3, v32

    .line 530
    .line 531
    move/from16 v22, v10

    .line 532
    .line 533
    move/from16 v37, v14

    .line 534
    .line 535
    move/from16 v14, p1

    .line 536
    .line 537
    goto/16 :goto_8

    .line 538
    .line 539
    :cond_14
    move/from16 v32, v3

    .line 540
    .line 541
    move/from16 v30, v14

    .line 542
    .line 543
    move/from16 v1, v21

    .line 544
    .line 545
    move/from16 v2, v22

    .line 546
    .line 547
    :goto_e
    int-to-long v12, v2

    .line 548
    add-long v12, v25, v12

    .line 549
    .line 550
    if-eqz v0, :cond_16

    .line 551
    .line 552
    :goto_f
    if-lez v16, :cond_16

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-eqz v2, :cond_15

    .line 559
    .line 560
    const/4 v0, 0x0

    .line 561
    goto :goto_10

    .line 562
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 563
    .line 564
    .line 565
    add-int/lit8 v16, v16, -0x1

    .line 566
    .line 567
    goto :goto_f

    .line 568
    :cond_16
    const/4 v0, 0x1

    .line 569
    :goto_10
    if-nez v9, :cond_18

    .line 570
    .line 571
    if-nez v30, :cond_18

    .line 572
    .line 573
    if-nez v1, :cond_18

    .line 574
    .line 575
    if-nez p1, :cond_18

    .line 576
    .line 577
    move/from16 v2, v23

    .line 578
    .line 579
    if-nez v2, :cond_19

    .line 580
    .line 581
    if-nez v0, :cond_17

    .line 582
    .line 583
    goto :goto_11

    .line 584
    :cond_17
    move-object/from16 v14, p0

    .line 585
    .line 586
    goto :goto_13

    .line 587
    :cond_18
    move/from16 v2, v23

    .line 588
    .line 589
    :cond_19
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v14, "Inconsistent stbl box for track "

    .line 595
    .line 596
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    move-object/from16 v14, p0

    .line 600
    .line 601
    iget v15, v14, Lq9/o;->a:I

    .line 602
    .line 603
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string v15, ": remainingSynchronizationSamples "

    .line 607
    .line 608
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v9, ", remainingSamplesAtTimestampDelta "

    .line 615
    .line 616
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    move/from16 v9, v30

    .line 620
    .line 621
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v9, ", remainingSamplesInChunk "

    .line 625
    .line 626
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v1, ", remainingTimestampDeltaChanges "

    .line 633
    .line 634
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    move/from16 v9, p1

    .line 638
    .line 639
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    const-string v1, ", remainingSamplesAtTimestampOffset "

    .line 643
    .line 644
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    if-nez v0, :cond_1a

    .line 651
    .line 652
    const-string v0, ", ctts invalid"

    .line 653
    .line 654
    goto :goto_12

    .line 655
    :cond_1a
    const-string v0, ""

    .line 656
    .line 657
    :goto_12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    :goto_13
    move v0, v3

    .line 668
    move-object v2, v4

    .line 669
    move-object v3, v6

    .line 670
    move v4, v11

    .line 671
    move-wide v15, v12

    .line 672
    move-object v12, v7

    .line 673
    move-object v13, v8

    .line 674
    :goto_14
    const-wide/32 v7, 0xf4240

    .line 675
    .line 676
    .line 677
    iget-wide v9, v14, Lq9/o;->c:J

    .line 678
    .line 679
    move-wide v5, v15

    .line 680
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 681
    .line 682
    .line 683
    move-result-wide v7

    .line 684
    iget-object v1, v14, Lq9/o;->h:[J

    .line 685
    .line 686
    const-wide/32 v10, 0xf4240

    .line 687
    .line 688
    .line 689
    if-nez v1, :cond_1b

    .line 690
    .line 691
    iget-wide v0, v14, Lq9/o;->c:J

    .line 692
    .line 693
    invoke-static {v12, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->P0([JJJ)V

    .line 694
    .line 695
    .line 696
    new-instance v9, Lq9/r;

    .line 697
    .line 698
    move-object v0, v9

    .line 699
    move-object/from16 v1, p0

    .line 700
    .line 701
    move-object v5, v12

    .line 702
    move-object v6, v13

    .line 703
    invoke-direct/range {v0 .. v8}, Lq9/r;-><init>(Lq9/o;[J[II[J[IJ)V

    .line 704
    .line 705
    .line 706
    return-object v9

    .line 707
    :cond_1b
    array-length v1, v1

    .line 708
    const/4 v5, 0x1

    .line 709
    if-ne v1, v5, :cond_1e

    .line 710
    .line 711
    iget v1, v14, Lq9/o;->b:I

    .line 712
    .line 713
    if-ne v1, v5, :cond_1e

    .line 714
    .line 715
    array-length v1, v12

    .line 716
    const/4 v5, 0x2

    .line 717
    if-lt v1, v5, :cond_1e

    .line 718
    .line 719
    iget-object v1, v14, Lq9/o;->i:[J

    .line 720
    .line 721
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    check-cast v1, [J

    .line 726
    .line 727
    const/4 v5, 0x0

    .line 728
    aget-wide v21, v1, v5

    .line 729
    .line 730
    iget-object v1, v14, Lq9/o;->h:[J

    .line 731
    .line 732
    aget-wide v23, v1, v5

    .line 733
    .line 734
    iget-wide v5, v14, Lq9/o;->c:J

    .line 735
    .line 736
    iget-wide v7, v14, Lq9/o;->d:J

    .line 737
    .line 738
    move-wide/from16 v25, v5

    .line 739
    .line 740
    move-wide/from16 v27, v7

    .line 741
    .line 742
    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 743
    .line 744
    .line 745
    move-result-wide v5

    .line 746
    add-long v23, v21, v5

    .line 747
    .line 748
    move-object v5, v12

    .line 749
    move-wide v6, v15

    .line 750
    move-wide/from16 v8, v21

    .line 751
    .line 752
    move/from16 v25, v0

    .line 753
    .line 754
    move-wide v0, v10

    .line 755
    move-wide/from16 v10, v23

    .line 756
    .line 757
    invoke-static/range {v5 .. v11}, Lq9/b;->b([JJJJ)Z

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    if-eqz v5, :cond_1d

    .line 762
    .line 763
    sub-long v6, v15, v23

    .line 764
    .line 765
    const/4 v5, 0x0

    .line 766
    aget-wide v8, v12, v5

    .line 767
    .line 768
    sub-long v26, v21, v8

    .line 769
    .line 770
    iget-object v5, v14, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 771
    .line 772
    iget v5, v5, Lcom/google/android/exoplayer2/p1;->z:I

    .line 773
    .line 774
    int-to-long v8, v5

    .line 775
    iget-wide v10, v14, Lq9/o;->c:J

    .line 776
    .line 777
    move-wide/from16 v28, v8

    .line 778
    .line 779
    move-wide/from16 v30, v10

    .line 780
    .line 781
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 782
    .line 783
    .line 784
    move-result-wide v10

    .line 785
    iget-object v5, v14, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 786
    .line 787
    iget v5, v5, Lcom/google/android/exoplayer2/p1;->z:I

    .line 788
    .line 789
    int-to-long v8, v5

    .line 790
    iget-wide v0, v14, Lq9/o;->c:J

    .line 791
    .line 792
    move/from16 p1, v4

    .line 793
    .line 794
    move-wide v4, v10

    .line 795
    move-wide v10, v0

    .line 796
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 797
    .line 798
    .line 799
    move-result-wide v0

    .line 800
    const-wide/16 v6, 0x0

    .line 801
    .line 802
    cmp-long v8, v4, v6

    .line 803
    .line 804
    if-nez v8, :cond_1c

    .line 805
    .line 806
    cmp-long v8, v0, v6

    .line 807
    .line 808
    if-eqz v8, :cond_1f

    .line 809
    .line 810
    :cond_1c
    const-wide/32 v6, 0x7fffffff

    .line 811
    .line 812
    .line 813
    cmp-long v8, v4, v6

    .line 814
    .line 815
    if-gtz v8, :cond_1f

    .line 816
    .line 817
    cmp-long v6, v0, v6

    .line 818
    .line 819
    if-gtz v6, :cond_1f

    .line 820
    .line 821
    long-to-int v4, v4

    .line 822
    move-object/from16 v5, p2

    .line 823
    .line 824
    iput v4, v5, Li9/x;->a:I

    .line 825
    .line 826
    long-to-int v0, v0

    .line 827
    iput v0, v5, Li9/x;->b:I

    .line 828
    .line 829
    iget-wide v0, v14, Lq9/o;->c:J

    .line 830
    .line 831
    const-wide/32 v4, 0xf4240

    .line 832
    .line 833
    .line 834
    invoke-static {v12, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->P0([JJJ)V

    .line 835
    .line 836
    .line 837
    iget-object v0, v14, Lq9/o;->h:[J

    .line 838
    .line 839
    const/4 v1, 0x0

    .line 840
    aget-wide v4, v0, v1

    .line 841
    .line 842
    const-wide/32 v6, 0xf4240

    .line 843
    .line 844
    .line 845
    iget-wide v8, v14, Lq9/o;->d:J

    .line 846
    .line 847
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 848
    .line 849
    .line 850
    move-result-wide v7

    .line 851
    new-instance v9, Lq9/r;

    .line 852
    .line 853
    move-object v0, v9

    .line 854
    move-object/from16 v1, p0

    .line 855
    .line 856
    move/from16 v4, p1

    .line 857
    .line 858
    move-object v5, v12

    .line 859
    move-object v6, v13

    .line 860
    invoke-direct/range {v0 .. v8}, Lq9/r;-><init>(Lq9/o;[J[II[J[IJ)V

    .line 861
    .line 862
    .line 863
    return-object v9

    .line 864
    :cond_1d
    :goto_15
    move/from16 p1, v4

    .line 865
    .line 866
    goto :goto_16

    .line 867
    :cond_1e
    move/from16 v25, v0

    .line 868
    .line 869
    goto :goto_15

    .line 870
    :cond_1f
    :goto_16
    iget-object v0, v14, Lq9/o;->h:[J

    .line 871
    .line 872
    array-length v1, v0

    .line 873
    const/4 v4, 0x1

    .line 874
    if-ne v1, v4, :cond_21

    .line 875
    .line 876
    const/4 v1, 0x0

    .line 877
    aget-wide v4, v0, v1

    .line 878
    .line 879
    const-wide/16 v6, 0x0

    .line 880
    .line 881
    cmp-long v4, v4, v6

    .line 882
    .line 883
    if-nez v4, :cond_21

    .line 884
    .line 885
    iget-object v0, v14, Lq9/o;->i:[J

    .line 886
    .line 887
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    check-cast v0, [J

    .line 892
    .line 893
    aget-wide v4, v0, v1

    .line 894
    .line 895
    const/4 v6, 0x0

    .line 896
    :goto_17
    array-length v0, v12

    .line 897
    if-ge v6, v0, :cond_20

    .line 898
    .line 899
    aget-wide v0, v12, v6

    .line 900
    .line 901
    sub-long v17, v0, v4

    .line 902
    .line 903
    const-wide/32 v19, 0xf4240

    .line 904
    .line 905
    .line 906
    iget-wide v0, v14, Lq9/o;->c:J

    .line 907
    .line 908
    move-wide/from16 v21, v0

    .line 909
    .line 910
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 911
    .line 912
    .line 913
    move-result-wide v0

    .line 914
    aput-wide v0, v12, v6

    .line 915
    .line 916
    add-int/lit8 v6, v6, 0x1

    .line 917
    .line 918
    goto :goto_17

    .line 919
    :cond_20
    sub-long v17, v15, v4

    .line 920
    .line 921
    const-wide/32 v19, 0xf4240

    .line 922
    .line 923
    .line 924
    iget-wide v0, v14, Lq9/o;->c:J

    .line 925
    .line 926
    move-wide/from16 v21, v0

    .line 927
    .line 928
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 929
    .line 930
    .line 931
    move-result-wide v7

    .line 932
    new-instance v9, Lq9/r;

    .line 933
    .line 934
    move-object v0, v9

    .line 935
    move-object/from16 v1, p0

    .line 936
    .line 937
    move/from16 v4, p1

    .line 938
    .line 939
    move-object v5, v12

    .line 940
    move-object v6, v13

    .line 941
    invoke-direct/range {v0 .. v8}, Lq9/r;-><init>(Lq9/o;[J[II[J[IJ)V

    .line 942
    .line 943
    .line 944
    return-object v9

    .line 945
    :cond_21
    iget v1, v14, Lq9/o;->b:I

    .line 946
    .line 947
    const/4 v4, 0x1

    .line 948
    if-ne v1, v4, :cond_22

    .line 949
    .line 950
    const/4 v10, 0x1

    .line 951
    goto :goto_18

    .line 952
    :cond_22
    const/4 v10, 0x0

    .line 953
    :goto_18
    array-length v1, v0

    .line 954
    new-array v1, v1, [I

    .line 955
    .line 956
    array-length v0, v0

    .line 957
    new-array v0, v0, [I

    .line 958
    .line 959
    iget-object v4, v14, Lq9/o;->i:[J

    .line 960
    .line 961
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    check-cast v4, [J

    .line 966
    .line 967
    const/4 v5, 0x0

    .line 968
    const/4 v6, 0x0

    .line 969
    const/4 v7, 0x0

    .line 970
    const/4 v8, 0x0

    .line 971
    :goto_19
    iget-object v9, v14, Lq9/o;->h:[J

    .line 972
    .line 973
    array-length v11, v9

    .line 974
    if-ge v5, v11, :cond_26

    .line 975
    .line 976
    move-object v11, v2

    .line 977
    move-object v15, v3

    .line 978
    aget-wide v2, v4, v5

    .line 979
    .line 980
    const-wide/16 v21, -0x1

    .line 981
    .line 982
    cmp-long v16, v2, v21

    .line 983
    .line 984
    if-eqz v16, :cond_25

    .line 985
    .line 986
    aget-wide v26, v9, v5

    .line 987
    .line 988
    move/from16 v16, v8

    .line 989
    .line 990
    iget-wide v8, v14, Lq9/o;->c:J

    .line 991
    .line 992
    move/from16 p2, v6

    .line 993
    .line 994
    move/from16 v21, v7

    .line 995
    .line 996
    iget-wide v6, v14, Lq9/o;->d:J

    .line 997
    .line 998
    move-wide/from16 v28, v8

    .line 999
    .line 1000
    move-wide/from16 v30, v6

    .line 1001
    .line 1002
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 1003
    .line 1004
    .line 1005
    move-result-wide v6

    .line 1006
    const/4 v8, 0x1

    .line 1007
    invoke-static {v12, v2, v3, v8, v8}, Lcom/google/android/exoplayer2/util/p0;->i([JJZZ)I

    .line 1008
    .line 1009
    .line 1010
    move-result v9

    .line 1011
    aput v9, v1, v5

    .line 1012
    .line 1013
    add-long/2addr v2, v6

    .line 1014
    const/4 v6, 0x0

    .line 1015
    invoke-static {v12, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/util/p0;->e([JJZZ)I

    .line 1016
    .line 1017
    .line 1018
    move-result v2

    .line 1019
    aput v2, v0, v5

    .line 1020
    .line 1021
    :goto_1a
    aget v2, v1, v5

    .line 1022
    .line 1023
    aget v3, v0, v5

    .line 1024
    .line 1025
    if-ge v2, v3, :cond_23

    .line 1026
    .line 1027
    aget v7, v13, v2

    .line 1028
    .line 1029
    and-int/2addr v7, v8

    .line 1030
    if-nez v7, :cond_23

    .line 1031
    .line 1032
    add-int/lit8 v2, v2, 0x1

    .line 1033
    .line 1034
    aput v2, v1, v5

    .line 1035
    .line 1036
    goto :goto_1a

    .line 1037
    :cond_23
    sub-int v7, v3, v2

    .line 1038
    .line 1039
    add-int v7, v21, v7

    .line 1040
    .line 1041
    move/from16 v9, v16

    .line 1042
    .line 1043
    if-eq v9, v2, :cond_24

    .line 1044
    .line 1045
    move v2, v8

    .line 1046
    goto :goto_1b

    .line 1047
    :cond_24
    move v2, v6

    .line 1048
    :goto_1b
    or-int v2, p2, v2

    .line 1049
    .line 1050
    goto :goto_1c

    .line 1051
    :cond_25
    move/from16 p2, v6

    .line 1052
    .line 1053
    move/from16 v21, v7

    .line 1054
    .line 1055
    move v9, v8

    .line 1056
    const/4 v6, 0x0

    .line 1057
    const/4 v8, 0x1

    .line 1058
    move/from16 v2, p2

    .line 1059
    .line 1060
    move v3, v9

    .line 1061
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    .line 1062
    .line 1063
    move v6, v2

    .line 1064
    move v8, v3

    .line 1065
    move-object v2, v11

    .line 1066
    move-object v3, v15

    .line 1067
    goto :goto_19

    .line 1068
    :cond_26
    move-object v11, v2

    .line 1069
    move-object v15, v3

    .line 1070
    move/from16 p2, v6

    .line 1071
    .line 1072
    move/from16 v3, v25

    .line 1073
    .line 1074
    const/4 v6, 0x0

    .line 1075
    const/4 v8, 0x1

    .line 1076
    if-eq v7, v3, :cond_27

    .line 1077
    .line 1078
    goto :goto_1d

    .line 1079
    :cond_27
    move v8, v6

    .line 1080
    :goto_1d
    or-int v2, p2, v8

    .line 1081
    .line 1082
    if-eqz v2, :cond_28

    .line 1083
    .line 1084
    new-array v3, v7, [J

    .line 1085
    .line 1086
    goto :goto_1e

    .line 1087
    :cond_28
    move-object v3, v11

    .line 1088
    :goto_1e
    if-eqz v2, :cond_29

    .line 1089
    .line 1090
    new-array v4, v7, [I

    .line 1091
    .line 1092
    goto :goto_1f

    .line 1093
    :cond_29
    move-object v4, v15

    .line 1094
    :goto_1f
    if-eqz v2, :cond_2a

    .line 1095
    .line 1096
    move v5, v6

    .line 1097
    goto :goto_20

    .line 1098
    :cond_2a
    move/from16 v5, p1

    .line 1099
    .line 1100
    :goto_20
    if-eqz v2, :cond_2b

    .line 1101
    .line 1102
    new-array v8, v7, [I

    .line 1103
    .line 1104
    goto :goto_21

    .line 1105
    :cond_2b
    move-object v8, v13

    .line 1106
    :goto_21
    new-array v7, v7, [J

    .line 1107
    .line 1108
    move/from16 p2, v5

    .line 1109
    .line 1110
    move-object/from16 p1, v15

    .line 1111
    .line 1112
    const-wide/16 v9, 0x0

    .line 1113
    .line 1114
    move v15, v6

    .line 1115
    :goto_22
    iget-object v5, v14, Lq9/o;->h:[J

    .line 1116
    .line 1117
    array-length v5, v5

    .line 1118
    if-ge v6, v5, :cond_30

    .line 1119
    .line 1120
    iget-object v5, v14, Lq9/o;->i:[J

    .line 1121
    .line 1122
    aget-wide v16, v5, v6

    .line 1123
    .line 1124
    aget v5, v1, v6

    .line 1125
    .line 1126
    move-object/from16 v18, v1

    .line 1127
    .line 1128
    aget v1, v0, v6

    .line 1129
    .line 1130
    move-object/from16 v27, v0

    .line 1131
    .line 1132
    if-eqz v2, :cond_2c

    .line 1133
    .line 1134
    sub-int v0, v1, v5

    .line 1135
    .line 1136
    invoke-static {v11, v5, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    .line 1138
    .line 1139
    move-object/from16 v28, v11

    .line 1140
    .line 1141
    move-object/from16 v11, p1

    .line 1142
    .line 1143
    invoke-static {v11, v5, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    .line 1145
    .line 1146
    invoke-static {v13, v5, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_23

    .line 1150
    :cond_2c
    move-object/from16 v28, v11

    .line 1151
    .line 1152
    move-object/from16 v11, p1

    .line 1153
    .line 1154
    :goto_23
    move/from16 v0, p2

    .line 1155
    .line 1156
    :goto_24
    if-ge v5, v1, :cond_2f

    .line 1157
    .line 1158
    const-wide/32 v23, 0xf4240

    .line 1159
    .line 1160
    .line 1161
    move/from16 v29, v0

    .line 1162
    .line 1163
    move/from16 p1, v1

    .line 1164
    .line 1165
    iget-wide v0, v14, Lq9/o;->d:J

    .line 1166
    .line 1167
    move-wide/from16 v21, v9

    .line 1168
    .line 1169
    move-wide/from16 v25, v0

    .line 1170
    .line 1171
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 1172
    .line 1173
    .line 1174
    move-result-wide v0

    .line 1175
    aget-wide v21, v12, v5

    .line 1176
    .line 1177
    move-object/from16 v23, v12

    .line 1178
    .line 1179
    move-object/from16 v24, v13

    .line 1180
    .line 1181
    sub-long v12, v21, v16

    .line 1182
    .line 1183
    move-object/from16 v30, v8

    .line 1184
    .line 1185
    move-wide/from16 v21, v9

    .line 1186
    .line 1187
    const-wide/16 v8, 0x0

    .line 1188
    .line 1189
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v31

    .line 1193
    const-wide/32 v33, 0xf4240

    .line 1194
    .line 1195
    .line 1196
    iget-wide v12, v14, Lq9/o;->c:J

    .line 1197
    .line 1198
    move-wide/from16 v35, v12

    .line 1199
    .line 1200
    invoke-static/range {v31 .. v36}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v12

    .line 1204
    add-long/2addr v0, v12

    .line 1205
    aput-wide v0, v7, v15

    .line 1206
    .line 1207
    if-eqz v2, :cond_2d

    .line 1208
    .line 1209
    aget v0, v4, v15

    .line 1210
    .line 1211
    move/from16 v1, v29

    .line 1212
    .line 1213
    if-le v0, v1, :cond_2e

    .line 1214
    .line 1215
    aget v0, v11, v5

    .line 1216
    .line 1217
    goto :goto_25

    .line 1218
    :cond_2d
    move/from16 v1, v29

    .line 1219
    .line 1220
    :cond_2e
    move v0, v1

    .line 1221
    :goto_25
    add-int/lit8 v15, v15, 0x1

    .line 1222
    .line 1223
    add-int/lit8 v5, v5, 0x1

    .line 1224
    .line 1225
    move/from16 v1, p1

    .line 1226
    .line 1227
    move-wide/from16 v9, v21

    .line 1228
    .line 1229
    move-object/from16 v12, v23

    .line 1230
    .line 1231
    move-object/from16 v13, v24

    .line 1232
    .line 1233
    move-object/from16 v8, v30

    .line 1234
    .line 1235
    goto :goto_24

    .line 1236
    :cond_2f
    move v1, v0

    .line 1237
    move-object/from16 v30, v8

    .line 1238
    .line 1239
    move-wide/from16 v21, v9

    .line 1240
    .line 1241
    move-object/from16 v23, v12

    .line 1242
    .line 1243
    move-object/from16 v24, v13

    .line 1244
    .line 1245
    const-wide/16 v8, 0x0

    .line 1246
    .line 1247
    iget-object v0, v14, Lq9/o;->h:[J

    .line 1248
    .line 1249
    aget-wide v12, v0, v6

    .line 1250
    .line 1251
    add-long v12, v21, v12

    .line 1252
    .line 1253
    add-int/lit8 v6, v6, 0x1

    .line 1254
    .line 1255
    move/from16 p2, v1

    .line 1256
    .line 1257
    move-object/from16 p1, v11

    .line 1258
    .line 1259
    move-wide v9, v12

    .line 1260
    move-object/from16 v1, v18

    .line 1261
    .line 1262
    move-object/from16 v12, v23

    .line 1263
    .line 1264
    move-object/from16 v13, v24

    .line 1265
    .line 1266
    move-object/from16 v0, v27

    .line 1267
    .line 1268
    move-object/from16 v11, v28

    .line 1269
    .line 1270
    move-object/from16 v8, v30

    .line 1271
    .line 1272
    goto/16 :goto_22

    .line 1273
    .line 1274
    :cond_30
    move-object/from16 v30, v8

    .line 1275
    .line 1276
    move-wide/from16 v21, v9

    .line 1277
    .line 1278
    const-wide/32 v23, 0xf4240

    .line 1279
    .line 1280
    .line 1281
    iget-wide v0, v14, Lq9/o;->d:J

    .line 1282
    .line 1283
    move-wide/from16 v25, v0

    .line 1284
    .line 1285
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 1286
    .line 1287
    .line 1288
    move-result-wide v8

    .line 1289
    new-instance v10, Lq9/r;

    .line 1290
    .line 1291
    move-object v0, v10

    .line 1292
    move-object/from16 v1, p0

    .line 1293
    .line 1294
    move-object v2, v3

    .line 1295
    move-object v3, v4

    .line 1296
    move/from16 v4, p2

    .line 1297
    .line 1298
    move-object v5, v7

    .line 1299
    move-object/from16 v6, v30

    .line 1300
    .line 1301
    move-wide v7, v8

    .line 1302
    invoke-direct/range {v0 .. v8}, Lq9/r;-><init>(Lq9/o;[J[II[J[IJ)V

    .line 1303
    .line 1304
    .line 1305
    return-object v10

    .line 1306
    :cond_31
    const-string v0, "Track has no sample table size information"

    .line 1307
    .line 1308
    const/4 v1, 0x0

    .line 1309
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    throw v0
.end method

.method private static w(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lq9/b$d;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 11
    .line 12
    .line 13
    move-result v12

    .line 14
    new-instance v13, Lq9/b$d;

    .line 15
    .line 16
    invoke-direct {v13, v12}, Lq9/b$d;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    move v15, v14

    .line 21
    :goto_0
    if-ge v15, v12, :cond_9

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    if-lez v16, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v0, v14

    .line 36
    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 37
    .line 38
    invoke-static {v0, v1}, Li9/o;->a(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const v0, 0x61766331

    .line 46
    .line 47
    .line 48
    if-eq v1, v0, :cond_1

    .line 49
    .line 50
    const v0, 0x61766333

    .line 51
    .line 52
    .line 53
    if-eq v1, v0, :cond_1

    .line 54
    .line 55
    const v0, 0x656e6376

    .line 56
    .line 57
    .line 58
    if-eq v1, v0, :cond_1

    .line 59
    .line 60
    const v0, 0x6d317620

    .line 61
    .line 62
    .line 63
    if-eq v1, v0, :cond_1

    .line 64
    .line 65
    const v0, 0x6d703476

    .line 66
    .line 67
    .line 68
    if-eq v1, v0, :cond_1

    .line 69
    .line 70
    const v0, 0x68766331

    .line 71
    .line 72
    .line 73
    if-eq v1, v0, :cond_1

    .line 74
    .line 75
    const v0, 0x68657631

    .line 76
    .line 77
    .line 78
    if-eq v1, v0, :cond_1

    .line 79
    .line 80
    const v0, 0x73323633

    .line 81
    .line 82
    .line 83
    if-eq v1, v0, :cond_1

    .line 84
    .line 85
    const v0, 0x48323633

    .line 86
    .line 87
    .line 88
    if-eq v1, v0, :cond_1

    .line 89
    .line 90
    const v0, 0x76703038

    .line 91
    .line 92
    .line 93
    if-eq v1, v0, :cond_1

    .line 94
    .line 95
    const v0, 0x76703039

    .line 96
    .line 97
    .line 98
    if-eq v1, v0, :cond_1

    .line 99
    .line 100
    const v0, 0x61763031

    .line 101
    .line 102
    .line 103
    if-eq v1, v0, :cond_1

    .line 104
    .line 105
    const v0, 0x64766176

    .line 106
    .line 107
    .line 108
    if-eq v1, v0, :cond_1

    .line 109
    .line 110
    const v0, 0x64766131

    .line 111
    .line 112
    .line 113
    if-eq v1, v0, :cond_1

    .line 114
    .line 115
    const v0, 0x64766865

    .line 116
    .line 117
    .line 118
    if-eq v1, v0, :cond_1

    .line 119
    .line 120
    const v0, 0x64766831

    .line 121
    .line 122
    .line 123
    if-ne v1, v0, :cond_2

    .line 124
    .line 125
    :cond_1
    move/from16 v17, v9

    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_2
    const v0, 0x6d703461

    .line 130
    .line 131
    .line 132
    if-eq v1, v0, :cond_8

    .line 133
    .line 134
    const v0, 0x656e6361

    .line 135
    .line 136
    .line 137
    if-eq v1, v0, :cond_8

    .line 138
    .line 139
    const v0, 0x61632d33

    .line 140
    .line 141
    .line 142
    if-eq v1, v0, :cond_8

    .line 143
    .line 144
    const v0, 0x65632d33

    .line 145
    .line 146
    .line 147
    if-eq v1, v0, :cond_8

    .line 148
    .line 149
    const v0, 0x61632d34

    .line 150
    .line 151
    .line 152
    if-eq v1, v0, :cond_8

    .line 153
    .line 154
    const v0, 0x6d6c7061

    .line 155
    .line 156
    .line 157
    if-eq v1, v0, :cond_8

    .line 158
    .line 159
    const v0, 0x64747363

    .line 160
    .line 161
    .line 162
    if-eq v1, v0, :cond_8

    .line 163
    .line 164
    const v0, 0x64747365

    .line 165
    .line 166
    .line 167
    if-eq v1, v0, :cond_8

    .line 168
    .line 169
    const v0, 0x64747368

    .line 170
    .line 171
    .line 172
    if-eq v1, v0, :cond_8

    .line 173
    .line 174
    const v0, 0x6474736c

    .line 175
    .line 176
    .line 177
    if-eq v1, v0, :cond_8

    .line 178
    .line 179
    const v0, 0x64747378

    .line 180
    .line 181
    .line 182
    if-eq v1, v0, :cond_8

    .line 183
    .line 184
    const v0, 0x73616d72

    .line 185
    .line 186
    .line 187
    if-eq v1, v0, :cond_8

    .line 188
    .line 189
    const v0, 0x73617762

    .line 190
    .line 191
    .line 192
    if-eq v1, v0, :cond_8

    .line 193
    .line 194
    const v0, 0x6c70636d

    .line 195
    .line 196
    .line 197
    if-eq v1, v0, :cond_8

    .line 198
    .line 199
    const v0, 0x736f7774

    .line 200
    .line 201
    .line 202
    if-eq v1, v0, :cond_8

    .line 203
    .line 204
    const v0, 0x74776f73

    .line 205
    .line 206
    .line 207
    if-eq v1, v0, :cond_8

    .line 208
    .line 209
    const v0, 0x2e6d7032

    .line 210
    .line 211
    .line 212
    if-eq v1, v0, :cond_8

    .line 213
    .line 214
    const v0, 0x2e6d7033

    .line 215
    .line 216
    .line 217
    if-eq v1, v0, :cond_8

    .line 218
    .line 219
    const v0, 0x6d686131

    .line 220
    .line 221
    .line 222
    if-eq v1, v0, :cond_8

    .line 223
    .line 224
    const v0, 0x6d686d31

    .line 225
    .line 226
    .line 227
    if-eq v1, v0, :cond_8

    .line 228
    .line 229
    const v0, 0x616c6163

    .line 230
    .line 231
    .line 232
    if-eq v1, v0, :cond_8

    .line 233
    .line 234
    const v0, 0x616c6177

    .line 235
    .line 236
    .line 237
    if-eq v1, v0, :cond_8

    .line 238
    .line 239
    const v0, 0x756c6177

    .line 240
    .line 241
    .line 242
    if-eq v1, v0, :cond_8

    .line 243
    .line 244
    const v0, 0x4f707573

    .line 245
    .line 246
    .line 247
    if-eq v1, v0, :cond_8

    .line 248
    .line 249
    const v0, 0x664c6143

    .line 250
    .line 251
    .line 252
    if-ne v1, v0, :cond_3

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_3
    const v0, 0x54544d4c

    .line 256
    .line 257
    .line 258
    if-eq v1, v0, :cond_7

    .line 259
    .line 260
    const v0, 0x74783367

    .line 261
    .line 262
    .line 263
    if-eq v1, v0, :cond_7

    .line 264
    .line 265
    const v0, 0x77767474

    .line 266
    .line 267
    .line 268
    if-eq v1, v0, :cond_7

    .line 269
    .line 270
    const v0, 0x73747070

    .line 271
    .line 272
    .line 273
    if-eq v1, v0, :cond_7

    .line 274
    .line 275
    const v0, 0x63363038

    .line 276
    .line 277
    .line 278
    if-ne v1, v0, :cond_4

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_4
    const v0, 0x6d657474

    .line 282
    .line 283
    .line 284
    if-ne v1, v0, :cond_6

    .line 285
    .line 286
    invoke-static {v10, v1, v9, v11, v13}, Lq9/b;->o(Lcom/google/android/exoplayer2/util/d0;IIILq9/b$d;)V

    .line 287
    .line 288
    .line 289
    :cond_5
    :goto_2
    move/from16 v17, v9

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_6
    const v0, 0x63616d6d

    .line 293
    .line 294
    .line 295
    if-ne v1, v0, :cond_5

    .line 296
    .line 297
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 298
    .line 299
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v1, "application/x-camera-motion"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, v13, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    .line 320
    .line 321
    move v2, v9

    .line 322
    move/from16 v3, v16

    .line 323
    .line 324
    move/from16 v4, p1

    .line 325
    .line 326
    move-object/from16 v5, p3

    .line 327
    .line 328
    move-object v6, v13

    .line 329
    invoke-static/range {v0 .. v6}, Lq9/b;->x(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;Lq9/b$d;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 334
    .line 335
    move v2, v9

    .line 336
    move/from16 v3, v16

    .line 337
    .line 338
    move/from16 v4, p1

    .line 339
    .line 340
    move-object/from16 v5, p3

    .line 341
    .line 342
    move/from16 v6, p5

    .line 343
    .line 344
    move-object/from16 v7, p4

    .line 345
    .line 346
    move-object v8, v13

    .line 347
    move/from16 v17, v9

    .line 348
    .line 349
    move v9, v15

    .line 350
    invoke-static/range {v0 .. v9}, Lq9/b;->f(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lq9/b$d;I)V

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :goto_5
    move-object/from16 v0, p0

    .line 355
    .line 356
    move/from16 v2, v17

    .line 357
    .line 358
    move/from16 v3, v16

    .line 359
    .line 360
    move/from16 v4, p1

    .line 361
    .line 362
    move/from16 v5, p2

    .line 363
    .line 364
    move-object/from16 v6, p4

    .line 365
    .line 366
    move-object v7, v13

    .line 367
    move v8, v15

    .line 368
    invoke-static/range {v0 .. v8}, Lq9/b;->D(Lcom/google/android/exoplayer2/util/d0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lq9/b$d;I)V

    .line 369
    .line 370
    .line 371
    :goto_6
    add-int v9, v17, v16

    .line 372
    .line 373
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 374
    .line 375
    .line 376
    add-int/lit8 v15, v15, 0x1

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_9
    return-object v13
.end method

.method private static x(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;Lq9/b$d;)V
    .locals 4

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x54544d4c

    .line 7
    .line 8
    .line 9
    const-string v0, "application/ttml+xml"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p2, 0x74783367

    .line 21
    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p3, p3, -0x10

    .line 26
    .line 27
    new-array p1, p3, [B

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v0, "application/x-quicktime-tx3g"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const p0, 0x77767474

    .line 41
    .line 42
    .line 43
    if-ne p1, p0, :cond_2

    .line 44
    .line 45
    const-string v0, "application/x-mp4-vtt"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const p0, 0x73747070

    .line 49
    .line 50
    .line 51
    if-ne p1, p0, :cond_3

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const p0, 0x63363038

    .line 57
    .line 58
    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    iput p0, p6, Lq9/b$d;->d:I

    .line 63
    .line 64
    const-string v0, "application/x-mp4-cea-608"

    .line 65
    .line 66
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/p1$b;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/p1$b;->R(I)Lcom/google/android/exoplayer2/p1$b;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/p1$b;->i0(J)Lcom/google/android/exoplayer2/p1$b;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, p6, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method private static y(Lcom/google/android/exoplayer2/util/d0;)Lq9/b$g;
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lq9/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move v0, v4

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    if-ge v7, v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    add-int v11, v5, v7

    .line 53
    .line 54
    aget-byte v10, v10, v11

    .line 55
    .line 56
    const/4 v11, -0x1

    .line 57
    if-eq v10, v11, :cond_4

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :goto_2
    const-wide/16 v10, 0x0

    .line 71
    .line 72
    cmp-long v5, v0, v10

    .line 73
    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-wide v8, v0

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    const/high16 v4, -0x10000

    .line 108
    .line 109
    const/high16 v5, 0x10000

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    if-ne v1, v5, :cond_6

    .line 114
    .line 115
    if-ne v2, v4, :cond_6

    .line 116
    .line 117
    if-nez p0, :cond_6

    .line 118
    .line 119
    const/16 v6, 0x5a

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    if-nez v0, :cond_7

    .line 123
    .line 124
    if-ne v1, v4, :cond_7

    .line 125
    .line 126
    if-ne v2, v5, :cond_7

    .line 127
    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    const/16 v6, 0x10e

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    if-ne v0, v4, :cond_8

    .line 134
    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    if-nez v2, :cond_8

    .line 138
    .line 139
    if-ne p0, v4, :cond_8

    .line 140
    .line 141
    const/16 v6, 0xb4

    .line 142
    .line 143
    :cond_8
    :goto_4
    new-instance p0, Lq9/b$g;

    .line 144
    .line 145
    invoke-direct {p0, v3, v8, v9, v6}, Lq9/b$g;-><init>(IJI)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method private static z(Lq9/a$a;Lq9/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lq9/o;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v1, 0x6d646961

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lq9/a$a;

    .line 15
    .line 16
    const v2, 0x68646c72    # 4.3148E24f

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lq9/a$b;

    .line 28
    .line 29
    iget-object v2, v2, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 30
    .line 31
    invoke-static {v2}, Lq9/b;->k(Lcom/google/android/exoplayer2/util/d0;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Lq9/b;->d(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-ne v5, v2, :cond_0

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_0
    const v2, 0x746b6864

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lq9/a$b;

    .line 56
    .line 57
    iget-object v2, v2, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 58
    .line 59
    invoke-static {v2}, Lq9/b;->y(Lcom/google/android/exoplayer2/util/d0;)Lq9/b$g;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long v4, p2, v6

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-static {v2}, Lq9/b$g;->a(Lq9/b$g;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    move-object/from16 v4, p1

    .line 77
    .line 78
    move-wide v10, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object/from16 v4, p1

    .line 81
    .line 82
    move-wide/from16 v10, p2

    .line 83
    .line 84
    :goto_0
    iget-object v4, v4, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 85
    .line 86
    invoke-static {v4}, Lq9/b;->p(Lcom/google/android/exoplayer2/util/d0;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    cmp-long v4, v10, v6

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    :goto_1
    move-wide v10, v6

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-wide/32 v12, 0xf4240

    .line 97
    .line 98
    .line 99
    move-wide v14, v8

    .line 100
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    goto :goto_1

    .line 105
    :goto_2
    const v4, 0x6d696e66

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lq9/a$a;

    .line 117
    .line 118
    const v6, 0x7374626c

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v6}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lq9/a$a;

    .line 130
    .line 131
    const v6, 0x6d646864

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lq9/a$b;

    .line 143
    .line 144
    iget-object v1, v1, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 145
    .line 146
    invoke-static {v1}, Lq9/b;->m(Lcom/google/android/exoplayer2/util/d0;)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const v6, 0x73747364

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v6}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lq9/a$b;

    .line 162
    .line 163
    iget-object v12, v4, Lq9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 164
    .line 165
    invoke-static {v2}, Lq9/b$g;->b(Lq9/b$g;)I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    invoke-static {v2}, Lq9/b$g;->c(Lq9/b$g;)I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    move-object v15, v4

    .line 176
    check-cast v15, Ljava/lang/String;

    .line 177
    .line 178
    move-object/from16 v16, p4

    .line 179
    .line 180
    move/from16 v17, p6

    .line 181
    .line 182
    invoke-static/range {v12 .. v17}, Lq9/b;->w(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lq9/b$d;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-nez p5, :cond_3

    .line 187
    .line 188
    const v6, 0x65647473

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v6}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    invoke-static {v0}, Lq9/b;->h(Lq9/a$a;)Landroid/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_3

    .line 202
    .line 203
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v6, [J

    .line 206
    .line 207
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, [J

    .line 210
    .line 211
    move-object/from16 v17, v0

    .line 212
    .line 213
    move-object/from16 v16, v6

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_3
    move-object/from16 v16, v3

    .line 217
    .line 218
    move-object/from16 v17, v16

    .line 219
    .line 220
    :goto_3
    iget-object v0, v4, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 221
    .line 222
    if-nez v0, :cond_4

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_4
    new-instance v0, Lq9/o;

    .line 226
    .line 227
    invoke-static {v2}, Lq9/b$g;->b(Lq9/b$g;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Ljava/lang/Long;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v6

    .line 239
    iget-object v12, v4, Lq9/b$d;->b:Lcom/google/android/exoplayer2/p1;

    .line 240
    .line 241
    iget v13, v4, Lq9/b$d;->d:I

    .line 242
    .line 243
    iget-object v14, v4, Lq9/b$d;->a:[Lq9/p;

    .line 244
    .line 245
    iget v15, v4, Lq9/b$d;->c:I

    .line 246
    .line 247
    move-object v3, v0

    .line 248
    move v4, v2

    .line 249
    invoke-direct/range {v3 .. v17}, Lq9/o;-><init>(IIJJJLcom/google/android/exoplayer2/p1;I[Lq9/p;I[J[J)V

    .line 250
    .line 251
    .line 252
    :goto_4
    return-object v3
.end method
