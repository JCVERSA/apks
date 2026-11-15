.class final Lcom/google/android/exoplayer2/source/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q$a;,
        Lcom/google/android/exoplayer2/source/q$c;,
        Lcom/google/android/exoplayer2/source/q$b;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/n;

.field private final b:Ljava/util/IdentityHashMap;

.field private final c:Lv9/d;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/HashMap;

.field private f:Lcom/google/android/exoplayer2/source/n$a;

.field private g:Lv9/y;

.field private h:[Lcom/google/android/exoplayer2/source/n;

.field private i:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public varargs constructor <init>(Lv9/d;[J[Lcom/google/android/exoplayer2/source/n;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->c:Lv9/d;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/b0;

    .line 24
    .line 25
    invoke-interface {p1, v1}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 30
    .line 31
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    .line 37
    .line 38
    new-array p1, v0, [Lcom/google/android/exoplayer2/source/n;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 41
    .line 42
    :goto_0
    array-length p1, p3

    .line 43
    if-ge v0, p1, :cond_1

    .line 44
    .line 45
    aget-wide v1, p2, v0

    .line 46
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    cmp-long p1, v1, v3

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 54
    .line 55
    new-instance v3, Lcom/google/android/exoplayer2/source/q$b;

    .line 56
    .line 57
    aget-object v4, p3, v0

    .line 58
    .line 59
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/q$b;-><init>(Lcom/google/android/exoplayer2/source/n;J)V

    .line 60
    .line 61
    .line 62
    aput-object v3, p1, v0

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/source/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/q$b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/exoplayer2/source/q$b;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/q$b;->a(Lcom/google/android/exoplayer2/source/q$b;)Lcom/google/android/exoplayer2/source/n;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1
.end method

.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    aget-object v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 11
    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->b(JLcom/google/android/exoplayer2/d3;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public c(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public continueLoading(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/exoplayer2/source/n;

    .line 26
    .line 27
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/n;->continueLoading(J)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e([Lna/s;[Z[Lv9/s;[ZJ)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v4, v1

    .line 11
    new-array v4, v4, [I

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    const/4 v8, 0x0

    .line 16
    if-ge v6, v7, :cond_4

    .line 17
    .line 18
    aget-object v7, v2, v6

    .line 19
    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    .line 24
    .line 25
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    move-object v8, v7

    .line 30
    check-cast v8, Ljava/lang/Integer;

    .line 31
    .line 32
    :goto_1
    const/4 v7, -0x1

    .line 33
    if-nez v8, :cond_1

    .line 34
    .line 35
    move v8, v7

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    :goto_2
    aput v8, v3, v6

    .line 42
    .line 43
    aput v7, v4, v6

    .line 44
    .line 45
    aget-object v8, v1, v6

    .line 46
    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    invoke-interface {v8}, Lna/v;->getTrackGroup()Lv9/w;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lv9/w;

    .line 60
    .line 61
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Lv9/w;

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 69
    .line 70
    array-length v11, v10

    .line 71
    if-ge v9, v11, :cond_3

    .line 72
    .line 73
    aget-object v10, v10, v9

    .line 74
    .line 75
    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lv9/y;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v10, v8}, Lv9/y;->c(Lv9/w;)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eq v10, v7, :cond_2

    .line 84
    .line 85
    aput v9, v4, v6

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 97
    .line 98
    .line 99
    array-length v6, v1

    .line 100
    new-array v7, v6, [Lv9/s;

    .line 101
    .line 102
    array-length v9, v1

    .line 103
    new-array v9, v9, [Lv9/s;

    .line 104
    .line 105
    array-length v10, v1

    .line 106
    new-array v15, v10, [Lna/s;

    .line 107
    .line 108
    new-instance v14, Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 111
    .line 112
    array-length v10, v10

    .line 113
    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    move-wide/from16 v17, p5

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    :goto_5
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 120
    .line 121
    array-length v10, v10

    .line 122
    if-ge v13, v10, :cond_f

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    :goto_6
    array-length v11, v1

    .line 126
    if-ge v10, v11, :cond_7

    .line 127
    .line 128
    aget v11, v3, v10

    .line 129
    .line 130
    if-ne v11, v13, :cond_5

    .line 131
    .line 132
    aget-object v11, v2, v10

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_5
    move-object v11, v8

    .line 136
    :goto_7
    aput-object v11, v9, v10

    .line 137
    .line 138
    aget v11, v4, v10

    .line 139
    .line 140
    if-ne v11, v13, :cond_6

    .line 141
    .line 142
    aget-object v11, v1, v10

    .line 143
    .line 144
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v11, Lna/s;

    .line 149
    .line 150
    invoke-interface {v11}, Lna/v;->getTrackGroup()Lv9/w;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lv9/w;

    .line 161
    .line 162
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Lv9/w;

    .line 167
    .line 168
    new-instance v12, Lcom/google/android/exoplayer2/source/q$a;

    .line 169
    .line 170
    invoke-direct {v12, v11, v5}, Lcom/google/android/exoplayer2/source/q$a;-><init>(Lna/s;Lv9/w;)V

    .line 171
    .line 172
    .line 173
    aput-object v12, v15, v10

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_6
    aput-object v8, v15, v10

    .line 177
    .line 178
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 182
    .line 183
    aget-object v10, v5, v13

    .line 184
    .line 185
    move-object v11, v15

    .line 186
    move-object/from16 v12, p2

    .line 187
    .line 188
    move v5, v13

    .line 189
    move-object v13, v9

    .line 190
    move-object v8, v14

    .line 191
    move-object/from16 v14, p4

    .line 192
    .line 193
    move-object/from16 v19, v15

    .line 194
    .line 195
    move-wide/from16 v15, v17

    .line 196
    .line 197
    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/n;->e([Lna/s;[Z[Lv9/s;[ZJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    if-nez v5, :cond_8

    .line 202
    .line 203
    move-wide/from16 v17, v10

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_8
    cmp-long v10, v10, v17

    .line 207
    .line 208
    if-nez v10, :cond_e

    .line 209
    .line 210
    :goto_9
    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    :goto_a
    array-length v12, v1

    .line 213
    if-ge v10, v12, :cond_c

    .line 214
    .line 215
    aget v12, v4, v10

    .line 216
    .line 217
    const/4 v13, 0x1

    .line 218
    if-ne v12, v5, :cond_9

    .line 219
    .line 220
    aget-object v11, v9, v10

    .line 221
    .line 222
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    check-cast v11, Lv9/s;

    .line 227
    .line 228
    aget-object v12, v9, v10

    .line 229
    .line 230
    aput-object v12, v7, v10

    .line 231
    .line 232
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    .line 233
    .line 234
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move v11, v13

    .line 242
    goto :goto_c

    .line 243
    :cond_9
    aget v12, v3, v10

    .line 244
    .line 245
    if-ne v12, v5, :cond_b

    .line 246
    .line 247
    aget-object v12, v9, v10

    .line 248
    .line 249
    if-nez v12, :cond_a

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_a
    const/4 v13, 0x0

    .line 253
    :goto_b
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_c
    if-eqz v11, :cond_d

    .line 260
    .line 261
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 262
    .line 263
    aget-object v10, v10, v5

    .line 264
    .line 265
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_d
    add-int/lit8 v13, v5, 0x1

    .line 269
    .line 270
    move-object v14, v8

    .line 271
    move-object/from16 v15, v19

    .line 272
    .line 273
    const/4 v8, 0x0

    .line 274
    goto/16 :goto_5

    .line 275
    .line 276
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    const-string v2, "Children enabled at different positions."

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :cond_f
    move-object v8, v14

    .line 285
    const/4 v1, 0x0

    .line 286
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    new-array v1, v1, [Lcom/google/android/exoplayer2/source/n;

    .line 290
    .line 291
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, [Lcom/google/android/exoplayer2/source/n;

    .line 296
    .line 297
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 298
    .line 299
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q;->c:Lv9/d;

    .line 300
    .line 301
    invoke-interface {v2, v1}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 306
    .line 307
    return-wide v17
.end method

.method public f(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/n;->f(Lcom/google/android/exoplayer2/source/n$a;J)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q;->c(Lcom/google/android/exoplayer2/source/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lv9/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->g:Lv9/y;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv9/y;

    .line 8
    .line 9
    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    aget-object v4, p1, v2

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lv9/y;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Lv9/y;->a:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-array p1, v3, [Lv9/w;

    .line 36
    .line 37
    move v0, v1

    .line 38
    move v2, v0

    .line 39
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 40
    .line 41
    array-length v4, v3

    .line 42
    if-ge v0, v4, :cond_3

    .line 43
    .line 44
    aget-object v3, v3, v0

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lv9/y;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget v4, v3, Lv9/y;->a:I

    .line 51
    .line 52
    move v5, v1

    .line 53
    :goto_2
    if-ge v5, v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Lv9/y;->b(I)Lv9/w;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v8, ":"

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v8, v6, Lv9/w;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Lv9/w;->b(Ljava/lang/String;)Lv9/w;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v6, v2, 0x1

    .line 91
    .line 92
    aput-object v7, p1, v2

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    move v2, v6

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance v0, Lv9/y;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lv9/y;-><init>([Lv9/w;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->g:Lv9/y;

    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    .line 115
    .line 116
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move-wide v6, v2

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v5, v1, :cond_8

    .line 13
    .line 14
    aget-object v8, v0, v5

    .line 15
    .line 16
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    cmp-long v11, v9, v2

    .line 21
    .line 22
    const-string v12, "Unexpected child seekToUs result."

    .line 23
    .line 24
    if-eqz v11, :cond_5

    .line 25
    .line 26
    cmp-long v11, v6, v2

    .line 27
    .line 28
    if-nez v11, :cond_3

    .line 29
    .line 30
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 31
    .line 32
    array-length v7, v6

    .line 33
    move v11, v4

    .line 34
    :goto_1
    if-ge v11, v7, :cond_2

    .line 35
    .line 36
    aget-object v13, v6, v11

    .line 37
    .line 38
    if-ne v13, v8, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-interface {v13, v9, v10}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v13

    .line 45
    cmp-long v13, v13, v9

    .line 46
    .line 47
    if-nez v13, :cond_1

    .line 48
    .line 49
    add-int/lit8 v11, v11, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    :goto_2
    move-wide v6, v9

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    cmp-long v8, v9, v6

    .line 61
    .line 62
    if-nez v8, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "Conflicting discontinuities."

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_5
    cmp-long v9, v6, v2

    .line 74
    .line 75
    if-eqz v9, :cond_7

    .line 76
    .line 77
    invoke-interface {v8, v6, v7}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v8

    .line 81
    cmp-long v8, v8, v6

    .line 82
    .line 83
    if-nez v8, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_8
    return-wide v6
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/4 v0, 0x1

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    cmp-long v1, v1, p1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Unexpected child seekToUs result."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    return-wide p1
.end method
