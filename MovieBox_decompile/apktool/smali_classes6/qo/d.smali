.class public final Lqo/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqo/d$a;
    }
.end annotation


# static fields
.field public static final e:Lqo/d$a;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqo/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lqo/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqo/d;->e:Lqo/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lqo/d;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lqo/d;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqo/d;->e(Lqo/d;Landroid/media/MediaPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lqo/d;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    :catch_0
    :cond_0
    return v0
.end method

.method public final c()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lqo/d;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v2, "MediaPlayerHelper"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lqo/d;->d:Z

    .line 20
    .line 21
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/media/MediaPlayer;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 31
    .line 32
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p3, 0x0

    .line 36
    :try_start_0
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne v0, v1, :cond_7

    .line 46
    .line 47
    iget-object v0, p0, Lqo/d;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 82
    .line 83
    .line 84
    :cond_6
    iput-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 85
    .line 86
    new-instance p3, Landroid/media/MediaPlayer;

    .line 87
    .line 88
    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 92
    .line 93
    invoke-virtual {p3, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    iput-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 98
    .line 99
    iput-object p2, p0, Lqo/d;->c:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {p1, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    iput-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 110
    .line 111
    :cond_7
    :goto_0
    :try_start_1
    iget-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 112
    .line 113
    if-eqz p3, :cond_8

    .line 114
    .line 115
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->reset()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_1
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :catch_2
    move-exception p1

    .line 122
    goto :goto_3

    .line 123
    :catch_3
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :catch_4
    move-exception p1

    .line 126
    goto :goto_5

    .line 127
    :cond_8
    :goto_1
    iput-object p2, p0, Lqo/d;->c:Ljava/lang/String;

    .line 128
    .line 129
    iget-object p3, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 130
    .line 131
    if-eqz p3, :cond_9

    .line 132
    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    iget-object p1, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 141
    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 145
    .line 146
    .line 147
    :cond_a
    iget-object p1, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 148
    .line 149
    if-eqz p1, :cond_b

    .line 150
    .line 151
    new-instance p2, Lqo/c;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lqo/c;-><init>(Lqo/d;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 157
    .line 158
    .line 159
    :cond_b
    if-eqz p4, :cond_c

    .line 160
    .line 161
    iget-object p1, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 162
    .line 163
    if-eqz p1, :cond_c

    .line 164
    .line 165
    invoke-virtual {p1, p4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_6

    .line 169
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_c

    .line 174
    .line 175
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 176
    .line 177
    const/4 v4, 0x4

    .line 178
    const/4 v5, 0x0

    .line 179
    const-string v1, "MediaPlayerHelper"

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-eqz v2, :cond_c

    .line 191
    .line 192
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 193
    .line 194
    const/4 v4, 0x4

    .line 195
    const/4 v5, 0x0

    .line 196
    const-string v1, "MediaPlayerHelper"

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_c

    .line 208
    .line 209
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 210
    .line 211
    const/4 v4, 0x4

    .line 212
    const/4 v5, 0x0

    .line 213
    const-string v1, "MediaPlayerHelper"

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    if-eqz v2, :cond_c

    .line 225
    .line 226
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 227
    .line 228
    const/4 v4, 0x4

    .line 229
    const/4 v5, 0x0

    .line 230
    const-string v1, "MediaPlayerHelper"

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    :goto_6
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lqo/d;->a:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lqo/d;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :catch_0
    :cond_0
    return-void
.end method
