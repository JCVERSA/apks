.class public Lcom/transsion/magicvideo/services/VideosService;
.super Lcom/transsion/playercommon/player/PlayerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;,
        Lcom/transsion/magicvideo/services/VideosService$b;,
        Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;
    }
.end annotation


# static fields
.field public static E:Z


# instance fields
.field public A:Z

.field public B:I

.field public C:Landroid/content/BroadcastReceiver;

.field public D:Landroid/os/Handler;

.field public f:Landroid/app/NotificationChannel;

.field public g:Landroid/app/NotificationManager;

.field public h:Landroid/content/ComponentName;

.field public i:Landroid/database/ContentObserver;

.field public j:Lcom/transsion/magicvideo/services/VideosService$b;

.field public k:Landroid/media/AudioManager;

.field public l:Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

.field public m:Ljava/lang/Object;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Landroid/view/WindowManager;

.field public s:Landroid/view/ViewGroup;

.field public t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/player/PlayerService;-><init>()V

    new-instance v0, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;-><init>(Lcom/transsion/magicvideo/services/VideosService;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->l:Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/services/VideosService;->q:I

    iput v0, p0, Lcom/transsion/magicvideo/services/VideosService;->B:I

    new-instance v0, Lcom/transsion/magicvideo/services/VideosService$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/services/VideosService$a;-><init>(Lcom/transsion/magicvideo/services/VideosService;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->C:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lqbc;

    invoke-direct {v1, p0}, Lqbc;-><init>(Lcom/transsion/magicvideo/services/VideosService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    return-void
.end method

.method private J(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a2(Z)V

    return-void
.end method

.method private L()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "VideosService"

    const-string v2, "notify show"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y2()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->y()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/services/VideosService;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/services/VideosService;->x(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/services/VideosService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/services/VideosService;->A:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/services/VideosService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/services/VideosService;->y:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/services/VideosService;)Lcom/transsion/magicvideo/player/VideoPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/services/VideosService;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/services/VideosService;->B:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/services/VideosService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/services/VideosService;->A:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/services/VideosService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/services/VideosService;->y:Z

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->exitWindow()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->D()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X1(Z)V

    iput-boolean v0, p0, Lcom/transsion/magicvideo/services/VideosService;->y:Z

    invoke-static {}, Lo18;->e()V

    return-void
.end method

.method private r()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->r:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->r:Landroid/view/WindowManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->r:Landroid/view/WindowManager;

    return-object p0
.end method

.method private s(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommandIntent action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.transsion.magicshow.stop.video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.transsion.magicshow.play.pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pause"

    goto :goto_0

    :cond_1
    const-string p1, "play"

    :goto_0
    invoke-static {p1, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    goto :goto_1

    :cond_2
    const-string v0, "com.transsion.magicshow.previous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "pre"

    invoke-static {p1, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r1()V

    goto :goto_1

    :cond_3
    const-string v0, "com.transsion.magicshow.next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "next"

    invoke-static {p1, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    goto :goto_1

    :cond_4
    const-string v0, "com.transsion.magicshow.exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "clear notification"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const-string p1, "off"

    invoke-static {p1, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->u()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic x(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->L()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lw6c;->F(Landroid/content/Context;J)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :goto_0
    return v0
.end method

.method private synthetic y()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lvha;->u(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    return-void
.end method

.method public B(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    return-void
.end method

.method public C(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "VideosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/services/VideosService;->J(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-boolean v1, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->p()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public D()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->r()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->s:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->s:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized E()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->m:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "VideosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPlayingNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/transsion/magicvideo/services/VideosService;->J(Z)V

    const-string v2, "VideosService"

    const-string v3, "notify show"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y2()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-static {v2}, Lw6c;->l(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final F()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->D()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/magicvideo/services/VideosService;->p:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/magicvideo/services/VideosService;->w:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/magicvideo/services/VideosService;->x:I

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/transsion/magicvideo/services/VideosService;->u:I

    iput v1, p0, Lcom/transsion/magicvideo/services/VideosService;->w:I

    iget v1, p0, Lcom/transsion/magicvideo/services/VideosService;->v:I

    iput v1, p0, Lcom/transsion/magicvideo/services/VideosService;->x:I

    :cond_2
    new-instance v1, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/transsion/magicvideo/services/VideosService;->w:I

    iget v4, p0, Lcom/transsion/magicvideo/services/VideosService;->x:I

    invoke-direct {v1, v0, v3, v4}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-virtual {v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->bindWindow(Lcom/transsion/magicvideo/services/VideosService;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->attchWindow()V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->C(Z)V

    return-void
.end method

.method public G(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X1(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->F()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->E()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->H()V

    invoke-static {p0}, Lo18;->p(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    iget v1, p0, Lcom/transsion/magicvideo/services/VideosService;->q:I

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onPlayerStateUpdate(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->I()V

    return-void
.end method

.method public I()V
    .locals 2

    sget-boolean v0, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s0()Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q0()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->updateNextAndPreviousState(ZZ)V

    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/player/PlayerService;->a(ILandroid/view/KeyEvent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaButtonEventKeyUp "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isActivityResume:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v0()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideosService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljf;->n(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v0()Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    :cond_0
    const/16 p2, 0x57

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x58

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayTypeChanged isVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPlayVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Y1(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M()V

    :cond_0
    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHeadsetsKeyUp "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isActivityResume:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v0()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideosService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljf;->n(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->p()V

    return-void
.end method

.method public o()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/services/VideosService;->p()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->l:Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/magicvideo/services/VideosService;->o:Z

    iget-boolean v1, p0, Lcom/transsion/magicvideo/services/VideosService;->p:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/transsion/magicvideo/services/VideosService;->p:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/services/VideosService;->K(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->updateConfig(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lpbc;

    invoke-direct {v1, p0}, Lpbc;-><init>(Lcom/transsion/magicvideo/services/VideosService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-super {p0}, Lcom/transsion/playercommon/player/PlayerService;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->k:Landroid/media/AudioManager;

    new-instance v0, Lcom/transsion/magicvideo/services/VideosService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/services/VideosService$b;-><init>(Lrbc;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->j:Lcom/transsion/magicvideo/services/VideosService$b;

    new-instance v0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;

    iget-object v2, p0, Lcom/transsion/magicvideo/services/VideosService;->j:Lcom/transsion/magicvideo/services/VideosService$b;

    invoke-direct {v0, p0, v2}, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;-><init>(Lcom/transsion/magicvideo/services/VideosService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->i:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/transsion/magicvideo/services/VideosService;->i:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/transsion/magicvideo/services/VideosService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->h:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/transsion/magicvideo/services/VideosService;->z(Z)V

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->a(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/magicvideo/services/VideosService;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    iget-object v0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/services/VideosService;->v(Landroid/content/Context;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->g:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->visha_Player:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "magicshow_audio_notification_channel"

    invoke-direct {v0, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->f:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->g:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/player/PlayerService;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/services/VideosService;->z(Z)V

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->b(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/services/VideosService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/services/VideosService;->C(Z)V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    return-void
.end method

.method public onLoadingOnlineVideo(ZZ)V
    .locals 0

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/magicvideo/services/VideosService;->q:I

    sget-boolean v0, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onPlayerStateUpdate(I)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got new intent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideosService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/services/VideosService;->s(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/transsion/magicvideo/services/VideosService;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->t:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->onVideoSizeChanged(II)V

    :cond_0
    iput p1, p0, Lcom/transsion/magicvideo/services/VideosService;->w:I

    iput p2, p0, Lcom/transsion/magicvideo/services/VideosService;->x:I

    return-void
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/services/VideosService;->B:I

    return p0
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->z:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M()V

    return-void
.end method

.method public v(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResIcons "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideosService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/magicvideo/services/VideosService;->o:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->floating_window_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/services/VideosService;->u:I

    sget v0, Lcom/transsion/magicvideo/R$dimen;->floating_window_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/services/VideosService;->v:I

    return-void
.end method

.method public w()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/services/VideosService;->n:Z

    return p0
.end method

.method public z(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenerMediaButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->k:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->h:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService;->k:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService;->h:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method
