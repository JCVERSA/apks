.class public final Lcom/transsion/audio/player/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/baselib/db/audio/AudioBean;

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 8

    .line 1
    const-string v0, "audioBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/transsion/audio/player/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/audio/player/a;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->c:J

    .line 24
    .line 25
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const-string v3, "video_play"

    .line 30
    .line 31
    const-string v4, "initView"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final a()V
    .locals 8

    .line 1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :cond_1
    const-string v2, "post_id"

    .line 20
    .line 21
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    :cond_2
    move-object v0, v1

    .line 35
    :cond_3
    const-string v2, "subject_id"

    .line 36
    .line 37
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_7

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move-object v1, v0

    .line 68
    :cond_6
    :goto_1
    const-string v0, "ops"

    .line 69
    .line 70
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_7
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    .line 74
    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    cmp-long v0, v0, v2

    .line 78
    .line 79
    const-string v1, "delay_v"

    .line 80
    .line 81
    const-string v2, "is_start"

    .line 82
    .line 83
    if-lez v0, :cond_9

    .line 84
    .line 85
    const-string v0, "1"

    .line 86
    .line 87
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->d:J

    .line 91
    .line 92
    iget-wide v6, p0, Lcom/transsion/audio/player/a;->c:J

    .line 93
    .line 94
    sub-long/2addr v2, v6

    .line 95
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->e:J

    .line 103
    .line 104
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "buffer_time"

    .line 109
    .line 110
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lcom/transsion/audio/player/a;->g:I

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "buffer_count"

    .line 120
    .line 121
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->h:J

    .line 125
    .line 126
    long-to-float v0, v0

    .line 127
    iget-object v1, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    goto :goto_2

    .line 142
    :cond_8
    const-wide/16 v1, 0x1

    .line 143
    .line 144
    :goto_2
    long-to-float v1, v1

    .line 145
    div-float/2addr v0, v1

    .line 146
    const/high16 v1, 0x42c80000    # 100.0f

    .line 147
    .line 148
    mul-float/2addr v0, v1

    .line 149
    iget v2, p0, Lcom/transsion/audio/player/a;->k:I

    .line 150
    .line 151
    int-to-float v2, v2

    .line 152
    mul-float/2addr v2, v1

    .line 153
    add-float/2addr v0, v2

    .line 154
    const-string v1, "play_complete"

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->j:J

    .line 164
    .line 165
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "play_duration"

    .line 170
    .line 171
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->m:J

    .line 175
    .line 176
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "pause_duration"

    .line 181
    .line 182
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    const-string v0, "0"

    .line 187
    .line 188
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    iget-wide v6, p0, Lcom/transsion/audio/player/a;->c:J

    .line 196
    .line 197
    sub-long/2addr v2, v6

    .line 198
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/player/a;->n:Ljava/lang/Integer;

    .line 206
    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v1, "error_code"

    .line 214
    .line 215
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_a
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 219
    .line 220
    const-string v2, "audio_play"

    .line 221
    .line 222
    iget-wide v3, p0, Lcom/transsion/audio/player/a;->j:J

    .line 223
    .line 224
    const-string v1, "postdetail"

    .line 225
    .line 226
    invoke-virtual/range {v0 .. v5}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/player/a;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->f:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->e:J

    .line 19
    .line 20
    add-long/2addr v2, v0

    .line 21
    iput-wide v2, p0, Lcom/transsion/audio/player/a;->e:J

    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/audio/player/a;->g:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    iput v0, p0, Lcom/transsion/audio/player/a;->g:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final e(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 1

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/transsion/audio/player/a;->n:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public final f(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->i:J

    .line 2
    .line 3
    sub-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    cmp-long v4, v4, v2

    .line 8
    .line 9
    if-gtz v4, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->j:J

    .line 18
    .line 19
    sub-long v0, p1, v0

    .line 20
    .line 21
    add-long/2addr v2, v0

    .line 22
    iput-wide v2, p0, Lcom/transsion/audio/player/a;->j:J

    .line 23
    .line 24
    :cond_0
    iput-wide p1, p0, Lcom/transsion/audio/player/a;->i:J

    .line 25
    .line 26
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->h:J

    .line 27
    .line 28
    cmp-long v0, p1, v0

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    iput-wide p1, p0, Lcom/transsion/audio/player/a;->h:J

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "video_play"

    .line 6
    .line 7
    const-string v2, "onRenderFirstFrame"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    .line 27
    .line 28
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    .line 6
    .line 7
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->l:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/transsion/audio/player/a;->m:J

    .line 19
    .line 20
    add-long/2addr v2, v0

    .line 21
    iput-wide v2, p0, Lcom/transsion/audio/player/a;->m:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method
