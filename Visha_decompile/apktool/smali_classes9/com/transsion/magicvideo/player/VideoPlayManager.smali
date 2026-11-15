.class public Lcom/transsion/magicvideo/player/VideoPlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b$a;
.implements Lcom/transsion/dbdata/utils/LoadDataUtils$a;
.implements Lh27$b;
.implements Lcom/transsion/playercommon/utils/storage/MountPointManager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/player/VideoPlayManager$d;,
        Lcom/transsion/magicvideo/player/VideoPlayManager$e;,
        Lcom/transsion/magicvideo/player/VideoPlayManager$c;
    }
.end annotation


# static fields
.field public static volatile W:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public static X:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:J

.field public E:J

.field public volatile F:J

.field public G:Z

.field public H:Lcom/transsion/magicvideo/data/VideoOpStatus;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Z

.field public N:Ljava/lang/ref/WeakReference;

.field public O:Z

.field public P:I

.field public final Q:Landroid/content/ServiceConnection;

.field public final R:Landroid/os/Handler;

.field public S:Ljava/lang/Runnable;

.field public final T:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final U:Ljava/lang/Runnable;

.field public V:Lcom/transsion/playercommon/player/b$b;

.field public b:Lcom/transsion/magicvideo/services/VideosService;

.field public c:Landroid/content/Intent;

.field public d:Z

.field public e:Z

.field public f:I

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Lcom/transsion/dbdata/beans/media/PlayListData;

.field public k:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public l:Lcom/transsion/playercommon/player/b;

.field public m:Lzs7;

.field public n:Lcom/transsion/dbdata/utils/LoadDataUtils;

.field public o:Landroid/content/Context;

.field public p:Z

.field public q:Z

.field public r:Z

.field public volatile s:Z

.field public volatile t:I

.field public volatile u:Ljava/lang/String;

.field public v:I

.field public w:Z

.field public x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public y:Landroid/net/Uri;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    new-instance v1, Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-direct {v1}, Lcom/transsion/magicvideo/data/VideoOpStatus;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->P:I

    new-instance v0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$a;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lxwb;

    invoke-direct {v1, p0}, Lxwb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    new-instance v0, Laxb;

    invoke-direct {v0, p0}, Laxb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->S:Ljava/lang/Runnable;

    new-instance v0, Lbxb;

    invoke-direct {v0, p0}, Lbxb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->T:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcxb;

    invoke-direct {v0, p0}, Lcxb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->U:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t0()V

    return-void
.end method

.method private B2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->K(Z)V

    :cond_0
    return-void
.end method

