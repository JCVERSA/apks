.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lcom/google/android/exoplayer2/source/a;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private final h:Z

.field private final i:Landroid/net/Uri;

.field private final j:Lcom/google/android/exoplayer2/w1$h;

.field private final k:Lcom/google/android/exoplayer2/w1;

.field private final l:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final n:Lv9/d;

.field private final o:Lcom/google/android/exoplayer2/drm/u;

.field private final p:Lcom/google/android/exoplayer2/upstream/z;

.field private final q:J

.field private final r:Lcom/google/android/exoplayer2/source/p$a;

.field private final s:Lcom/google/android/exoplayer2/upstream/b0$a;

.field private final t:Ljava/util/ArrayList;

.field private u:Lcom/google/android/exoplayer2/upstream/k;

.field private v:Lcom/google/android/exoplayer2/upstream/Loader;

.field private w:Lcom/google/android/exoplayer2/upstream/a0;

.field private x:Lcom/google/android/exoplayer2/upstream/k0;

.field private y:J

.field private z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.smoothstreaming"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/n1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;J)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lcom/google/android/exoplayer2/w1;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/w1$h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Lcom/google/android/exoplayer2/w1$h;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 7
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1$h;->a:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object p1, v3

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/w1$h;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->B(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Landroid/net/Uri;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 12
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lv9/d;

    .line 13
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lcom/google/android/exoplayer2/drm/u;

    .line 14
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 15
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:J

    .line 16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lcom/google/android/exoplayer2/source/p$a;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 17
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;J)V

    return-void
.end method

