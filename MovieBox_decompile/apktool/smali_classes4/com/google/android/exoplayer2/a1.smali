.class final Lcom/google/android/exoplayer2/a1;
.super Lcom/google/android/exoplayer2/g;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a1$b;,
        Lcom/google/android/exoplayer2/a1$d;,
        Lcom/google/android/exoplayer2/a1$c;,
        Lcom/google/android/exoplayer2/a1$e;
    }
.end annotation


# instance fields
.field private final A:Lcom/google/android/exoplayer2/f;

.field private final B:Lcom/google/android/exoplayer2/g3;

.field private final C:Lcom/google/android/exoplayer2/r3;

.field private final D:Lcom/google/android/exoplayer2/s3;

.field private final E:J

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:Z

.field private K:I

.field private L:Lcom/google/android/exoplayer2/d3;

.field private M:Lv9/t;

.field private N:Z

.field private O:Lcom/google/android/exoplayer2/p2$b;

.field private P:Lcom/google/android/exoplayer2/b2;

.field private Q:Lcom/google/android/exoplayer2/b2;

.field private R:Lcom/google/android/exoplayer2/p1;

.field private S:Lcom/google/android/exoplayer2/p1;

.field private T:Landroid/media/AudioTrack;

.field private U:Ljava/lang/Object;

.field private V:Landroid/view/Surface;

.field private W:Landroid/view/SurfaceHolder;

.field private X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field private Y:Z

.field private Z:Landroid/view/TextureView;

.field private a0:I

.field final b:Lna/c0;

.field private b0:I

.field final c:Lcom/google/android/exoplayer2/p2$b;

.field private c0:I

.field private final d:Lcom/google/android/exoplayer2/util/h;

.field private d0:I

.field private final e:Landroid/content/Context;

.field private e0:Lcom/google/android/exoplayer2/decoder/e;

.field private final f:Lcom/google/android/exoplayer2/p2;

.field private f0:Lcom/google/android/exoplayer2/decoder/e;

