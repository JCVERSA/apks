.class public final Lcom/transsion/player/mediasession/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/player/mediasession/h;

.field private static b:Z

.field private static c:Landroid/support/v4/media/session/MediaSessionCompat;

.field private static d:Lcom/transsion/player/mediasession/MediaService;

.field private static e:Lcom/transsion/player/mediasession/MediaItem;

.field private static f:Ljava/lang/Integer;

.field private static g:Landroid/graphics/Bitmap;

.field private static h:Ljava/lang/String;

.field private static final i:Lcom/transsion/player/mediasession/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/mediasession/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/player/mediasession/h$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsion/player/mediasession/h$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/transsion/player/mediasession/h;->i:Lcom/transsion/player/mediasession/h$a;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lcom/transsion/player/mediasession/MediaItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lcom/transsion/player/mediasession/MediaService;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method private final h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/player/mediasession/h;->q(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/player/mediasession/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/high16 v0, 0x42400000    # 48.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    sget-object v1, Lsn/h;->a:Lsn/h;

    .line 8
    .line 9
    const/16 v9, 0x78

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v2, p1

    .line 18
    invoke-static/range {v1 .. v10}, Lsn/h;->c(Lsn/h;Ljava/lang/String;IZZIZZILjava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 5

    .line 1
    sput-object p1, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    .line 2
    .line 3
    sput-object p2, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    .line 4
    .line 5
    sput-object p3, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    .line 6
    .line 7
    sput-object p4, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->n()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const-string v0, "getApp(...)"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/core/app/NotificationCompat$m;

    .line 22
    .line 23
    const-string v1, "MUSIC_NOTIFICATION_ID"

    .line 24
    .line 25
    invoke-direct {v0, p4, v1}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "VideoPlayer"

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    :cond_0
    move-object v2, v1

    .line 39
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->r(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getSubTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v1, v2

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "setContentText(...)"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget v2, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    .line 75
    .line 76
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->A(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$m;

    .line 85
    .line 86
    .line 87
    :goto_1
    sget-object v1, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver;->a:Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;->a()Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->v(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getPendingIntent()Landroid/app/PendingIntent;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move-object v2, v1

    .line 105
    :goto_2
    if-eqz v2, :cond_6

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getPendingIntent()Landroid/app/PendingIntent;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$m;->p(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 112
    .line 113
    .line 114
    :cond_6
    const/4 p2, 0x1

    .line 115
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$m;->O(I)Landroidx/core/app/NotificationCompat$m;

    .line 116
    .line 117
    .line 118
    if-nez p3, :cond_7

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    const/4 v2, 0x3

    .line 126
    if-ne p3, v2, :cond_8

    .line 127
    .line 128
    new-instance p3, Landroidx/core/app/NotificationCompat$b$a;

    .line 129
    .line 130
    sget v2, Lcom/transsion/player/R$mipmap;->player_pause:I

    .line 131
    .line 132
    const-wide/16 v3, 0x2

    .line 133
    .line 134
    invoke-static {p4, v3, v4}, Landroidx/media/session/MediaButtonReceiver;->a(Landroid/content/Context;J)Landroid/app/PendingIntent;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    const-string v3, "pause"

    .line 139
    .line 140
    invoke-direct {p3, v2, v3, p4}, Landroidx/core/app/NotificationCompat$b$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$b$a;->a()Landroidx/core/app/NotificationCompat$b;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->b(Landroidx/core/app/NotificationCompat$b;)Landroidx/core/app/NotificationCompat$m;

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_8
    :goto_3
    new-instance p3, Landroidx/core/app/NotificationCompat$b$a;

    .line 152
    .line 153
    sget v2, Lcom/transsion/player/R$mipmap;->player_play:I

    .line 154
    .line 155
    const-wide/16 v3, 0x4

    .line 156
    .line 157
    invoke-static {p4, v3, v4}, Landroidx/media/session/MediaButtonReceiver;->a(Landroid/content/Context;J)Landroid/app/PendingIntent;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    const-string v3, "play"

    .line 162
    .line 163
    invoke-direct {p3, v2, v3, p4}, Landroidx/core/app/NotificationCompat$b$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$b$a;->a()Landroidx/core/app/NotificationCompat$b;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->b(Landroidx/core/app/NotificationCompat$b;)Landroidx/core/app/NotificationCompat$m;

    .line 171
    .line 172
    .line 173
    :goto_4
    new-instance p3, Landroidx/media/app/c;

    .line 174
    .line 175
    invoke-direct {p3}, Landroidx/media/app/c;-><init>()V

    .line 176
    .line 177
    .line 178
    sget-object p4, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 179
    .line 180
    if-eqz p4, :cond_9

    .line 181
    .line 182
    invoke-virtual {p4}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    goto :goto_5

    .line 187
    :cond_9
    move-object p4, v1

    .line 188
    :goto_5
    invoke-virtual {p3, p4}, Landroidx/media/app/c;->q(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/c;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    const/4 p4, 0x0

    .line 193
    filled-new-array {p4}, [I

    .line 194
    .line 195
    .line 196
    move-result-object p4

    .line 197
    invoke-virtual {p3, p4}, Landroidx/media/app/c;->r([I)Landroidx/media/app/c;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    .line 202
    .line 203
    .line 204
    sget p3, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    .line 205
    .line 206
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    .line 207
    .line 208
    .line 209
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    .line 210
    .line 211
    .line 212
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 213
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const/16 p4, 0xe0

    .line 217
    .line 218
    iput p4, p3, Landroid/app/Notification;->flags:I

    .line 219
    .line 220
    sget-boolean p4, Lcom/transsion/player/mediasession/h;->b:Z

    .line 221
    .line 222
    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 223
    .line 224
    const-string v2, "notification"

    .line 225
    .line 226
    const v3, 0x15e9d

    .line 227
    .line 228
    .line 229
    if-eqz p4, :cond_b

    .line 230
    .line 231
    if-eqz p1, :cond_a

    .line 232
    .line 233
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    goto :goto_6

    .line 238
    :catchall_0
    move-exception p1

    .line 239
    goto :goto_7

    .line 240
    :cond_a
    :goto_6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    check-cast v1, Landroid/app/NotificationManager;

    .line 244
    .line 245
    invoke-virtual {v1, v3, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .line 247
    .line 248
    goto :goto_9

    .line 249
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/c;->j()Z

    .line 254
    .line 255
    .line 256
    move-result p4

    .line 257
    if-eqz p4, :cond_d

    .line 258
    .line 259
    if-eqz p1, :cond_c

    .line 260
    .line 261
    :try_start_2
    invoke-virtual {p1, v3, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    .line 263
    .line 264
    goto :goto_8

    .line 265
    :catchall_1
    move-exception p4

    .line 266
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    check-cast p1, Landroid/app/NotificationManager;

    .line 277
    .line 278
    invoke-virtual {p1, v3, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :catchall_2
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    :cond_c
    :goto_8
    sput-boolean p2, Lcom/transsion/player/mediasession/h;->b:Z

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_d
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 290
    .line 291
    const-string p2, "Service is restricted, cannot start foreground."

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :catchall_3
    :goto_9
    return-void
.end method

.method private final n()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v2, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    sput-object v0, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    const-string v4, "http"

    .line 35
    .line 36
    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v0, v2, :cond_5

    .line 42
    .line 43
    sput-object v1, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 62
    .line 63
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 70
    .line 71
    sget-object v1, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    :cond_3
    const-string v1, ""

    .line 82
    .line 83
    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/player/mediasession/h;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lcom/transsion/player/mediasession/h;->i:Lcom/transsion/player/mediasession/h$a;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 102
    .line 103
    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 104
    .line 105
    sget-object v1, Lcom/transsion/player/mediasession/h;->h:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/h;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget v1, Lcom/transsion/player/R$mipmap;->player_ic_push_small_logo:I

    .line 147
    .line 148
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lcom/transsion/player/mediasession/h;->g:Landroid/graphics/Bitmap;

    .line 153
    .line 154
    :goto_2
    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    .line 155
    .line 156
    sget-object v1, Lcom/transsion/player/mediasession/h;->e:Lcom/transsion/player/mediasession/MediaItem;

    .line 157
    .line 158
    sget-object v2, Lcom/transsion/player/mediasession/h;->f:Ljava/lang/Integer;

    .line 159
    .line 160
    sget-object v3, Lcom/transsion/player/mediasession/h;->c:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 161
    .line 162
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/player/mediasession/h;->m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    return-void
.end method

.method private final q(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 10
    .line 11
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    .line 23
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 27
    .line 28
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-gt v4, v0, :cond_1

    .line 32
    .line 33
    if-gt v5, v0, :cond_1

    .line 34
    .line 35
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    .line 37
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-gt v5, v0, :cond_2

    .line 45
    .line 46
    if-le v4, v0, :cond_3

    .line 47
    .line 48
    :cond_2
    int-to-float v3, v5

    .line 49
    int-to-float v0, v0

    .line 50
    div-float/2addr v3, v0

    .line 51
    int-to-float v4, v4

    .line 52
    div-float/2addr v4, v0

    .line 53
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->d(FF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :cond_3
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    .line 63
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    .line 65
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    return-object p1

    .line 70
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method


# virtual methods
.method public final j()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x4000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x8000000

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final l()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> initNotificationChannel() --> \u521d\u59cb\u5316 \u901a\u77e5\u7684 \u6e20\u9053"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "notification"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Landroid/app/NotificationManager;

    .line 43
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v2, 0x1a

    .line 47
    .line 48
    if-lt v1, v2, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget v2, Lcom/transsion/player/R$string;->player_notification_name:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x3

    .line 64
    const-string v3, "MUSIC_NOTIFICATION_ID"

    .line 65
    .line 66
    invoke-static {v3, v1, v2}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static {v1, v2, v2}, Lcom/transsion/player/mediasession/g;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "playing media"

    .line 75
    .line 76
    invoke-static {v1, v2}, Landroidx/media3/common/util/f0;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver;->a:Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver$a;->b()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/player/mediasession/h;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " --> notifyNotification() --> mediaItem == null --> return"

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/player/mediasession/h;->p()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/player/mediasession/h;->m(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/h;->d:Lcom/transsion/player/mediasession/MediaService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Landroidx/core/app/z;->a(Landroid/app/Service;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "notification"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    .line 26
    const v1, 0x15e9d

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/transsion/player/mediasession/h;->b:Z

    .line 34
    .line 35
    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/transsion/player/mediasession/h;->b:Z

    .line 2
    .line 3
    return-void
.end method
