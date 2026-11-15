.class public final Lcom/transsion/player/orplayer/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final a:Lcom/transsion/player/orplayer/d;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private c:Ljava/lang/String;

.field private final d:Landroid/media/AudioManager;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    const-string p1, "AudioFocusHelper"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "audio"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "null cannot be cast to non-null type android.media.AudioManager"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Landroid/media/AudioManager;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    .line 44
    .line 45
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p2, "AudioFocusHelper orPlayer "

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v4, 0x4

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 p2, 0x1a

    .line 75
    .line 76
    if-lt p1, p2, :cond_0

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    invoke-static {p1}, Lt1/a;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0xe

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p2, v0}, Lt1/b;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 102
    .line 103
    .line 104
    invoke-static {p2, p1}, Lcom/transsion/player/orplayer/a;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 105
    .line 106
    .line 107
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/d;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 108
    .line 109
    .line 110
    invoke-static {p2}, Lt1/e;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/orplayer/c;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/c;->d(Lcom/transsion/player/orplayer/c;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(I)V
    .locals 8

    .line 1
    sget-object v6, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "handleAudioFocusChange ------------ "

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", focusChange = "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v0, v6

    .line 34
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, -0x3

    .line 38
    const/high16 v7, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, -0x2

    .line 43
    const-string v1, ", isUserPause = "

    .line 44
    .line 45
    if-eq p1, v0, :cond_2

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    if-eq p1, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    if-eq p1, v0, :cond_0

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object v2, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->e:Z

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/transsion/player/orplayer/c;->f:Z

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "handleAudioFocusChange GAIN, focusChange = "

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, "\uff0c mStartRequested = "

    .line 78
    .line 79
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v4, 0x4

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    move-object v0, v6

    .line 99
    move-object v1, v2

    .line 100
    move-object v2, p1

    .line 101
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->e:Z

    .line 112
    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->f:Z

    .line 116
    .line 117
    if-nez p1, :cond_1

    .line 118
    .line 119
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 120
    .line 121
    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->play()V

    .line 122
    .line 123
    .line 124
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->isMute()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 133
    .line 134
    invoke-interface {p1, v7}, Lcom/transsion/player/orplayer/d;->setVolume(F)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 139
    .line 140
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->f:Z

    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v4, "handleAudioFocusChange LOSS, focusChange = "

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/4 v4, 0x4

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v3, 0x0

    .line 168
    move-object v0, v6

    .line 169
    move-object v1, v2

    .line 170
    move-object v2, p1

    .line 171
    invoke-static/range {v0 .. v5}, Lsn/e;->i(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->b:Lkotlin/jvm/functions/Function1;

    .line 175
    .line 176
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget-boolean p1, p0, Lcom/transsion/player/orplayer/c;->g:Z

    .line 182
    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 186
    .line 187
    invoke-interface {p1}, Lcom/transsion/player/orplayer/d;->pause()V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/c;->g:Z

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 196
    .line 197
    invoke-interface {v0}, Lcom/transsion/player/orplayer/d;->isMute()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_4

    .line 202
    .line 203
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v2, "handleAudioFocusChange AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, focusChange = "

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const/4 v4, 0x4

    .line 223
    const/4 v5, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    move-object v0, v6

    .line 226
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/transsion/player/orplayer/c;->a:Lcom/transsion/player/orplayer/d;

    .line 230
    .line 231
    invoke-interface {p1, v7}, Lcom/transsion/player/orplayer/d;->setVolume(F)V

    .line 232
    .line 233
    .line 234
    :cond_4
    :goto_0
    return-void
.end method

.method private static final d(Lcom/transsion/player/orplayer/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/c;->c(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    sget-object v0, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "abandonFocus "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x1a

    .line 31
    .line 32
    if-lt v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lt1/j;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/c;->e:Z

    .line 51
    .line 52
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    sget-object v6, Lsn/e;->a:Lsn/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "requestFocus "

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v0, v6

    .line 26
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v1, 0x1a

    .line 32
    .line 33
    const/4 v7, 0x1

    .line 34
    const-string v2, "requestFocus, result:"

    .line 35
    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->h:Landroid/media/AudioFocusRequest;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    .line 43
    .line 44
    invoke-static {v1, v0}, Lt1/k;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v4, 0x4

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    move-object v0, v6

    .line 69
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/c;->d:Landroid/media/AudioManager;

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-virtual {v0, p0, v1, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v1, p0, Lcom/transsion/player/orplayer/c;->c:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v4, 0x4

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    move-object v0, v6

    .line 101
    invoke-static/range {v0 .. v5}, Lsn/e;->b(Lsn/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/transsion/player/orplayer/c;->e:Z

    .line 105
    .line 106
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/player/orplayer/c;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/player/orplayer/c;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/orplayer/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/transsion/player/orplayer/b;-><init>(Lcom/transsion/player/orplayer/c;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