.field private final g:[Lcom/google/android/exoplayer2/y2;

.field private g0:I

.field private final h:Lna/b0;

.field private h0:Lcom/google/android/exoplayer2/audio/e;

.field private final i:Lcom/google/android/exoplayer2/util/o;

.field private i0:F

.field private final j:Lcom/google/android/exoplayer2/m1$f;

.field private j0:Z

.field private final k:Lcom/google/android/exoplayer2/m1;

.field private k0:Lda/f;

.field private final l:Lcom/google/android/exoplayer2/util/r;

.field private l0:Z

.field private final m:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private m0:Z

.field private final n:Lcom/google/android/exoplayer2/l3$b;

.field private n0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final o:Ljava/util/List;

.field private o0:Z

.field private final p:Z

.field private p0:Z

.field private final q:Lcom/google/android/exoplayer2/source/o$a;

.field private q0:Lcom/google/android/exoplayer2/r;

.field private final r:Lg9/a;

.field private r0:Lcom/google/android/exoplayer2/video/y;

.field private final s:Landroid/os/Looper;

.field private s0:Lcom/google/android/exoplayer2/b2;

.field private final t:Lcom/google/android/exoplayer2/upstream/e;

.field private t0:Lcom/google/android/exoplayer2/m2;

.field private final u:J

.field private u0:I

.field private final v:J

.field private v0:I

.field private final w:Lcom/google/android/exoplayer2/util/e;

.field private w0:J

.field private final x:Lcom/google/android/exoplayer2/a1$c;

.field private final y:Lcom/google/android/exoplayer2/a1$d;

.field private final z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/n1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/t$b;Lcom/google/android/exoplayer2/p2;)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/g;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v7, Lcom/google/android/exoplayer2/util/h;

    .line 9
    .line 10
    invoke-direct {v7}, Lcom/google/android/exoplayer2/util/h;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v7, v1, Lcom/google/android/exoplayer2/a1;->d:Lcom/google/android/exoplayer2/util/h;

    .line 14
    .line 15
    :try_start_0
    const-string v8, "ExoPlayerImpl"

    .line 16
    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v10, "Init "

    .line 23
    .line 24
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v10, " ["

    .line 39
    .line 40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v10, "ExoPlayerLib/2.18.1"

    .line 44
    .line 45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v10, "] ["

    .line 49
    .line 50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object v10, Lcom/google/android/exoplayer2/util/p0;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v10, "]"

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v8, v0, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    iput-object v8, v1, Lcom/google/android/exoplayer2/a1;->e:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v9, v0, Lcom/google/android/exoplayer2/t$b;->i:Lcom/google/common/base/f;

    .line 79
    .line 80
    iget-object v10, v0, Lcom/google/android/exoplayer2/t$b;->b:Lcom/google/android/exoplayer2/util/e;

    .line 81
    .line 82
    invoke-interface {v9, v10}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lg9/a;

    .line 87
    .line 88
    iput-object v9, v1, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 89
    .line 90
    iget-object v10, v0, Lcom/google/android/exoplayer2/t$b;->k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 91
    .line 92
    iput-object v10, v1, Lcom/google/android/exoplayer2/a1;->n0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 93
    .line 94
    iget-object v10, v0, Lcom/google/android/exoplayer2/t$b;->l:Lcom/google/android/exoplayer2/audio/e;

    .line 95
    .line 96
    iput-object v10, v1, Lcom/google/android/exoplayer2/a1;->h0:Lcom/google/android/exoplayer2/audio/e;

    .line 97
    .line 98
    iget v10, v0, Lcom/google/android/exoplayer2/t$b;->q:I

    .line 99
    .line 100
    iput v10, v1, Lcom/google/android/exoplayer2/a1;->a0:I

    .line 101
    .line 102
    iget v10, v0, Lcom/google/android/exoplayer2/t$b;->r:I

    .line 103
    .line 104
    iput v10, v1, Lcom/google/android/exoplayer2/a1;->b0:I

    .line 105
    .line 106
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/t$b;->p:Z

    .line 107
    .line 108
    iput-boolean v10, v1, Lcom/google/android/exoplayer2/a1;->j0:Z

    .line 109
    .line 110
    iget-wide v10, v0, Lcom/google/android/exoplayer2/t$b;->y:J

    .line 111
    .line 112
    iput-wide v10, v1, Lcom/google/android/exoplayer2/a1;->E:J

    .line 113
    .line 114
    new-instance v11, Lcom/google/android/exoplayer2/a1$c;

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    invoke-direct {v11, v1, v10}, Lcom/google/android/exoplayer2/a1$c;-><init>(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/a1$a;)V

    .line 118
    .line 119
    .line 120
    iput-object v11, v1, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 121
    .line 122
    new-instance v15, Lcom/google/android/exoplayer2/a1$d;

    .line 123
    .line 124
    invoke-direct {v15, v10}, Lcom/google/android/exoplayer2/a1$d;-><init>(Lcom/google/android/exoplayer2/a1$a;)V

    .line 125
    .line 126
    .line 127
    iput-object v15, v1, Lcom/google/android/exoplayer2/a1;->y:Lcom/google/android/exoplayer2/a1$d;

    .line 128
    .line 129
    new-instance v14, Landroid/os/Handler;

    .line 130
    .line 131
    iget-object v12, v0, Lcom/google/android/exoplayer2/t$b;->j:Landroid/os/Looper;

    .line 132
    .line 133
    invoke-direct {v14, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    .line 135
    .line 136
    iget-object v12, v0, Lcom/google/android/exoplayer2/t$b;->d:Lcom/google/common/base/q;

    .line 137
    .line 138
    invoke-interface {v12}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    check-cast v12, Lcom/google/android/exoplayer2/c3;

    .line 143
    .line 144
    move-object v13, v14

    .line 145
    move-object v3, v14

    .line 146
    move-object v14, v11

    .line 147
    move-object/from16 v28, v15

    .line 148
    .line 149
    move-object v15, v11

    .line 150
    move-object/from16 v16, v11

    .line 151
    .line 152
    move-object/from16 v17, v11

    .line 153
    .line 154
    invoke-interface/range {v12 .. v17}, Lcom/google/android/exoplayer2/c3;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/w;Lcom/google/android/exoplayer2/audio/r;Lda/o;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/y2;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    iput-object v12, v1, Lcom/google/android/exoplayer2/a1;->g:[Lcom/google/android/exoplayer2/y2;

    .line 159
    .line 160
    array-length v13, v12

    .line 161
    const/4 v15, 0x0

    .line 162
    if-lez v13, :cond_0

    .line 163
    .line 164
    const/4 v13, 0x1

    .line 165
    goto :goto_0

    .line 166
    :cond_0
    move v13, v15

    .line 167
    :goto_0
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v13, v0, Lcom/google/android/exoplayer2/t$b;->f:Lcom/google/common/base/q;

    .line 171
    .line 172
    invoke-interface {v13}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    move-object v14, v13

    .line 177
    check-cast v14, Lna/b0;

    .line 178
    .line 179
    iput-object v14, v1, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 180
    .line 181
    iget-object v13, v0, Lcom/google/android/exoplayer2/t$b;->e:Lcom/google/common/base/q;

    .line 182
    .line 183
    invoke-interface {v13}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    check-cast v13, Lcom/google/android/exoplayer2/source/o$a;

    .line 188
    .line 189
    iput-object v13, v1, Lcom/google/android/exoplayer2/a1;->q:Lcom/google/android/exoplayer2/source/o$a;

    .line 190
    .line 191
    iget-object v13, v0, Lcom/google/android/exoplayer2/t$b;->h:Lcom/google/common/base/q;

    .line 192
    .line 193
    invoke-interface {v13}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    check-cast v13, Lcom/google/android/exoplayer2/upstream/e;

    .line 198
    .line 199
    iput-object v13, v1, Lcom/google/android/exoplayer2/a1;->t:Lcom/google/android/exoplayer2/upstream/e;

    .line 200
    .line 201
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/t$b;->s:Z

    .line 202
    .line 203
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/a1;->p:Z

    .line 204
    .line 205
    iget-object v4, v0, Lcom/google/android/exoplayer2/t$b;->t:Lcom/google/android/exoplayer2/d3;

    .line 206
    .line 207
    iput-object v4, v1, Lcom/google/android/exoplayer2/a1;->L:Lcom/google/android/exoplayer2/d3;

    .line 208
    .line 209
    move-object/from16 v29, v3

    .line 210
    .line 211
    iget-wide v2, v0, Lcom/google/android/exoplayer2/t$b;->u:J

    .line 212
    .line 213
    iput-wide v2, v1, Lcom/google/android/exoplayer2/a1;->u:J

    .line 214
    .line 215
    iget-wide v2, v0, Lcom/google/android/exoplayer2/t$b;->v:J

    .line 216
    .line 217
    iput-wide v2, v1, Lcom/google/android/exoplayer2/a1;->v:J

    .line 218
    .line 219
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/t$b;->z:Z

    .line 220
    .line 221
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/a1;->N:Z

    .line 222
    .line 223
    iget-object v2, v0, Lcom/google/android/exoplayer2/t$b;->j:Landroid/os/Looper;

    .line 224
    .line 225
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->s:Landroid/os/Looper;

    .line 226
    .line 227
    iget-object v3, v0, Lcom/google/android/exoplayer2/t$b;->b:Lcom/google/android/exoplayer2/util/e;

    .line 228
    .line 229
    iput-object v3, v1, Lcom/google/android/exoplayer2/a1;->w:Lcom/google/android/exoplayer2/util/e;

    .line 230
    .line 231
    if-nez p2, :cond_1

    .line 232
    .line 233
    move-object v4, v1

    .line 234
    goto :goto_1

    .line 235
    :cond_1
    move-object/from16 v4, p2

    .line 236
    .line 237
    :goto_1
    iput-object v4, v1, Lcom/google/android/exoplayer2/a1;->f:Lcom/google/android/exoplayer2/p2;

    .line 238
    .line 239
    new-instance v5, Lcom/google/android/exoplayer2/util/r;

    .line 240
    .line 241
    new-instance v6, Lcom/google/android/exoplayer2/k0;

    .line 242
    .line 243
    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/k0;-><init>(Lcom/google/android/exoplayer2/a1;)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v5, v2, v3, v6}, Lcom/google/android/exoplayer2/util/r;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    .line 247
    .line 248
    .line 249
    iput-object v5, v1, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 250
    .line 251
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 252
    .line 253
    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v5, v1, Lcom/google/android/exoplayer2/a1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 257
    .line 258
    new-instance v5, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v5, v1, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 264
    .line 265
    new-instance v5, Lv9/t$a;

    .line 266
    .line 267
    invoke-direct {v5, v15}, Lv9/t$a;-><init>(I)V

    .line 268
    .line 269
    .line 270
    iput-object v5, v1, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 271
    .line 272
    new-instance v5, Lna/c0;

    .line 273
    .line 274
    array-length v6, v12

    .line 275
    new-array v6, v6, [Lcom/google/android/exoplayer2/b3;

    .line 276
    .line 277
    array-length v15, v12

    .line 278
    new-array v15, v15, [Lna/s;

    .line 279
    .line 280
    move-object/from16 v18, v11

    .line 281
    .line 282
    sget-object v11, Lcom/google/android/exoplayer2/q3;->b:Lcom/google/android/exoplayer2/q3;

    .line 283
    .line 284
    invoke-direct {v5, v6, v15, v11, v10}, Lna/c0;-><init>([Lcom/google/android/exoplayer2/b3;[Lna/s;Lcom/google/android/exoplayer2/q3;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iput-object v5, v1, Lcom/google/android/exoplayer2/a1;->b:Lna/c0;

    .line 288
    .line 289
    new-instance v6, Lcom/google/android/exoplayer2/l3$b;

    .line 290
    .line 291
    invoke-direct {v6}, Lcom/google/android/exoplayer2/l3$b;-><init>()V

    .line 292
    .line 293
    .line 294
    iput-object v6, v1, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 295
    .line 296
    new-instance v6, Lcom/google/android/exoplayer2/p2$b$a;

    .line 297
    .line 298
    invoke-direct {v6}, Lcom/google/android/exoplayer2/p2$b$a;-><init>()V

    .line 299
    .line 300
    .line 301
    const/16 v11, 0x15

    .line 302
    .line 303
    new-array v15, v11, [I

    .line 304
    .line 305
    fill-array-data v15, :array_0

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/p2$b$a;->c([I)Lcom/google/android/exoplayer2/p2$b$a;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v14}, Lna/b0;->e()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    const/16 v15, 0x1d

    .line 317
    .line 318
    invoke-virtual {v6, v15, v11}, Lcom/google/android/exoplayer2/p2$b$a;->d(IZ)Lcom/google/android/exoplayer2/p2$b$a;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/p2$b$a;->e()Lcom/google/android/exoplayer2/p2$b;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    iput-object v6, v1, Lcom/google/android/exoplayer2/a1;->c:Lcom/google/android/exoplayer2/p2$b;

    .line 327
    .line 328
    new-instance v11, Lcom/google/android/exoplayer2/p2$b$a;

    .line 329
    .line 330
    invoke-direct {v11}, Lcom/google/android/exoplayer2/p2$b$a;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/p2$b$a;->b(Lcom/google/android/exoplayer2/p2$b;)Lcom/google/android/exoplayer2/p2$b$a;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    const/4 v15, 0x4

    .line 338
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/p2$b$a;->a(I)Lcom/google/android/exoplayer2/p2$b$a;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    const/16 v11, 0xa

    .line 343
    .line 344
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/p2$b$a;->a(I)Lcom/google/android/exoplayer2/p2$b$a;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/p2$b$a;->e()Lcom/google/android/exoplayer2/p2$b;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    iput-object v6, v1, Lcom/google/android/exoplayer2/a1;->O:Lcom/google/android/exoplayer2/p2$b;

    .line 353
    .line 354
    invoke-interface {v3, v2, v10}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    iput-object v6, v1, Lcom/google/android/exoplayer2/a1;->i:Lcom/google/android/exoplayer2/util/o;

    .line 359
    .line 360
    new-instance v6, Lcom/google/android/exoplayer2/l0;

    .line 361
    .line 362
    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/l0;-><init>(Lcom/google/android/exoplayer2/a1;)V

    .line 363
    .line 364
    .line 365
    iput-object v6, v1, Lcom/google/android/exoplayer2/a1;->j:Lcom/google/android/exoplayer2/m1$f;

    .line 366
    .line 367
    invoke-static {v5}, Lcom/google/android/exoplayer2/m2;->j(Lna/c0;)Lcom/google/android/exoplayer2/m2;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    iput-object v10, v1, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 372
    .line 373
    invoke-interface {v9, v4, v2}, Lg9/a;->r(Lcom/google/android/exoplayer2/p2;Landroid/os/Looper;)V

    .line 374
    .line 375
    .line 376
    sget v4, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 377
    .line 378
    const/16 v10, 0x1f

    .line 379
    .line 380
    if-ge v4, v10, :cond_2

    .line 381
    .line 382
    new-instance v10, Lg9/u1;

    .line 383
    .line 384
    invoke-direct {v10}, Lg9/u1;-><init>()V

    .line 385
    .line 386
    .line 387
    :goto_2
    move-object/from16 v27, v10

    .line 388
    .line 389
    goto :goto_3

    .line 390
    :catchall_0
    move-exception v0

    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :cond_2
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/t$b;->A:Z

    .line 394
    .line 395
    invoke-static {v8, v1, v10}, Lcom/google/android/exoplayer2/a1$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/a1;Z)Lg9/u1;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    goto :goto_2

    .line 400
    :goto_3
    new-instance v10, Lcom/google/android/exoplayer2/m1;

    .line 401
    .line 402
    iget-object v11, v0, Lcom/google/android/exoplayer2/t$b;->g:Lcom/google/common/base/q;

    .line 403
    .line 404
    invoke-interface {v11}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    move-object/from16 v16, v11

    .line 409
    .line 410
    check-cast v16, Lcom/google/android/exoplayer2/u1;

    .line 411
    .line 412
    iget v11, v1, Lcom/google/android/exoplayer2/a1;->F:I

    .line 413
    .line 414
    move-object/from16 v30, v7

    .line 415
    .line 416
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 417
    .line 418
    move-object/from16 v31, v8

    .line 419
    .line 420
    iget-object v8, v1, Lcom/google/android/exoplayer2/a1;->L:Lcom/google/android/exoplayer2/d3;

    .line 421
    .line 422
    move/from16 v32, v4

    .line 423
    .line 424
    iget-object v4, v0, Lcom/google/android/exoplayer2/t$b;->w:Lcom/google/android/exoplayer2/t1;

    .line 425
    .line 426
    move-object/from16 v33, v2

    .line 427
    .line 428
    move-object/from16 v25, v3

    .line 429
    .line 430
    iget-wide v2, v0, Lcom/google/android/exoplayer2/t$b;->x:J

    .line 431
    .line 432
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/a1;->N:Z

    .line 433
    .line 434
    move-object/from16 v35, v10

    .line 435
    .line 436
    const/16 v34, 0x0

    .line 437
    .line 438
    move-object/from16 v10, v35

    .line 439
    .line 440
    move-object/from16 v36, v18

    .line 441
    .line 442
    move/from16 v18, v11

    .line 443
    .line 444
    move-object v11, v12

    .line 445
    move-object v12, v14

    .line 446
    move-object/from16 p2, v13

    .line 447
    .line 448
    move-object v13, v5

    .line 449
    move-object v5, v14

    .line 450
    move-object/from16 v14, v16

    .line 451
    .line 452
    move-object/from16 v37, v5

    .line 453
    .line 454
    const/4 v5, 0x0

    .line 455
    move-object/from16 v15, p2

    .line 456
    .line 457
    move/from16 v16, v18

    .line 458
    .line 459
    move/from16 v17, v7

    .line 460
    .line 461
    move-object/from16 v18, v9

    .line 462
    .line 463
    move-object/from16 v19, v8

    .line 464
    .line 465
    move-object/from16 v20, v4

    .line 466
    .line 467
    move-wide/from16 v21, v2

    .line 468
    .line 469
    move/from16 v23, v0

    .line 470
    .line 471
    move-object/from16 v24, v33

    .line 472
    .line 473
    move-object/from16 v26, v6

    .line 474
    .line 475
    invoke-direct/range {v10 .. v27}, Lcom/google/android/exoplayer2/m1;-><init>([Lcom/google/android/exoplayer2/y2;Lna/b0;Lna/c0;Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/upstream/e;IZLg9/a;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/t1;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/m1$f;Lg9/u1;)V

    .line 476
    .line 477
    .line 478
    move-object/from16 v0, v35

    .line 479
    .line 480
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 481
    .line 482
    const/high16 v2, 0x3f800000    # 1.0f

    .line 483
    .line 484
    iput v2, v1, Lcom/google/android/exoplayer2/a1;->i0:F

    .line 485
    .line 486
    iput v5, v1, Lcom/google/android/exoplayer2/a1;->F:I

    .line 487
    .line 488
    sget-object v2, Lcom/google/android/exoplayer2/b2;->G:Lcom/google/android/exoplayer2/b2;

    .line 489
    .line 490
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 491
    .line 492
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->Q:Lcom/google/android/exoplayer2/b2;

    .line 493
    .line 494
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 495
    .line 496
    const/4 v2, -0x1

    .line 497
    iput v2, v1, Lcom/google/android/exoplayer2/a1;->u0:I

    .line 498
    .line 499
    move/from16 v2, v32

    .line 500
    .line 501
    const/16 v3, 0x15

    .line 502
    .line 503
    if-ge v2, v3, :cond_3

    .line 504
    .line 505
    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/a1;->j1(I)I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iput v2, v1, Lcom/google/android/exoplayer2/a1;->g0:I

    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_3
    invoke-static/range {v31 .. v31}, Lcom/google/android/exoplayer2/util/p0;->F(Landroid/content/Context;)I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    iput v2, v1, Lcom/google/android/exoplayer2/a1;->g0:I

    .line 517
    .line 518
    :goto_4
    sget-object v2, Lda/f;->b:Lda/f;

    .line 519
    .line 520
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->k0:Lda/f;

    .line 521
    .line 522
    const/4 v2, 0x1

    .line 523
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/a1;->l0:Z

    .line 524
    .line 525
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/a1;->E(Lcom/google/android/exoplayer2/p2$d;)V

    .line 526
    .line 527
    .line 528
    new-instance v2, Landroid/os/Handler;

    .line 529
    .line 530
    move-object/from16 v3, v33

    .line 531
    .line 532
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v13, p2

    .line 536
    .line 537
    invoke-interface {v13, v2, v9}, Lcom/google/android/exoplayer2/upstream/e;->f(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v2, v36

    .line 541
    .line 542
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a1;->Q0(Lcom/google/android/exoplayer2/t$a;)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v3, p1

    .line 546
    .line 547
    iget-wide v6, v3, Lcom/google/android/exoplayer2/t$b;->c:J

    .line 548
    .line 549
    const-wide/16 v8, 0x0

    .line 550
    .line 551
    cmp-long v4, v6, v8

    .line 552
    .line 553
    if-lez v4, :cond_4

    .line 554
    .line 555
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/m1;->s(J)V

    .line 556
    .line 557
    .line 558
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 559
    .line 560
    iget-object v4, v3, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 561
    .line 562
    move-object/from16 v6, v29

    .line 563
    .line 564
    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$a;)V

    .line 565
    .line 566
    .line 567
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 568
    .line 569
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/t$b;->o:Z

    .line 570
    .line 571
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    .line 572
    .line 573
    .line 574
    new-instance v0, Lcom/google/android/exoplayer2/f;

    .line 575
    .line 576
    iget-object v4, v3, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 577
    .line 578
    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/f;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/f$b;)V

    .line 579
    .line 580
    .line 581
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 582
    .line 583
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/t$b;->m:Z

    .line 584
    .line 585
    if-eqz v4, :cond_5

    .line 586
    .line 587
    iget-object v10, v1, Lcom/google/android/exoplayer2/a1;->h0:Lcom/google/android/exoplayer2/audio/e;

    .line 588
    .line 589
    goto :goto_5

    .line 590
    :cond_5
    move-object/from16 v10, v34

    .line 591
    .line 592
    :goto_5
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/f;->m(Lcom/google/android/exoplayer2/audio/e;)V

    .line 593
    .line 594
    .line 595
    new-instance v0, Lcom/google/android/exoplayer2/g3;

    .line 596
    .line 597
    iget-object v4, v3, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 598
    .line 599
    invoke-direct {v0, v4, v6, v2}, Lcom/google/android/exoplayer2/g3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/g3$b;)V

    .line 600
    .line 601
    .line 602
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->B:Lcom/google/android/exoplayer2/g3;

    .line 603
    .line 604
    iget-object v2, v1, Lcom/google/android/exoplayer2/a1;->h0:Lcom/google/android/exoplayer2/audio/e;

    .line 605
    .line 606
    iget v2, v2, Lcom/google/android/exoplayer2/audio/e;->c:I

    .line 607
    .line 608
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->g0(I)I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/g3;->h(I)V

    .line 613
    .line 614
    .line 615
    new-instance v2, Lcom/google/android/exoplayer2/r3;

    .line 616
    .line 617
    iget-object v4, v3, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 618
    .line 619
    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/r3;-><init>(Landroid/content/Context;)V

    .line 620
    .line 621
    .line 622
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->C:Lcom/google/android/exoplayer2/r3;

    .line 623
    .line 624
    iget v4, v3, Lcom/google/android/exoplayer2/t$b;->n:I

    .line 625
    .line 626
    if-eqz v4, :cond_6

    .line 627
    .line 628
    const/4 v15, 0x1

    .line 629
    goto :goto_6

    .line 630
    :cond_6
    move v15, v5

    .line 631
    :goto_6
    invoke-virtual {v2, v15}, Lcom/google/android/exoplayer2/r3;->a(Z)V

    .line 632
    .line 633
    .line 634
    new-instance v2, Lcom/google/android/exoplayer2/s3;

    .line 635
    .line 636
    iget-object v4, v3, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 637
    .line 638
    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/s3;-><init>(Landroid/content/Context;)V

    .line 639
    .line 640
    .line 641
    iput-object v2, v1, Lcom/google/android/exoplayer2/a1;->D:Lcom/google/android/exoplayer2/s3;

    .line 642
    .line 643
    iget v3, v3, Lcom/google/android/exoplayer2/t$b;->n:I

    .line 644
    .line 645
    const/4 v4, 0x2

    .line 646
    if-ne v3, v4, :cond_7

    .line 647
    .line 648
    const/4 v15, 0x1

    .line 649
    goto :goto_7

    .line 650
    :cond_7
    move v15, v5

    .line 651
    :goto_7
    invoke-virtual {v2, v15}, Lcom/google/android/exoplayer2/s3;->a(Z)V

    .line 652
    .line 653
    .line 654
    invoke-static {v0}, Lcom/google/android/exoplayer2/a1;->U0(Lcom/google/android/exoplayer2/g3;)Lcom/google/android/exoplayer2/r;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->q0:Lcom/google/android/exoplayer2/r;

    .line 659
    .line 660
    sget-object v0, Lcom/google/android/exoplayer2/video/y;->e:Lcom/google/android/exoplayer2/video/y;

    .line 661
    .line 662
    iput-object v0, v1, Lcom/google/android/exoplayer2/a1;->r0:Lcom/google/android/exoplayer2/video/y;

    .line 663
    .line 664
    iget-object v0, v1, Lcom/google/android/exoplayer2/a1;->h0:Lcom/google/android/exoplayer2/audio/e;

    .line 665
    .line 666
    move-object/from16 v13, v37

    .line 667
    .line 668
    invoke-virtual {v13, v0}, Lna/b0;->i(Lcom/google/android/exoplayer2/audio/e;)V

    .line 669
    .line 670
    .line 671
    iget v0, v1, Lcom/google/android/exoplayer2/a1;->g0:I

    .line 672
    .line 673
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const/16 v2, 0xa

    .line 678
    .line 679
    const/4 v3, 0x1

    .line 680
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    iget v0, v1, Lcom/google/android/exoplayer2/a1;->g0:I

    .line 684
    .line 685
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const/4 v4, 0x2

    .line 690
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    iget-object v0, v1, Lcom/google/android/exoplayer2/a1;->h0:Lcom/google/android/exoplayer2/audio/e;

    .line 694
    .line 695
    const/4 v2, 0x3

    .line 696
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    iget v0, v1, Lcom/google/android/exoplayer2/a1;->a0:I

    .line 700
    .line 701
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    const/4 v2, 0x4

    .line 706
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    iget v0, v1, Lcom/google/android/exoplayer2/a1;->b0:I

    .line 710
    .line 711
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    const/4 v2, 0x5

    .line 716
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/a1;->j0:Z

    .line 720
    .line 721
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    const/16 v2, 0x9

    .line 726
    .line 727
    const/4 v3, 0x1

    .line 728
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    const/4 v0, 0x7

    .line 732
    move-object/from16 v2, v28

    .line 733
    .line 734
    invoke-direct {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    const/4 v0, 0x6

    .line 738
    const/16 v3, 0x8

    .line 739
    .line 740
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    .line 742
    .line 743
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/util/h;->f()Z

    .line 744
    .line 745
    .line 746
    return-void

    .line 747
    :goto_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/a1;->d:Lcom/google/android/exoplayer2/util/h;

    .line 748
    .line 749
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h;->f()Z

    .line 750
    .line 751
    .line 752
    throw v0

    .line 753
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method static synthetic A0(Lcom/google/android/exoplayer2/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->R1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 2
    .line 3
    iget-object p0, p0, Lna/c0;->d:Lcom/google/android/exoplayer2/q3;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onTracksChanged(Lcom/google/android/exoplayer2/q3;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic B0(ZI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->d1(ZI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic B1(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/b2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lcom/google/android/exoplayer2/a1;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a1;->c2(ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic C1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/p2$d;->onLoadingChanged(Z)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onIsLoadingChanged(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic D0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/g3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->B:Lcom/google/android/exoplayer2/g3;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic D1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlayerStateChanged(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic E0(Lcom/google/android/exoplayer2/g3;)Lcom/google/android/exoplayer2/r;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/a1;->U0(Lcom/google/android/exoplayer2/g3;)Lcom/google/android/exoplayer2/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic E1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlaybackStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic F0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->q0:Lcom/google/android/exoplayer2/r;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic F1(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/p2$d;->onPlayWhenReadyChanged(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic G0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/r;)Lcom/google/android/exoplayer2/r;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->q0:Lcom/google/android/exoplayer2/r;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic G1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/m2;->m:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlaybackSuppressionReasonChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic H0(Lcom/google/android/exoplayer2/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->f2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/a1;->k1(Lcom/google/android/exoplayer2/m2;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onIsPlayingChanged(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic I0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->e0:Lcom/google/android/exoplayer2/decoder/e;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic I1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/o2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic J0(Lcom/google/android/exoplayer2/a1;)Lg9/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private J1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/m2;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v4

    .line 20
    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    iget-object v5, v3, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/m2;->i(Lcom/google/android/exoplayer2/l3;)Lcom/google/android/exoplayer2/m2;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/exoplayer2/m2;->k()Lcom/google/android/exoplayer2/source/o$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v2, v0, Lcom/google/android/exoplayer2/a1;->w0:J

    .line 42
    .line 43
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    sget-object v16, Lv9/y;->d:Lv9/y;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/exoplayer2/a1;->b:Lna/c0;

    .line 50
    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    .line 54
    move-result-object v18

    .line 55
    const-wide/16 v14, 0x0

    .line 56
    .line 57
    move-object v7, v1

    .line 58
    move-wide v8, v12

    .line 59
    move-wide v10, v12

    .line 60
    move-object/from16 v17, v2

    .line 61
    .line 62
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/m2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLv9/y;Lna/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/m2;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-wide v2, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 71
    .line 72
    iput-wide v2, v1, Lcom/google/android/exoplayer2/m2;->p:J

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 76
    .line 77
    iget-object v3, v3, Lv9/j;->a:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/util/Pair;

    .line 84
    .line 85
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_3

    .line 92
    .line 93
    new-instance v8, Lcom/google/android/exoplayer2/source/o$b;

    .line 94
    .line 95
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/o$b;-><init>(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    move-object v14, v8

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v12

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->getContentPosition()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v8

    .line 121
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    iget-object v2, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 128
    .line 129
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/l3$b;->q()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    sub-long/2addr v8, v2

    .line 138
    :cond_4
    if-eqz v7, :cond_5

    .line 139
    .line 140
    cmp-long v2, v12, v8

    .line 141
    .line 142
    if-gez v2, :cond_6

    .line 143
    .line 144
    :cond_5
    move-object v0, v14

    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_6
    if-nez v2, :cond_a

    .line 148
    .line 149
    iget-object v2, v6, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 150
    .line 151
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v3, -0x1

    .line 158
    if-eq v2, v3, :cond_7

    .line 159
    .line 160
    iget-object v3, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 161
    .line 162
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/l3;->j(ILcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v2, v2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 167
    .line 168
    iget-object v3, v14, Lv9/j;->a:Ljava/lang/Object;

    .line 169
    .line 170
    iget-object v4, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 171
    .line 172
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget v3, v3, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 177
    .line 178
    if-eq v2, v3, :cond_9

    .line 179
    .line 180
    :cond_7
    iget-object v2, v14, Lv9/j;->a:Ljava/lang/Object;

    .line 181
    .line 182
    iget-object v3, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 183
    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14}, Lv9/j;->b()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_8

    .line 192
    .line 193
    iget-object v1, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 194
    .line 195
    iget v2, v14, Lv9/j;->b:I

    .line 196
    .line 197
    iget v3, v14, Lv9/j;->c:I

    .line 198
    .line 199
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/l3$b;->e(II)J

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    goto :goto_4

    .line 204
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 205
    .line 206
    iget-wide v1, v1, Lcom/google/android/exoplayer2/l3$b;->d:J

    .line 207
    .line 208
    :goto_4
    iget-wide v8, v6, Lcom/google/android/exoplayer2/m2;->r:J

    .line 209
    .line 210
    iget-wide v10, v6, Lcom/google/android/exoplayer2/m2;->r:J

    .line 211
    .line 212
    iget-wide v12, v6, Lcom/google/android/exoplayer2/m2;->d:J

    .line 213
    .line 214
    iget-wide v3, v6, Lcom/google/android/exoplayer2/m2;->r:J

    .line 215
    .line 216
    sub-long v3, v1, v3

    .line 217
    .line 218
    iget-object v5, v6, Lcom/google/android/exoplayer2/m2;->h:Lv9/y;

    .line 219
    .line 220
    iget-object v15, v6, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 221
    .line 222
    iget-object v7, v6, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 223
    .line 224
    move-object/from16 v18, v7

    .line 225
    .line 226
    move-object v7, v14

    .line 227
    move-object v0, v14

    .line 228
    move-object/from16 v17, v15

    .line 229
    .line 230
    move-wide v14, v3

    .line 231
    move-object/from16 v16, v5

    .line 232
    .line 233
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/m2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLv9/y;Lna/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/m2;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    iput-wide v1, v6, Lcom/google/android/exoplayer2/m2;->p:J

    .line 242
    .line 243
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    .line 244
    .line 245
    goto/16 :goto_d

    .line 246
    .line 247
    :cond_a
    move-object v0, v14

    .line 248
    invoke-virtual {v0}, Lv9/j;->b()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    xor-int/2addr v1, v4

    .line 253
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 254
    .line 255
    .line 256
    iget-wide v1, v6, Lcom/google/android/exoplayer2/m2;->q:J

    .line 257
    .line 258
    sub-long v3, v12, v8

    .line 259
    .line 260
    sub-long/2addr v1, v3

    .line 261
    const-wide/16 v3, 0x0

    .line 262
    .line 263
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 264
    .line 265
    .line 266
    move-result-wide v14

    .line 267
    iget-wide v1, v6, Lcom/google/android/exoplayer2/m2;->p:J

    .line 268
    .line 269
    iget-object v3, v6, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 270
    .line 271
    iget-object v4, v6, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 272
    .line 273
    invoke-virtual {v3, v4}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_b

    .line 278
    .line 279
    add-long v1, v12, v14

    .line 280
    .line 281
    :cond_b
    iget-object v3, v6, Lcom/google/android/exoplayer2/m2;->h:Lv9/y;

    .line 282
    .line 283
    iget-object v4, v6, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 284
    .line 285
    iget-object v5, v6, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 286
    .line 287
    move-object v7, v0

    .line 288
    move-wide v8, v12

    .line 289
    move-wide v10, v12

    .line 290
    move-object/from16 v16, v3

    .line 291
    .line 292
    move-object/from16 v17, v4

    .line 293
    .line 294
    move-object/from16 v18, v5

    .line 295
    .line 296
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/m2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLv9/y;Lna/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/m2;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    iput-wide v1, v6, Lcom/google/android/exoplayer2/m2;->p:J

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :goto_6
    invoke-virtual {v0}, Lv9/j;->b()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    xor-int/2addr v1, v4

    .line 308
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 309
    .line 310
    .line 311
    if-nez v7, :cond_c

    .line 312
    .line 313
    sget-object v1, Lv9/y;->d:Lv9/y;

    .line 314
    .line 315
    :goto_7
    move-object/from16 v16, v1

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplayer2/m2;->h:Lv9/y;

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :goto_8
    move-object v1, v0

    .line 322
    move-object/from16 v0, p0

    .line 323
    .line 324
    if-nez v7, :cond_d

    .line 325
    .line 326
    iget-object v2, v0, Lcom/google/android/exoplayer2/a1;->b:Lna/c0;

    .line 327
    .line 328
    :goto_9
    move-object/from16 v17, v2

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_d
    iget-object v2, v6, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :goto_a
    if-nez v7, :cond_e

    .line 335
    .line 336
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    :goto_b
    move-object/from16 v18, v2

    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_e
    iget-object v2, v6, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :goto_c
    const-wide/16 v14, 0x0

    .line 347
    .line 348
    move-object v7, v1

    .line 349
    move-wide v8, v12

    .line 350
    move-wide v10, v12

    .line 351
    move-wide v2, v12

    .line 352
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/m2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLv9/y;Lna/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/m2;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    iput-wide v2, v6, Lcom/google/android/exoplayer2/m2;->p:J

    .line 361
    .line 362
    :goto_d
    return-object v6
.end method

.method static synthetic K0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->R:Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    return-object p1
.end method

.method private K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/a1;->u0:I

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p1, p3, p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-wide/16 p3, 0x0

    .line 19
    .line 20
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/a1;->w0:J

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/android/exoplayer2/a1;->v0:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    if-eq p2, v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lt p2, v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v3, p2

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/l3;->e(Z)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object p3, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/l3$d;->e()J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 59
    .line 60
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method static synthetic L0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/video/y;)Lcom/google/android/exoplayer2/video/y;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->r0:Lcom/google/android/exoplayer2/video/y;

    .line 2
    .line 3
    return-object p1
.end method

.method private L1(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->c0:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->d0:I

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/a1;->c0:I

    .line 10
    .line 11
    iput p2, p0, Lcom/google/android/exoplayer2/a1;->d0:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/exoplayer2/o0;

    .line 16
    .line 17
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/o0;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x18

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method static synthetic M0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/util/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 2
    .line 3
    return-object p0
.end method

.method private M1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lv9/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3$b;->q()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    add-long/2addr p3, p1

    .line 15
    return-wide p3
.end method

.method static synthetic N0(Lcom/google/android/exoplayer2/a1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->U:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private N1(II)Lcom/google/android/exoplayer2/m2;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-lt p2, p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gt p2, v1, :cond_0

    .line 13
    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getCurrentTimeline()Lcom/google/android/exoplayer2/l3;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 35
    .line 36
    add-int/2addr v4, v0

    .line 37
    iput v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 38
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->O1(II)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->V0()Lcom/google/android/exoplayer2/l3;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v5, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 47
    .line 48
    invoke-direct {p0, v2, v4}, Lcom/google/android/exoplayer2/a1;->c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Landroid/util/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {p0, v5, v4, v2}, Lcom/google/android/exoplayer2/a1;->J1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/m2;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget v4, v2, Lcom/google/android/exoplayer2/m2;->e:I

    .line 57
    .line 58
    if-eq v4, v0, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    if-eq v4, v0, :cond_1

    .line 62
    .line 63
    if-ge p1, p2, :cond_1

    .line 64
    .line 65
    if-ne p2, v3, :cond_1

    .line 66
    .line 67
    iget-object v3, v2, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-lt v1, v3, :cond_1

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/m1;->l0(IILv9/t;)V

    .line 84
    .line 85
    .line 86
    return-object v2
.end method

.method static synthetic O0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->f0:Lcom/google/android/exoplayer2/decoder/e;

    .line 2
    .line 3
    return-object p1
.end method

.method private O1(II)V
    .locals 2

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    :goto_0
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Lv9/t;->a(II)Lv9/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic P(IILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->l1(IILcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private P1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->y:Lcom/google/android/exoplayer2/a1$d;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X0(Lcom/google/android/exoplayer2/t2$b;)Lcom/google/android/exoplayer2/t2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v2, 0x2710

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/t2;->n(I)Lcom/google/android/exoplayer2/t2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t2;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/t2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t2;->l()Lcom/google/android/exoplayer2/t2;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->Z:Landroid/view/TextureView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 43
    .line 44
    if-eq v0, v2, :cond_1

    .line 45
    .line 46
    const-string v0, "ExoPlayerImpl"

    .line 47
    .line 48
    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->Z:Landroid/view/TextureView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/a1;->Z:Landroid/view/TextureView;

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public static synthetic Q(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->B1(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Q1(IILjava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->g:[Lcom/google/android/exoplayer2/y2;

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
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->getTrackType()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ne v4, p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/a1;->X0(Lcom/google/android/exoplayer2/t2$b;)Lcom/google/android/exoplayer2/t2;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/t2;->n(I)Lcom/google/android/exoplayer2/t2;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/t2;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/t2;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/t2;->l()Lcom/google/android/exoplayer2/t2;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic R(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->y1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R0(ILjava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/exoplayer2/i2$c;

    .line 14
    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/exoplayer2/source/o;

    .line 20
    .line 21
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/a1;->p:Z

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/i2$c;-><init>(Lcom/google/android/exoplayer2/source/o;Z)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 30
    .line 31
    add-int v4, v1, p1

    .line 32
    .line 33
    new-instance v5, Lcom/google/android/exoplayer2/a1$e;

    .line 34
    .line 35
    iget-object v6, v2, Lcom/google/android/exoplayer2/i2$c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/android/exoplayer2/i2$c;->a:Lcom/google/android/exoplayer2/source/m;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/m;->P()Lcom/google/android/exoplayer2/l3;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/a1$e;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {p2, p1, v1}, Lv9/t;->cloneAndInsert(II)Lv9/t;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 63
    .line 64
    return-object v0
.end method

.method private R1()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->i0:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f;->g()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/a1;->Q1(IILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic S(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->z1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private S0()Lcom/google/android/exoplayer2/b2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getCurrentTimeline()Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/google/android/exoplayer2/l3$d;->c:Lcom/google/android/exoplayer2/w1;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->b()Lcom/google/android/exoplayer2/b2$b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v0, v0, Lcom/google/android/exoplayer2/w1;->e:Lcom/google/android/exoplayer2/b2;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/b2$b;->H(Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/b2$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2$b;->F()Lcom/google/android/exoplayer2/b2;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static synthetic T(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->A1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->u1(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static U0(Lcom/google/android/exoplayer2/g3;)Lcom/google/android/exoplayer2/r;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g3;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g3;->c()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/r;-><init>(III)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private U1(Ljava/util/List;IJZ)V
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->b1()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->getCurrentPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget v4, v10, Lcom/google/android/exoplayer2/a1;->H:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    add-int/2addr v4, v5

    .line 17
    iput v4, v10, Lcom/google/android/exoplayer2/a1;->H:I

    .line 18
    .line 19
    iget-object v4, v10, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v6, 0x0

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget-object v4, v10, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplayer2/a1;->O1(II)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object/from16 v4, p1

    .line 38
    .line 39
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplayer2/a1;->R0(ILjava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->V0()Lcom/google/android/exoplayer2/l3;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-ge v0, v7, :cond_2

    .line 58
    .line 59
    :cond_1
    move-wide/from16 v7, p3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    .line 63
    .line 64
    move-wide/from16 v7, p3

    .line 65
    .line 66
    invoke-direct {v1, v4, v0, v7, v8}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/l3;IJ)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :goto_0
    const/4 v9, -0x1

    .line 71
    if-eqz p5, :cond_3

    .line 72
    .line 73
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/l3;->e(Z)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    move v13, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v0, v9, :cond_4

    .line 87
    .line 88
    move v13, v1

    .line 89
    move-wide v1, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v13, v0

    .line 92
    move-wide v1, v7

    .line 93
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 94
    .line 95
    invoke-direct {v10, v4, v13, v1, v2}, Lcom/google/android/exoplayer2/a1;->K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-direct {v10, v0, v4, v3}, Lcom/google/android/exoplayer2/a1;->J1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/m2;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v3, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 104
    .line 105
    if-eq v13, v9, :cond_7

    .line 106
    .line 107
    if-eq v3, v5, :cond_7

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-lt v13, v3, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v3, 0x2

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 125
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v11, v10, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 130
    .line 131
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    iget-object v0, v10, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 136
    .line 137
    move-object/from16 v16, v0

    .line 138
    .line 139
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/exoplayer2/m1;->K0(Ljava/util/List;IJLv9/t;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v10, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 145
    .line 146
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v1, v3, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 149
    .line 150
    iget-object v1, v1, Lv9/j;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    iget-object v0, v10, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move v5, v6

    .line 170
    :goto_4
    invoke-direct {v10, v3}, Lcom/google/android/exoplayer2/a1;->a1(Lcom/google/android/exoplayer2/m2;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    const/4 v9, -0x1

    .line 175
    const/4 v2, 0x0

    .line 176
    const/4 v4, 0x1

    .line 177
    const/4 v6, 0x0

    .line 178
    const/4 v11, 0x4

    .line 179
    move-object/from16 v0, p0

    .line 180
    .line 181
    move-object v1, v3

    .line 182
    move v3, v4

    .line 183
    move v4, v6

    .line 184
    move v6, v11

    .line 185
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public static synthetic V(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->F1(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private V0()Lcom/google/android/exoplayer2/l3;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/u2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->M:Lv9/t;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/u2;-><init>(Ljava/util/Collection;Lv9/t;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private V1(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->Y:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static synthetic W(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/m1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->o1(Lcom/google/android/exoplayer2/m1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private W0(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->q:Lcom/google/android/exoplayer2/source/o$a;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/exoplayer2/w1;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/o$a;->a(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/o;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private W1(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->V:Landroid/view/Surface;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic X(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->E1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X0(Lcom/google/android/exoplayer2/t2$b;)Lcom/google/android/exoplayer2/t2;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->b1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v8, Lcom/google/android/exoplayer2/t2;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    move v5, v0

    .line 18
    iget-object v6, p0, Lcom/google/android/exoplayer2/a1;->w:Lcom/google/android/exoplayer2/util/e;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/m1;->z()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    move-object v1, v8

    .line 25
    move-object v3, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/t2;-><init>(Lcom/google/android/exoplayer2/t2$a;Lcom/google/android/exoplayer2/t2$b;Lcom/google/android/exoplayer2/l3;ILcom/google/android/exoplayer2/util/e;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    return-object v8
.end method

.method private X1(Ljava/lang/Object;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->g:[Lcom/google/android/exoplayer2/y2;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x1

    .line 12
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    aget-object v6, v1, v4

    .line 15
    .line 16
    invoke-interface {v6}, Lcom/google/android/exoplayer2/y2;->getTrackType()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x2

    .line 21
    if-ne v7, v8, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/a1;->X0(Lcom/google/android/exoplayer2/t2$b;)Lcom/google/android/exoplayer2/t2;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/t2;->n(I)Lcom/google/android/exoplayer2/t2;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/t2;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/t2;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/t2;->l()Lcom/google/android/exoplayer2/t2;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->U:Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-eq v1, p1, :cond_3

    .line 50
    .line 51
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/google/android/exoplayer2/t2;

    .line 66
    .line 67
    iget-wide v6, p0, Lcom/google/android/exoplayer2/a1;->E:J

    .line 68
    .line 69
    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/t2;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 78
    .line 79
    .line 80
    :cond_2
    move v5, v3

    .line 81
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->U:Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->V:Landroid/view/Surface;

    .line 84
    .line 85
    if-ne v0, v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->V:Landroid/view/Surface;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v5, v3

    .line 95
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->U:Ljava/lang/Object;

    .line 96
    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    new-instance p1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 103
    .line 104
    .line 105
    const/16 v0, 0x3eb

    .line 106
    .line 107
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, v3, p1}, Lcom/google/android/exoplayer2/a1;->a2(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public static synthetic Y(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->v1(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Y0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/m2;ZIZ)Landroid/util/Pair;
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/util/Pair;

    .line 23
    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroid/util/Pair;

    .line 42
    .line 43
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    iget-object v2, p2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 54
    .line 55
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget v2, v2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 64
    .line 65
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 66
    .line 67
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v2, p1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 74
    .line 75
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v2, v2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 84
    .line 85
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    if-eqz p3, :cond_2

    .line 101
    .line 102
    if-nez p4, :cond_2

    .line 103
    .line 104
    move v5, p1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    if-eqz p3, :cond_3

    .line 107
    .line 108
    if-ne p4, p1, :cond_3

    .line 109
    .line 110
    const/4 v5, 0x2

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    if-eqz p5, :cond_4

    .line 113
    .line 114
    :goto_0
    new-instance p1, Landroid/util/Pair;

    .line 115
    .line 116
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_5
    if-eqz p3, :cond_6

    .line 133
    .line 134
    if-nez p4, :cond_6

    .line 135
    .line 136
    iget-object p2, p2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 137
    .line 138
    iget-wide p2, p2, Lv9/j;->d:J

    .line 139
    .line 140
    iget-object p1, p1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 141
    .line 142
    iget-wide p4, p1, Lv9/j;->d:J

    .line 143
    .line 144
    cmp-long p1, p2, p4

    .line 145
    .line 146
    if-gez p1, :cond_6

    .line 147
    .line 148
    new-instance p1, Landroid/util/Pair;

    .line 149
    .line 150
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    .line 152
    const/4 p3, 0x0

    .line 153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object p1

    .line 161
    :cond_6
    new-instance p1, Landroid/util/Pair;

    .line 162
    .line 163
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-object p1
.end method

.method public static synthetic Z(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->G1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(ILcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/a1;->w1(ILcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a1(Lcom/google/android/exoplayer2/m2;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a1;->w0:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lv9/j;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-wide v0, p1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 30
    .line 31
    iget-wide v2, p1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/a1;->M1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0
.end method

.method private a2(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a1;->N1(II)Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-wide v1, p1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 29
    .line 30
    iput-wide v1, p1, Lcom/google/android/exoplayer2/m2;->p:J

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p1, Lcom/google/android/exoplayer2/m2;->q:J

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    move-object v3, p1

    .line 48
    iget p1, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 49
    .line 50
    add-int/2addr p1, v1

    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/m1;->e1()V

    .line 56
    .line 57
    .line 58
    iget-object p1, v3, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    move v7, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v7, v0

    .line 79
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/a1;->a1(Lcom/google/android/exoplayer2/m2;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    const/4 v11, -0x1

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v8, 0x4

    .line 88
    move-object v2, p0

    .line 89
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static synthetic b0(FLcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->t1(FLcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b1()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->u0:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 19
    .line 20
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 29
    .line 30
    return v0
.end method

.method private b2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->O:Lcom/google/android/exoplayer2/p2$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->f:Lcom/google/android/exoplayer2/p2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->c:Lcom/google/android/exoplayer2/p2$b;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->H(Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/p2$b;)Lcom/google/android/exoplayer2/p2$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/google/android/exoplayer2/a1;->O:Lcom/google/android/exoplayer2/p2$b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/p2$b;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/r0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/r0;-><init>(Lcom/google/android/exoplayer2/a1;)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic c0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->m1(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/util/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Landroid/util/Pair;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getContentPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v5, -0x1

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    iget-object v7, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 29
    .line 30
    iget-object v8, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    move-object v6, p1

    .line 37
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/util/Pair;

    .line 46
    .line 47
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eq v1, v5, :cond_1

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 57
    .line 58
    iget-object v7, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 59
    .line 60
    iget v8, p0, Lcom/google/android/exoplayer2/a1;->F:I

    .line 61
    .line 62
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 63
    .line 64
    move-object v11, p1

    .line 65
    move-object v12, p2

    .line 66
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/m1;->w0(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 78
    .line 79
    iget p1, p1, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 82
    .line 83
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$d;->e()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/a1;->K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/a1;->K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    const/4 p1, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 p1, 0x0

    .line 116
    :goto_1
    if-eqz p1, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->b1()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    :goto_2
    if-eqz p1, :cond_6

    .line 124
    .line 125
    move-wide v0, v3

    .line 126
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/a1;->K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method private c2(ZII)V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    if-eq p2, v3, :cond_0

    .line 7
    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    :goto_0
    if-eqz v3, :cond_1

    .line 12
    .line 13
    if-eq p2, v2, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 17
    .line 18
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 19
    .line 20
    if-ne v4, v3, :cond_2

    .line 21
    .line 22
    iget v4, v0, Lcom/google/android/exoplayer2/m2;->m:I

    .line 23
    .line 24
    if-ne v4, v1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 28
    .line 29
    add-int/2addr v4, v2

    .line 30
    iput v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/m2;->d(ZI)Lcom/google/android/exoplayer2/m2;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/m1;->N0(ZI)V

    .line 39
    .line 40
    .line 41
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v9, -0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x5

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, v2

    .line 53
    move v2, v3

    .line 54
    move v3, p3

    .line 55
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static synthetic d0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/m1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->n1(Lcom/google/android/exoplayer2/m1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d1(ZI)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    :cond_0
    return v0
.end method

.method private d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p6

    .line 6
    .line 7
    iget-object v9, v6, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 8
    .line 9
    iput-object v7, v6, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-object v0, v9, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 12
    .line 13
    iget-object v1, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l3;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v10, 0x1

    .line 20
    xor-int/lit8 v5, v0, 0x1

    .line 21
    .line 22
    move-object/from16 v0, p0

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object v2, v9

    .line 27
    move/from16 v3, p5

    .line 28
    .line 29
    move/from16 v4, p6

    .line 30
    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1;->Y0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/m2;ZIZ)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v2, v6, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v4, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    iget-object v3, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 65
    .line 66
    iget-object v4, v7, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 67
    .line 68
    iget-object v4, v4, Lv9/j;->a:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v5, v6, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 71
    .line 72
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget v3, v3, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 77
    .line 78
    iget-object v4, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 79
    .line 80
    iget-object v5, v6, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 81
    .line 82
    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v3, v3, Lcom/google/android/exoplayer2/l3$d;->c:Lcom/google/android/exoplayer2/w1;

    .line 87
    .line 88
    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/b2;->G:Lcom/google/android/exoplayer2/b2;

    .line 89
    .line 90
    iput-object v4, v6, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 91
    .line 92
    :cond_1
    if-nez v1, :cond_2

    .line 93
    .line 94
    iget-object v4, v9, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 95
    .line 96
    iget-object v5, v7, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_3

    .line 103
    .line 104
    :cond_2
    iget-object v2, v6, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->b()Lcom/google/android/exoplayer2/b2$b;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v4, v7, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/b2$b;->J(Ljava/util/List;)Lcom/google/android/exoplayer2/b2$b;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2$b;->F()Lcom/google/android/exoplayer2/b2;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, v6, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 121
    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->S0()Lcom/google/android/exoplayer2/b2;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_3
    iget-object v4, v6, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 127
    .line 128
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/b2;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iput-object v2, v6, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 133
    .line 134
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 135
    .line 136
    iget-boolean v5, v7, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    if-eq v2, v5, :cond_4

    .line 140
    .line 141
    move v2, v10

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    move v2, v11

    .line 144
    :goto_0
    iget v5, v9, Lcom/google/android/exoplayer2/m2;->e:I

    .line 145
    .line 146
    iget v12, v7, Lcom/google/android/exoplayer2/m2;->e:I

    .line 147
    .line 148
    if-eq v5, v12, :cond_5

    .line 149
    .line 150
    move v5, v10

    .line 151
    goto :goto_1

    .line 152
    :cond_5
    move v5, v11

    .line 153
    :goto_1
    if-nez v5, :cond_6

    .line 154
    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->f2()V

    .line 158
    .line 159
    .line 160
    :cond_7
    iget-boolean v12, v9, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 161
    .line 162
    iget-boolean v13, v7, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 163
    .line 164
    if-eq v12, v13, :cond_8

    .line 165
    .line 166
    move v12, v10

    .line 167
    goto :goto_2

    .line 168
    :cond_8
    move v12, v11

    .line 169
    :goto_2
    if-eqz v12, :cond_9

    .line 170
    .line 171
    invoke-direct {v6, v13}, Lcom/google/android/exoplayer2/a1;->e2(Z)V

    .line 172
    .line 173
    .line 174
    :cond_9
    iget-object v13, v9, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 175
    .line 176
    iget-object v14, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 177
    .line 178
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/l3;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-nez v13, :cond_a

    .line 183
    .line 184
    iget-object v13, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 185
    .line 186
    new-instance v14, Lcom/google/android/exoplayer2/t0;

    .line 187
    .line 188
    move/from16 v15, p2

    .line 189
    .line 190
    invoke-direct {v14, v7, v15}, Lcom/google/android/exoplayer2/t0;-><init>(Lcom/google/android/exoplayer2/m2;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13, v11, v14}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    if-eqz p5, :cond_b

    .line 197
    .line 198
    move/from16 v11, p9

    .line 199
    .line 200
    invoke-direct {v6, v8, v9, v11}, Lcom/google/android/exoplayer2/a1;->g1(ILcom/google/android/exoplayer2/m2;I)Lcom/google/android/exoplayer2/p2$e;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    move-wide/from16 v13, p7

    .line 205
    .line 206
    invoke-direct {v6, v13, v14}, Lcom/google/android/exoplayer2/a1;->f1(J)Lcom/google/android/exoplayer2/p2$e;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    iget-object v14, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 211
    .line 212
    new-instance v15, Lcom/google/android/exoplayer2/z0;

    .line 213
    .line 214
    invoke-direct {v15, v8, v11, v13}, Lcom/google/android/exoplayer2/z0;-><init>(ILcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;)V

    .line 215
    .line 216
    .line 217
    const/16 v8, 0xb

    .line 218
    .line 219
    invoke-virtual {v14, v8, v15}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 220
    .line 221
    .line 222
    :cond_b
    if-eqz v1, :cond_c

    .line 223
    .line 224
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 225
    .line 226
    new-instance v8, Lcom/google/android/exoplayer2/c0;

    .line 227
    .line 228
    invoke-direct {v8, v3, v0}, Lcom/google/android/exoplayer2/c0;-><init>(Lcom/google/android/exoplayer2/w1;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v10, v8}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget-object v0, v9, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 235
    .line 236
    iget-object v1, v7, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 237
    .line 238
    if-eq v0, v1, :cond_d

    .line 239
    .line 240
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 241
    .line 242
    new-instance v1, Lcom/google/android/exoplayer2/d0;

    .line 243
    .line 244
    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/d0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 245
    .line 246
    .line 247
    const/16 v3, 0xa

    .line 248
    .line 249
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v7, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 253
    .line 254
    if-eqz v0, :cond_d

    .line 255
    .line 256
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 257
    .line 258
    new-instance v1, Lcom/google/android/exoplayer2/e0;

    .line 259
    .line 260
    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/e0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    iget-object v0, v9, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 267
    .line 268
    iget-object v1, v7, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 269
    .line 270
    if-eq v0, v1, :cond_e

    .line 271
    .line 272
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 273
    .line 274
    iget-object v1, v1, Lna/c0;->e:Ljava/lang/Object;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lna/b0;->f(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 280
    .line 281
    new-instance v1, Lcom/google/android/exoplayer2/f0;

    .line 282
    .line 283
    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/f0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 284
    .line 285
    .line 286
    const/4 v3, 0x2

    .line 287
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 288
    .line 289
    .line 290
    :cond_e
    if-nez v4, :cond_f

    .line 291
    .line 292
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 293
    .line 294
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 295
    .line 296
    new-instance v3, Lcom/google/android/exoplayer2/g0;

    .line 297
    .line 298
    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/g0;-><init>(Lcom/google/android/exoplayer2/b2;)V

    .line 299
    .line 300
    .line 301
    const/16 v0, 0xe

    .line 302
    .line 303
    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 304
    .line 305
    .line 306
    :cond_f
    if-eqz v12, :cond_10

    .line 307
    .line 308
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 309
    .line 310
    new-instance v1, Lcom/google/android/exoplayer2/h0;

    .line 311
    .line 312
    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/h0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 313
    .line 314
    .line 315
    const/4 v3, 0x3

    .line 316
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 317
    .line 318
    .line 319
    :cond_10
    const/4 v0, -0x1

    .line 320
    if-nez v5, :cond_11

    .line 321
    .line 322
    if-eqz v2, :cond_12

    .line 323
    .line 324
    :cond_11
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 325
    .line 326
    new-instance v3, Lcom/google/android/exoplayer2/i0;

    .line 327
    .line 328
    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/i0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 332
    .line 333
    .line 334
    :cond_12
    if-eqz v5, :cond_13

    .line 335
    .line 336
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 337
    .line 338
    new-instance v3, Lcom/google/android/exoplayer2/j0;

    .line 339
    .line 340
    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/j0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 341
    .line 342
    .line 343
    const/4 v4, 0x4

    .line 344
    invoke-virtual {v1, v4, v3}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 345
    .line 346
    .line 347
    :cond_13
    if-eqz v2, :cond_14

    .line 348
    .line 349
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 350
    .line 351
    new-instance v2, Lcom/google/android/exoplayer2/u0;

    .line 352
    .line 353
    move/from16 v3, p3

    .line 354
    .line 355
    invoke-direct {v2, v7, v3}, Lcom/google/android/exoplayer2/u0;-><init>(Lcom/google/android/exoplayer2/m2;I)V

    .line 356
    .line 357
    .line 358
    const/4 v3, 0x5

    .line 359
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 360
    .line 361
    .line 362
    :cond_14
    iget v1, v9, Lcom/google/android/exoplayer2/m2;->m:I

    .line 363
    .line 364
    iget v2, v7, Lcom/google/android/exoplayer2/m2;->m:I

    .line 365
    .line 366
    if-eq v1, v2, :cond_15

    .line 367
    .line 368
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 369
    .line 370
    new-instance v2, Lcom/google/android/exoplayer2/v0;

    .line 371
    .line 372
    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/v0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 373
    .line 374
    .line 375
    const/4 v3, 0x6

    .line 376
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 377
    .line 378
    .line 379
    :cond_15
    invoke-static {v9}, Lcom/google/android/exoplayer2/a1;->k1(Lcom/google/android/exoplayer2/m2;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/a1;->k1(Lcom/google/android/exoplayer2/m2;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eq v1, v2, :cond_16

    .line 388
    .line 389
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 390
    .line 391
    new-instance v2, Lcom/google/android/exoplayer2/w0;

    .line 392
    .line 393
    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/w0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 394
    .line 395
    .line 396
    const/4 v3, 0x7

    .line 397
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 398
    .line 399
    .line 400
    :cond_16
    iget-object v1, v9, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 401
    .line 402
    iget-object v2, v7, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 403
    .line 404
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o2;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-nez v1, :cond_17

    .line 409
    .line 410
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 411
    .line 412
    new-instance v2, Lcom/google/android/exoplayer2/x0;

    .line 413
    .line 414
    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/x0;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 415
    .line 416
    .line 417
    const/16 v3, 0xc

    .line 418
    .line 419
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 420
    .line 421
    .line 422
    :cond_17
    if-eqz p4, :cond_18

    .line 423
    .line 424
    iget-object v1, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 425
    .line 426
    new-instance v2, Lcom/google/android/exoplayer2/y0;

    .line 427
    .line 428
    invoke-direct {v2}, Lcom/google/android/exoplayer2/y0;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 432
    .line 433
    .line 434
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/a1;->b2()V

    .line 435
    .line 436
    .line 437
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->f()V

    .line 440
    .line 441
    .line 442
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 443
    .line 444
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 445
    .line 446
    if-eq v0, v1, :cond_19

    .line 447
    .line 448
    iget-object v0, v6, Lcom/google/android/exoplayer2/a1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_19

    .line 459
    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Lcom/google/android/exoplayer2/t$a;

    .line 465
    .line 466
    iget-boolean v2, v7, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 467
    .line 468
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/t$a;->x(Z)V

    .line 469
    .line 470
    .line 471
    goto :goto_3

    .line 472
    :cond_19
    return-void
.end method

.method public static synthetic e0(Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/a1;->p1(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e2(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->d(I)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic f0(Lcom/google/android/exoplayer2/w1;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->x1(Lcom/google/android/exoplayer2/w1;ILcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f1(J)Lcom/google/android/exoplayer2/p2$e;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 18
    .line 19
    iget-object v1, v1, Lv9/j;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/google/android/exoplayer2/l3$d;->c:Lcom/google/android/exoplayer2/w1;

    .line 51
    .line 52
    move v5, v0

    .line 53
    move-object v12, v4

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v3

    .line 56
    move-object v3, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    const/4 v1, -0x1

    .line 60
    move-object v3, v0

    .line 61
    move-object v4, v3

    .line 62
    move v5, v1

    .line 63
    move-object v1, v4

    .line 64
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    new-instance p1, Lcom/google/android/exoplayer2/p2$e;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 73
    .line 74
    invoke-virtual {p2}, Lv9/j;->b()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/google/android/exoplayer2/a1;->h1(Lcom/google/android/exoplayer2/m2;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-wide v8, v6

    .line 92
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 95
    .line 96
    iget v10, p2, Lv9/j;->b:I

    .line 97
    .line 98
    iget v11, p2, Lv9/j;->c:I

    .line 99
    .line 100
    move-object v0, p1

    .line 101
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/p2$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/w1;Ljava/lang/Object;IJJII)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method private f2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->Z0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->C:Lcom/google/android/exoplayer2/r3;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlayWhenReady()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/r3;->b(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->D:Lcom/google/android/exoplayer2/s3;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlayWhenReady()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s3;->b(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->C:Lcom/google/android/exoplayer2/r3;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/r3;->b(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->D:Lcom/google/android/exoplayer2/s3;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/s3;->b(Z)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public static synthetic g0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->I1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g1(ILcom/google/android/exoplayer2/m2;I)Lcom/google/android/exoplayer2/p2$e;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/l3$b;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/google/android/exoplayer2/l3$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 20
    .line 21
    iget-object v3, v3, Lv9/j;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 24
    .line 25
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 26
    .line 27
    .line 28
    iget v5, v2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 29
    .line 30
    iget-object v6, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 31
    .line 32
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v7, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 37
    .line 38
    iget-object v8, v0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 39
    .line 40
    invoke-virtual {v7, v5, v8}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v7, v7, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v8, v0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 47
    .line 48
    iget-object v8, v8, Lcom/google/android/exoplayer2/l3$d;->c:Lcom/google/android/exoplayer2/w1;

    .line 49
    .line 50
    move-object v9, v3

    .line 51
    move v10, v6

    .line 52
    move-object v6, v7

    .line 53
    move v7, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    move/from16 v7, p3

    .line 57
    .line 58
    move-object v6, v3

    .line 59
    move-object v8, v6

    .line 60
    move-object v9, v8

    .line 61
    move v10, v4

    .line 62
    :goto_0
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 65
    .line 66
    invoke-virtual {v3}, Lv9/j;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 73
    .line 74
    iget v4, v3, Lv9/j;->b:I

    .line 75
    .line 76
    iget v3, v3, Lv9/j;->c:I

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/l3$b;->e(II)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/a1;->h1(Lcom/google/android/exoplayer2/m2;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 88
    .line 89
    iget v3, v3, Lv9/j;->e:I

    .line 90
    .line 91
    if-eq v3, v4, :cond_2

    .line 92
    .line 93
    iget-object v2, v0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/google/android/exoplayer2/a1;->h1(Lcom/google/android/exoplayer2/m2;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    :goto_1
    move-wide v4, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplayer2/l3$b;->e:J

    .line 102
    .line 103
    iget-wide v11, v2, Lcom/google/android/exoplayer2/l3$b;->d:J

    .line 104
    .line 105
    add-long v2, v3, v11

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 109
    .line 110
    invoke-virtual {v3}, Lv9/j;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    iget-wide v2, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 117
    .line 118
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/a1;->h1(Lcom/google/android/exoplayer2/m2;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/l3$b;->e:J

    .line 124
    .line 125
    iget-wide v4, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 126
    .line 127
    add-long/2addr v2, v4

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    new-instance v17, Lcom/google/android/exoplayer2/p2$e;

    .line 130
    .line 131
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v13

    .line 139
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 140
    .line 141
    iget v15, v1, Lv9/j;->b:I

    .line 142
    .line 143
    iget v1, v1, Lv9/j;->c:I

    .line 144
    .line 145
    move-object/from16 v5, v17

    .line 146
    .line 147
    move/from16 v16, v1

    .line 148
    .line 149
    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/p2$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/w1;Ljava/lang/Object;IJJII)V

    .line 150
    .line 151
    .line 152
    return-object v17
.end method

.method private g2()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->d:Lcom/google/android/exoplayer2/util/h;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h;->c()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->l()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->l()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v1, v3, v4

    .line 46
    .line 47
    aput-object v2, v3, v0

    .line 48
    .line 49
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a1;->l0:Z

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a1;->m0:Z

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_0
    const-string v3, "ExoPlayerImpl"

    .line 71
    .line 72
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->m0:Z

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic h0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->H1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static h1(Lcom/google/android/exoplayer2/m2;)J
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/l3$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/l3$d;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/l3$b;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/exoplayer2/l3$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 14
    .line 15
    iget-object v3, v3, Lv9/j;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 21
    .line 22
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 32
    .line 33
    iget v1, v1, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/l3$d;->f()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3$b;->q()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v2, p0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    :goto_0
    return-wide v0
.end method

.method public static synthetic i0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->C1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i1(Lcom/google/android/exoplayer2/m1$e;)V
    .locals 12

    .line 1
    iget v1, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 2
    .line 3
    iget v2, p1, Lcom/google/android/exoplayer2/m1$e;->c:I

    .line 4
    .line 5
    sub-int/2addr v1, v2

    .line 6
    iput v1, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 7
    .line 8
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/m1$e;->d:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v2, p1, Lcom/google/android/exoplayer2/m1$e;->e:I

    .line 14
    .line 15
    iput v2, p0, Lcom/google/android/exoplayer2/a1;->I:I

    .line 16
    .line 17
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/a1;->J:Z

    .line 18
    .line 19
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/m1$e;->f:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v2, p1, Lcom/google/android/exoplayer2/m1$e;->g:I

    .line 24
    .line 25
    iput v2, p0, Lcom/google/android/exoplayer2/a1;->K:I

    .line 26
    .line 27
    :cond_1
    if-nez v1, :cond_b

    .line 28
    .line 29
    iget-object v1, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    iput v2, p0, Lcom/google/android/exoplayer2/a1;->u0:I

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    iput-wide v5, p0, Lcom/google/android/exoplayer2/a1;->w0:J

    .line 56
    .line 57
    iput v4, p0, Lcom/google/android/exoplayer2/a1;->v0:I

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    move-object v2, v1

    .line 66
    check-cast v2, Lcom/google/android/exoplayer2/u2;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u2;->K()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iget-object v6, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ne v5, v6, :cond_3

    .line 83
    .line 84
    move v5, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move v5, v4

    .line 87
    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 88
    .line 89
    .line 90
    move v5, v4

    .line 91
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-ge v5, v6, :cond_4

    .line 96
    .line 97
    iget-object v6, p0, Lcom/google/android/exoplayer2/a1;->o:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lcom/google/android/exoplayer2/a1$e;

    .line 104
    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lcom/google/android/exoplayer2/l3;

    .line 110
    .line 111
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/a1$e;->c(Lcom/google/android/exoplayer2/a1$e;Lcom/google/android/exoplayer2/l3;)Lcom/google/android/exoplayer2/l3;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a1;->J:Z

    .line 118
    .line 119
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-eqz v2, :cond_a

    .line 125
    .line 126
    iget-object v2, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 129
    .line 130
    iget-object v7, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 131
    .line 132
    iget-object v7, v7, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    iget-object v2, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 141
    .line 142
    iget-wide v7, v2, Lcom/google/android/exoplayer2/m2;->d:J

    .line 143
    .line 144
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 145
    .line 146
    iget-wide v10, v2, Lcom/google/android/exoplayer2/m2;->r:J

    .line 147
    .line 148
    cmp-long v2, v7, v10

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v3, v4

    .line 154
    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_8

    .line 161
    .line 162
    iget-object v2, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 165
    .line 166
    invoke-virtual {v2}, Lv9/j;->b()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    iget-object v2, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 174
    .line 175
    iget-object v5, v2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 176
    .line 177
    iget-wide v6, v2, Lcom/google/android/exoplayer2/m2;->d:J

    .line 178
    .line 179
    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/exoplayer2/a1;->M1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 185
    .line 186
    iget-wide v1, v1, Lcom/google/android/exoplayer2/m2;->d:J

    .line 187
    .line 188
    :goto_4
    move-wide v7, v1

    .line 189
    :goto_5
    move v5, v3

    .line 190
    goto :goto_6

    .line 191
    :cond_9
    move-wide v7, v5

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    move-wide v7, v5

    .line 194
    move v5, v4

    .line 195
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/a1;->J:Z

    .line 196
    .line 197
    iget-object v1, p1, Lcom/google/android/exoplayer2/m1$e;->b:Lcom/google/android/exoplayer2/m2;

    .line 198
    .line 199
    iget v3, p0, Lcom/google/android/exoplayer2/a1;->K:I

    .line 200
    .line 201
    iget v6, p0, Lcom/google/android/exoplayer2/a1;->I:I

    .line 202
    .line 203
    const/4 v9, -0x1

    .line 204
    const/4 v2, 0x1

    .line 205
    const/4 v4, 0x0

    .line 206
    move-object v0, p0

    .line 207
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 208
    .line 209
    .line 210
    :cond_b
    return-void
.end method

.method public static synthetic j0(Lna/z;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->s1(Lna/z;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j1(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/media/AudioTrack;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    const/4 v7, 0x0

    .line 27
    const/16 v3, 0xfa0

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x2

    .line 32
    move-object v1, v0

    .line 33
    move v8, p1

    .line 34
    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public static synthetic k0(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->D1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static k1(Lcom/google/android/exoplayer2/m2;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/google/android/exoplayer2/m2;->m:I

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static synthetic l0(ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->q1(ILcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l1(IILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/p2$d;->onSurfaceSizeChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(ZLcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a1;->r1(ZLcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m1(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->f:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/p2$c;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/p2$c;-><init>(Lcom/google/android/exoplayer2/util/m;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/p2$d;->onEvents(Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/p2$c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic n0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->S:Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    return-object p1
.end method

.method private synthetic n1(Lcom/google/android/exoplayer2/m1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->i1(Lcom/google/android/exoplayer2/m1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o0(Lcom/google/android/exoplayer2/a1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a1;->j0:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic o1(Lcom/google/android/exoplayer2/m1$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->i:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/q0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/q0;-><init>(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/m1$e;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic p0(Lcom/google/android/exoplayer2/a1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a1;->j0:Z

    .line 2
    .line 3
    return p1
.end method

.method private static synthetic p1(Lcom/google/android/exoplayer2/p2$d;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x3eb

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/p2$d;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic q0(Lcom/google/android/exoplayer2/a1;Lda/f;)Lda/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->k0:Lda/f;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic q1(ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onRepeatModeChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic r1(ZLcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onShuffleModeEnabledChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->s0:Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic s1(Lna/z;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onTrackSelectionParametersChanged(Lna/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->S0()Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic t1(FLcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onVolumeChanged(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u0(Lcom/google/android/exoplayer2/a1;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic u1(Lcom/google/android/exoplayer2/p2$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->O:Lcom/google/android/exoplayer2/p2$b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/p2$d;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/p2$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic v0(Lcom/google/android/exoplayer2/a1;Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic v1(Lcom/google/android/exoplayer2/m2;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/p2$d;->onTimelineChanged(Lcom/google/android/exoplayer2/l3;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic w0(Lcom/google/android/exoplayer2/a1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a1;->Y:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic w1(ILcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/p2$d;->onPositionDiscontinuity(I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/p2$d;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic x0(Lcom/google/android/exoplayer2/a1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic x1(Lcom/google/android/exoplayer2/w1;ILcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/p2$d;->onMediaItemTransition(Lcom/google/android/exoplayer2/w1;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y0(Lcom/google/android/exoplayer2/a1;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic z0(Lcom/google/android/exoplayer2/a1;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->W1(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/p2$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/p2$d;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/exoplayer2/p2$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/r;->k(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public D(Lna/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lna/b0;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lna/b0;->b()Lna/z;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lna/z;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lna/b0;->j(Lna/z;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/exoplayer2/p0;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/p0;-><init>(Lna/z;)V

    .line 35
    .line 36
    .line 37
    const/16 p1, 0x13

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public E(Lcom/google/android/exoplayer2/p2$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public P0(Lg9/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lg9/a;->q(Lg9/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Q0(Lcom/google/android/exoplayer2/t$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S1(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/a1;->T1(Ljava/util/List;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public T0(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->clearVideoSurface()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public T1(Ljava/util/List;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/a1;->U1(Ljava/util/List;IJZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Y1(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->clearVideoSurface()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->Y:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->W:Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public Z0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 7
    .line 8
    return v0
.end method

.method public Z1(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlayWhenReady()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/f;->p(ZI)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/a1;->a2(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lda/f;->b:Lda/f;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->k0:Lda/f;

    .line 21
    .line 22
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a1;->S1(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/o2;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/exoplayer2/o2;->d:Lcom/google/android/exoplayer2/o2;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o2;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m2;->f(Lcom/google/android/exoplayer2/o2;)Lcom/google/android/exoplayer2/m2;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m1;->P0(Lcom/google/android/exoplayer2/o2;)V

    .line 34
    .line 35
    .line 36
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v10, -0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x5

    .line 47
    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public bridge synthetic c()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->e1()Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a1;->T0(Landroid/view/SurfaceHolder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->Z:Landroid/view/TextureView;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->clearVideoSurface()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->q:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public e(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->W0(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a1;->T1(Ljava/util/List;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e1()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 7
    .line 8
    return-object v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 15
    .line 16
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 24
    .line 25
    iget-wide v1, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$d;->e()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$b;->p()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 60
    .line 61
    iget-wide v2, v2, Lcom/google/android/exoplayer2/m2;->c:J

    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    add-long/2addr v0, v2

    .line 68
    :goto_0
    return-wide v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getCurrentPosition()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 13
    .line 14
    iget v0, v0, Lv9/j;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 13
    .line 14
    iget v0, v0, Lv9/j;->c:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->v0:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 22
    .line 23
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->a1(Lcom/google/android/exoplayer2/m2;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/l3;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 7
    .line 8
    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/q3;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 7
    .line 8
    iget-object v0, v0, Lna/c0;->d:Lcom/google/android/exoplayer2/q3;

    .line 9
    .line 10
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 15
    .line 16
    iget-object v2, v1, Lv9/j;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 24
    .line 25
    iget v2, v1, Lv9/j;->b:I

    .line 26
    .line 27
    iget v1, v1, Lv9/j;->c:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/l3$b;->e(II)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g;->F()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/o2;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 7
    .line 8
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget v0, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->F:I

    .line 5
    .line 6
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 5
    .line 6
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->i0:F

    .line 5
    .line 6
    return v0
.end method

.method public h()Lda/f;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k0:Lda/f;

    .line 5
    .line 6
    return-object v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lv9/j;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget v0, v0, Lcom/google/android/exoplayer2/m2;->m:I

    .line 7
    .line 8
    return v0
.end method

.method public l()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->s:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lna/z;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lna/b0;->b()Lna/z;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public o()Lcom/google/android/exoplayer2/p2$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->O:Lcom/google/android/exoplayer2/p2$b;

    .line 5
    .line 6
    return-object v0
.end method

.method public p()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0xbb8

    .line 5
    .line 6
    return-wide v0
.end method

.method public prepare()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlayWhenReady()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/f;->p(ZI)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a1;->d1(ZI)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/a1;->c2(ZII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 23
    .line 24
    iget v1, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 49
    .line 50
    add-int/2addr v0, v3

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m1;->g0()V

    .line 56
    .line 57
    .line 58
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v13, -0x1

    .line 64
    const/4 v6, 0x1

    .line 65
    const/4 v7, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x5

    .line 69
    move-object v4, p0

    .line 70
    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public q()Lcom/google/android/exoplayer2/video/y;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->r0:Lcom/google/android/exoplayer2/video/y;

    .line 5
    .line 6
    return-object v0
.end method

.method public release()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Release "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "ExoPlayerLib/2.18.1"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "] ["

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lcom/google/android/exoplayer2/util/p0;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/exoplayer2/n1;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "]"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ExoPlayerImpl"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 67
    .line 68
    .line 69
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 70
    .line 71
    const/16 v1, 0x15

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    if-ge v0, v1, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lcom/google/android/exoplayer2/a1;->T:Landroid/media/AudioTrack;

    .line 84
    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->z:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->b(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->B:Lcom/google/android/exoplayer2/g3;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g3;->g()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->C:Lcom/google/android/exoplayer2/r3;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r3;->b(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->D:Lcom/google/android/exoplayer2/s3;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s3;->b(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f;->i()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m1;->i0()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 120
    .line 121
    new-instance v3, Lcom/google/android/exoplayer2/m0;

    .line 122
    .line 123
    invoke-direct {v3}, Lcom/google/android/exoplayer2/m0;-><init>()V

    .line 124
    .line 125
    .line 126
    const/16 v4, 0xa

    .line 127
    .line 128
    invoke-virtual {v0, v4, v3}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->j()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->i:Lcom/google/android/exoplayer2/util/o;

    .line 137
    .line 138
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/o;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t:Lcom/google/android/exoplayer2/upstream/e;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 144
    .line 145
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/e;->d(Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 149
    .line 150
    const/4 v3, 0x1

    .line 151
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 156
    .line 157
    iget-object v4, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 164
    .line 165
    iget-wide v4, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 166
    .line 167
    iput-wide v4, v0, Lcom/google/android/exoplayer2/m2;->p:J

    .line 168
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 170
    .line 171
    const-wide/16 v4, 0x0

    .line 172
    .line 173
    iput-wide v4, v0, Lcom/google/android/exoplayer2/m2;->q:J

    .line 174
    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 176
    .line 177
    invoke-interface {v0}, Lg9/a;->release()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->h:Lna/b0;

    .line 181
    .line 182
    invoke-virtual {v0}, Lna/b0;->g()V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->V:Landroid/view/Surface;

    .line 189
    .line 190
    if-eqz v0, :cond_2

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 193
    .line 194
    .line 195
    iput-object v2, p0, Lcom/google/android/exoplayer2/a1;->V:Landroid/view/Surface;

    .line 196
    .line 197
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 198
    .line 199
    if-eqz v0, :cond_3

    .line 200
    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->n0:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->d(I)V

    .line 210
    .line 211
    .line 212
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a1;->o0:Z

    .line 213
    .line 214
    :cond_3
    sget-object v0, Lda/f;->b:Lda/f;

    .line 215
    .line 216
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->k0:Lda/f;

    .line 217
    .line 218
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/a1;->p0:Z

    .line 219
    .line 220
    return-void
.end method

.method public s()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a1;->v:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public seekTo(IJ)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->r:Lg9/a;

    .line 5
    .line 6
    invoke-interface {v3}, Lg9/a;->m()V

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 12
    .line 13
    if-ltz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge p1, v4, :cond_3

    .line 26
    .line 27
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    add-int/2addr v4, v5

    .line 31
    iput v4, p0, Lcom/google/android/exoplayer2/a1;->H:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->isPlayingAd()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const-string v0, "ExoPlayerImpl"

    .line 40
    .line 41
    const-string v1, "seekTo ignored because an ad is playing"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/m1$e;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/m1$e;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->j:Lcom/google/android/exoplayer2/m1$f;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/m1$f;->a(Lcom/google/android/exoplayer2/m1$e;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlaybackState()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-ne v4, v5, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v5, 0x2

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    iget-object v4, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/google/android/exoplayer2/a1;->K1(Lcom/google/android/exoplayer2/l3;IJ)Landroid/util/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/exoplayer2/a1;->J1(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/m2;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v5, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 89
    .line 90
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/m1;->y0(Lcom/google/android/exoplayer2/l3;IJ)V

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/a1;->a1(Lcom/google/android/exoplayer2/m2;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v3, 0x1

    .line 104
    const/4 v5, 0x1

    .line 105
    const/4 v10, 0x1

    .line 106
    move-object v0, p0

    .line 107
    move-object v1, v4

    .line 108
    move v4, v5

    .line 109
    move v5, v10

    .line 110
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/a1;->d2(Lcom/google/android/exoplayer2/m2;IIZZIJI)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    .line 115
    .line 116
    invoke-direct {v4, v3, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/l3;IJ)V

    .line 117
    .line 118
    .line 119
    throw v4
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->A:Lcom/google/android/exoplayer2/f;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->getPlaybackState()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/f;->p(ZI)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/a1;->d1(ZI)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/a1;->c2(ZII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->F:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/a1;->F:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m1;->R0(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/n0;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/n0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->b2()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/r;->f()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a1;->G:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->k:Lcom/google/android/exoplayer2/m1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m1;->U0(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/b0;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/b0;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x9

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->b2()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/r;->f()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->V1(Landroid/view/SurfaceHolder;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 27
    .line 28
    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->y:Lcom/google/android/exoplayer2/a1$d;

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X0(Lcom/google/android/exoplayer2/t2$b;)Lcom/google/android/exoplayer2/t2;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x2710

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t2;->n(I)Lcom/google/android/exoplayer2/t2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t2;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/t2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/t2;->l()Lcom/google/android/exoplayer2/t2;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->X:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a1;->V1(Landroid/view/SurfaceHolder;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a1;->Y1(Landroid/view/SurfaceHolder;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->clearVideoSurface()V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->P1()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/a1;->Z:Landroid/view/TextureView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "ExoPlayerImpl"

    .line 22
    .line 23
    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->x:Lcom/google/android/exoplayer2/a1$c;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/a1;->X1(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a1;->W1(Landroid/graphics/SurfaceTexture;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a1;->L1(II)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->p(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/a1;->i0:F

    .line 12
    .line 13
    cmpl-float v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/a1;->i0:F

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->R1()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->l:Lcom/google/android/exoplayer2/util/r;

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/exoplayer2/s0;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/s0;-><init>(F)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x16

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a1;->Z1(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->b1()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    return v0
.end method

.method public v()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a1;->w0:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 20
    .line 21
    iget-wide v1, v1, Lv9/j;->d:J

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 24
    .line 25
    iget-wide v3, v3, Lv9/j;->d:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a1;->u()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Lcom/google/android/exoplayer2/l3$d;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$d;->g()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->p:J

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 53
    .line 54
    invoke-virtual {v2}, Lv9/j;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 65
    .line 66
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->n:Lcom/google/android/exoplayer2/l3$b;

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 77
    .line 78
    iget v1, v1, Lv9/j;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l3$b;->i(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-wide/high16 v3, -0x8000000000000000L

    .line 85
    .line 86
    cmp-long v3, v1, v3

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    iget-wide v0, v0, Lcom/google/android/exoplayer2/l3$b;->d:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v0, v1

    .line 94
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/a1;->t0:Lcom/google/android/exoplayer2/m2;

    .line 95
    .line 96
    iget-object v3, v2, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 99
    .line 100
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/a1;->M1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public y()Lcom/google/android/exoplayer2/b2;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/a1;->P:Lcom/google/android/exoplayer2/b2;

    .line 5
    .line 6
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a1;->g2()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a1;->u:J

    .line 5
    .line 6
    return-wide v0
.end method
