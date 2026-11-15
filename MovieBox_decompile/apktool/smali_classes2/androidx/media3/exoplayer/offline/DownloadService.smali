.class public abstract Landroidx/media3/exoplayer/offline/DownloadService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadService$b;,
        Landroidx/media3/exoplayer/offline/DownloadService$c;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/HashMap;


# instance fields
.field private final a:Landroidx/media3/exoplayer/offline/DownloadService$c;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private e:Landroidx/media3/exoplayer/offline/DownloadService$b;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->k:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService$c;-><init>(Landroidx/media3/exoplayer/offline/DownloadService;IJ)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 23
    .line 24
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    .line 25
    .line 26
    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    .line 27
    .line 28
    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private static A(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->r1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/offline/DownloadService;)Landroidx/media3/exoplayer/offline/DownloadService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->v(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->t(Landroidx/media3/exoplayer/offline/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/offline/DownloadService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->r()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;
    .locals 1

    .line 1
    const-string v0, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    .line 2
    .line 3
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "download_request"

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "stop_reason"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->i(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 1
    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    .line 2
    .line 3
    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "content_id"

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 1

    .line 1
    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    .line 2
    .line 3
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "content_id"

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "stop_reason"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static p(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->o(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "foreground"

    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method private static s(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method

.method private t(Landroidx/media3/exoplayer/offline/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p1, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->d()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->b()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private v(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    .line 17
    .line 18
    iget v1, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DownloadService;->s(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->d()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 24
    .line 25
    const/16 v1, 0x1c

    .line 26
    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->f:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    or-int/2addr v0, v1

    .line 49
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->j(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->k(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->l(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->A(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected abstract m()Landroidx/media3/exoplayer/offline/DownloadManager;
.end method

.method protected abstract n(Ljava/util/List;I)Landroid/app/Notification;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public onCreate()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->c:I

    .line 6
    .line 7
    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->d:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/common/util/h0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Landroidx/media3/exoplayer/offline/DownloadService;->k:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 24
    .line 25
    if-nez v2, :cond_4

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move v7, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v7, v3

    .line 36
    :goto_0
    sget v2, Landroidx/media3/common/util/a1;->a:I

    .line 37
    .line 38
    const/16 v5, 0x1f

    .line 39
    .line 40
    if-ge v2, v5, :cond_2

    .line 41
    .line 42
    move v3, v4

    .line 43
    :cond_2
    if-eqz v7, :cond_3

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->q()Le2/f;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_1
    move-object v8, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    goto :goto_1

    .line 55
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->m()Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroidx/media3/exoplayer/offline/DownloadManager;->x()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v10, 0x0

    .line 69
    move-object v4, v2

    .line 70
    move-object v9, v0

    .line 71
    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/offline/DownloadService$b;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLe2/f;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_4
    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->j(Landroidx/media3/exoplayer/offline/DownloadService;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadService$b;->l(Landroidx/media3/exoplayer/offline/DownloadService;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$c;->e()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .line 1
    const-string p2, "androidx.media3.exoplayer.downloadService.action.INIT"

    .line 2
    .line 3
    const-string v0, "androidx.media3.exoplayer.downloadService.action.RESTART"

    .line 4
    .line 5
    iput p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->f:I

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "content_id"

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    .line 24
    .line 25
    const-string v5, "foreground"

    .line 26
    .line 27
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v5, p3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    move v5, v1

    .line 43
    :goto_1
    or-int/2addr v4, v5

    .line 44
    iput-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    move-object v3, v2

    .line 49
    :goto_2
    if-nez v2, :cond_3

    .line 50
    .line 51
    move-object v2, p2

    .line 52
    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->e:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 53
    .line 54
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 59
    .line 60
    invoke-static {v4}, Landroidx/media3/exoplayer/offline/DownloadService$b;->i(Landroidx/media3/exoplayer/offline/DownloadService$b;)Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "stop_reason"

    .line 65
    .line 66
    const-string v6, "DownloadService"

    .line 67
    .line 68
    const/4 v7, -0x1

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    sparse-switch v8, :sswitch_data_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :sswitch_0
    const-string p2, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    .line 79
    .line 80
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_4
    const/16 v7, 0x8

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :sswitch_1
    const-string p2, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    .line 93
    .line 94
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const/4 v7, 0x7

    .line 102
    goto :goto_3

    .line 103
    :sswitch_2
    const-string p2, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    .line 104
    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v7, 0x6

    .line 113
    goto :goto_3

    .line 114
    :sswitch_3
    const-string p2, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    .line 115
    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const/4 v7, 0x5

    .line 124
    goto :goto_3

    .line 125
    :sswitch_4
    const-string p2, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    .line 126
    .line 127
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_8

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    const/4 v7, 0x4

    .line 135
    goto :goto_3

    .line 136
    :sswitch_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_9

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    const/4 v7, 0x3

    .line 144
    goto :goto_3

    .line 145
    :sswitch_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_a

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_a
    const/4 v7, 0x2

    .line 153
    goto :goto_3

    .line 154
    :sswitch_7
    const-string p2, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    .line 155
    .line 156
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-nez p2, :cond_b

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_b
    move v7, v1

    .line 164
    goto :goto_3

    .line 165
    :sswitch_8
    const-string p2, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    .line 166
    .line 167
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-nez p2, :cond_c

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    move v7, p3

    .line 175
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string p2, "Ignored unrecognized action: "

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_4

    .line 199
    .line 200
    :pswitch_0
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->t()V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/content/Intent;

    .line 209
    .line 210
    const-string p2, "requirements"

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 217
    .line 218
    if-nez p1, :cond_d

    .line 219
    .line 220
    const-string p1, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    .line 221
    .line 222
    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_d
    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->z(Landroidx/media3/exoplayer/scheduler/Requirements;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Landroid/content/Intent;

    .line 235
    .line 236
    const-string v0, "download_request"

    .line 237
    .line 238
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 243
    .line 244
    if-nez p2, :cond_e

    .line 245
    .line 246
    const-string p1, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    .line 247
    .line 248
    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_e
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-virtual {v4, p2, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->c(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :pswitch_3
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->u()V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :pswitch_4
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->x()V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :pswitch_5
    if-nez v3, :cond_f

    .line 269
    .line 270
    const-string p1, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    .line 271
    .line 272
    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_f
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/offline/DownloadManager;->v(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :pswitch_6
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    check-cast p2, Landroid/content/Intent;

    .line 285
    .line 286
    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-nez p2, :cond_10

    .line 291
    .line 292
    const-string p1, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    .line 293
    .line 294
    invoke-static {v6, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_10
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-virtual {v4, v3, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->A(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    :goto_4
    :pswitch_7
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 306
    .line 307
    const/16 p2, 0x1a

    .line 308
    .line 309
    if-lt p1, p2, :cond_11

    .line 310
    .line 311
    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->g:Z

    .line 312
    .line 313
    if-eqz p1, :cond_11

    .line 314
    .line 315
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->a:Landroidx/media3/exoplayer/offline/DownloadService$c;

    .line 316
    .line 317
    if-eqz p1, :cond_11

    .line 318
    .line 319
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$c;->c()V

    .line 320
    .line 321
    .line 322
    :cond_11
    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->i:Z

    .line 323
    .line 324
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->k()Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_12

    .line 329
    .line 330
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->w()V

    .line 331
    .line 332
    .line 333
    :cond_12
    return v1

    .line 334
    nop

    .line 335
    :sswitch_data_0
    .sparse-switch
        -0x7b47cdc8 -> :sswitch_8
        -0x47112489 -> :sswitch_7
        -0x274df87d -> :sswitch_6
        -0xe367804 -> :sswitch_5
        0x1f2a425 -> :sswitch_4
        0x1bab7dfe -> :sswitch_3
        0x3175ed72 -> :sswitch_2
        0x3267e259 -> :sswitch_1
        0x6815b736 -> :sswitch_0
    .end sparse-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method protected abstract q()Le2/f;
.end method