.method private D(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/transsion/magicvideo/services/VideosService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->c:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->e:Z

    return-void
.end method

.method public static synthetic F0(ILjava/lang/Integer;)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "has audio track result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayManager"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-object p0
.end method

.method private H()V
    .locals 4

    invoke-static {}, Luq3;->a()Z

    move-result v0

    const-string v1, "VideoPlayManager"

    if-eqz v0, :cond_0

    const-string p0, "checkPlayData isRenaming"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPlayData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/magicvideo/player/VideoPlayManager$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager$5;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic H0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAudioTrackRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayManager"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic K0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->n2()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M()V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->forceExit()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic L0(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z0(I)V

    return-void
.end method

.method public static synthetic N0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->b(Ljava/lang/String;)Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic P0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideoItemDirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/dbdata/database/AudioTrack;Lcom/transsion/dbdata/database/AudioTrack;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget v0, p0, Lcom/transsion/dbdata/database/AudioTrack;->id:I

    iget v1, p0, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Ltpb;->k(IILjava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static X()Lcom/transsion/magicvideo/player/VideoPlayManager;
    .locals 2

    sget-object v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->W:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/magicvideo/player/VideoPlayManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->W:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-direct {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;-><init>()V

    sput-object v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->W:Lcom/transsion/magicvideo/player/VideoPlayManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->W:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J0()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->K0()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->O0(Lcom/transsion/dbdata/beans/media/MediaItem;ZZLcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->P0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic j(ILjava/lang/Integer;)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->F0(ILjava/lang/Integer;)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private j1(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playForRepeatMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    const-string p0, "playForRepeatMode repeat error max"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    add-int/2addr v4, v1

    iput v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result p1

    invoke-virtual {p0, p1, v3, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    :goto_1
    return v1

    :cond_5
    return p1
.end method

.method public static synthetic k(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->H0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/magicvideo/player/VideoPlayManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->L0(I)V

    return-void
.end method

.method private l1(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x2()V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic m(Lcom/transsion/dbdata/database/AudioTrack;Lcom/transsion/dbdata/database/AudioTrack;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q0(Lcom/transsion/dbdata/database/AudioTrack;Lcom/transsion/dbdata/database/AudioTrack;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->N0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G0(Lcom/transsion/dbdata/database/AudioTrack;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M0()V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/magicvideo/player/VideoPlayManager;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->I0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/transsion/magicvideo/player/VideoPlayManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method private t0()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: vlc support:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lpp3;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bsp support:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lpp3;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lifc;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lifc;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/player/c;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/transsion/playercommon/player/c;-><init>(Landroid/content/Context;Z)V

    :goto_0
    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/player/b;->n(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/b;

    new-instance v0, Lcom/transsion/dbdata/utils/LoadDataUtils;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->n:Lcom/transsion/dbdata/utils/LoadDataUtils;

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    const-string v1, "play_item"

    invoke-static {v0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;

    if-eqz v0, :cond_1

    new-instance v7, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    iget-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    iget-boolean v5, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->isVirtualFolder:Z

    iget-object v6, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(IJZLjava/lang/String;)V

    iput-object v7, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->q(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;I)V

    new-instance v0, Lzs7;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->T:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, v1, v2}, Lzs7;-><init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->m:Lzs7;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x472

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x479

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x47a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x403

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/magicvideo/player/VideoPlayManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    return p0
.end method

.method public static bridge synthetic v(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/magicvideo/services/VideosService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/magicvideo/player/VideoPlayManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->d:Z

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/magicvideo/services/VideosService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    return-void
.end method

.method private x2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->I()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic y(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m1(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/magicvideo/player/VideoPlayManager$e;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public A0()Z
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public A1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->m:Lzs7;

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayManager"

    const-string v1, "refreshAudioFocus"

    invoke-static {v0, v1}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->m:Lzs7;

    invoke-virtual {p0}, Lzs7;->f()I

    :cond_0
    return-void
.end method

.method public final A2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->updateCurrentPlayPosition(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayListData "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public B(ZLandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoActivityPauseOrResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->B:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->B:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public B0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    return p0
.end method

.method public B1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->f(Z)Z

    return-void
.end method

.method public C(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoPauseOrResume mShowNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",resume:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->i(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->U:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->i(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public C0(Landroid/view/SurfaceView;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->G(Landroid/view/SurfaceView;)Z

    move-result p0

    return p0
.end method

.method public C1(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$c;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public C2(FIZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iget p3, p3, Lcom/transsion/magicvideo/data/VideoOpStatus;->mAudioVolume:F

    invoke-static {p3, p1}, Lfz5;->c(FF)V

    :cond_0
    iget-object p3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput p1, p3, Lcom/transsion/magicvideo/data/VideoOpStatus;->mAudioVolume:F

    int-to-float v0, p2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicVolume:I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput p2, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicMaxVolume:I

    return-void
.end method

.method public D0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSameUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public D1(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    return-void
.end method

.method public D2(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVolumeChange(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public E(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindVideoService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D(Landroid/content/Context;)V

    return-void
.end method

.method public final E0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_1

    iget p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public E1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->u(Z)V

    return-void
.end method

.method public E2(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->v(I)V

    return-void
.end method

.method public final F(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolder(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolderMatchName(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    :cond_1
    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMIMediaVideoPlayItemInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->l(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->setMIMediaVideoPlayItemInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "buildCurrentPlayVideoData "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public F1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoPlayManager"

    const-string v1, "releasePlayerForMount "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b;->u(Z)V

    iget p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->F:J

    sget p0, Lcom/transsion/magicvideo/R$string;->net_media_play_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public G()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->I:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->K:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final synthetic G0(Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    iget v0, p1, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->x(I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select audio track result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public G1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->H1(Z)V

    return-void
.end method

.method public H1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->C(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->V:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/transsion/playercommon/player/b$b;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public I(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVideoService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final synthetic I0(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "VideoPlayManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHECK_PREPARE_TIMEOUT: current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isMusicMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o0()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/magicvideo/services/VideosService;->w()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    if-nez p1, :cond_3

    const-string p1, "service stopSelf"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    :goto_0
    return v1
.end method

.method public I1(Lcom/transsion/magicvideo/player/VideoPlayManager$e;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->u:Ljava/lang/String;

    return-void
.end method

.method public final synthetic J0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->i(Z)V

    return-void
.end method

.method public J1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->setRepeat(Z)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->g()V

    return-void
.end method

.method public declared-synchronized K()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->F:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-wide v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->F:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public K1(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "VideoPlayManager"

    if-nez p1, :cond_0

    const-string p1, "requestMIMediaVideoPlayInfo meidaInfo null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m1(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "requestMIMediaVideoPlayInfo videoId null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m1(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/player/VideoPlayManager$b;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager$b;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->m(Ljava/lang/String;Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;)V

    return-void
.end method

.method public L(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public L1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0}, Lcom/transsion/playercommon/player/b;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Y1(Z)V

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    return-void
.end method

.method public M()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->H1(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    return-void
.end method

.method public final synthetic M0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A1()V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->d(Z)V

    return-void
.end method

.method public M1(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "VideoPlayManager"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    if-gtz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePlayVideoData position: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iput p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->F(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restorePlayVideoData "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public N()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->B()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return p0
.end method

.method public N1(Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveAudioTrackInfo:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "AudioTrack is null"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/transsion/dbdata/database/AudioTrack;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "VideoPlayManager"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    new-instance v0, Lzwb;

    invoke-direct {v0, p1}, Lzwb;-><init>(Lcom/transsion/dbdata/database/AudioTrack;)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public O()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->j()I

    move-result p0

    return p0
.end method

.method public final synthetic O0(Lcom/transsion/dbdata/beans/media/MediaItem;ZZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideoItemDirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-static {p1}, Lhk3;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/transsion/magicvideo/R$string;->video_format_not_support:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lsrb;->a:Lsrb;

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_playing_cloud_file:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsrb;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p4, p2, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void
.end method

.method public final O1(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance v6, Lcom/transsion/dbdata/beans/media/MediaItemClone;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v4, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/beans/media/MediaItemClone;-><init>(IJZLjava/lang/String;)V

    new-instance p1, Lcom/transsion/magicvideo/player/VideoPlayManager$2;

    invoke-direct {p1, p0, v6}, Lcom/transsion/magicvideo/player/VideoPlayManager$2;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItemClone;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->f(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    :cond_0
    return-void
.end method

.method public P()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->A()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public P1(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p0, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    :cond_0
    return-void
.end method

.method public final Q(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->V:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b$b;->b(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public Q1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/b;->seekTo(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->seekTo(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public R()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final R0(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAudioTrackRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lgxb;

    invoke-direct {v1, p1}, Lgxb;-><init>(I)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lhxb;

    invoke-direct {v0, p0}, Lhxb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    new-instance p0, Lixb;

    invoke-direct {p0}, Lixb;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public R1(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioTrack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->x(I)Z

    move-result p0

    return p0
.end method

.method public S()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public S0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->s:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-gtz v1, :cond_1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->u:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J()V

    :goto_0
    return-void
.end method

.method public S1(Landroid/view/SurfaceHolder;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method public T()Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final T0(Z)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->E:J

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->E:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->E:J

    sub-long/2addr v0, v4

    long-to-int p1, v0

    div-int/lit16 p1, p1, 0x3e8

    sget-object v0, Loz5;->a:Loz5$a;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0, v1, p1}, Loz5$a;->c(Lcom/transsion/dbdata/beans/media/PlayVideoData;I)V

    iput-wide v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->E:J

    :cond_1
    return-void
.end method

.method public T1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->N(Z)V

    return-void
.end method

.method public U()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public U0(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_a

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v3}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    long-to-double v4, v4

    iget-wide v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    iget-object v7, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->L:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->L:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    invoke-static {v7}, Lp06;->e(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-object v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v9, "name"

    invoke-virtual {v2, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "play_source"

    const-string v10, "inner"

    invoke-virtual {v2, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "vd_size"

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "vd_length"

    invoke-virtual {v2, v12, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v13, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v13, v13, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v13, :cond_1

    iget-object v13, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v13, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_1
    const-string v14, "path"

    invoke-virtual {v2, v14, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "from"

    invoke-virtual {v2, v13, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->j0()I

    move-result v15

    move-object/from16 v16, v7

    const-string v7, "play_status_timer"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lp06;->f()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v7

    const-string v7, "play_status_loop"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    move-object/from16 v18, v7

    const-string v7, "listname"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object/from16 v19, v7

    const-string v7, "vd_format"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v15, v15, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    move-object/from16 v20, v7

    const-string v7, "play_type"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getVideoRatio()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v7

    const-string v7, "asp_ratio"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->E0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    move-object/from16 v22, v7

    const-string v7, "rotate_status"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v15, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v15, v15, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {v15}, Lsuc;->a(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v23, v7

    const-string v7, "favorite"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v15

    iget-boolean v15, v15, Lkrb;->a:Z

    const-string v24, "off"

    const-string v25, "on"

    move-object/from16 v26, v7

    if-eqz v15, :cond_2

    move-object/from16 v15, v25

    goto :goto_2

    :cond_2
    move-object/from16 v15, v24

    :goto_2
    const-string v7, "equalizer_statue"

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v7

    iget v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v7

    iget v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "resolution"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "fps"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "codec"

    move-object/from16 v30, v15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Player core"

    invoke-static {}, Lpp3;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v7, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v7}, Lqqb;->a(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "system"

    goto :goto_3

    :cond_3
    const-string v7, "video"

    :goto_3
    const-string v15, "orisetting"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lao;->U()Lao;

    move-result-object v7

    iget-object v15, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lao;->e0(Ljava/lang/String;)Z

    move-result v7

    const-string v15, "mv_statue"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/transsion/magicvideo/services/VideosService;->q()I

    move-result v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    const-string v15, "earphone_status"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v7

    invoke-virtual {v7, v1}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v7

    const-string v15, "new_label"

    invoke-virtual {v2, v15, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v9, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v8, v10}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v11, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v3, v12, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v14, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-object/from16 v7, v16

    invoke-virtual {v3, v13, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->j0()I

    move-result v4

    move-object/from16 v5, v17

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lp06;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    move-object/from16 v5, v19

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object/from16 v5, v20

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    move-object/from16 v5, v21

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getVideoRatio()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->E0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v23

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {v4}, Lsuc;->a(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v5, v26

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/magicvideo/services/VideosService;->q()I

    move-result v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const-string v5, "earphone_status"

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v4

    invoke-virtual {v4, v1}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    const-string v5, "new_label"

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Z)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v4

    iget-boolean v4, v4, Lkrb;->a:Z

    if-eqz v4, :cond_7

    move-object/from16 v5, v25

    :goto_7
    move-object/from16 v4, v27

    goto :goto_8

    :cond_7
    move-object/from16 v5, v24

    goto :goto_7

    :goto_8
    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-boolean v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v4, :cond_8

    move-object/from16 v4, v25

    goto :goto_9

    :cond_8
    move-object/from16 v4, v24

    :goto_9
    const-string v5, "mute_status"

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v29

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v30

    invoke-virtual {v3, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v4, "codec"

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v4, "Player core"

    invoke-static {}, Lpp3;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lqqb;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "system"

    goto :goto_a

    :cond_9
    const-string v0, "video"

    :goto_a
    const-string v4, "orisetting"

    invoke-virtual {v3, v4, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lao;->e0(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "mv_statue"

    invoke-virtual {v3, v1, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v0, "vd_video_play_show"

    const-wide/16 v4, 0x246c

    invoke-static {v3, v2, v0, v4, v5}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_a
    return-void
.end method

.method public U1(Lcom/transsion/playercommon/player/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->V:Lcom/transsion/playercommon/player/b$b;

    return-void
.end method

.method public V()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->getDuration()I

    move-result p0

    return p0
.end method

.method public final V0(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "VideoPlayManager"

    const-string p1, "markPointMediaItemInBackground null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/magicvideo/player/VideoPlayManager$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$6;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->K:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/player/b;->D(I)V

    return-void
.end method

.method public W()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->P()I

    move-result p0

    return p0
.end method

.method public W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->D:J

    goto/16 :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->D:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-wide v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->D:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->L:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->L:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    invoke-static {v5}, Lp06;->e(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "org_duration"

    invoke-virtual {p2, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "stay_duration"

    invoke-virtual {p2, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "end_duration"

    invoke-virtual {p2, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v9, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    const-string v10, "video_name"

    invoke-virtual {p2, v10, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "from"

    invoke-virtual {p2, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "rotate_status"

    invoke-virtual {p2, v11, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v6, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v7, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v8, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v10, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v9, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v2, v11, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_video_play_duration"

    const-wide/16 v0, 0x246c

    invoke-static {v2, p2, p1, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->D:J

    :cond_3
    :goto_1
    return-void
.end method

.method public W1(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsMusicMode newMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lm27;->d(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/transsion/playercommon/player/b;->h(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/transsion/playercommon/player/b;->D(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    sput-object p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->u:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    const-string p1, "finished_video_guide"

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T1(Z)V

    :cond_3
    return-void
.end method

.method public X0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x2()V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z2(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public X1(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->X:Z

    return-void
.end method

.method public Y()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->F()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Y0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->q(Z)V

    :cond_0
    return-void
.end method

.method public Y1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->p:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->p:Z

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l2()V

    :cond_0
    return-void
.end method

.method public Z()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final Z0(I)V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v0

    const-string v1, "VideoPlayManager"

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->B:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudioFocusChange return >> mPlayViewResume:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->B:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mPlayerState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isRunInBackground:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->J:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->U:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, v3}, Lcom/transsion/playercommon/player/b;->i(Z)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v4, "audio_focus_allow_may_duck"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    if-ne p1, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, v3}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, v5}, Lcom/transsion/playercommon/player/b;->i(Z)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player be stopped, onAudioFocusChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lyp;->i()Lyp;

    move-result-object p1

    new-instance v0, Lywb;

    invoke-direct {v0, p0}, Lywb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    invoke-virtual {p1, v0}, Lyp;->q(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Player playing with other app, onAudioFocusChange: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public Z1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/b;->Q(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->P:I

    invoke-interface {v0, p1, v1}, Lcom/transsion/playercommon/player/b;->H(ZI)V

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    return-void
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-wide v6, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playVideoData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_3

    long-to-int v3, v6

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    move-object v4, v1

    goto :goto_4

    :cond_4
    move-object v4, v0

    :goto_4
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0, v4}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l1(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J1()V

    const/4 p1, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0, v4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V0(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t1(Lcom/transsion/dbdata/beans/media/MediaItem;ZJZZ)V

    return-void
.end method

.method public a0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->I:Z

    return p0
.end method

.method public a1()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    return-void
.end method

.method public a2(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNotificationState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1, p1, v0}, Lcom/transsion/playercommon/player/b;->z(ZI)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->D(I)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadBucketsResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getFromSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Laf9;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x461

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    sput-boolean v1, Laf9;->h:Z

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getFromSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayList(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J1()V

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B2(Z)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public b0()Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    return-object p0
.end method

.method public b1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c1(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public b2(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->I:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/player/b;->D(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1, p1}, Lcom/transsion/playercommon/player/b;->K(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/transsion/playercommon/player/b;->z(ZI)V

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    return-void
.end method

.method public c(Landroid/net/Uri;Z)V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preLoadPlayVideoData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoPlayManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->k:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    iget-object v4, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v5, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    const-wide/16 v6, 0x0

    if-nez v5, :cond_1

    iget-wide v8, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-wide v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    cmp-long v4, v8, v4

    if-nez v4, :cond_2

    :cond_1
    move-wide v8, v6

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljb8;

    if-eqz v1, :cond_3

    move-wide v12, v8

    goto :goto_1

    :cond_3
    move-wide v12, v6

    :goto_1
    iget-object v1, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v14, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget v15, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-wide v3, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    move-object v10, v2

    move-object/from16 v11, p1

    move-wide/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Ljb8;-><init>(Landroid/net/Uri;JZIJ)V

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->n1(Ljb8;)V

    return-void
.end method

.method public c0()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public c1(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/transsion/magicvideo/player/VideoPlayManager$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager$3;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public c2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/playercommon/player/b;->z(ZI)V

    return-void
.end method

.method public d0()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d1()V
    .locals 5

    const-string v0, "VideoPlayManager"

    const-string v1, "onMediaStoreChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->A:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->n:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->k(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->H()V

    return-void
.end method

.method public d2(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->l(F)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x42a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x45d

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->E()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x472

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x479

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, v1}, Lcom/transsion/playercommon/player/b;->K(Z)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x48c

    if-ne p1, v0, :cond_4

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->j2(I)V

    goto :goto_0

    :cond_4
    const/16 p2, 0x47a

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_5
    const/16 p2, 0x403

    if-ne p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->p:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R0(I)V

    :cond_0
    return-void
.end method

.method public e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-object p0
.end method

.method public e1()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayStatusEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->I:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->j1(Z)Z

    :cond_1
    return-void
.end method

.method public e2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->J:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->p(Z)V

    return-void
.end method

.method public f0()Lcom/transsion/playercommon/player/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    return-object p0
.end method

.method public f1(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->B(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f2(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->m(J)V

    return-void
.end method

.method public g0()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->a()I

    move-result p0

    return p0
.end method

.method public final g1(Ljb8;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->f1(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/transsion/playercommon/core/MainApp;->k:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    if-eq p2, p3, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Ljb8;->b:J

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->n1(Ljb8;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X0()V

    invoke-direct {p0, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B2(Z)V

    sget p0, Lzdc;->a:I

    invoke-static {p0}, Lzdc;->t(I)V

    return-void
.end method

.method public g2(Landroid/view/SurfaceView;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->L(Landroid/view/SurfaceView;Z)V

    return-void
.end method

.method public h0()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->r()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public h1(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {p1}, Leuc;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->youtube_listen_toast:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->S:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public h2(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubtitleTrack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->e(I)V

    return-void
.end method

.method public i0()Lcom/transsion/dbdata/database/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->s()Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public i1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    return-void
.end method

.method public i2(FF)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->P:I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->setVolume(FF)V

    return-void
.end method

.method public j0()I
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lw6c;->l(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j2(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/b;->M(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D2(I)V

    return-void
.end method

.method public k0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final k1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playForVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nVideosService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->s:Z

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    long-to-int v1, v1

    iput v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->A:I

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-static {v0}, Lp06;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/player/b;->setFrom(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayListTitle(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->q:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->n:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->u(Lcom/transsion/dbdata/utils/LoadDataUtils$a;)V

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->n:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->j(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method

.method public final k2(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 3

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-lez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    if-gtz v0, :cond_4

    iget v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    :cond_5
    iget p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    if-lez p2, :cond_6

    iget p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->t:I

    if-eq v0, p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->u:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->u:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public l0()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->J()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->E()V

    :cond_0
    return-void
.end method

.method public m0(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->n0(Landroid/content/Context;ZZZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final m1(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->k()Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->l(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->setMIMediaVideoPlayItemInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p1, "no uri"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playMIMediaVideo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final m2(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->j1(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipTheErrorVideo skip:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public n0(Landroid/content/Context;ZZZI)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.transsion.magicshow.OPEN_VIDEO"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez p5, :cond_0

    if-eqz p3, :cond_1

    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    iput p3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    goto :goto_0

    :cond_0
    iput p5, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    sget-object p1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    :cond_2
    iput-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    iput-boolean p4, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->toIntent(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getVideoIntent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final n1(Ljb8;)V
    .locals 5

    invoke-static {}, Ldi1;->f()Ldi1;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0, v1}, Ldi1;->h(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljb8;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    const-string v1, "VideoPlayManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "playMedia: Started prepare timeout check for music mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMedia:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lbya;->h()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/b;->R(Ljb8;)V

    iget-boolean p1, p1, Ljb8;->d:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {p0}, Le07;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/magicvideo/R$string;->visha_using_data_warning:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_2
    return-void
.end method

.method public n2()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playNext()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o0()V
    .locals 4

    const-string v0, "handlePrepareTimeout: Prepare timeout detected in music mode"

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "handlePrepareTimeout: No next track available"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    const-string p0, "handlePrepareTimeout: Current position > REPLAY_MS, not skipping"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "handlePrepareTimeout: Repeat mode is auto pause, not skipping"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    const-string v0, "handlePrepareTimeout: Repeat error max reached"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    sget v0, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    return-void

    :cond_3
    const-string v0, "handlePrepareTimeout: Skipping to next track"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    sget v0, Lcom/transsion/magicvideo/R$string;->cannot_play_video:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p1(Z)V

    return-void
.end method

.method public o1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p1(Z)V

    return-void
.end method

.method public o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->X:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->u1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->G(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b;->K(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p1}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b;->seekTo(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l2()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->F1(Ljava/lang/String;)V

    return-void
.end method

.method public onInfo(II)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onInfo(II)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onLoadingOnlineVideo(ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v1, v0}, Lp06;->E(Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v1}, Leuc;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onLoadingOnlineVideo(ZZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 5

    iput p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayerStateUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsPlaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPlaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoPlayManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    invoke-static {v3}, Lm27;->d(Z)V

    iget-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eq v3, v1, :cond_6

    iput-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->m:Lzs7;

    invoke-virtual {v1}, Lzs7;->f()I

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Y1(Z)V

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/player/a;->e(Z)V

    :cond_4
    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->w:Z

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T0(Z)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B2(Z)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->onPlayerStateUpdate(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayerStateUpdate(I)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e1()V

    :cond_a
    return-void
.end method

.method public onSdSwap()V
    .locals 0

    return-void
.end method

.method public onShowError(II)V
    .locals 11

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m2(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->B0()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->I:Z

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    invoke-static {p2}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v1, v2}, Lp06;->E(Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-static {v1}, Lp06;->e(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_5

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    move v7, v2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v6

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v1, :cond_6

    const-string v1, "listen"

    :goto_2
    move-object v9, v1

    goto :goto_3

    :cond_6
    const-string v1, "video"

    goto :goto_2

    :goto_3
    const/4 v10, 0x1

    move v4, p1

    invoke-static/range {v3 .. v10}, Lp06;->F(Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;FZLjava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onShowError(II)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public onSubtitleText(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$e;->onSubtitleText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 0

    return-void
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

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/magicvideo/services/VideosService;->onVideoSizeChanged(II)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public p0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result p0

    return p0
.end method

.method public p1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playNext()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :cond_0
    return-void
.end method

.method public p2(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-nez v0, :cond_0

    const-string p0, "triggerPlayOrPause mVideoData is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPlayOrPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPlayOrPause position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->f(Z)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->t(ZZ)V

    :goto_1
    return-void
.end method

.method public q0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNextInList()Z

    move-result p0

    return p0
.end method

.method public q1(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playNext()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_0

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0, v0, v2, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :cond_1
    return-void
.end method

.method public q2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r2()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    :goto_0
    return-void
.end method

.method public r0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public r1()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playPrevious()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :cond_0
    return-void
.end method

.method public r2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerPlayPauseFromError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    :goto_0
    return-void
.end method

.method public s0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasPreviousInList()Z

    move-result p0

    return p0
.end method

.method public s1(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playPrevious()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :cond_1
    return-void
.end method

.method public final s2()Z
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {v0}, Lw6c;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_4

    const-string v0, "VideoPlayManager"

    const-string v2, "trySkipUnplayableTrackInMusicMode repeat error max"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    return v1

    :cond_4
    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->C:I

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p1(Z)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public t1(Lcom/transsion/dbdata/beans/media/MediaItem;ZJZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "VideoPlayManager"

    if-eqz v1, :cond_4

    iget-object v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iput-object v5, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->y:Landroid/net/Uri;

    iget-object v6, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v6, :cond_2

    iget-boolean v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v7, :cond_1

    iget-object v5, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_1
    invoke-virtual {p0, v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q(Landroid/net/Uri;)V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playUri playPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->y:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljb8;

    iget-object v5, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->y:Landroid/net/Uri;

    if-eqz v2, :cond_3

    :goto_0
    move-wide v8, v6

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v10, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget v11, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v12, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-object v6, v4

    move-object v7, v5

    invoke-direct/range {v6 .. v13}, Ljb8;-><init>(Landroid/net/Uri;JZIJ)V

    move/from16 v1, p6

    invoke-virtual {p0, v4, v3, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g1(Ljb8;ZZ)V

    return-void

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playUri null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public t2(Landroid/content/Context;)V
    .locals 4

    iget v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->f:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->c:Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->e:Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->R:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public u0(FI)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput p1, v0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mAudioVolume:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicVolume:I

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput p2, p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicMaxVolume:I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->o:Landroid/content/Context;

    invoke-static {p0, p1}, Lrtb;->k(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;)V

    return-void
.end method

.method public u1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 5

    const-string v0, "VideoPlayManager"

    if-nez p1, :cond_0

    const-string p0, "playVideo failed, video data is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getFromSource()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nforceResetPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mShowNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isSamePlayVideoData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSamePlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",last_list_flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isInPictureInPictureMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",last_video_source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",this_video_source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getFromSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSamePlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getFromSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideo - videoData.listFlag != mListFlag, mListFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",videoData.listFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->z:I

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->A:I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->n:Lcom/transsion/dbdata/utils/LoadDataUtils;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->k(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->r:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->s:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->s:Z

    const-string v1, "skip pre-switch record after clear history"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->L1()V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k1(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public u2(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public v0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->B:Z

    return p0
.end method

.method public v1(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W0(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void
.end method

.method public v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public w0(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->N:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 3

    const-string v0, "VideoPlayManager"

    if-nez p1, :cond_0

    const-string p0, "playVideoItem mediaItem null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideoItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->K1(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideoItem KtFile localFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    sget v0, Lcom/transsion/magicvideo/R$string;->visha_playing_local_file:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Ldxb;

    invoke-direct {v1, p1}, Ldxb;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lexb;

    invoke-direct {v1, p0, p1, p2, p3}, Lexb;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    new-instance p0, Lfxb;

    invoke-direct {p0}, Lfxb;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :goto_0
    return-void
.end method

.method public w2(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoOpStatus;->mScreenBrightness:F

    sput p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->defScreenBrightness:F

    return-void
.end method

.method public x0()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->X:Z

    return p0
.end method

.method public x1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 9

    const-string v0, "VideoPlayManager"

    if-nez p1, :cond_0

    const-string p0, "playVideoItem mediaItem null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lm16;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideoItemDirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long v1, v0

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v0, v0

    :goto_0
    move-wide v5, v0

    goto :goto_2

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->h1(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->F(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t1(Lcom/transsion/dbdata/beans/media/MediaItem;ZJZZ)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V0(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public y0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    return p0
.end method

.method public y1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z1(Z)V

    return-void
.end method

.method public y2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    invoke-interface {v1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateNotification(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/playercommon/player/b;->y(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public z0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->p:Z

    return p0
.end method

.method public z1(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordVideoStates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->q:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/PlayerStates;-><init>()V

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result v2

    iput v2, v0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    iget v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->v:I

    iput v2, v0, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->r()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/dbdata/beans/PlayerStates;->subtitles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->C()I

    move-result v2

    iput v2, v0, Lcom/transsion/dbdata/beans/PlayerStates;->subtitleIndex:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-gtz v2, :cond_1

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->j:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->l:Lcom/transsion/playercommon/player/b;

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->getDuration()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x49a

    invoke-virtual {v2, v4, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    iget v2, v0, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->P1(J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->x:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k2(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip old minibBar history record once clear-history target, mediaItem="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", videoData="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v1, Lcom/transsion/magicvideo/player/VideoPlayManager$4;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;-><init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->n()V

    :cond_5
    return-void
.end method

.method public z2(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->k:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->u:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->O1(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->b:Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/services/VideosService;->A(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/player/VideoPlayManager$c;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$c;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_2

    :cond_5
    return-void
.end method
