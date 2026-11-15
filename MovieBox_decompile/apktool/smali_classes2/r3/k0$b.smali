.class Lr3/k0$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/i0;

.field private final b:Landroid/util/SparseArray;

.field private final c:Landroid/util/SparseIntArray;

.field private final d:I

.field final synthetic e:Lr3/k0;


# direct methods
.method public constructor <init>(Lr3/k0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lr3/k0$b;->e:Lr3/k0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/i0;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 15
    .line 16
    new-instance p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lr3/k0$b;->b:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance p1, Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    iput p2, p0, Lr3/k0$b;->d:I

    .line 31
    .line 32
    return-void
.end method

.method private c(Landroidx/media3/common/util/j0;I)Lr3/l0$b;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int v2, v1, p2

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move v7, v3

    .line 13
    move-object v8, v4

    .line 14
    move-object v10, v8

    .line 15
    move v9, v5

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v3, v2, :cond_f

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    add-int/2addr v6, v4

    .line 35
    if-le v6, v2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_0
    const/4 v4, 0x5

    .line 40
    const/16 v11, 0xac

    .line 41
    .line 42
    const/16 v12, 0x87

    .line 43
    .line 44
    const/16 v13, 0x81

    .line 45
    .line 46
    if-ne v3, v4, :cond_4

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    const-wide/32 v14, 0x41432d33

    .line 53
    .line 54
    .line 55
    cmp-long v14, v3, v14

    .line 56
    .line 57
    if-nez v14, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    const-wide/32 v13, 0x45414333

    .line 61
    .line 62
    .line 63
    cmp-long v13, v3, v13

    .line 64
    .line 65
    if-nez v13, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    const-wide/32 v12, 0x41432d34

    .line 69
    .line 70
    .line 71
    cmp-long v12, v3, v12

    .line 72
    .line 73
    if-nez v12, :cond_3

    .line 74
    .line 75
    :goto_1
    move v7, v11

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_3
    const-wide/32 v11, 0x48455643

    .line 79
    .line 80
    .line 81
    cmp-long v3, v3, v11

    .line 82
    .line 83
    if-nez v3, :cond_e

    .line 84
    .line 85
    const/16 v7, 0x24

    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_4
    const/16 v4, 0x6a

    .line 90
    .line 91
    if-ne v3, v4, :cond_5

    .line 92
    .line 93
    :goto_2
    move v7, v13

    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_5
    const/16 v4, 0x7a

    .line 97
    .line 98
    if-ne v3, v4, :cond_6

    .line 99
    .line 100
    :goto_3
    move v7, v12

    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_6
    const/16 v4, 0x7f

    .line 104
    .line 105
    if-ne v3, v4, :cond_9

    .line 106
    .line 107
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/16 v4, 0x15

    .line 112
    .line 113
    if-ne v3, v4, :cond_7

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    const/16 v4, 0xe

    .line 117
    .line 118
    if-ne v3, v4, :cond_8

    .line 119
    .line 120
    const/16 v7, 0x88

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_8
    const/16 v4, 0x21

    .line 124
    .line 125
    if-ne v3, v4, :cond_e

    .line 126
    .line 127
    const/16 v7, 0x8b

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_9
    const/16 v4, 0x7b

    .line 131
    .line 132
    if-ne v3, v4, :cond_a

    .line 133
    .line 134
    const/16 v3, 0x8a

    .line 135
    .line 136
    :goto_4
    move v7, v3

    .line 137
    goto :goto_6

    .line 138
    :cond_a
    const/16 v4, 0xa

    .line 139
    .line 140
    const/4 v11, 0x3

    .line 141
    if-ne v3, v4, :cond_b

    .line 142
    .line 143
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    move-object v8, v3

    .line 156
    goto :goto_6

    .line 157
    :cond_b
    const/16 v4, 0x59

    .line 158
    .line 159
    if-ne v3, v4, :cond_d

    .line 160
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-ge v7, v6, :cond_c

    .line 171
    .line 172
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    const/4 v12, 0x4

    .line 185
    new-array v13, v12, [B

    .line 186
    .line 187
    invoke-virtual {v0, v13, v5, v12}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 188
    .line 189
    .line 190
    new-instance v12, Lr3/l0$a;

    .line 191
    .line 192
    invoke-direct {v12, v7, v10, v13}, Lr3/l0$a;-><init>(Ljava/lang/String;I[B)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_c
    move-object v10, v3

    .line 200
    move v7, v4

    .line 201
    goto :goto_6

    .line 202
    :cond_d
    const/16 v4, 0x6f

    .line 203
    .line 204
    if-ne v3, v4, :cond_e

    .line 205
    .line 206
    const/16 v3, 0x101

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    sub-int/2addr v6, v3

    .line 214
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/j0;->X(I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_f
    :goto_7
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 220
    .line 221
    .line 222
    new-instance v3, Lr3/l0$b;

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    move-object v6, v3

    .line 233
    invoke-direct/range {v6 .. v11}, Lr3/l0$b;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 234
    .line 235
    .line 236
    return-object v3
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 14
    .line 15
    invoke-static {v2}, Lr3/k0;->m(Lr3/k0;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq v2, v5, :cond_2

    .line 22
    .line 23
    iget-object v2, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 24
    .line 25
    invoke-static {v2}, Lr3/k0;->m(Lr3/k0;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    iget-object v2, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 32
    .line 33
    invoke-static {v2}, Lr3/k0;->h(Lr3/k0;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v2, Landroidx/media3/common/util/p0;

    .line 41
    .line 42
    iget-object v6, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 43
    .line 44
    invoke-static {v6}, Lr3/k0;->n(Lr3/k0;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Landroidx/media3/common/util/p0;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroidx/media3/common/util/p0;->d()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-direct {v2, v6, v7}, Landroidx/media3/common/util/p0;-><init>(J)V

    .line 59
    .line 60
    .line 61
    iget-object v6, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 62
    .line 63
    invoke-static {v6}, Lr3/k0;->n(Lr3/k0;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    iget-object v2, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 72
    .line 73
    invoke-static {v2}, Lr3/k0;->n(Lr3/k0;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroidx/media3/common/util/p0;

    .line 82
    .line 83
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    and-int/lit16 v6, v6, 0x80

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/j0;->X(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->P()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x3

    .line 100
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/j0;->X(I)V

    .line 101
    .line 102
    .line 103
    iget-object v8, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 104
    .line 105
    invoke-virtual {v1, v8, v3}, Landroidx/media3/common/util/j0;->k(Landroidx/media3/common/util/i0;I)V

    .line 106
    .line 107
    .line 108
    iget-object v8, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 109
    .line 110
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/i0;->r(I)V

    .line 111
    .line 112
    .line 113
    iget-object v8, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 114
    .line 115
    iget-object v9, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 116
    .line 117
    const/16 v10, 0xd

    .line 118
    .line 119
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/i0;->h(I)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    invoke-static {v8, v9}, Lr3/k0;->o(Lr3/k0;I)I

    .line 124
    .line 125
    .line 126
    iget-object v8, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 127
    .line 128
    invoke-virtual {v1, v8, v3}, Landroidx/media3/common/util/j0;->k(Landroidx/media3/common/util/i0;I)V

    .line 129
    .line 130
    .line 131
    iget-object v8, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 132
    .line 133
    const/4 v9, 0x4

    .line 134
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/i0;->r(I)V

    .line 135
    .line 136
    .line 137
    iget-object v8, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 138
    .line 139
    const/16 v11, 0xc

    .line 140
    .line 141
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/i0;->h(I)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/j0;->X(I)V

    .line 146
    .line 147
    .line 148
    iget-object v8, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 149
    .line 150
    invoke-static {v8}, Lr3/k0;->m(Lr3/k0;)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    const/16 v12, 0x2000

    .line 155
    .line 156
    const/16 v13, 0x15

    .line 157
    .line 158
    if-ne v8, v3, :cond_4

    .line 159
    .line 160
    iget-object v8, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 161
    .line 162
    invoke-static {v8}, Lr3/k0;->p(Lr3/k0;)Lr3/l0;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    if-nez v8, :cond_4

    .line 167
    .line 168
    new-instance v8, Lr3/l0$b;

    .line 169
    .line 170
    const/16 v18, 0x0

    .line 171
    .line 172
    sget-object v19, Landroidx/media3/common/util/a1;->f:[B

    .line 173
    .line 174
    const/16 v15, 0x15

    .line 175
    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    move-object v14, v8

    .line 181
    invoke-direct/range {v14 .. v19}, Lr3/l0$b;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    .line 182
    .line 183
    .line 184
    iget-object v14, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 185
    .line 186
    invoke-static {v14}, Lr3/k0;->r(Lr3/k0;)Lr3/l0$c;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-interface {v15, v13, v8}, Lr3/l0$c;->a(ILr3/l0$b;)Lr3/l0;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-static {v14, v8}, Lr3/k0;->q(Lr3/k0;Lr3/l0;)Lr3/l0;

    .line 195
    .line 196
    .line 197
    iget-object v8, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 198
    .line 199
    invoke-static {v8}, Lr3/k0;->p(Lr3/k0;)Lr3/l0;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    if-eqz v8, :cond_4

    .line 204
    .line 205
    iget-object v8, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 206
    .line 207
    invoke-static {v8}, Lr3/k0;->p(Lr3/k0;)Lr3/l0;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    iget-object v14, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 212
    .line 213
    invoke-static {v14}, Lr3/k0;->s(Lr3/k0;)Lk2/t;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    new-instance v15, Lr3/l0$d;

    .line 218
    .line 219
    invoke-direct {v15, v6, v13, v12}, Lr3/l0$d;-><init>(III)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v8, v2, v14, v15}, Lr3/l0;->b(Landroidx/media3/common/util/p0;Lk2/t;Lr3/l0$d;)V

    .line 223
    .line 224
    .line 225
    :cond_4
    iget-object v8, v0, Lr3/k0$b;->b:Landroid/util/SparseArray;

    .line 226
    .line 227
    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 228
    .line 229
    .line 230
    iget-object v8, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 231
    .line 232
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    :goto_2
    if-lez v8, :cond_c

    .line 240
    .line 241
    iget-object v14, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 242
    .line 243
    const/4 v15, 0x5

    .line 244
    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/j0;->k(Landroidx/media3/common/util/i0;I)V

    .line 245
    .line 246
    .line 247
    iget-object v14, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 248
    .line 249
    const/16 v4, 0x8

    .line 250
    .line 251
    invoke-virtual {v14, v4}, Landroidx/media3/common/util/i0;->h(I)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    iget-object v14, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 256
    .line 257
    invoke-virtual {v14, v7}, Landroidx/media3/common/util/i0;->r(I)V

    .line 258
    .line 259
    .line 260
    iget-object v14, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 261
    .line 262
    invoke-virtual {v14, v10}, Landroidx/media3/common/util/i0;->h(I)I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    iget-object v7, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 267
    .line 268
    invoke-virtual {v7, v9}, Landroidx/media3/common/util/i0;->r(I)V

    .line 269
    .line 270
    .line 271
    iget-object v7, v0, Lr3/k0$b;->a:Landroidx/media3/common/util/i0;

    .line 272
    .line 273
    invoke-virtual {v7, v11}, Landroidx/media3/common/util/i0;->h(I)I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    invoke-direct {v0, v1, v7}, Lr3/k0$b;->c(Landroidx/media3/common/util/j0;I)Lr3/l0$b;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    const/4 v10, 0x6

    .line 282
    if-eq v4, v10, :cond_5

    .line 283
    .line 284
    if-ne v4, v15, :cond_6

    .line 285
    .line 286
    :cond_5
    iget v4, v9, Lr3/l0$b;->a:I

    .line 287
    .line 288
    :cond_6
    add-int/lit8 v7, v7, 0x5

    .line 289
    .line 290
    sub-int/2addr v8, v7

    .line 291
    iget-object v7, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 292
    .line 293
    invoke-static {v7}, Lr3/k0;->m(Lr3/k0;)I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-ne v7, v3, :cond_7

    .line 298
    .line 299
    move v7, v4

    .line 300
    goto :goto_3

    .line 301
    :cond_7
    move v7, v14

    .line 302
    :goto_3
    iget-object v10, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 303
    .line 304
    invoke-static {v10}, Lr3/k0;->t(Lr3/k0;)Landroid/util/SparseBooleanArray;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-eqz v10, :cond_8

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_8
    iget-object v10, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 316
    .line 317
    invoke-static {v10}, Lr3/k0;->m(Lr3/k0;)I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    if-ne v10, v3, :cond_9

    .line 322
    .line 323
    if-ne v4, v13, :cond_9

    .line 324
    .line 325
    iget-object v4, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 326
    .line 327
    invoke-static {v4}, Lr3/k0;->p(Lr3/k0;)Lr3/l0;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    goto :goto_4

    .line 332
    :cond_9
    iget-object v10, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 333
    .line 334
    invoke-static {v10}, Lr3/k0;->r(Lr3/k0;)Lr3/l0$c;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-interface {v10, v4, v9}, Lr3/l0$c;->a(ILr3/l0$b;)Lr3/l0;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    :goto_4
    iget-object v9, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 343
    .line 344
    invoke-static {v9}, Lr3/k0;->m(Lr3/k0;)I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    if-ne v9, v3, :cond_a

    .line 349
    .line 350
    iget-object v9, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 351
    .line 352
    invoke-virtual {v9, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-ge v14, v9, :cond_b

    .line 357
    .line 358
    :cond_a
    iget-object v9, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 359
    .line 360
    invoke-virtual {v9, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    .line 362
    .line 363
    iget-object v9, v0, Lr3/k0$b;->b:Landroid/util/SparseArray;

    .line 364
    .line 365
    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_b
    :goto_5
    const/4 v4, 0x0

    .line 369
    const/4 v7, 0x3

    .line 370
    const/4 v9, 0x4

    .line 371
    const/16 v10, 0xd

    .line 372
    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :cond_c
    iget-object v1, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    const/4 v4, 0x0

    .line 382
    :goto_6
    if-ge v4, v1, :cond_f

    .line 383
    .line 384
    iget-object v7, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 385
    .line 386
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    iget-object v8, v0, Lr3/k0$b;->c:Landroid/util/SparseIntArray;

    .line 391
    .line 392
    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    iget-object v9, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 397
    .line 398
    invoke-static {v9}, Lr3/k0;->t(Lr3/k0;)Landroid/util/SparseBooleanArray;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    invoke-virtual {v9, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 403
    .line 404
    .line 405
    iget-object v9, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 406
    .line 407
    invoke-static {v9}, Lr3/k0;->u(Lr3/k0;)Landroid/util/SparseBooleanArray;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 412
    .line 413
    .line 414
    iget-object v9, v0, Lr3/k0$b;->b:Landroid/util/SparseArray;

    .line 415
    .line 416
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    check-cast v9, Lr3/l0;

    .line 421
    .line 422
    if-eqz v9, :cond_e

    .line 423
    .line 424
    iget-object v10, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 425
    .line 426
    invoke-static {v10}, Lr3/k0;->p(Lr3/k0;)Lr3/l0;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    if-eq v9, v10, :cond_d

    .line 431
    .line 432
    iget-object v10, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 433
    .line 434
    invoke-static {v10}, Lr3/k0;->s(Lr3/k0;)Lk2/t;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    new-instance v11, Lr3/l0$d;

    .line 439
    .line 440
    invoke-direct {v11, v6, v7, v12}, Lr3/l0$d;-><init>(III)V

    .line 441
    .line 442
    .line 443
    invoke-interface {v9, v2, v10, v11}, Lr3/l0;->b(Landroidx/media3/common/util/p0;Lk2/t;Lr3/l0$d;)V

    .line 444
    .line 445
    .line 446
    :cond_d
    iget-object v7, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 447
    .line 448
    invoke-static {v7}, Lr3/k0;->g(Lr3/k0;)Landroid/util/SparseArray;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    goto :goto_6

    .line 458
    :cond_f
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 459
    .line 460
    invoke-static {v1}, Lr3/k0;->m(Lr3/k0;)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-ne v1, v3, :cond_10

    .line 465
    .line 466
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 467
    .line 468
    invoke-static {v1}, Lr3/k0;->i(Lr3/k0;)Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-nez v1, :cond_12

    .line 473
    .line 474
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 475
    .line 476
    invoke-static {v1}, Lr3/k0;->s(Lr3/k0;)Lk2/t;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-interface {v1}, Lk2/t;->endTracks()V

    .line 481
    .line 482
    .line 483
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 484
    .line 485
    const/4 v2, 0x0

    .line 486
    invoke-static {v1, v2}, Lr3/k0;->k(Lr3/k0;I)I

    .line 487
    .line 488
    .line 489
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 490
    .line 491
    invoke-static {v1, v5}, Lr3/k0;->j(Lr3/k0;Z)Z

    .line 492
    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_10
    const/4 v2, 0x0

    .line 496
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 497
    .line 498
    invoke-static {v1}, Lr3/k0;->g(Lr3/k0;)Landroid/util/SparseArray;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    iget v3, v0, Lr3/k0$b;->d:I

    .line 503
    .line 504
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 505
    .line 506
    .line 507
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 508
    .line 509
    invoke-static {v1}, Lr3/k0;->m(Lr3/k0;)I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-ne v3, v5, :cond_11

    .line 514
    .line 515
    move v4, v2

    .line 516
    goto :goto_7

    .line 517
    :cond_11
    iget-object v2, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 518
    .line 519
    invoke-static {v2}, Lr3/k0;->h(Lr3/k0;)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    add-int/lit8 v4, v2, -0x1

    .line 524
    .line 525
    :goto_7
    invoke-static {v1, v4}, Lr3/k0;->k(Lr3/k0;I)I

    .line 526
    .line 527
    .line 528
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 529
    .line 530
    invoke-static {v1}, Lr3/k0;->h(Lr3/k0;)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_12

    .line 535
    .line 536
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 537
    .line 538
    invoke-static {v1}, Lr3/k0;->s(Lr3/k0;)Lk2/t;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-interface {v1}, Lk2/t;->endTracks()V

    .line 543
    .line 544
    .line 545
    iget-object v1, v0, Lr3/k0$b;->e:Lr3/k0;

    .line 546
    .line 547
    invoke-static {v1, v5}, Lr3/k0;->j(Lr3/k0;Z)Z

    .line 548
    .line 549
    .line 550
    :cond_12
    :goto_8
    return-void
.end method

.method public b(Landroidx/media3/common/util/p0;Lk2/t;Lr3/l0$d;)V
    .locals 0

    .line 1
    return-void
.end method
