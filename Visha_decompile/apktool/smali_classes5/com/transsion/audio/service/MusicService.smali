.class public Lcom/transsion/audio/service/MusicService;
.super Lcom/transsion/playercommon/player/PlayerService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/service/MusicService$ServiceBinder;,
        Lcom/transsion/audio/service/MusicService$b;,
        Lcom/transsion/audio/service/MusicService$MediaStoreObserver;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public f:Landroid/app/NotificationChannel;

.field public g:Landroid/app/NotificationManager;

.field public h:Landroid/content/ComponentName;

.field public i:Landroid/database/ContentObserver;

.field public j:Lcom/transsion/audio/service/MusicService$b;

.field public k:Landroid/media/AudioManager;

.field public final l:Lcom/transsion/audio/service/MusicService$ServiceBinder;

.field public final m:Ljava/lang/Object;

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Lcom/transsion/audio/player/MusicPlayManager;

.field public r:Z

.field public s:I

.field public t:Landroid/app/KeyguardManager;

.field public final u:Ljava/lang/Runnable;

.field public v:Landroid/content/BroadcastReceiver;

.field public final w:Landroid/content/BroadcastReceiver;

.field public final x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/player/PlayerService;-><init>()V

    new-instance v0, Lcom/transsion/audio/service/MusicService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/transsion/audio/service/MusicService$ServiceBinder;-><init>(Lcom/transsion/audio/service/MusicService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->l:Lcom/transsion/audio/service/MusicService$ServiceBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/service/MusicService;->o:I

    iput v0, p0, Lcom/transsion/audio/service/MusicService;->s:I

    new-instance v0, Lxv6;

    invoke-direct {v0, p0}, Lxv6;-><init>(Lcom/transsion/audio/service/MusicService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/audio/service/MusicService$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/service/MusicService$1;-><init>(Lcom/transsion/audio/service/MusicService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->v:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/transsion/audio/service/MusicService$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/service/MusicService$a;-><init>(Lcom/transsion/audio/service/MusicService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->w:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lyv6;

    invoke-direct {v1, p0}, Lyv6;-><init>(Lcom/transsion/audio/service/MusicService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    return-void
.end method

.method private B(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService;->k:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->h:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/service/MusicService;->k:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->h:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/service/MusicService;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->z(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/service/MusicService;->w()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/service/MusicService;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->x(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/service/MusicService;->y()V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/service/MusicService;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->A(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/audio/service/MusicService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/service/MusicService;->r:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/audio/service/MusicService;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/audio/service/MusicService;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/service/MusicService;->s:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/audio/service/MusicService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/service/MusicService;->r:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/audio/service/MusicService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->G()Z

    move-result p0

    return p0
.end method

.method private p(ILandroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doHeadsetsKeyUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MusicService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p2}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljf;->n(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x57

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->W0()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x58

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Z0()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic w()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MusicService;->I(Z)Z

    return-void
.end method

.method private synthetic y()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lvha;->u(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->I(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->u:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public C(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/audio/service/MusicService;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/audio/service/MusicService;->p:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/transsion/audio/service/MusicService;->p:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->H()V

    invoke-direct {p0, v1}, Lcom/transsion/audio/service/MusicService;->B(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->K()V

    :cond_2
    return-void
.end method

.method public D(ZI)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pause"

    goto :goto_0

    :cond_0
    const-string v0, "play"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp06;->m0(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "widget"

    invoke-static {v0}, Lry5;->g(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->r0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lvv6;

    invoke-direct {v1, p0}, Lvv6;-><init>(Lcom/transsion/audio/service/MusicService;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lwv6;

    invoke-direct {v1, p0}, Lwv6;-><init>(Lcom/transsion/audio/service/MusicService;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :goto_2
    if-eqz p1, :cond_4

    invoke-static {p2}, Lry5;->k(I)V

    :cond_4
    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/service/MusicService;->F(Z)V

    return-void
.end method

.method public F(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/audio/service/MusicService;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/audio/service/MusicService;->n:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->J(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v2, p0, Lcom/transsion/audio/service/MusicService;->g:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/service/MusicService;->B(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final G()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->r()Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized H()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->m:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPlayingNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/audio/service/MusicService;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/audio/service/MusicService;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/audio/service/MusicService;->J(Z)V

    invoke-direct {p0, v1}, Lcom/transsion/audio/service/MusicService;->B(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
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

.method public final I(Z)Z
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "vd_miniplayer_none"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final J(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/service/MusicService;->n:Z

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->s1(Z)V

    return-void
.end method

.method public K()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final L()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->m:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/player/PlayerService;->a(ILandroid/view/KeyEvent;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/service/MusicService;->p(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->L0(Z)V

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeadsetsKeyUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/service/MusicService;->p(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->l:Lcom/transsion/audio/service/MusicService$ServiceBinder;

    return-object p0
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

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Luv6;

    invoke-direct {v1, p0}, Luv6;-><init>(Lcom/transsion/audio/service/MusicService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-super {p0}, Lcom/transsion/playercommon/player/PlayerService;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->k:Landroid/media/AudioManager;

    new-instance v0, Lcom/transsion/audio/service/MusicService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/service/MusicService$b;-><init>(Lzv6;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->j:Lcom/transsion/audio/service/MusicService$b;

    new-instance v0, Lcom/transsion/audio/service/MusicService$MediaStoreObserver;

    iget-object v2, p0, Lcom/transsion/audio/service/MusicService;->j:Lcom/transsion/audio/service/MusicService$b;

    invoke-direct {v0, p0, v2}, Lcom/transsion/audio/service/MusicService$MediaStoreObserver;-><init>(Lcom/transsion/audio/service/MusicService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->i:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/transsion/audio/service/MusicService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->h:Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->a(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/audio/service/MusicService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->g:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/audio/R$string;->visha_Player:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "magicshow_audio_notification_channel"

    invoke-direct {v0, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->f:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->g:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/transsion/audio/service/MusicService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audio/service/MusicService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->I0()V

    invoke-static {p0}, Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver;->b(Lcom/transsion/playercommon/receiver/HeadsetsControllerReceiver$a;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/audio/service/MusicService;->B(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/service/MusicService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->E()V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    iget-object p0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got new intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MusicService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService;->u(Landroid/content/Intent;)V

    const-string p0, "fromwidget"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/service/MusicService;->s:I

    return p0
.end method

.method public final r()Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/service/MusicService;->t:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/transsion/audio/service/MusicService;->t:Landroid/app/KeyguardManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->t:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public s()Landroid/app/PendingIntent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.magicmovie.video_player_main_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    const-string v4, "widget_audio_tab"

    invoke-virtual {v1, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_page(Ljava/lang/String;)V

    const-string v4, "from_router"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "router_data"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.transsion.magicshow.OPEN_AUDIO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    const/high16 v1, 0xc000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method public final u(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromwidget"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCommandIntent action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.transsion.magicshow.stop.video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.transsion.magicshow.play.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "widget"

    invoke-static {v0}, Lry5;->g(Ljava/lang/String;)V

    const-string v0, "fromwidgetType"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/audio/service/MusicService;->D(ZI)V

    goto :goto_0

    :cond_1
    const-string p1, "com.transsion.magicshow.previous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    const-string p0, "pre"

    invoke-static {p0, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "com.transsion.magicshow.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    const-string p0, "next"

    invoke-static {p0, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string p1, "com.transsion.magicshow.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "off"

    invoke-static {p1, v2}, Lp06;->m0(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService;->q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K()V

    goto :goto_0

    :cond_4
    const-string p1, "add_widget_success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    sget p0, Lcom/transsion/audio/R$string;->visha_widget_added:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public v()Z
    .locals 1

    iget p0, p0, Lcom/transsion/audio/service/MusicService;->o:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic x(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->L()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic z(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/MusicHelper;->restore(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
