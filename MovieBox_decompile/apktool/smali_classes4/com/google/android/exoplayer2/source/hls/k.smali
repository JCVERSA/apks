.class public final Lcom/google/android/exoplayer2/source/hls/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/hls/p$b;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/hls/g;

.field private final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final c:Lcom/google/android/exoplayer2/source/hls/f;

.field private final d:Lcom/google/android/exoplayer2/upstream/k0;

.field private final e:Lcom/google/android/exoplayer2/drm/u;

.field private final f:Lcom/google/android/exoplayer2/drm/s$a;

.field private final g:Lcom/google/android/exoplayer2/upstream/z;

.field private final h:Lcom/google/android/exoplayer2/source/p$a;

.field private final i:Lcom/google/android/exoplayer2/upstream/b;

.field private final j:Ljava/util/IdentityHashMap;

.field private final k:Lcom/google/android/exoplayer2/source/hls/q;

.field private final l:Lv9/d;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Lg9/u1;

.field private q:Lcom/google/android/exoplayer2/source/n$a;

.field private r:I

.field private s:Lv9/y;

.field private t:[Lcom/google/android/exoplayer2/source/hls/p;

.field private u:[Lcom/google/android/exoplayer2/source/hls/p;

.field private v:[[I

.field private w:I

.field private x:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/upstream/b;Lv9/d;ZIZLg9/u1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->a:Lcom/google/android/exoplayer2/source/hls/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/k;->c:Lcom/google/android/exoplayer2/source/hls/f;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/k;->d:Lcom/google/android/exoplayer2/upstream/k0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/k;->e:Lcom/google/android/exoplayer2/drm/u;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/k;->f:Lcom/google/android/exoplayer2/drm/s$a;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/k;->g:Lcom/google/android/exoplayer2/upstream/z;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/k;->h:Lcom/google/android/exoplayer2/source/p$a;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/k;->i:Lcom/google/android/exoplayer2/upstream/b;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/k;->l:Lv9/d;

    .line 23
    .line 24
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    .line 25
    .line 26
    iput p12, p0, Lcom/google/android/exoplayer2/source/hls/k;->n:I

    .line 27
    .line 28
    iput-boolean p13, p0, Lcom/google/android/exoplayer2/source/hls/k;->o:Z

    .line 29
    .line 30
    iput-object p14, p0, Lcom/google/android/exoplayer2/source/hls/k;->p:Lg9/u1;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/b0;

    .line 34
    .line 35
    invoke-interface {p10, p2}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    .line 40
    .line 41
    new-instance p2, Ljava/util/IdentityHashMap;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    .line 47
    .line 48
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/q;

    .line 49
    .line 50
    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/hls/q;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    .line 54
    .line 55
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 58
    .line 59
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 62
    .line 63
    new-array p1, p1, [[I

    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->v:[[I

    .line 66
    .line 67
    return-void
.end method

.method private i(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 22

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    move v7, v6

    .line 38
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-ge v7, v8, :cond_5

    .line 43
    .line 44
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    .line 49
    .line 50
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-nez v9, :cond_0

    .line 57
    .line 58
    move-object/from16 v13, p0

    .line 59
    .line 60
    move-object/from16 v11, p4

    .line 61
    .line 62
    move-object/from16 v12, p5

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    move v10, v1

    .line 76
    move v9, v6

    .line 77
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v9, v11, :cond_3

    .line 82
    .line 83
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    .line 88
    .line 89
    iget-object v11, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 96
    .line 97
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v12, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v12, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/p1;

    .line 116
    .line 117
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object v11, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/p1;

    .line 121
    .line 122
    iget-object v11, v11, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-ne v11, v1, :cond_1

    .line 129
    .line 130
    move v11, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move v11, v6

    .line 133
    :goto_2
    and-int/2addr v10, v11

    .line 134
    :cond_2
    add-int/2addr v9, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v11, "audio:"

    .line 142
    .line 143
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    new-array v9, v6, [Landroid/net/Uri;

    .line 154
    .line 155
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/p0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    check-cast v9, [Landroid/net/Uri;

    .line 160
    .line 161
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    move-object v15, v9

    .line 166
    check-cast v15, [Landroid/net/Uri;

    .line 167
    .line 168
    new-array v9, v6, [Lcom/google/android/exoplayer2/p1;

    .line 169
    .line 170
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    move-object/from16 v16, v9

    .line 175
    .line 176
    check-cast v16, [Lcom/google/android/exoplayer2/p1;

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v18

    .line 184
    const/4 v14, 0x1

    .line 185
    move-object/from16 v12, p0

    .line 186
    .line 187
    move-object v13, v8

    .line 188
    move-object/from16 v19, p6

    .line 189
    .line 190
    move-wide/from16 v20, p1

    .line 191
    .line 192
    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-static {v4}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    move-object/from16 v12, p5

    .line 201
    .line 202
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-object/from16 v11, p4

    .line 206
    .line 207
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-object/from16 v13, p0

    .line 211
    .line 212
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    .line 213
    .line 214
    if-eqz v14, :cond_4

    .line 215
    .line 216
    if-eqz v10, :cond_4

    .line 217
    .line 218
    new-array v10, v6, [Lcom/google/android/exoplayer2/p1;

    .line 219
    .line 220
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    check-cast v10, [Lcom/google/android/exoplayer2/p1;

    .line 225
    .line 226
    new-instance v14, Lv9/w;

    .line 227
    .line 228
    invoke-direct {v14, v8, v10}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 229
    .line 230
    .line 231
    new-array v8, v1, [Lv9/w;

    .line 232
    .line 233
    aput-object v14, v8, v6

    .line 234
    .line 235
    new-array v10, v6, [I

    .line 236
    .line 237
    invoke-virtual {v9, v8, v6, v10}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lv9/w;I[I)V

    .line 238
    .line 239
    .line 240
    :cond_4
    :goto_3
    add-int/2addr v7, v1

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_5
    move-object/from16 v13, p0

    .line 244
    .line 245
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-array v3, v2, [I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    move v7, v6

    .line 16
    :goto_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    const/4 v9, 0x2

    .line 23
    if-ge v5, v8, :cond_3

    .line 24
    .line 25
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    .line 32
    .line 33
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->b:Lcom/google/android/exoplayer2/p1;

    .line 34
    .line 35
    iget v10, v8, Lcom/google/android/exoplayer2/p1;->r:I

    .line 36
    .line 37
    if-gtz v10, :cond_2

    .line 38
    .line 39
    iget-object v10, v8, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    if-eqz v10, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v8, v8, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    if-eqz v8, :cond_1

    .line 55
    .line 56
    aput v1, v3, v5

    .line 57
    .line 58
    add-int/2addr v7, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    const/4 v8, -0x1

    .line 61
    aput v8, v3, v5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    aput v9, v3, v5

    .line 65
    .line 66
    add-int/2addr v6, v1

    .line 67
    :goto_2
    add-int/2addr v5, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-lez v6, :cond_4

    .line 70
    .line 71
    move v5, v1

    .line 72
    move v2, v6

    .line 73
    move v6, v4

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    if-ge v7, v2, :cond_5

    .line 76
    .line 77
    sub-int/2addr v2, v7

    .line 78
    move v6, v1

    .line 79
    move v5, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    move v5, v4

    .line 82
    move v6, v5

    .line 83
    :goto_3
    new-array v13, v2, [Landroid/net/Uri;

    .line 84
    .line 85
    new-array v7, v2, [Lcom/google/android/exoplayer2/p1;

    .line 86
    .line 87
    new-array v8, v2, [I

    .line 88
    .line 89
    move v10, v4

    .line 90
    move v11, v10

    .line 91
    :goto_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-ge v10, v12, :cond_9

    .line 98
    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    aget v12, v3, v10

    .line 102
    .line 103
    if-ne v12, v9, :cond_8

    .line 104
    .line 105
    :cond_6
    if-eqz v6, :cond_7

    .line 106
    .line 107
    aget v12, v3, v10

    .line 108
    .line 109
    if-eq v12, v1, :cond_8

    .line 110
    .line 111
    :cond_7
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    .line 118
    .line 119
    iget-object v14, v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    .line 120
    .line 121
    aput-object v14, v13, v11

    .line 122
    .line 123
    iget-object v12, v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->b:Lcom/google/android/exoplayer2/p1;

    .line 124
    .line 125
    aput-object v12, v7, v11

    .line 126
    .line 127
    add-int/lit8 v12, v11, 0x1

    .line 128
    .line 129
    aput v10, v8, v11

    .line 130
    .line 131
    move v11, v12

    .line 132
    :cond_8
    add-int/2addr v10, v1

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    aget-object v3, v7, v4

    .line 135
    .line 136
    iget-object v3, v3, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eq v3, v1, :cond_a

    .line 147
    .line 148
    if-nez v3, :cond_b

    .line 149
    .line 150
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_b

    .line 157
    .line 158
    :cond_a
    if-gt v6, v1, :cond_b

    .line 159
    .line 160
    add-int v9, v3, v6

    .line 161
    .line 162
    if-lez v9, :cond_b

    .line 163
    .line 164
    move v9, v1

    .line 165
    goto :goto_5

    .line 166
    :cond_b
    move v9, v4

    .line 167
    :goto_5
    if-nez v5, :cond_c

    .line 168
    .line 169
    if-lez v3, :cond_c

    .line 170
    .line 171
    move v12, v1

    .line 172
    goto :goto_6

    .line 173
    :cond_c
    move v12, v4

    .line 174
    :goto_6
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/p1;

    .line 175
    .line 176
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->k:Ljava/util/List;

    .line 177
    .line 178
    const-string v14, "main"

    .line 179
    .line 180
    move-object/from16 v10, p0

    .line 181
    .line 182
    move-object v11, v14

    .line 183
    move-object v4, v14

    .line 184
    move-object v14, v7

    .line 185
    move-object/from16 v16, v5

    .line 186
    .line 187
    move-object/from16 v17, p6

    .line 188
    .line 189
    move-wide/from16 v18, p2

    .line 190
    .line 191
    invoke-direct/range {v10 .. v19}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    move-object/from16 v10, p4

    .line 196
    .line 197
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-object/from16 v10, p5

    .line 201
    .line 202
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-object/from16 v8, p0

    .line 206
    .line 207
    iget-boolean v10, v8, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    .line 208
    .line 209
    if-eqz v10, :cond_13

    .line 210
    .line 211
    if-eqz v9, :cond_13

    .line 212
    .line 213
    new-instance v9, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    if-lez v6, :cond_10

    .line 219
    .line 220
    new-array v6, v2, [Lcom/google/android/exoplayer2/p1;

    .line 221
    .line 222
    const/4 v10, 0x0

    .line 223
    :goto_7
    if-ge v10, v2, :cond_d

    .line 224
    .line 225
    aget-object v11, v7, v10

    .line 226
    .line 227
    invoke-static {v11}, Lcom/google/android/exoplayer2/source/hls/k;->o(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    aput-object v11, v6, v10

    .line 232
    .line 233
    add-int/2addr v10, v1

    .line 234
    goto :goto_7

    .line 235
    :cond_d
    new-instance v2, Lv9/w;

    .line 236
    .line 237
    invoke-direct {v2, v4, v6}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    if-lez v3, :cond_f

    .line 244
    .line 245
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/p1;

    .line 246
    .line 247
    if-nez v2, :cond_e

    .line 248
    .line 249
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_f

    .line 256
    .line 257
    :cond_e
    new-instance v2, Lv9/w;

    .line 258
    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v6, ":audio"

    .line 268
    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const/4 v6, 0x0

    .line 277
    aget-object v7, v7, v6

    .line 278
    .line 279
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/p1;

    .line 280
    .line 281
    invoke-static {v7, v10, v6}, Lcom/google/android/exoplayer2/source/hls/k;->m(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    new-array v10, v1, [Lcom/google/android/exoplayer2/p1;

    .line 286
    .line 287
    aput-object v7, v10, v6

    .line 288
    .line 289
    invoke-direct {v2, v3, v10}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_f
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->k:Ljava/util/List;

    .line 296
    .line 297
    if-eqz v0, :cond_12

    .line 298
    .line 299
    const/4 v6, 0x0

    .line 300
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ge v6, v2, :cond_12

    .line 305
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v3, ":cc:"

    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    new-instance v3, Lv9/w;

    .line 327
    .line 328
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    check-cast v7, Lcom/google/android/exoplayer2/p1;

    .line 333
    .line 334
    new-array v10, v1, [Lcom/google/android/exoplayer2/p1;

    .line 335
    .line 336
    const/4 v11, 0x0

    .line 337
    aput-object v7, v10, v11

    .line 338
    .line 339
    invoke-direct {v3, v2, v10}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    add-int/2addr v6, v1

    .line 346
    goto :goto_8

    .line 347
    :cond_10
    new-array v3, v2, [Lcom/google/android/exoplayer2/p1;

    .line 348
    .line 349
    const/4 v6, 0x0

    .line 350
    :goto_9
    if-ge v6, v2, :cond_11

    .line 351
    .line 352
    aget-object v10, v7, v6

    .line 353
    .line 354
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/p1;

    .line 355
    .line 356
    invoke-static {v10, v11, v1}, Lcom/google/android/exoplayer2/source/hls/k;->m(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    aput-object v10, v3, v6

    .line 361
    .line 362
    add-int/2addr v6, v1

    .line 363
    goto :goto_9

    .line 364
    :cond_11
    new-instance v0, Lv9/w;

    .line 365
    .line 366
    invoke-direct {v0, v4, v3}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    :cond_12
    new-instance v0, Lv9/w;

    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v3, ":id3"

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    new-instance v3, Lcom/google/android/exoplayer2/p1$b;

    .line 392
    .line 393
    invoke-direct {v3}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v4, "ID3"

    .line 397
    .line 398
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    const-string v4, "application/id3"

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    new-array v1, v1, [Lcom/google/android/exoplayer2/p1;

    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    aput-object v3, v1, v4

    .line 416
    .line 417
    invoke-direct {v0, v2, v1}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    new-array v1, v4, [Lv9/w;

    .line 424
    .line 425
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    check-cast v1, [Lv9/w;

    .line 430
    .line 431
    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    filled-new-array {v0}, [I

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v5, v1, v4, v0}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lv9/w;I[I)V

    .line 440
    .line 441
    .line 442
    :cond_13
    return-void
.end method

.method private k(J)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/4 v11, 0x0

    .line 4
    const/4 v12, 0x1

    .line 5
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()Lcom/google/android/exoplayer2/source/hls/playlist/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    .line 17
    .line 18
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->o:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->m:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/k;->n(Ljava/util/List;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    move-object v13, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    .line 42
    .line 43
    iget-object v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->h:Ljava/util/List;

    .line 44
    .line 45
    iput v11, v10, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    .line 46
    .line 47
    new-instance v15, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v8, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    move-wide/from16 v2, p1

    .line 62
    .line 63
    move-object v4, v15

    .line 64
    move-object v5, v8

    .line 65
    move-object v6, v13

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/k;->j(Lcom/google/android/exoplayer2/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    move-object/from16 v0, p0

    .line 70
    .line 71
    move-wide/from16 v1, p1

    .line 72
    .line 73
    move-object v3, v7

    .line 74
    move-object v4, v15

    .line 75
    move-object v5, v8

    .line 76
    move-object v6, v13

    .line 77
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/k;->i(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->w:I

    .line 85
    .line 86
    move v9, v11

    .line 87
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ge v9, v0, :cond_2

    .line 92
    .line 93
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v7, v0

    .line 98
    check-cast v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "subtitle:"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ":"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    .line 128
    .line 129
    new-array v3, v12, [Landroid/net/Uri;

    .line 130
    .line 131
    aput-object v0, v3, v11

    .line 132
    .line 133
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/p1;

    .line 134
    .line 135
    new-array v4, v12, [Lcom/google/android/exoplayer2/p1;

    .line 136
    .line 137
    aput-object v0, v4, v11

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    const/4 v2, 0x3

    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-object v1, v6

    .line 148
    move-object/from16 v17, v6

    .line 149
    .line 150
    move-object/from16 v6, v16

    .line 151
    .line 152
    move-object v11, v7

    .line 153
    move-object v7, v13

    .line 154
    move-object v12, v8

    .line 155
    move/from16 v18, v9

    .line 156
    .line 157
    move-wide/from16 v8, p1

    .line 158
    .line 159
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    filled-new-array/range {v18 .. v18}, [I

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    new-instance v1, Lv9/w;

    .line 174
    .line 175
    iget-object v2, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/p1;

    .line 176
    .line 177
    const/4 v3, 0x1

    .line 178
    new-array v4, v3, [Lcom/google/android/exoplayer2/p1;

    .line 179
    .line 180
    const/4 v5, 0x0

    .line 181
    aput-object v2, v4, v5

    .line 182
    .line 183
    move-object/from16 v2, v17

    .line 184
    .line 185
    invoke-direct {v1, v2, v4}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 186
    .line 187
    .line 188
    new-array v2, v3, [Lv9/w;

    .line 189
    .line 190
    aput-object v1, v2, v5

    .line 191
    .line 192
    new-array v1, v5, [I

    .line 193
    .line 194
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lv9/w;I[I)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v9, v18, 0x1

    .line 198
    .line 199
    move v11, v5

    .line 200
    move-object v8, v12

    .line 201
    move v12, v3

    .line 202
    goto :goto_2

    .line 203
    :cond_2
    move-object v12, v8

    .line 204
    move v5, v11

    .line 205
    new-array v0, v5, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 206
    .line 207
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 212
    .line 213
    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 214
    .line 215
    new-array v0, v5, [[I

    .line 216
    .line 217
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, [[I

    .line 222
    .line 223
    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->v:[[I

    .line 224
    .line 225
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 226
    .line 227
    array-length v0, v0

    .line 228
    iput v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    .line 229
    .line 230
    move v0, v5

    .line 231
    :goto_3
    iget v1, v10, Lcom/google/android/exoplayer2/source/hls/k;->w:I

    .line 232
    .line 233
    if-ge v0, v1, :cond_3

    .line 234
    .line 235
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 236
    .line 237
    aget-object v1, v1, v0

    .line 238
    .line 239
    const/4 v2, 0x1

    .line 240
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    .line 241
    .line 242
    .line 243
    add-int/2addr v0, v2

    .line 244
    goto :goto_3

    .line 245
    :cond_3
    const/4 v2, 0x1

    .line 246
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 247
    .line 248
    array-length v1, v0

    .line 249
    move v11, v5

    .line 250
    :goto_4
    if-ge v11, v1, :cond_4

    .line 251
    .line 252
    aget-object v3, v0, v11

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->o()V

    .line 255
    .line 256
    .line 257
    add-int/2addr v11, v2

    .line 258
    goto :goto_4

    .line 259
    :cond_4
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 260
    .line 261
    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 262
    .line 263
    return-void
.end method

.method private l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/e;

    .line 4
    .line 5
    iget-object v1, v15, Lcom/google/android/exoplayer2/source/hls/k;->a:Lcom/google/android/exoplayer2/source/hls/g;

    .line 6
    .line 7
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    iget-object v5, v15, Lcom/google/android/exoplayer2/source/hls/k;->c:Lcom/google/android/exoplayer2/source/hls/f;

    .line 10
    .line 11
    iget-object v6, v15, Lcom/google/android/exoplayer2/source/hls/k;->d:Lcom/google/android/exoplayer2/upstream/k0;

    .line 12
    .line 13
    iget-object v7, v15, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    .line 14
    .line 15
    iget-object v9, v15, Lcom/google/android/exoplayer2/source/hls/k;->p:Lg9/u1;

    .line 16
    .line 17
    move-object v0, v10

    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v8, p6

    .line 23
    .line 24
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/e;-><init>(Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/source/hls/q;Ljava/util/List;Lg9/u1;)V

    .line 25
    .line 26
    .line 27
    new-instance v16, Lcom/google/android/exoplayer2/source/hls/p;

    .line 28
    .line 29
    iget-object v6, v15, Lcom/google/android/exoplayer2/source/hls/k;->i:Lcom/google/android/exoplayer2/upstream/b;

    .line 30
    .line 31
    iget-object v11, v15, Lcom/google/android/exoplayer2/source/hls/k;->e:Lcom/google/android/exoplayer2/drm/u;

    .line 32
    .line 33
    iget-object v12, v15, Lcom/google/android/exoplayer2/source/hls/k;->f:Lcom/google/android/exoplayer2/drm/s$a;

    .line 34
    .line 35
    iget-object v13, v15, Lcom/google/android/exoplayer2/source/hls/k;->g:Lcom/google/android/exoplayer2/upstream/z;

    .line 36
    .line 37
    iget-object v14, v15, Lcom/google/android/exoplayer2/source/hls/k;->h:Lcom/google/android/exoplayer2/source/p$a;

    .line 38
    .line 39
    iget v9, v15, Lcom/google/android/exoplayer2/source/hls/k;->n:I

    .line 40
    .line 41
    move-object/from16 v0, v16

    .line 42
    .line 43
    move-object/from16 v1, p1

    .line 44
    .line 45
    move/from16 v2, p2

    .line 46
    .line 47
    move-object/from16 v3, p0

    .line 48
    .line 49
    move-object v4, v10

    .line 50
    move-object/from16 v5, p7

    .line 51
    .line 52
    move-wide/from16 v7, p8

    .line 53
    .line 54
    move/from16 v17, v9

    .line 55
    .line 56
    move-object/from16 v9, p5

    .line 57
    .line 58
    move-object v10, v11

    .line 59
    move-object v11, v12

    .line 60
    move-object v12, v13

    .line 61
    move-object v13, v14

    .line 62
    move/from16 v14, v17

    .line 63
    .line 64
    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/hls/p;-><init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/p$b;Lcom/google/android/exoplayer2/source/hls/e;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;I)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method private static m(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p1, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    .line 8
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->y:I

    .line 9
    .line 10
    iget v4, p1, Lcom/google/android/exoplayer2/p1;->d:I

    .line 11
    .line 12
    iget v5, p1, Lcom/google/android/exoplayer2/p1;->e:I

    .line 13
    .line 14
    iget-object v6, p1, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 31
    .line 32
    iget v4, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 33
    .line 34
    iget v5, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 35
    .line 36
    iget-object v6, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    move v3, v0

    .line 44
    move v5, v4

    .line 45
    move-object p1, v6

    .line 46
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget v8, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v8, v0

    .line 56
    :goto_1
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 59
    .line 60
    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/p1$b;

    .line 61
    .line 62
    invoke-direct {p2}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v9, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, v9}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/p1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method private static n(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    move v5, v2

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ge v5, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 40
    .line 41
    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->merge(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v1
.end method

.method private static o(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/exoplayer2/p1$b;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget p0, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

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
    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->N(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    and-int/2addr v2, v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 21
    .line 22
    .line 23
    return v2
.end method

.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->E()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->b(JLcom/google/android/exoplayer2/d3;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-wide p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->O()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public continueLoading(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lv9/y;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 6
    .line 7
    array-length p2, p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p2, :cond_0

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/p;->o()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public d(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

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
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->discardBuffer(JZ)V

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
    .locals 21

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
    if-ge v6, v7, :cond_3

    .line 16
    .line 17
    aget-object v7, v2, v6

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    move v7, v8

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    :goto_1
    aput v7, v3, v6

    .line 37
    .line 38
    aput v8, v4, v6

    .line 39
    .line 40
    aget-object v7, v1, v6

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-interface {v7}, Lna/v;->getTrackGroup()Lv9/w;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_2
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 50
    .line 51
    array-length v11, v10

    .line 52
    if-ge v9, v11, :cond_2

    .line 53
    .line 54
    aget-object v10, v10, v9

    .line 55
    .line 56
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lv9/y;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v10, v7}, Lv9/y;->c(Lv9/w;)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eq v10, v8, :cond_1

    .line 65
    .line 66
    aput v9, v4, v6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    array-length v6, v1

    .line 81
    new-array v7, v6, [Lv9/s;

    .line 82
    .line 83
    array-length v8, v1

    .line 84
    new-array v8, v8, [Lv9/s;

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    new-array v14, v9, [Lna/s;

    .line 88
    .line 89
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 90
    .line 91
    array-length v9, v9

    .line 92
    new-array v15, v9, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    :goto_4
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 99
    .line 100
    array-length v9, v9

    .line 101
    if-ge v13, v9, :cond_10

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_5
    array-length v10, v1

    .line 105
    if-ge v9, v10, :cond_6

    .line 106
    .line 107
    aget v10, v3, v9

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    if-ne v10, v13, :cond_4

    .line 111
    .line 112
    aget-object v10, v2, v9

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_4
    move-object v10, v11

    .line 116
    :goto_6
    aput-object v10, v8, v9

    .line 117
    .line 118
    aget v10, v4, v9

    .line 119
    .line 120
    if-ne v10, v13, :cond_5

    .line 121
    .line 122
    aget-object v11, v1, v9

    .line 123
    .line 124
    :cond_5
    aput-object v11, v14, v9

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 130
    .line 131
    aget-object v11, v9, v13

    .line 132
    .line 133
    move-object v9, v11

    .line 134
    move-object v10, v14

    .line 135
    move-object v5, v11

    .line 136
    move-object/from16 v11, p2

    .line 137
    .line 138
    move v2, v12

    .line 139
    move-object v12, v8

    .line 140
    move/from16 v18, v6

    .line 141
    .line 142
    move v6, v13

    .line 143
    move-object/from16 v13, p4

    .line 144
    .line 145
    move-object/from16 v19, v14

    .line 146
    .line 147
    move-object/from16 v20, v15

    .line 148
    .line 149
    move-wide/from16 v14, p5

    .line 150
    .line 151
    move/from16 v16, v17

    .line 152
    .line 153
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/exoplayer2/source/hls/p;->W([Lna/s;[Z[Lv9/s;[ZJZ)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_7
    array-length v12, v1

    .line 160
    const/4 v13, 0x1

    .line 161
    if-ge v10, v12, :cond_a

    .line 162
    .line 163
    aget-object v12, v8, v10

    .line 164
    .line 165
    aget v14, v4, v10

    .line 166
    .line 167
    if-ne v14, v6, :cond_7

    .line 168
    .line 169
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    aput-object v12, v7, v10

    .line 173
    .line 174
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move v11, v13

    .line 184
    goto :goto_9

    .line 185
    :cond_7
    aget v14, v3, v10

    .line 186
    .line 187
    if-ne v14, v6, :cond_9

    .line 188
    .line 189
    if-nez v12, :cond_8

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_8
    const/4 v13, 0x0

    .line 193
    :goto_8
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move-object/from16 v10, v20

    .line 200
    .line 201
    if-eqz v11, :cond_e

    .line 202
    .line 203
    aput-object v5, v10, v2

    .line 204
    .line 205
    add-int/lit8 v12, v2, 0x1

    .line 206
    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    .line 210
    .line 211
    .line 212
    if-nez v9, :cond_b

    .line 213
    .line 214
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 215
    .line 216
    array-length v9, v2

    .line 217
    if-eqz v9, :cond_b

    .line 218
    .line 219
    const/4 v9, 0x0

    .line 220
    aget-object v2, v2, v9

    .line 221
    .line 222
    if-eq v5, v2, :cond_f

    .line 223
    .line 224
    :cond_b
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/q;->b()V

    .line 227
    .line 228
    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_c
    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->w:I

    .line 233
    .line 234
    if-ge v6, v2, :cond_d

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_d
    const/4 v13, 0x0

    .line 238
    :goto_a
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_e
    move v12, v2

    .line 243
    :cond_f
    :goto_b
    add-int/lit8 v13, v6, 0x1

    .line 244
    .line 245
    move-object/from16 v2, p3

    .line 246
    .line 247
    move-object v15, v10

    .line 248
    move/from16 v6, v18

    .line 249
    .line 250
    move-object/from16 v14, v19

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_10
    move-object v10, v15

    .line 255
    const/4 v5, 0x0

    .line 256
    invoke-static {v7, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    invoke-static {v10, v12}, Lcom/google/android/exoplayer2/util/p0;->G0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, [Lcom/google/android/exoplayer2/source/hls/p;

    .line 264
    .line 265
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 266
    .line 267
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->l:Lv9/d;

    .line 268
    .line 269
    invoke-interface {v2, v1}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    .line 274
    .line 275
    return-wide p5
.end method

.method public f(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/k;->k(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/p;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/k;->p(Lcom/google/android/exoplayer2/source/hls/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lv9/y;

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

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->maybeThrowPrepareError()V

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

.method public onPrepared()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    aget-object v5, v0, v3

    .line 19
    .line 20
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lv9/y;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget v5, v5, Lv9/y;->a:I

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-array v0, v4, [Lv9/w;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 33
    .line 34
    array-length v3, v1

    .line 35
    move v4, v2

    .line 36
    move v5, v4

    .line 37
    :goto_1
    if-ge v4, v3, :cond_3

    .line 38
    .line 39
    aget-object v6, v1, v4

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lv9/y;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget v7, v7, Lv9/y;->a:I

    .line 46
    .line 47
    move v8, v2

    .line 48
    :goto_2
    if-ge v8, v7, :cond_2

    .line 49
    .line 50
    add-int/lit8 v9, v5, 0x1

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lv9/y;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-virtual {v10, v8}, Lv9/y;->b(I)Lv9/w;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    aput-object v10, v0, v5

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    move v5, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    new-instance v1, Lv9/y;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lv9/y;-><init>([Lv9/w;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lv9/y;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 77
    .line 78
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->S()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    .line 22
    .line 23
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/q;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-wide p1
.end method
