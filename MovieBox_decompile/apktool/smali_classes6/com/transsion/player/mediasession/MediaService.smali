.class public final Lcom/transsion/player/mediasession/MediaService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/mediasession/MediaService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J+\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/player/mediasession/MediaService;",
        "Landroidx/media/MediaBrowserServiceCompat;",
        "<init>",
        "()V",
        "",
        "s",
        "()Ljava/lang/String;",
        "",
        "t",
        "onCreate",
        "clientPackageName",
        "",
        "clientUid",
        "Landroid/os/Bundle;",
        "rootHints",
        "Landroidx/media/MediaBrowserServiceCompat$e;",
        "f",
        "(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;",
        "parentId",
        "Landroidx/media/MediaBrowserServiceCompat$k;",
        "",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        "result",
        "g",
        "(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V",
        "onDestroy",
        "j",
        "a",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lcom/transsion/player/mediasession/MediaService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/MediaService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/MediaService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/mediasession/MediaService;->j:Lcom/transsion/player/mediasession/MediaService$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/player/mediasession/MediaService;

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

.method private final t()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 4
    .line 5
    const-string v1, "media_service_id"

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$d;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$d;-><init>()V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0x307

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/transsion/player/mediasession/f;

    .line 33
    .line 34
    invoke-direct {v2, v0, p0}, Lcom/transsion/player/mediasession/f;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;Lcom/transsion/player/mediasession/MediaService;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Landroidx/media/MediaBrowserServiceCompat;->r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Landroid/content/Intent;

    .line 48
    .line 49
    const-class v3, Lcom/transsion/player/mediasession/MusicIntentReceiver;

    .line 50
    .line 51
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/transsion/player/mediasession/h;->j()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g(Landroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    sget-object v1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, " --> initMediaSessionCompat() --> it = "

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;
    .locals 0

    .line 1
    const-string p2, "clientPackageName"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$e;

    .line 7
    .line 8
    const-string p2, "media_service_id"

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat$e;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V
    .locals 1

    .line 1
    const-string v0, "parentId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "result"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$k;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " --> onCreate()"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->l()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->t()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " --> onDestroy() --> \u670d\u52a1\u9500\u6bc1\u7684\u65f6\u5019\u505c\u6b62\u901a\u77e5"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
