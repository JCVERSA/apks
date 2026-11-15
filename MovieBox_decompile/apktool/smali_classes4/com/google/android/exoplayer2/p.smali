.class public Lcom/google/android/exoplayer2/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c3;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/mediacodec/j;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/mediacodec/o;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/j;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/j;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/mediacodec/j;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/p;->c:I

    .line 15
    .line 16
    const-wide/16 v0, 0x1388

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/exoplayer2/p;->d:J

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/o;->a:Lcom/google/android/exoplayer2/mediacodec/o;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/w;Lcom/google/android/exoplayer2/audio/r;Lda/o;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/y2;
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
    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 10
    .line 11
    iget-object v3, v10, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    .line 12
    .line 13
    iget-boolean v4, v10, Lcom/google/android/exoplayer2/p;->e:Z

    .line 14
    .line 15
    iget-wide v7, v10, Lcom/google/android/exoplayer2/p;->d:J

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
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/p;->h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;JLjava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-boolean v1, v10, Lcom/google/android/exoplayer2/p;->g:Z

    .line 27
    .line 28
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/p;->h:Z

    .line 29
    .line 30
    iget-boolean v3, v10, Lcom/google/android/exoplayer2/p;->i:Z

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p;->c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 39
    .line 40
    iget v2, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 41
    .line 42
    iget-object v3, v10, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    .line 43
    .line 44
    iget-boolean v4, v10, Lcom/google/android/exoplayer2/p;->e:Z

    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v6, p1

    .line 48
    move-object v7, p3

    .line 49
    move-object v8, v11

    .line 50
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v4, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 60
    .line 61
    move-object v0, p0

    .line 62
    move-object/from16 v2, p4

    .line 63
    .line 64
    move-object v5, v11

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/p;->g(Landroid/content/Context;Lda/o;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v4, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 75
    .line 76
    move-object/from16 v2, p5

    .line 77
    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/p;->e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 82
    .line 83
    iget v1, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/p;->d(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    .line 89
    .line 90
    iget v1, v10, Lcom/google/android/exoplayer2/p;->c:I

    .line 91
    .line 92
    move-object v2, p1

    .line 93
    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/p;->f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Lcom/google/android/exoplayer2/y2;

    .line 98
    .line 99
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, [Lcom/google/android/exoplayer2/y2;

    .line 104
    .line 105
    return-object v0
.end method

.method protected b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    const-class v6, Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 9
    .line 10
    const-class v7, Lcom/google/android/exoplayer2/audio/r;

    .line 11
    .line 12
    const-class v8, Landroid/os/Handler;

    .line 13
    .line 14
    const-string v9, "DefaultRenderersFactory"

    .line 15
    .line 16
    new-instance v15, Lcom/google/android/exoplayer2/audio/a0;

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p;->i()Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    move-object v10, v15

    .line 23
    move-object/from16 v11, p1

    .line 24
    .line 25
    move-object/from16 v13, p3

    .line 26
    .line 27
    move/from16 v14, p4

    .line 28
    .line 29
    move-object v2, v15

    .line 30
    move-object/from16 v15, p6

    .line 31
    .line 32
    move-object/from16 v16, p7

    .line 33
    .line 34
    move-object/from16 v17, p5

    .line 35
    .line 36
    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/audio/a0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v0, v4, :cond_1

    .line 50
    .line 51
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiRenderer"

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/exoplayer2/y2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    add-int/lit8 v10, v2, 0x1

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "Loaded MidiRenderer."

    .line 76
    .line 77
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move v2, v10

    .line 84
    goto :goto_1

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    const-string v2, "Error instantiating MIDI extension"

    .line 88
    .line 89
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :catch_2
    :goto_1
    move v10, v2

    .line 94
    :goto_2
    :try_start_2
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-array v2, v3, [Ljava/lang/Class;

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    aput-object v8, v2, v11

    .line 104
    .line 105
    aput-object v7, v2, v5

    .line 106
    .line 107
    aput-object v6, v2, v4

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-array v2, v3, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object p6, v2, v11

    .line 116
    .line 117
    aput-object p7, v2, v5

    .line 118
    .line 119
    aput-object p5, v2, v4

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/google/android/exoplayer2/y2;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 126
    .line 127
    add-int/lit8 v2, v10, 0x1

    .line 128
    .line 129
    :try_start_3
    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "Loaded LibopusAudioRenderer."

    .line 133
    .line 134
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catch_3
    move-exception v0

    .line 139
    goto :goto_3

    .line 140
    :catch_4
    move v10, v2

    .line 141
    goto :goto_4

    .line 142
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    const-string v2, "Error instantiating Opus extension"

    .line 145
    .line 146
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v1

    .line 150
    :catch_5
    :goto_4
    move v2, v10

    .line 151
    :goto_5
    :try_start_4
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 152
    .line 153
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-array v10, v3, [Ljava/lang/Class;

    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    aput-object v8, v10, v11

    .line 161
    .line 162
    aput-object v7, v10, v5

    .line 163
    .line 164
    aput-object v6, v10, v4

    .line 165
    .line 166
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-array v10, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object p6, v10, v11

    .line 173
    .line 174
    aput-object p7, v10, v5

    .line 175
    .line 176
    aput-object p5, v10, v4

    .line 177
    .line 178
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/google/android/exoplayer2/y2;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 183
    .line 184
    add-int/lit8 v10, v2, 0x1

    .line 185
    .line 186
    :try_start_5
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const-string v0, "Loaded LibflacAudioRenderer."

    .line 190
    .line 191
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 192
    .line 193
    .line 194
    goto :goto_8

    .line 195
    :catch_6
    move-exception v0

    .line 196
    goto :goto_6

    .line 197
    :catch_7
    move v2, v10

    .line 198
    goto :goto_7

    .line 199
    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    .line 200
    .line 201
    const-string v2, "Error instantiating FLAC extension"

    .line 202
    .line 203
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :catch_8
    :goto_7
    move v10, v2

    .line 208
    :goto_8
    :try_start_6
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-array v2, v3, [Ljava/lang/Class;

    .line 215
    .line 216
    const/4 v11, 0x0

    .line 217
    aput-object v8, v2, v11

    .line 218
    .line 219
    aput-object v7, v2, v5

    .line 220
    .line 221
    aput-object v6, v2, v4

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-array v2, v3, [Ljava/lang/Object;

    .line 228
    .line 229
    aput-object p6, v2, v11

    .line 230
    .line 231
    aput-object p7, v2, v5

    .line 232
    .line 233
    aput-object p5, v2, v4

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lcom/google/android/exoplayer2/y2;

    .line 240
    .line 241
    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 245
    .line 246
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 247
    .line 248
    .line 249
    goto :goto_9

    .line 250
    :catch_9
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    .line 252
    .line 253
    const-string v2, "Error instantiating FFmpeg extension"

    .line 254
    .line 255
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :catch_a
    :goto_9
    return-void
.end method

.method protected c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/f;->c(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->i(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->h(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->j(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->f()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method protected d(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Loa/b;

    .line 2
    .line 3
    invoke-direct {p1}, Loa/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/metadata/f;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/f;-><init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected g(Landroid/content/Context;Lda/o;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lda/p;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lda/p;-><init>(Lda/o;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;JLjava/util/ArrayList;)V
    .locals 20

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p9

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x2

    .line 9
    const-string v7, "DefaultRenderersFactory"

    .line 10
    .line 11
    const-class v8, Lcom/google/android/exoplayer2/video/w;

    .line 12
    .line 13
    const-class v9, Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v14, Lcom/google/android/exoplayer2/video/g;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p;->i()Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 18
    .line 19
    .line 20
    move-result-object v12

    .line 21
    const/16 v19, 0x32

    .line 22
    .line 23
    move-object v10, v14

    .line 24
    move-object/from16 v11, p1

    .line 25
    .line 26
    move-object/from16 v13, p3

    .line 27
    .line 28
    move-object v2, v14

    .line 29
    move-wide/from16 v14, p7

    .line 30
    .line 31
    move/from16 v16, p4

    .line 32
    .line 33
    move-object/from16 v17, p5

    .line 34
    .line 35
    move-object/from16 v18, p6

    .line 36
    .line 37
    invoke-direct/range {v10 .. v19}, Lcom/google/android/exoplayer2/video/g;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v0, v6, :cond_1

    .line 51
    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    :cond_1
    const/16 v0, 0x32

    .line 55
    .line 56
    :try_start_0
    const-string v10, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 57
    .line 58
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    new-array v11, v4, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v12, v11, v3

    .line 67
    .line 68
    aput-object v9, v11, v5

    .line 69
    .line 70
    aput-object v8, v11, v6

    .line 71
    .line 72
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    const/4 v13, 0x3

    .line 75
    aput-object v12, v11, v13

    .line 76
    .line 77
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    new-array v13, v4, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v11, v13, v3

    .line 92
    .line 93
    aput-object p5, v13, v5

    .line 94
    .line 95
    aput-object p6, v13, v6

    .line 96
    .line 97
    const/4 v11, 0x3

    .line 98
    aput-object v12, v13, v11

    .line 99
    .line 100
    invoke-virtual {v10, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Lcom/google/android/exoplayer2/y2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    add-int/lit8 v11, v2, 0x1

    .line 107
    .line 108
    :try_start_1
    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "Loaded LibvpxVideoRenderer."

    .line 112
    .line 113
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move v2, v11

    .line 120
    goto :goto_1

    .line 121
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    const-string v2, "Error instantiating VP9 extension"

    .line 124
    .line 125
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :catch_2
    :goto_1
    move v11, v2

    .line 130
    :goto_2
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 131
    .line 132
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-array v10, v4, [Ljava/lang/Class;

    .line 137
    .line 138
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 139
    .line 140
    aput-object v12, v10, v3

    .line 141
    .line 142
    aput-object v9, v10, v5

    .line 143
    .line 144
    aput-object v8, v10, v6

    .line 145
    .line 146
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 147
    .line 148
    const/4 v9, 0x3

    .line 149
    aput-object v8, v10, v9

    .line 150
    .line 151
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-array v4, v4, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v8, v4, v3

    .line 166
    .line 167
    aput-object p5, v4, v5

    .line 168
    .line 169
    aput-object p6, v4, v6

    .line 170
    .line 171
    const/4 v3, 0x3

    .line 172
    aput-object v0, v4, v3

    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/google/android/exoplayer2/y2;

    .line 179
    .line 180
    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    const-string v0, "Loaded Libgav1VideoRenderer."

    .line 184
    .line 185
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_3
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    .line 191
    .line 192
    const-string v2, "Error instantiating AV1 extension"

    .line 193
    .line 194
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    throw v1

    .line 198
    :catch_4
    :goto_3
    return-void
.end method

.method protected i()Lcom/google/android/exoplayer2/mediacodec/l$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/mediacodec/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/p;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