.method public static synthetic E(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private I()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    const-wide v4, 0x7fffffffffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide/high16 v6, -0x8000000000000000L

    .line 40
    .line 41
    move v8, v1

    .line 42
    move-wide v14, v4

    .line 43
    :goto_1
    if-ge v8, v3, :cond_2

    .line 44
    .line 45
    aget-object v9, v2, v8

    .line 46
    .line 47
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    .line 48
    .line 49
    if-lez v10, :cond_1

    .line 50
    .line 51
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->e(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    .line 60
    .line 61
    add-int/lit8 v10, v10, -0x1

    .line 62
    .line 63
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->e(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    iget v12, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    .line 68
    .line 69
    add-int/lit8 v12, v12, -0x1

    .line 70
    .line 71
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->c(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    add-long/2addr v10, v12

    .line 76
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    cmp-long v1, v14, v4

    .line 84
    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 95
    .line 96
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    move-wide v7, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-wide v7, v2

    .line 103
    :goto_2
    new-instance v1, Lv9/u;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 106
    .line 107
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    .line 108
    .line 109
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lcom/google/android/exoplayer2/w1;

    .line 110
    .line 111
    const-wide/16 v9, 0x0

    .line 112
    .line 113
    const-wide/16 v11, 0x0

    .line 114
    .line 115
    const-wide/16 v13, 0x0

    .line 116
    .line 117
    const/4 v15, 0x1

    .line 118
    move-object v6, v1

    .line 119
    move/from16 v16, v3

    .line 120
    .line 121
    move/from16 v17, v3

    .line 122
    .line 123
    move-object/from16 v18, v2

    .line 124
    .line 125
    move-object/from16 v19, v4

    .line 126
    .line 127
    invoke-direct/range {v6 .. v19}, Lv9/u;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/w1;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 133
    .line 134
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    .line 135
    .line 136
    if-eqz v8, :cond_7

    .line 137
    .line 138
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    .line 139
    .line 140
    cmp-long v1, v8, v4

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    cmp-long v1, v8, v2

    .line 145
    .line 146
    if-lez v1, :cond_5

    .line 147
    .line 148
    sub-long v1, v6, v8

    .line 149
    .line 150
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v14

    .line 154
    :cond_5
    move-wide/from16 v21, v14

    .line 155
    .line 156
    sub-long v19, v6, v21

    .line 157
    .line 158
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:J

    .line 159
    .line 160
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    sub-long v1, v19, v1

    .line 165
    .line 166
    const-wide/32 v3, 0x4c4b40

    .line 167
    .line 168
    .line 169
    cmp-long v5, v1, v3

    .line 170
    .line 171
    if-gez v5, :cond_6

    .line 172
    .line 173
    const-wide/16 v1, 0x2

    .line 174
    .line 175
    div-long v1, v19, v1

    .line 176
    .line 177
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    :cond_6
    move-wide/from16 v23, v1

    .line 182
    .line 183
    new-instance v1, Lv9/u;

    .line 184
    .line 185
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 186
    .line 187
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lcom/google/android/exoplayer2/w1;

    .line 188
    .line 189
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    const/16 v25, 0x1

    .line 195
    .line 196
    const/16 v26, 0x1

    .line 197
    .line 198
    const/16 v27, 0x1

    .line 199
    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    move-object/from16 v28, v2

    .line 203
    .line 204
    move-object/from16 v29, v3

    .line 205
    .line 206
    invoke-direct/range {v16 .. v29}, Lv9/u;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/w1;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_7
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    .line 211
    .line 212
    cmp-long v3, v1, v4

    .line 213
    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    move-wide v12, v1

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    sub-long/2addr v6, v14

    .line 219
    move-wide v12, v6

    .line 220
    :goto_3
    new-instance v1, Lv9/u;

    .line 221
    .line 222
    add-long v10, v14, v12

    .line 223
    .line 224
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 225
    .line 226
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lcom/google/android/exoplayer2/w1;

    .line 227
    .line 228
    const-wide/16 v16, 0x0

    .line 229
    .line 230
    const/16 v18, 0x1

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    move-object v9, v1

    .line 237
    move-object/from16 v21, v2

    .line 238
    .line 239
    move-object/from16 v22, v3

    .line 240
    .line 241
    invoke-direct/range {v9 .. v22}, Lv9/u;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/w1;)V

    .line 242
    .line 243
    .line 244
    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/l3;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1388

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v3, Lca/a;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lca/a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private K()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/b0;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/k;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Landroid/net/Uri;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->s:Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(Lcom/google/android/exoplayer2/upstream/k;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/b0$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 25
    .line 26
    iget v3, v0, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 27
    .line 28
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lcom/google/android/exoplayer2/source/p$a;

    .line 37
    .line 38
    new-instance v2, Lv9/h;

    .line 39
    .line 40
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 41
    .line 42
    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 43
    .line 44
    move-object v3, v2

    .line 45
    invoke-direct/range {v3 .. v8}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    .line 46
    .line 47
    .line 48
    iget v0, v0, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/source/p$a;->z(Lv9/h;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Lcom/google/android/exoplayer2/upstream/k0;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lcom/google/android/exoplayer2/drm/u;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->prepare()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lcom/google/android/exoplayer2/drm/u;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Lg9/u1;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/u;->b(Landroid/os/Looper;Lg9/u1;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/upstream/a0$a;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/a0$a;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lcom/google/android/exoplayer2/upstream/a0;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/k;

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    .line 45
    .line 46
    const-string v0, "SsMediaSource"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lcom/google/android/exoplayer2/upstream/a0;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method protected D()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/k;

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->k()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->v:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Landroid/os/Handler;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lcom/google/android/exoplayer2/drm/u;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/upstream/b0;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lv9/h;

    .line 5
    .line 6
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->d()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 31
    .line 32
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lcom/google/android/exoplayer2/source/p$a;

    .line 38
    .line 39
    iget v1, v1, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v1}, Lcom/google/android/exoplayer2/source/p$a;->q(Lv9/h;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public G(Lcom/google/android/exoplayer2/upstream/b0;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lv9/h;

    .line 5
    .line 6
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->d()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 31
    .line 32
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lcom/google/android/exoplayer2/source/p$a;

    .line 38
    .line 39
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 40
    .line 41
    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplayer2/source/p$a;->t(Lv9/h;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->c()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 51
    .line 52
    sub-long v1, p2, p4

    .line 53
    .line 54
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:J

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public H(Lcom/google/android/exoplayer2/upstream/b0;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Lv9/h;

    .line 8
    .line 9
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->b()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b0;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lv9/i;

    .line 34
    .line 35
    iget v4, v1, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 36
    .line 37
    invoke-direct {v3, v4}, Lv9/i;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 41
    .line 42
    new-instance v5, Lcom/google/android/exoplayer2/upstream/z$c;

    .line 43
    .line 44
    move/from16 v6, p7

    .line 45
    .line 46
    invoke-direct {v5, v15, v3, v2, v6}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lv9/h;Lv9/i;Ljava/io/IOException;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v5, v3, v5

    .line 59
    .line 60
    if-nez v5, :cond_0

    .line 61
    .line 62
    sget-object v3, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    xor-int/lit8 v5, v4, 0x1

    .line 75
    .line 76
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->r:Lcom/google/android/exoplayer2/source/p$a;

    .line 77
    .line 78
    iget v7, v1, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    .line 79
    .line 80
    invoke-virtual {v6, v15, v7, v2, v5}, Lcom/google/android/exoplayer2/source/p$a;->x(Lv9/h;ILjava/io/IOException;Z)V

    .line 81
    .line 82
    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 86
    .line 87
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    .line 88
    .line 89
    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-object v3
.end method

.method public a()Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Lcom/google/android/exoplayer2/w1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Lcom/google/android/exoplayer2/upstream/k0;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lv9/d;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:Lcom/google/android/exoplayer2/drm/u;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/upstream/z;

    .line 22
    .line 23
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lcom/google/android/exoplayer2/upstream/a0;

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    move-object v10, p2

    .line 27
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/google/android/exoplayer2/upstream/k0;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/upstream/a0;Lcom/google/android/exoplayer2/upstream/b;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public i(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->t:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/upstream/b0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F(Lcom/google/android/exoplayer2/upstream/b0;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/upstream/b0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G(Lcom/google/android/exoplayer2/upstream/b0;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->w:Lcom/google/android/exoplayer2/upstream/a0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a0;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/upstream/b0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H(Lcom/google/android/exoplayer2/upstream/b0;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
