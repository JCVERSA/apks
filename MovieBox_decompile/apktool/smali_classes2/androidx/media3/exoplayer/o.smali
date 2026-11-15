.class public Landroidx/media3/exoplayer/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/b4;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/mediacodec/k;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Landroidx/media3/exoplayer/mediacodec/h0;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/k;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/k;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/media3/exoplayer/o;->c:I

    .line 15
    .line 16
    const-wide/16 v0, 0x1388

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/exoplayer/o;->d:J

    .line 19
    .line 20
    sget-object p1, Landroidx/media3/exoplayer/mediacodec/h0;->a:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, Landroidx/media3/exoplayer/o;->k:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/w3;Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Lh2/h;Ld2/b;)Landroidx/media3/exoplayer/w3;
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    invoke-interface {p1}, Landroidx/media3/exoplayer/w3;->getTrackType()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 10
    .line 11
    iget v3, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 12
    .line 13
    iget-object v4, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 14
    .line 15
    iget-boolean v5, v10, Landroidx/media3/exoplayer/o;->e:Z

    .line 16
    .line 17
    iget-wide v8, v10, Landroidx/media3/exoplayer/o;->d:J

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v6, p2

    .line 22
    move-object v7, p3

    .line 23
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/o;->i(Landroidx/media3/exoplayer/w3;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;J)Landroidx/media3/exoplayer/w3;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public b(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Lh2/h;Ld2/b;)[Landroidx/media3/exoplayer/w3;
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 10
    .line 11
    iget-object v3, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 12
    .line 13
    iget-boolean v4, v10, Landroidx/media3/exoplayer/o;->e:Z

    .line 14
    .line 15
    iget-wide v7, v10, Landroidx/media3/exoplayer/o;->d:J

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p2

    .line 20
    move-object v9, v11

    .line 21
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/o;->k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-boolean v1, v10, Landroidx/media3/exoplayer/o;->g:Z

    .line 27
    .line 28
    iget-boolean v2, v10, Landroidx/media3/exoplayer/o;->h:Z

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/o;->d(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget v2, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 39
    .line 40
    iget-object v3, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 41
    .line 42
    iget-boolean v4, v10, Landroidx/media3/exoplayer/o;->e:Z

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    move-object v6, p1

    .line 46
    move-object v7, p3

    .line 47
    move-object v8, v11

    .line 48
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/o;->c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget v4, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 58
    .line 59
    move-object v0, p0

    .line 60
    move-object/from16 v2, p4

    .line 61
    .line 62
    move-object v5, v11

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/o;->j(Landroid/content/Context;Lh2/h;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget v4, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 73
    .line 74
    move-object/from16 v2, p5

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/o;->g(Landroid/content/Context;Ld2/b;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 80
    .line 81
    iget v1, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1, v11}, Landroidx/media3/exoplayer/o;->e(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v11}, Landroidx/media3/exoplayer/o;->f(Ljava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    .line 90
    .line 91
    iget v1, v10, Landroidx/media3/exoplayer/o;->c:I

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    invoke-virtual {p0, v0, p1, v1, v11}, Landroidx/media3/exoplayer/o;->h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Landroidx/media3/exoplayer/w3;

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [Landroidx/media3/exoplayer/w3;

    .line 105
    .line 106
    return-object v0
.end method

.method protected c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V
    .locals 20

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    const-class v7, Landroid/content/Context;

    .line 10
    .line 11
    const-string v8, "DefaultRenderersFactory"

    .line 12
    .line 13
    const-class v9, Landroidx/media3/exoplayer/audio/AudioSink;

    .line 14
    .line 15
    const-class v10, Landroidx/media3/exoplayer/audio/x;

    .line 16
    .line 17
    const-class v11, Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v15, Landroidx/media3/exoplayer/audio/a1;

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 22
    .line 23
    .line 24
    move-result-object v14

    .line 25
    move-object v12, v15

    .line 26
    move-object/from16 v13, p1

    .line 27
    .line 28
    move-object v3, v15

    .line 29
    move-object/from16 v15, p3

    .line 30
    .line 31
    move/from16 v16, p4

    .line 32
    .line 33
    move-object/from16 v17, p6

    .line 34
    .line 35
    move-object/from16 v18, p7

    .line 36
    .line 37
    move-object/from16 v19, p5

    .line 38
    .line 39
    invoke-direct/range {v12 .. v19}, Landroidx/media3/exoplayer/audio/a1;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ne v0, v5, :cond_1

    .line 53
    .line 54
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    :cond_1
    :try_start_0
    const-string v0, "androidx.media3.decoder.midi.MidiRenderer"

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-array v12, v2, [Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v7, v12, v4

    .line 65
    .line 66
    aput-object v11, v12, v6

    .line 67
    .line 68
    aput-object v10, v12, v5

    .line 69
    .line 70
    const/4 v13, 0x3

    .line 71
    aput-object v9, v12, v13

    .line 72
    .line 73
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-array v12, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, v12, v4

    .line 80
    .line 81
    aput-object p6, v12, v6

    .line 82
    .line 83
    aput-object p7, v12, v5

    .line 84
    .line 85
    const/4 v13, 0x3

    .line 86
    aput-object p5, v12, v13

    .line 87
    .line 88
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    add-int/lit8 v12, v3, 0x1

    .line 95
    .line 96
    :try_start_1
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "Loaded MidiRenderer."

    .line 100
    .line 101
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto :goto_0

    .line 107
    :catch_1
    move v3, v12

    .line 108
    goto :goto_1

    .line 109
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v2, "Error instantiating MIDI extension"

    .line 112
    .line 113
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :catch_2
    :goto_1
    move v12, v3

    .line 118
    :goto_2
    :try_start_2
    const-string v0, "androidx.media3.decoder.opus.LibopusAudioRenderer"

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v3, 0x3

    .line 125
    new-array v13, v3, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v11, v13, v4

    .line 128
    .line 129
    aput-object v10, v13, v6

    .line 130
    .line 131
    aput-object v9, v13, v5

    .line 132
    .line 133
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-array v13, v3, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object p6, v13, v4

    .line 140
    .line 141
    aput-object p7, v13, v6

    .line 142
    .line 143
    aput-object p5, v13, v5

    .line 144
    .line 145
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    .line 151
    add-int/lit8 v3, v12, 0x1

    .line 152
    .line 153
    :try_start_3
    invoke-virtual {v1, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "Loaded LibopusAudioRenderer."

    .line 157
    .line 158
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :catch_3
    move-exception v0

    .line 163
    goto :goto_3

    .line 164
    :catch_4
    move v12, v3

    .line 165
    goto :goto_4

    .line 166
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string v2, "Error instantiating Opus extension"

    .line 169
    .line 170
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :catch_5
    :goto_4
    move v3, v12

    .line 175
    :goto_5
    :try_start_4
    const-string v0, "androidx.media3.decoder.flac.LibflacAudioRenderer"

    .line 176
    .line 177
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/4 v12, 0x3

    .line 182
    new-array v13, v12, [Ljava/lang/Class;

    .line 183
    .line 184
    aput-object v11, v13, v4

    .line 185
    .line 186
    aput-object v10, v13, v6

    .line 187
    .line 188
    aput-object v9, v13, v5

    .line 189
    .line 190
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-array v13, v12, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object p6, v13, v4

    .line 197
    .line 198
    aput-object p7, v13, v6

    .line 199
    .line 200
    aput-object p5, v13, v5

    .line 201
    .line 202
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 207
    .line 208
    add-int/lit8 v12, v3, 0x1

    .line 209
    .line 210
    :try_start_5
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    const-string v0, "Loaded LibflacAudioRenderer."

    .line 214
    .line 215
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :catch_6
    move-exception v0

    .line 220
    goto :goto_6

    .line 221
    :catch_7
    move v3, v12

    .line 222
    goto :goto_7

    .line 223
    :goto_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v2, "Error instantiating FLAC extension"

    .line 226
    .line 227
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    throw v1

    .line 231
    :catch_8
    :goto_7
    move v12, v3

    .line 232
    :goto_8
    :try_start_6
    const-string v0, "androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer"

    .line 233
    .line 234
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const/4 v3, 0x3

    .line 239
    new-array v13, v3, [Ljava/lang/Class;

    .line 240
    .line 241
    aput-object v11, v13, v4

    .line 242
    .line 243
    aput-object v10, v13, v6

    .line 244
    .line 245
    aput-object v9, v13, v5

    .line 246
    .line 247
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-array v13, v3, [Ljava/lang/Object;

    .line 252
    .line 253
    aput-object p6, v13, v4

    .line 254
    .line 255
    aput-object p7, v13, v6

    .line 256
    .line 257
    aput-object p5, v13, v5

    .line 258
    .line 259
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 264
    .line 265
    add-int/lit8 v3, v12, 0x1

    .line 266
    .line 267
    :try_start_7
    invoke-virtual {v1, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 271
    .line 272
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :catch_9
    move-exception v0

    .line 277
    goto :goto_9

    .line 278
    :catch_a
    move v12, v3

    .line 279
    goto :goto_a

    .line 280
    :goto_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    const-string v2, "Error instantiating FFmpeg extension"

    .line 283
    .line 284
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    throw v1

    .line 288
    :catch_b
    :goto_a
    move v3, v12

    .line 289
    :goto_b
    :try_start_8
    const-string v0, "androidx.media3.decoder.iamf.LibiamfAudioRenderer"

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-array v12, v2, [Ljava/lang/Class;

    .line 296
    .line 297
    aput-object v7, v12, v4

    .line 298
    .line 299
    aput-object v11, v12, v6

    .line 300
    .line 301
    aput-object v10, v12, v5

    .line 302
    .line 303
    const/4 v7, 0x3

    .line 304
    aput-object v9, v12, v7

    .line 305
    .line 306
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-array v2, v2, [Ljava/lang/Object;

    .line 311
    .line 312
    aput-object p1, v2, v4

    .line 313
    .line 314
    aput-object p6, v2, v6

    .line 315
    .line 316
    aput-object p7, v2, v5

    .line 317
    .line 318
    const/4 v7, 0x3

    .line 319
    aput-object p5, v2, v7

    .line 320
    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 326
    .line 327
    add-int/lit8 v2, v3, 0x1

    .line 328
    .line 329
    :try_start_9
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    const-string v0, "Loaded LibiamfAudioRenderer."

    .line 333
    .line 334
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 335
    .line 336
    .line 337
    goto :goto_e

    .line 338
    :catch_c
    move-exception v0

    .line 339
    goto :goto_c

    .line 340
    :catch_d
    move v3, v2

    .line 341
    goto :goto_d

    .line 342
    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 343
    .line 344
    const-string v2, "Error instantiating IAMF extension"

    .line 345
    .line 346
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    throw v1

    .line 350
    :catch_e
    :goto_d
    move v2, v3

    .line 351
    :goto_e
    :try_start_a
    const-string v0, "androidx.media3.decoder.mpegh.MpeghAudioRenderer"

    .line 352
    .line 353
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const/4 v3, 0x3

    .line 358
    new-array v7, v3, [Ljava/lang/Class;

    .line 359
    .line 360
    aput-object v11, v7, v4

    .line 361
    .line 362
    aput-object v10, v7, v6

    .line 363
    .line 364
    aput-object v9, v7, v5

    .line 365
    .line 366
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-array v3, v3, [Ljava/lang/Object;

    .line 371
    .line 372
    aput-object p6, v3, v4

    .line 373
    .line 374
    aput-object p7, v3, v6

    .line 375
    .line 376
    aput-object p5, v3, v5

    .line 377
    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroidx/media3/exoplayer/w3;

    .line 383
    .line 384
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    const-string v0, "Loaded MpeghAudioRenderer."

    .line 388
    .line 389
    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    .line 390
    .line 391
    .line 392
    goto :goto_f

    .line 393
    :catch_f
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 395
    .line 396
    const-string v2, "Error instantiating MPEG-H extension"

    .line 397
    .line 398
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    throw v1

    .line 402
    :catch_10
    :goto_f
    return-void
.end method

.method protected d(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->o(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->n(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->j()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected e(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lj2/b;

    .line 2
    .line 3
    invoke-direct {p1}, Lj2/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected f(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    new-instance v0, Lc2/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/o;->n()Lc2/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lc2/e;-><init>(Lc2/c$a;Landroidx/media3/exoplayer/image/ImageOutput;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected g(Landroid/content/Context;Ld2/b;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Ld2/c;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Ld2/c;-><init>(Ld2/b;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    new-instance p1, Ld2/c;

    .line 10
    .line 11
    invoke-direct {p1, p2, p3}, Ld2/c;-><init>(Ld2/b;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected i(Landroidx/media3/exoplayer/w3;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;J)Landroidx/media3/exoplayer/w3;
    .locals 0

    .line 1
    iget-boolean p3, p0, Landroidx/media3/exoplayer/o;->i:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class p3, Landroidx/media3/exoplayer/video/j;

    .line 10
    .line 11
    if-ne p1, p3, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/exoplayer/video/j$d;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/video/j$d;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->q(Landroidx/media3/exoplayer/mediacodec/t$b;)Landroidx/media3/exoplayer/video/j$d;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/j$d;->v(Landroidx/media3/exoplayer/mediacodec/h0;)Landroidx/media3/exoplayer/video/j$d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p8, p9}, Landroidx/media3/exoplayer/video/j$d;->p(J)Landroidx/media3/exoplayer/video/j$d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p5}, Landroidx/media3/exoplayer/video/j$d;->r(Z)Landroidx/media3/exoplayer/video/j$d;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p6}, Landroidx/media3/exoplayer/video/j$d;->s(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/j$d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p7}, Landroidx/media3/exoplayer/video/j$d;->t(Landroidx/media3/exoplayer/video/i0;)Landroidx/media3/exoplayer/video/j$d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 p2, 0x32

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->u(I)Landroidx/media3/exoplayer/video/j$d;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-boolean p2, p0, Landroidx/media3/exoplayer/o;->j:Z

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->o(Z)Landroidx/media3/exoplayer/video/j$d;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-wide p2, p0, Landroidx/media3/exoplayer/o;->k:J

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/video/j$d;->n(J)Landroidx/media3/exoplayer/video/j$d;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/j$d;->m()Landroidx/media3/exoplayer/video/j;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    return-object p1
.end method

.method protected j(Landroid/content/Context;Lh2/h;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lh2/i;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lh2/i;-><init>(Lh2/h;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p9

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x4

    .line 13
    const/4 v8, 0x2

    .line 14
    const-string v10, "DefaultRenderersFactory"

    .line 15
    .line 16
    const-class v11, Landroidx/media3/exoplayer/video/i0;

    .line 17
    .line 18
    const-class v12, Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v13, Landroidx/media3/exoplayer/video/j$d;

    .line 21
    .line 22
    move-object/from16 v14, p1

    .line 23
    .line 24
    invoke-direct {v13, v14}, Landroidx/media3/exoplayer/video/j$d;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 28
    .line 29
    .line 30
    move-result-object v14

    .line 31
    invoke-virtual {v13, v14}, Landroidx/media3/exoplayer/video/j$d;->q(Landroidx/media3/exoplayer/mediacodec/t$b;)Landroidx/media3/exoplayer/video/j$d;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    move-object/from16 v14, p3

    .line 36
    .line 37
    invoke-virtual {v13, v14}, Landroidx/media3/exoplayer/video/j$d;->v(Landroidx/media3/exoplayer/mediacodec/h0;)Landroidx/media3/exoplayer/video/j$d;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    move-wide/from16 v14, p7

    .line 42
    .line 43
    invoke-virtual {v13, v14, v15}, Landroidx/media3/exoplayer/video/j$d;->p(J)Landroidx/media3/exoplayer/video/j$d;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    move/from16 v5, p4

    .line 48
    .line 49
    invoke-virtual {v13, v5}, Landroidx/media3/exoplayer/video/j$d;->r(Z)Landroidx/media3/exoplayer/video/j$d;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/video/j$d;->s(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/j$d;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/video/j$d;->t(Landroidx/media3/exoplayer/video/i0;)Landroidx/media3/exoplayer/video/j$d;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v13, 0x32

    .line 62
    .line 63
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v17

    .line 67
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/video/j$d;->u(I)Landroidx/media3/exoplayer/video/j$d;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-boolean v13, v1, Landroidx/media3/exoplayer/o;->j:Z

    .line 72
    .line 73
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/video/j$d;->o(Z)Landroidx/media3/exoplayer/video/j$d;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    move-object/from16 v18, v10

    .line 78
    .line 79
    iget-wide v9, v1, Landroidx/media3/exoplayer/o;->k:J

    .line 80
    .line 81
    invoke-virtual {v5, v9, v10}, Landroidx/media3/exoplayer/video/j$d;->n(J)Landroidx/media3/exoplayer/video/j$d;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroidx/media3/exoplayer/video/j$d;->m()Landroidx/media3/exoplayer/video/j;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-ne v0, v8, :cond_1

    .line 100
    .line 101
    add-int/lit8 v5, v5, -0x1

    .line 102
    .line 103
    :cond_1
    :try_start_0
    const-string v0, "androidx.media3.decoder.vp9.LibvpxVideoRenderer"

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-array v9, v7, [Ljava/lang/Class;

    .line 110
    .line 111
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 112
    .line 113
    aput-object v10, v9, v6

    .line 114
    .line 115
    const/4 v10, 0x1

    .line 116
    aput-object v12, v9, v10

    .line 117
    .line 118
    aput-object v11, v9, v8

    .line 119
    .line 120
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    const/16 v16, 0x3

    .line 123
    .line 124
    aput-object v10, v9, v16

    .line 125
    .line 126
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    new-array v10, v7, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v9, v10, v6

    .line 137
    .line 138
    const/4 v9, 0x1

    .line 139
    aput-object v2, v10, v9

    .line 140
    .line 141
    aput-object v3, v10, v8

    .line 142
    .line 143
    const/4 v13, 0x3

    .line 144
    aput-object v17, v10, v13

    .line 145
    .line 146
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    add-int/lit8 v10, v5, 0x1

    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "Loaded LibvpxVideoRenderer."
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .line 159
    move-object/from16 v9, v18

    .line 160
    .line 161
    :try_start_2
    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    goto :goto_1

    .line 167
    :catch_1
    :goto_0
    move v5, v10

    .line 168
    goto :goto_2

    .line 169
    :catch_2
    move-object/from16 v9, v18

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :catch_3
    move-object/from16 v9, v18

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v3, "Error instantiating VP9 extension"

    .line 178
    .line 179
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v2

    .line 183
    :goto_2
    move v10, v5

    .line 184
    :goto_3
    :try_start_3
    const-class v0, Landroidx/media3/decoder/av1/c;

    .line 185
    .line 186
    sget v5, Landroidx/media3/decoder/av1/c;->c0:I

    .line 187
    .line 188
    new-array v5, v7, [Ljava/lang/Class;

    .line 189
    .line 190
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 191
    .line 192
    aput-object v18, v5, v6

    .line 193
    .line 194
    const/4 v13, 0x1

    .line 195
    aput-object v12, v5, v13

    .line 196
    .line 197
    aput-object v11, v5, v8

    .line 198
    .line 199
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    .line 201
    const/16 v16, 0x3

    .line 202
    .line 203
    aput-object v18, v5, v16

    .line 204
    .line 205
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    new-array v13, v7, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v5, v13, v6

    .line 216
    .line 217
    const/4 v5, 0x1

    .line 218
    aput-object v2, v13, v5

    .line 219
    .line 220
    aput-object v3, v13, v8

    .line 221
    .line 222
    const/16 v16, 0x3

    .line 223
    .line 224
    aput-object v17, v13, v16

    .line 225
    .line 226
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 231
    .line 232
    add-int/lit8 v18, v10, 0x1

    .line 233
    .line 234
    :try_start_4
    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "Loaded Libgav1VideoRenderer."

    .line 238
    .line 239
    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 240
    .line 241
    .line 242
    :catch_4
    move/from16 v10, v18

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_5
    move-exception v0

    .line 246
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    const-string v3, "Error instantiating AV1 extension"

    .line 249
    .line 250
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw v2

    .line 254
    :catch_6
    :goto_4
    :try_start_5
    const-string v0, "androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-array v5, v7, [Ljava/lang/Class;

    .line 261
    .line 262
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 263
    .line 264
    aput-object v18, v5, v6

    .line 265
    .line 266
    const/4 v13, 0x1

    .line 267
    aput-object v12, v5, v13

    .line 268
    .line 269
    aput-object v11, v5, v8

    .line 270
    .line 271
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 272
    .line 273
    const/4 v12, 0x3

    .line 274
    aput-object v11, v5, v12

    .line 275
    .line 276
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-array v7, v7, [Ljava/lang/Object;

    .line 285
    .line 286
    aput-object v5, v7, v6

    .line 287
    .line 288
    const/4 v5, 0x1

    .line 289
    aput-object v2, v7, v5

    .line 290
    .line 291
    aput-object v3, v7, v8

    .line 292
    .line 293
    const/4 v2, 0x3

    .line 294
    aput-object v17, v7, v2

    .line 295
    .line 296
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroidx/media3/exoplayer/w3;

    .line 301
    .line 302
    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    const-string v0, "Loaded FfmpegVideoRenderer."

    .line 306
    .line 307
    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catch_7
    move-exception v0

    .line 312
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 313
    .line 314
    const-string v3, "Error instantiating FFmpeg extension"

    .line 315
    .line 316
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    throw v2

    .line 320
    :catch_8
    :goto_5
    return-void
.end method

.method public final l()Landroidx/media3/exoplayer/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/k;->b()Landroidx/media3/exoplayer/mediacodec/k;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected m()Landroidx/media3/exoplayer/mediacodec/t$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    .line 2
    .line 3
    return-object v0
.end method

.method protected n()Lc2/c$a;
    .locals 1

    .line 1
    sget-object v0, Lc2/c$a;->a:Lc2/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(Z)Landroidx/media3/exoplayer/o;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/o;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final p(I)Landroidx/media3/exoplayer/o;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/o;->c:I

    .line 2
    .line 3
    return-object p0
.end method
