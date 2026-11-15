.class final Landroidx/media3/exoplayer/offline/DownloadService$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field final synthetic f:Landroidx/media3/exoplayer/offline/DownloadService;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/DownloadService;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->a:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->b:J

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->c:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/offline/DownloadService$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadService;->a(Landroidx/media3/exoplayer/offline/DownloadService;)Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->i(Landroidx/media3/exoplayer/offline/DownloadService$b;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->e()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->h()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 26
    .line 27
    invoke-virtual {v2, v1, v0}, Landroidx/media3/exoplayer/offline/DownloadService;->n(Ljava/util/List;I)Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->e:Z

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->a:I

    .line 38
    .line 39
    const-string v3, "dataSync"

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-static {v1, v2, v0, v4, v3}, Landroidx/media3/common/util/a1;->j1(Landroid/app/Service;ILandroid/app/Notification;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->e:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->f:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 49
    .line 50
    const-string v2, "notification"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/app/NotificationManager;

    .line 57
    .line 58
    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->a:I

    .line 59
    .line 60
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->d:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->c:Landroid/os/Handler;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->c:Landroid/os/Handler;

    .line 74
    .line 75
    new-instance v1, Landroidx/media3/exoplayer/offline/n;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/offline/n;-><init>(Landroidx/media3/exoplayer/offline/DownloadService$c;)V

    .line 78
    .line 79
    .line 80
    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->b:J

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->d:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$c;->c:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
