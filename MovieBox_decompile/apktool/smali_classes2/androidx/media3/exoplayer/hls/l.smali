.class final Landroidx/media3/exoplayer/hls/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/l$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/g;

.field private final b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final c:Landroidx/media3/exoplayer/hls/f;

.field private final d:Lw1/n;

.field private final e:Landroidx/media3/exoplayer/drm/t;

.field private final f:Landroidx/media3/exoplayer/drm/r$a;

.field private final g:Landroidx/media3/exoplayer/upstream/m;

.field private final h:Landroidx/media3/exoplayer/source/s$a;

.field private final i:Landroidx/media3/exoplayer/upstream/b;

.field private final j:Ljava/util/IdentityHashMap;

.field private final k:Landroidx/media3/exoplayer/hls/t;

.field private final l:Lf2/e;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Lx1/f4;

.field private final q:Landroidx/media3/exoplayer/hls/r$b;

.field private final r:J

.field private s:Landroidx/media3/exoplayer/source/q$a;

.field private t:I

.field private u:Lf2/z;

.field private v:[Landroidx/media3/exoplayer/hls/r;

.field private w:[Landroidx/media3/exoplayer/hls/r;

.field private x:[[I

.field private y:I

.field private z:Landroidx/media3/exoplayer/source/f0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/upstream/b;Lf2/e;ZIZLx1/f4;J)V
    .locals 4

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->c:Landroidx/media3/exoplayer/hls/f;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->d:Lw1/n;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->e:Landroidx/media3/exoplayer/drm/t;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->f:Landroidx/media3/exoplayer/drm/r$a;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->g:Landroidx/media3/exoplayer/upstream/m;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->h:Landroidx/media3/exoplayer/source/s$a;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->i:Landroidx/media3/exoplayer/upstream/b;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->l:Lf2/e;

    move/from16 v2, p12

    .line 12
    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/l;->m:Z

    move/from16 v2, p13

    .line 13
    iput v2, v0, Landroidx/media3/exoplayer/hls/l;->n:I

    move/from16 v2, p14

    .line 14
    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/l;->o:Z

    move-object/from16 v2, p15

    .line 15
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->p:Lx1/f4;

    move-wide/from16 v2, p16

    .line 16
    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/l;->r:J

    .line 17
    new-instance v2, Landroidx/media3/exoplayer/hls/l$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/hls/l$b;-><init>(Landroidx/media3/exoplayer/hls/l;Landroidx/media3/exoplayer/hls/l$a;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->q:Landroidx/media3/exoplayer/hls/r$b;

    .line 18
    invoke-interface {p11}, Lf2/e;->b()Landroidx/media3/exoplayer/source/f0;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 19
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

    .line 20
    new-instance v1, Landroidx/media3/exoplayer/hls/t;

    invoke-direct {v1}, Landroidx/media3/exoplayer/hls/t;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Landroidx/media3/exoplayer/hls/r;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 22
    new-array v2, v1, [Landroidx/media3/exoplayer/hls/r;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    .line 23
    new-array v1, v1, [[I

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->x:[[I

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/l;->t(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/hls/l;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/l;->t:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/hls/l;->t:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/hls/l;)[Landroidx/media3/exoplayer/hls/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/exoplayer/hls/l;Lf2/z;)Lf2/z;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/l;->u:Lf2/z;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Landroidx/media3/exoplayer/hls/l;)Landroidx/media3/exoplayer/source/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Landroidx/media3/exoplayer/hls/l;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method private m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
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
    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/d$a;

    .line 49
    .line 50
    iget-object v8, v8, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

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
    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/d$a;

    .line 88
    .line 89
    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/d$a;

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
    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    .line 116
    .line 117
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    .line 121
    .line 122
    iget-object v11, v11, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v11, v1}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

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
    invoke-static {v9}, Landroidx/media3/common/util/a1;->j([Ljava/lang/Object;)[Ljava/lang/Object;

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
    new-array v9, v6, [Landroidx/media3/common/r;

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
    check-cast v16, [Landroidx/media3/common/r;

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
    invoke-direct/range {v12 .. v21}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

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
    iget-boolean v14, v13, Landroidx/media3/exoplayer/hls/l;->m:Z

    .line 213
    .line 214
    if-eqz v14, :cond_4

    .line 215
    .line 216
    if-eqz v10, :cond_4

    .line 217
    .line 218
    new-array v10, v6, [Landroidx/media3/common/r;

    .line 219
    .line 220
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    check-cast v10, [Landroidx/media3/common/r;

    .line 225
    .line 226
    new-instance v14, Landroidx/media3/common/f0;

    .line 227
    .line 228
    invoke-direct {v14, v8, v10}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 229
    .line 230
    .line 231
    new-array v8, v1, [Landroidx/media3/common/f0;

    .line 232
    .line 233
    aput-object v14, v8, v6

    .line 234
    .line 235
    new-array v10, v6, [I

    .line 236
    .line 237
    invoke-virtual {v9, v8, v6, v10}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

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

.method private n(Landroidx/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const/4 v12, 0x1

    .line 6
    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    move v2, v13

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x2

    .line 25
    if-ge v2, v5, :cond_3

    .line 26
    .line 27
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/d$b;

    .line 34
    .line 35
    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    .line 36
    .line 37
    iget v7, v5, Landroidx/media3/common/r;->w:I

    .line 38
    .line 39
    if-gtz v7, :cond_2

    .line 40
    .line 41
    iget-object v7, v5, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v6}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v5, v5, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v5, v12}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    aput v12, v1, v2

    .line 59
    .line 60
    add-int/2addr v4, v12

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 v5, -0x1

    .line 63
    aput v5, v1, v2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    aput v6, v1, v2

    .line 67
    .line 68
    add-int/2addr v3, v12

    .line 69
    :goto_2
    add-int/2addr v2, v12

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-lez v3, :cond_4

    .line 72
    .line 73
    move v14, v3

    .line 74
    move v0, v12

    .line 75
    move v2, v13

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    if-ge v4, v0, :cond_5

    .line 78
    .line 79
    sub-int/2addr v0, v4

    .line 80
    move v14, v0

    .line 81
    move v2, v12

    .line 82
    move v0, v13

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v14, v0

    .line 85
    move v0, v13

    .line 86
    move v2, v0

    .line 87
    :goto_3
    new-array v3, v14, [Landroid/net/Uri;

    .line 88
    .line 89
    new-array v15, v14, [Landroidx/media3/common/r;

    .line 90
    .line 91
    new-array v8, v14, [I

    .line 92
    .line 93
    move v4, v13

    .line 94
    move v5, v4

    .line 95
    :goto_4
    iget-object v7, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-ge v4, v7, :cond_9

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    aget v7, v1, v4

    .line 106
    .line 107
    if-ne v7, v6, :cond_8

    .line 108
    .line 109
    :cond_6
    if-eqz v2, :cond_7

    .line 110
    .line 111
    aget v7, v1, v4

    .line 112
    .line 113
    if-eq v7, v12, :cond_8

    .line 114
    .line 115
    :cond_7
    iget-object v7, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/d$b;

    .line 122
    .line 123
    iget-object v9, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 124
    .line 125
    aput-object v9, v3, v5

    .line 126
    .line 127
    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    .line 128
    .line 129
    aput-object v7, v15, v5

    .line 130
    .line 131
    add-int/lit8 v7, v5, 0x1

    .line 132
    .line 133
    aput v4, v8, v5

    .line 134
    .line 135
    move v5, v7

    .line 136
    :cond_8
    add-int/2addr v4, v12

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    aget-object v1, v15, v13

    .line 139
    .line 140
    iget-object v1, v1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v1, v6}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    invoke-static {v1, v12}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eq v7, v12, :cond_a

    .line 151
    .line 152
    if-nez v7, :cond_b

    .line 153
    .line 154
    iget-object v1, v11, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    :cond_a
    if-gt v9, v12, :cond_b

    .line 163
    .line 164
    add-int v1, v7, v9

    .line 165
    .line 166
    if-lez v1, :cond_b

    .line 167
    .line 168
    move/from16 v16, v12

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_b
    move/from16 v16, v13

    .line 172
    .line 173
    :goto_5
    if-nez v0, :cond_c

    .line 174
    .line 175
    if-lez v7, :cond_c

    .line 176
    .line 177
    move v2, v12

    .line 178
    goto :goto_6

    .line 179
    :cond_c
    move v2, v13

    .line 180
    :goto_6
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    .line 181
    .line 182
    iget-object v6, v11, Landroidx/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    .line 183
    .line 184
    const-string v4, "main"

    .line 185
    .line 186
    move-object/from16 v0, p0

    .line 187
    .line 188
    move-object v1, v4

    .line 189
    move-object v13, v4

    .line 190
    move-object v4, v15

    .line 191
    move/from16 v17, v7

    .line 192
    .line 193
    move-object/from16 v7, p6

    .line 194
    .line 195
    move-object v12, v8

    .line 196
    move/from16 v18, v9

    .line 197
    .line 198
    move-wide/from16 v8, p2

    .line 199
    .line 200
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    move-object/from16 v1, p4

    .line 205
    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-object/from16 v1, p5

    .line 210
    .line 211
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-boolean v1, v10, Landroidx/media3/exoplayer/hls/l;->m:Z

    .line 215
    .line 216
    if-eqz v1, :cond_13

    .line 217
    .line 218
    if-eqz v16, :cond_13

    .line 219
    .line 220
    new-instance v1, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    if-lez v18, :cond_11

    .line 226
    .line 227
    new-array v2, v14, [Landroidx/media3/common/r;

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    :goto_7
    if-ge v3, v14, :cond_d

    .line 231
    .line 232
    aget-object v4, v15, v3

    .line 233
    .line 234
    invoke-static {v4}, Landroidx/media3/exoplayer/hls/l;->s(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    aput-object v4, v2, v3

    .line 239
    .line 240
    const/4 v4, 0x1

    .line 241
    add-int/2addr v3, v4

    .line 242
    goto :goto_7

    .line 243
    :cond_d
    new-instance v3, Landroidx/media3/common/f0;

    .line 244
    .line 245
    invoke-direct {v3, v13, v2}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    if-lez v17, :cond_f

    .line 252
    .line 253
    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    .line 254
    .line 255
    if-nez v2, :cond_e

    .line 256
    .line 257
    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_f

    .line 264
    .line 265
    :cond_e
    new-instance v2, Landroidx/media3/common/f0;

    .line 266
    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v4, ":audio"

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const/4 v4, 0x0

    .line 285
    aget-object v5, v15, v4

    .line 286
    .line 287
    iget-object v6, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    .line 288
    .line 289
    invoke-static {v5, v6, v4}, Landroidx/media3/exoplayer/hls/l;->q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const/4 v6, 0x1

    .line 294
    new-array v7, v6, [Landroidx/media3/common/r;

    .line 295
    .line 296
    aput-object v5, v7, v4

    .line 297
    .line 298
    invoke-direct {v2, v3, v7}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    :cond_f
    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    .line 305
    .line 306
    if-eqz v2, :cond_10

    .line 307
    .line 308
    const/4 v4, 0x0

    .line 309
    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-ge v4, v3, :cond_10

    .line 314
    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v5, ":cc:"

    .line 324
    .line 325
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    new-instance v5, Landroidx/media3/common/f0;

    .line 336
    .line 337
    iget-object v6, v10, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    .line 338
    .line 339
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    check-cast v7, Landroidx/media3/common/r;

    .line 344
    .line 345
    invoke-interface {v6, v7}, Landroidx/media3/exoplayer/hls/g;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    const/4 v7, 0x1

    .line 350
    new-array v8, v7, [Landroidx/media3/common/r;

    .line 351
    .line 352
    const/4 v9, 0x0

    .line 353
    aput-object v6, v8, v9

    .line 354
    .line 355
    invoke-direct {v5, v3, v8}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    add-int/2addr v4, v7

    .line 362
    goto :goto_8

    .line 363
    :cond_10
    const/4 v7, 0x1

    .line 364
    goto :goto_a

    .line 365
    :cond_11
    const/4 v7, 0x1

    .line 366
    new-array v2, v14, [Landroidx/media3/common/r;

    .line 367
    .line 368
    const/4 v4, 0x0

    .line 369
    :goto_9
    if-ge v4, v14, :cond_12

    .line 370
    .line 371
    aget-object v3, v15, v4

    .line 372
    .line 373
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    .line 374
    .line 375
    invoke-static {v3, v5, v7}, Landroidx/media3/exoplayer/hls/l;->q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    aput-object v3, v2, v4

    .line 380
    .line 381
    add-int/2addr v4, v7

    .line 382
    goto :goto_9

    .line 383
    :cond_12
    new-instance v3, Landroidx/media3/common/f0;

    .line 384
    .line 385
    invoke-direct {v3, v13, v2}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :goto_a
    new-instance v2, Landroidx/media3/common/f0;

    .line 392
    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v4, ":id3"

    .line 402
    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    new-instance v4, Landroidx/media3/common/r$b;

    .line 411
    .line 412
    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v5, "ID3"

    .line 416
    .line 417
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    const-string v5, "application/id3"

    .line 422
    .line 423
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    const/4 v5, 0x1

    .line 432
    new-array v5, v5, [Landroidx/media3/common/r;

    .line 433
    .line 434
    const/4 v6, 0x0

    .line 435
    aput-object v4, v5, v6

    .line 436
    .line 437
    invoke-direct {v2, v3, v5}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    new-array v3, v6, [Landroidx/media3/common/f0;

    .line 444
    .line 445
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    check-cast v3, [Landroidx/media3/common/f0;

    .line 450
    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    filled-new-array {v1}, [I

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v3, v6, v1}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

    .line 460
    .line 461
    .line 462
    :cond_13
    return-void
.end method

.method private o(J)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/4 v11, 0x0

    .line 4
    const/4 v12, 0x1

    .line 5
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c()Landroidx/media3/exoplayer/hls/playlist/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/d;

    .line 17
    .line 18
    iget-boolean v0, v10, Landroidx/media3/exoplayer/hls/l;->o:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/d;->m:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/l;->r(Ljava/util/List;)Ljava/util/Map;

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
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 42
    .line 43
    iget-object v14, v1, Landroidx/media3/exoplayer/hls/playlist/d;->h:Ljava/util/List;

    .line 44
    .line 45
    iput v11, v10, Landroidx/media3/exoplayer/hls/l;->t:I

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
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/l;->n(Landroidx/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

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
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/l;->m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, v10, Landroidx/media3/exoplayer/hls/l;->y:I

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
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/d$a;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "subtitle:"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ":"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    .line 127
    .line 128
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    .line 129
    .line 130
    new-array v3, v12, [Landroid/net/Uri;

    .line 131
    .line 132
    aput-object v0, v3, v11

    .line 133
    .line 134
    new-array v4, v12, [Landroidx/media3/common/r;

    .line 135
    .line 136
    aput-object v6, v4, v11

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v16

    .line 143
    const/4 v2, 0x3

    .line 144
    move-object/from16 v0, p0

    .line 145
    .line 146
    move-object v1, v7

    .line 147
    move-object v11, v6

    .line 148
    move-object/from16 v6, v16

    .line 149
    .line 150
    move-object/from16 v17, v7

    .line 151
    .line 152
    move-object v7, v13

    .line 153
    move-object v12, v8

    .line 154
    move/from16 v18, v9

    .line 155
    .line 156
    move-wide/from16 v8, p1

    .line 157
    .line 158
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    filled-new-array/range {v18 .. v18}, [I

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v1, Landroidx/media3/common/f0;

    .line 173
    .line 174
    iget-object v2, v10, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    .line 175
    .line 176
    invoke-interface {v2, v11}, Landroidx/media3/exoplayer/hls/g;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const/4 v3, 0x1

    .line 181
    new-array v4, v3, [Landroidx/media3/common/r;

    .line 182
    .line 183
    const/4 v5, 0x0

    .line 184
    aput-object v2, v4, v5

    .line 185
    .line 186
    move-object/from16 v2, v17

    .line 187
    .line 188
    invoke-direct {v1, v2, v4}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 189
    .line 190
    .line 191
    new-array v2, v3, [Landroidx/media3/common/f0;

    .line 192
    .line 193
    aput-object v1, v2, v5

    .line 194
    .line 195
    new-array v1, v5, [I

    .line 196
    .line 197
    invoke-virtual {v0, v2, v5, v1}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v9, v18, 0x1

    .line 201
    .line 202
    move v11, v5

    .line 203
    move-object v8, v12

    .line 204
    move v12, v3

    .line 205
    goto :goto_2

    .line 206
    :cond_2
    move-object v12, v8

    .line 207
    move v5, v11

    .line 208
    new-array v0, v5, [Landroidx/media3/exoplayer/hls/r;

    .line 209
    .line 210
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, [Landroidx/media3/exoplayer/hls/r;

    .line 215
    .line 216
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 217
    .line 218
    new-array v0, v5, [[I

    .line 219
    .line 220
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, [[I

    .line 225
    .line 226
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->x:[[I

    .line 227
    .line 228
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 229
    .line 230
    array-length v0, v0

    .line 231
    iput v0, v10, Landroidx/media3/exoplayer/hls/l;->t:I

    .line 232
    .line 233
    move v0, v5

    .line 234
    :goto_3
    iget v1, v10, Landroidx/media3/exoplayer/hls/l;->y:I

    .line 235
    .line 236
    if-ge v0, v1, :cond_3

    .line 237
    .line 238
    iget-object v1, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 239
    .line 240
    aget-object v1, v1, v0

    .line 241
    .line 242
    const/4 v2, 0x1

    .line 243
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

    .line 244
    .line 245
    .line 246
    add-int/2addr v0, v2

    .line 247
    goto :goto_3

    .line 248
    :cond_3
    const/4 v2, 0x1

    .line 249
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 250
    .line 251
    array-length v1, v0

    .line 252
    move v11, v5

    .line 253
    :goto_4
    if-ge v11, v1, :cond_4

    .line 254
    .line 255
    aget-object v3, v0, v11

    .line 256
    .line 257
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->r()V

    .line 258
    .line 259
    .line 260
    add-int/2addr v11, v2

    .line 261
    goto :goto_4

    .line 262
    :cond_4
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 263
    .line 264
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    .line 265
    .line 266
    return-void
.end method

.method private p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v14, Landroidx/media3/exoplayer/hls/e;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/l;->c:Landroidx/media3/exoplayer/hls/f;

    .line 10
    .line 11
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/l;->d:Lw1/n;

    .line 12
    .line 13
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    .line 14
    .line 15
    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/l;->r:J

    .line 16
    .line 17
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/l;->p:Lx1/f4;

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    move-object v1, v14

    .line 21
    move-object/from16 v4, p3

    .line 22
    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    move-object/from16 v11, p6

    .line 26
    .line 27
    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/hls/e;-><init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/hls/t;JLjava/util/List;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)V

    .line 28
    .line 29
    .line 30
    new-instance v16, Landroidx/media3/exoplayer/hls/r;

    .line 31
    .line 32
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/l;->q:Landroidx/media3/exoplayer/hls/r$b;

    .line 33
    .line 34
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/l;->i:Landroidx/media3/exoplayer/upstream/b;

    .line 35
    .line 36
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/l;->e:Landroidx/media3/exoplayer/drm/t;

    .line 37
    .line 38
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/l;->f:Landroidx/media3/exoplayer/drm/r$a;

    .line 39
    .line 40
    iget-object v13, v0, Landroidx/media3/exoplayer/hls/l;->g:Landroidx/media3/exoplayer/upstream/m;

    .line 41
    .line 42
    iget-object v15, v0, Landroidx/media3/exoplayer/hls/l;->h:Landroidx/media3/exoplayer/source/s$a;

    .line 43
    .line 44
    iget v10, v0, Landroidx/media3/exoplayer/hls/l;->n:I

    .line 45
    .line 46
    move-object/from16 v1, v16

    .line 47
    .line 48
    move-object/from16 v2, p1

    .line 49
    .line 50
    move/from16 v3, p2

    .line 51
    .line 52
    move-object v5, v14

    .line 53
    move-object/from16 v6, p7

    .line 54
    .line 55
    move-wide/from16 v8, p8

    .line 56
    .line 57
    move/from16 v17, v10

    .line 58
    .line 59
    move-object/from16 v10, p5

    .line 60
    .line 61
    move-object v14, v15

    .line 62
    move/from16 v15, v17

    .line 63
    .line 64
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/hls/r;-><init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/r$b;Landroidx/media3/exoplayer/hls/e;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/common/r;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;I)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method private static q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;
    .locals 12

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 11
    .line 12
    iget v3, p1, Landroidx/media3/common/r;->E:I

    .line 13
    .line 14
    iget v4, p1, Landroidx/media3/common/r;->e:I

    .line 15
    .line 16
    iget v5, p1, Landroidx/media3/common/r;->f:I

    .line 17
    .line 18
    iget-object v6, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/media3/common/r;->c:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {p1, v2}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v2, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget v3, p0, Landroidx/media3/common/r;->E:I

    .line 37
    .line 38
    iget v4, p0, Landroidx/media3/common/r;->e:I

    .line 39
    .line 40
    iget v5, p0, Landroidx/media3/common/r;->f:I

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v7, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    .line 47
    .line 48
    :goto_0
    move-object v11, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v11

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    move v3, v1

    .line 55
    move v5, v4

    .line 56
    move-object v7, v6

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget v9, p0, Landroidx/media3/common/r;->h:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v9, v1

    .line 68
    :goto_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget v1, p0, Landroidx/media3/common/r;->i:I

    .line 71
    .line 72
    :cond_3
    new-instance p2, Landroidx/media3/common/r$b;

    .line 73
    .line 74
    invoke-direct {p2}, Landroidx/media3/common/r$b;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v10, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p2, v10}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2, v7}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p0, p0, Landroidx/media3/common/r;->n:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v2}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0, v9}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0, v3}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v4}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v5}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0, v6}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method private static r(Ljava/util/List;)Ljava/util/Map;
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
    check-cast v3, Landroidx/media3/common/DrmInitData;

    .line 23
    .line 24
    iget-object v4, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

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
    check-cast v6, Landroidx/media3/common/DrmInitData;

    .line 40
    .line 41
    iget-object v7, v6, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

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
    invoke-virtual {v3, v6}, Landroidx/media3/common/DrmInitData;->merge(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

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

.method private static s(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroidx/media3/common/r$b;

    .line 13
    .line 14
    invoke-direct {v2}, Landroidx/media3/common/r$b;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Landroidx/media3/common/r;->n:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Landroidx/media3/common/r;->h:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Landroidx/media3/common/r;->i:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Landroidx/media3/common/r;->v:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Landroidx/media3/common/r;->w:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Landroidx/media3/common/r;->x:F

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v1, p0, Landroidx/media3/common/r;->e:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget p0, p0, Landroidx/media3/common/r;->f:I

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method private static synthetic t(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->getTrackGroups()Lf2/z;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lf2/z;->c()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->u:Lf2/z;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->r()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->H()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->b(JLandroidx/media3/exoplayer/c4;)J

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->T()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v4, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->S(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

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
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 21
    .line 22
    .line 23
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->discardBuffer(JZ)V

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

.method public e([Li2/z;[Z[Lf2/u;[ZJ)J
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
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

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
    invoke-interface {v7}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_2
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v10}, Landroidx/media3/exoplayer/hls/r;->getTrackGroups()Lf2/z;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v10, v7}, Lf2/z;->d(Landroidx/media3/common/f0;)I

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
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    array-length v6, v1

    .line 81
    new-array v7, v6, [Lf2/u;

    .line 82
    .line 83
    array-length v8, v1

    .line 84
    new-array v8, v8, [Lf2/u;

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    new-array v14, v9, [Li2/z;

    .line 88
    .line 89
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    .line 90
    .line 91
    array-length v9, v9

    .line 92
    new-array v15, v9, [Landroidx/media3/exoplayer/hls/r;

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
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual/range {v9 .. v16}, Landroidx/media3/exoplayer/hls/r;->b0([Li2/z;[Z[Lf2/u;[ZJZ)Z

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
    invoke-static {v12}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    aput-object v12, v7, v10

    .line 173
    .line 174
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

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
    invoke-static {v13}, Landroidx/media3/common/util/a;->g(Z)V

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
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

    .line 210
    .line 211
    .line 212
    if-nez v9, :cond_b

    .line 213
    .line 214
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

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
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    .line 225
    .line 226
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/t;->b()V

    .line 227
    .line 228
    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_c
    iget v2, v0, Landroidx/media3/exoplayer/hls/l;->y:I

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
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

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
    invoke-static {v10, v12}, Landroidx/media3/common/util/a1;->X0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, [Landroidx/media3/exoplayer/hls/r;

    .line 264
    .line 265
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->l:Lf2/e;

    .line 272
    .line 273
    new-instance v3, Landroidx/media3/exoplayer/hls/k;

    .line 274
    .line 275
    invoke-direct {v3}, Landroidx/media3/exoplayer/hls/k;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v3}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v2, v1, v3}, Lf2/e;->a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 287
    .line 288
    return-wide p5
.end method

.method public f(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/hls/l;->o(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->u:Lf2/z;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf2/z;

    .line 8
    .line 9
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->maybeThrowPrepareError()V

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/t;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-wide p1
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->m(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->X()V

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
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    .line 22
    .line 23
    return-void
.end method
