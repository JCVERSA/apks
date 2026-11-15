.class public final Lcom/transsnet/downloader/guard/DownloadGuard;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/guard/DownloadGuard;

.field private static b:Z

.field private static final c:Lkotlin/Lazy;

.field private static d:Ljava/util/Map;

.field private static final e:Landroid/app/NotificationManager;

.field private static f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsnet/downloader/guard/DownloadGuard;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/guard/DownloadGuard;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->a:Lcom/transsnet/downloader/guard/DownloadGuard;

    .line 7
    .line 8
    new-instance v1, Lcom/transsnet/downloader/guard/a;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/transsnet/downloader/guard/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->c:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "notification"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, Landroid/app/NotificationManager;

    .line 42
    .line 43
    sput-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    .line 44
    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v3, 0x1a

    .line 48
    .line 49
    if-lt v2, v3, :cond_0

    .line 50
    .line 51
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsnet/downloader/guard/DownloadGuard;->f()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget v3, Lcom/transsnet/downloader/R$string;->download_notifications_name:I

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x2

    .line 69
    invoke-static {v0, v2, v3}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    .line 82
    .line 83
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

.method public static synthetic a()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/guard/DownloadGuard;->d()Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/guard/DownloadGuard;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->g()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/guard/DownloadGuard;Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final e()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/guard/DownloadGuard;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_download_complete:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_download_complete_v12:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {v1, v2, p1}, Lcom/transsion/baseui/util/n;->b(IIZ)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {v1, p1}, Lcom/transsion/baseui/util/n;->c(IZ)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-string p1, ""

    .line 59
    .line 60
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " "

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method private final i()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_downloading:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/transsnet/downloader/R$layout;->notification_downloading_v12:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;)Landroidx/core/app/NotificationCompat$m;
    .locals 10

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
    const-class v1, Lto/a;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lto/a;

    .line 22
    .line 23
    if-eqz v1, :cond_7

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v4, "oneroom://com.community.oneroom?type="

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "/download/panel_activity"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "&"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, "download_notify"

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, "="

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v6, 0xa

    .line 53
    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, "download_status"

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "getApp(...)"

    .line 80
    .line 81
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v4}, Lto/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v4, Lcom/transsnet/downloader/guard/DownloadGuard;->a:Lcom/transsnet/downloader/guard/DownloadGuard;

    .line 89
    .line 90
    invoke-direct {v4, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v6, "extra_notification_id"

    .line 107
    .line 108
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const-string v5, "extra_source"

    .line 112
    .line 113
    const-string v6, "push"

    .line 114
    .line 115
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    sget-object v5, Lcom/transsion/push/bean/MsgType;->DOWNLOAD_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "MESSAGE_TYPE"

    .line 125
    .line 126
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    invoke-direct {v4, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const-string v5, "extra_message_id"

    .line 146
    .line 147
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    const/high16 v4, 0x24000000

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v3, v2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    cmp-long v3, v3, v5

    .line 185
    .line 186
    if-gez v3, :cond_1

    .line 187
    .line 188
    move-wide v3, v5

    .line 189
    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 191
    .line 192
    .line 193
    move-result-wide v3

    .line 194
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    if-eqz v7, :cond_2

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 201
    .line 202
    .line 203
    move-result-wide v7

    .line 204
    goto :goto_2

    .line 205
    :cond_2
    move-wide v7, v5

    .line 206
    :goto_2
    cmp-long v7, v7, v5

    .line 207
    .line 208
    if-gez v7, :cond_3

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_4

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 218
    .line 219
    .line 220
    move-result-wide v5

    .line 221
    :cond_4
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const/4 v8, 0x1

    .line 224
    invoke-static {v3, v4, v8}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v3, "/"

    .line 232
    .line 233
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-static {v5, v6, v8}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    long-to-float v3, v3

    .line 248
    const/high16 v4, 0x3f800000    # 1.0f

    .line 249
    .line 250
    mul-float/2addr v3, v4

    .line 251
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-eqz v4, :cond_5

    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v4

    .line 261
    goto :goto_4

    .line 262
    :cond_5
    const-wide/16 v4, 0x1

    .line 263
    .line 264
    :goto_4
    long-to-float v4, v4

    .line 265
    div-float/2addr v3, v4

    .line 266
    const/16 v4, 0x64

    .line 267
    .line 268
    int-to-float v5, v4

    .line 269
    mul-float/2addr v3, v5

    .line 270
    float-to-int v3, v3

    .line 271
    if-le v3, v4, :cond_6

    .line 272
    .line 273
    move v3, v4

    .line 274
    :cond_6
    new-instance v5, Landroid/widget/RemoteViews;

    .line 275
    .line 276
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->i()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    invoke-direct {v5, v6, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    sget v6, Lcom/transsnet/downloader/R$id;->progress:I

    .line 292
    .line 293
    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 294
    .line 295
    .line 296
    sget v3, Lcom/transsnet/downloader/R$id;->tv_name:I

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    sget v3, Lcom/transsnet/downloader/R$id;->tv_epse:I

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {v5, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    sget p1, Lcom/transsnet/downloader/R$id;->tv_size:I

    .line 315
    .line 316
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v5, p1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    new-instance p1, Landroidx/core/app/NotificationCompat$m;

    .line 324
    .line 325
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->f()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-direct {p1, v3, v4}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    sget v3, Lcom/tn/lib/widget/R$drawable;->push_small_logo:I

    .line 337
    .line 338
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$m;->p(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$m;->t(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    return-object p1

    .line 375
    :cond_7
    const/4 p1, 0x0

    .line 376
    return-object p1
.end method

.method private final k(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    move-object p2, p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-gtz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    :cond_1
    return p2
.end method

.method private final m(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->e()Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v5, Lcom/transsnet/downloader/guard/DownloadGuard$otherStatus$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p1, v0}, Lcom/transsnet/downloader/guard/DownloadGuard$otherStatus$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x3

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final n(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Long;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    :goto_0
    sub-long v3, v1, v3

    .line 31
    .line 32
    const-wide/16 v5, 0x7d0

    .line 33
    .line 34
    cmp-long v3, v3, v5

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/transsnet/downloader/guard/DownloadGuard;->f:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsnet/downloader/guard/DownloadGuard;->e()Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v7, Lcom/transsnet/downloader/guard/DownloadGuard$progress$1;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {v7, p1, v0, v1}, Lcom/transsnet/downloader/guard/DownloadGuard$progress$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;ILkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v8, 0x3

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final o(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lcom/transsnet/downloader/guard/DownloadGuardService;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v2, "id"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1a

    .line 24
    .line 25
    if-lt p1, v2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v2, Lcom/transsnet/downloader/guard/DownloadGuard$a;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/transsnet/downloader/guard/DownloadGuard$a;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :catchall_0
    :goto_0
    sput-boolean v0, Lcom/transsnet/downloader/guard/DownloadGuard;->b:Z

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "download_service"

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    .line 1
    const-string v0, "downloadInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->k(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Lcom/transsnet/downloader/guard/DownloadGuard;->e:Landroid/app/NotificationManager;

    .line 21
    .line 22
    const/16 v3, 0x2766

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->m(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/guard/DownloadGuard;->n(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Lcom/transsnet/downloader/guard/DownloadGuard;->d:Ljava/util/Map;

    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/guard/DownloadGuard;->o(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
