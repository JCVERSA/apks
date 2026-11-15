.class public Lcom/transsion/audio/player/MusicPlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b$a;
.implements Lcom/transsion/audio/utils/AudioLoadDataUtils$a;
.implements Lh27$b;
.implements Lcom/transsion/playercommon/utils/storage/MountPointManager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/player/MusicPlayManager$d;,
        Lcom/transsion/audio/player/MusicPlayManager$c;
    }
.end annotation


# static fields
.field public static final H:Ljava/util/regex/Pattern;

.field public static volatile I:Lcom/transsion/audio/player/MusicPlayManager;


# instance fields
.field public A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

.field public B:Ljava/lang/Boolean;

.field public final C:Landroid/content/ServiceConnection;

.field public D:Ljava/lang/Runnable;

.field public final E:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public F:Landroid/os/Handler;

.field public G:Lcom/transsion/playercommon/player/b$b;

.field public b:Lcom/transsion/audio/service/MusicService;

.field public c:Landroid/content/Intent;

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:I

.field public g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field public j:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public k:Lcom/transsion/playercommon/player/b;

.field public l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

.field public m:Lzs7;

.field public n:Z

.field public o:Z

.field public p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

.field public q:I

.field public r:J

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/net/Uri;

.field public w:Z

.field public x:Z

.field public y:Landroid/os/Handler;

.field public z:Lrt6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*%[0-9A-Fa-f]{2}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/player/MusicPlayManager;->H:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iput v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->z:Lrt6;

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->B:Ljava/lang/Boolean;

    new-instance v0, Lcom/transsion/audio/player/MusicPlayManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager$a;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->C:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/transsion/audio/player/MusicPlayManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager$2;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    new-instance v0, Ljv6;

    invoke-direct {v0, p0}, Ljv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->E:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lkv6;

    invoke-direct {v1, p0}, Lkv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->j0()V

    return-void
.end method

.method private G0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->b1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lrv6;

    invoke-direct {v1, p0}, Lrv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private K1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/service/MusicService;->K()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->G1(Z)V

    return-void
.end method

.method public static S()Lcom/transsion/audio/player/MusicPlayManager;
    .locals 2

    sget-object v0, Lcom/transsion/audio/player/MusicPlayManager;->I:Lcom/transsion/audio/player/MusicPlayManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/audio/player/MusicPlayManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audio/player/MusicPlayManager;->I:Lcom/transsion/audio/player/MusicPlayManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audio/player/MusicPlayManager;

    invoke-direct {v1}, Lcom/transsion/audio/player/MusicPlayManager;-><init>()V

    sput-object v1, Lcom/transsion/audio/player/MusicPlayManager;->I:Lcom/transsion/audio/player/MusicPlayManager;

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
    sget-object v0, Lcom/transsion/audio/player/MusicPlayManager;->I:Lcom/transsion/audio/player/MusicPlayManager;

    return-object v0
.end method

.method public static e0(Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "MusicPlayManager"

    const-string v0, "playAudioItem mediaItem null"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/audio/player/MusicPlayManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->y0(I)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->v0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/audio/player/MusicPlayManager;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->z0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->t0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/player/MusicPlayManager;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->B0(F)V

    return-void
.end method

.method private j0()V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lifc;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lifc;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/player/c;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/transsion/playercommon/player/c;-><init>(Landroid/content/Context;Z)V

    :goto_0
    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v2, "music_timer_choice"

    invoke-static {v0, v2, v1}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v1, "music_timer"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/player/b;->n(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/b;

    new-instance v0, Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iget-object v4, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/transsion/audio/utils/AudioLoadDataUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->n(Lcom/transsion/audio/utils/AudioLoadDataUtils$a;)V

    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->J()V

    new-instance v0, Lzs7;

    iget-object v4, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/audio/player/MusicPlayManager;->E:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, v4, v5}, Lzs7;-><init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->m:Lzs7;

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->p(Lcom/transsion/playercommon/utils/storage/MountPointManager$a;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x429

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42f

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x430

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x431

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x403

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x453

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x480

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->l0()V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->u0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->w0()V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/audio/player/MusicPlayManager;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->A0(F)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->x0()V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->C0()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/audio/player/MusicPlayManager;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/transsion/audio/player/MusicPlayManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    return p0
.end method

.method public static bridge synthetic t(Lcom/transsion/audio/player/MusicPlayManager;)Lcom/transsion/audio/service/MusicService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/transsion/audio/player/MusicPlayManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->d1()V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->i(Z)V

    return-void
.end method

.method public final synthetic A0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->w1(F)V

    return-void
.end method

.method public A1(ZZ)V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget p1, Lcom/transsion/audio/R$string;->cannot_play_music:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->X0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->F()Z

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1, p2}, Lcom/transsion/playercommon/player/b;->t(ZZ)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x402

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public B(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p2, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindMusicService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MusicPlayManager"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->C:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final synthetic B0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->w1(F)V

    return-void
.end method

.method public B1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->g0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->W0()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->C1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    :goto_0
    return-void
.end method

.method public C(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MusicPlayManager"

    const-string v1, "bindMusicService"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->D(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic C0()V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isAllDemaged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->j1()V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public C1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerPlayPauseFromError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayManager"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->O0(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->g0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->W0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->O0(IZ)V

    :goto_0
    return-void
.end method

.method public final D(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/transsion/audio/service/MusicService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMusicService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->C:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public D0(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-wide v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v7, "filter_size"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Luy5;->e(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    const-string v9, "0"

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    move-object v7, v9

    :cond_1
    const-string v10, "from"

    invoke-virtual {v3, v10, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v11, "name"

    invoke-virtual {v3, v11, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v12, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const-string v7, "vd_size"

    invoke-virtual {v3, v7, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    int-to-long v12, v5

    const-string v14, "vd_length"

    invoke-virtual {v3, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v12, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    const-string v13, "listName"

    invoke-virtual {v3, v13, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "play_source"

    const-string v15, "inner"

    invoke-virtual {v3, v12, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-object/from16 p4, v9

    const-string v9, "path"

    invoke-virtual {v3, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lp06;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 p5, v9

    const-string v9, "play_status"

    invoke-virtual {v3, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object/from16 v16, v9

    const-string v9, "vd_format"

    invoke-virtual {v3, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    iget-object v9, v0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v9}, Lw6c;->b(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v9

    const-string v9, "au_speed"

    invoke-virtual {v3, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v6

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    move-object/from16 v20, v8

    const-string v8, "filter_duration"

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Luy5;->f(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "value_1"

    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Luy5;->d()I

    move-result v6

    move-object/from16 v22, v9

    const-string v9, "value_2"

    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Luy5;->c()I

    move-result v6

    move-object/from16 v23, v9

    const-string v9, "value_3"

    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "equalizer_status"

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/audio/service/MusicService;->q()I

    move-result v2

    move-object/from16 v24, v6

    goto :goto_0

    :cond_2
    move-object/from16 v24, v6

    const/4 v2, 0x0

    :goto_0
    const-string v6, "earphone_status"

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    move-object/from16 v25, v6

    const-string v6, "new_label"

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    if-eqz v2, :cond_3

    const-string v6, "codec"

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, v0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v2, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    const-string v6, "mv_statue"

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v2, v0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v2, p4

    :cond_6
    invoke-virtual {v4, v10, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v11, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-wide v10, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {v4, v7, v10, v11}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v4, v14, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v4, v12, v15}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-object/from16 v5, p5

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lp06;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v16

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v5}, Lw6c;->b(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v21

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v8, v5}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Luy5;->f(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v22

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Luy5;->d()I

    move-result v2

    move-object/from16 v5, v23

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Luy5;->c()I

    move-result v2

    invoke-virtual {v4, v9, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move/from16 v2, p2

    move-object/from16 v5, v24

    invoke-virtual {v4, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    const-string v2, "new_label"

    invoke-virtual {v4, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Z)Lcom/transsion/athena/data/TrackData;

    iget-object v1, v0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/audio/service/MusicService;->q()I

    move-result v9

    move-object/from16 v1, v25

    goto :goto_2

    :cond_7
    move-object/from16 v1, v25

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v4, v1, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v1, v0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    if-eqz v1, :cond_8

    const-string v2, "codec"

    invoke-interface {v1}, Lcom/transsion/playercommon/player/b;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_8
    iget-object v0, v0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v4, v6, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v4, v6, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    :goto_3
    const-string v0, "vd_audio_play_show"

    const-wide v1, 0xd91af27332L

    invoke-static {v4, v3, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_a
    return-void
.end method

.method public D1(Landroid/content/Context;)V
    .locals 4

    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->c:Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    iput p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildCurrentPlayData "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicPlayManager"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public final E0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "MusicPlayManager"

    const-string p1, "markPointMediaItemInBackground null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/audio/player/MusicPlayManager$5;

    invoke-direct {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager$5;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public F()Z
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->w:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/audio/player/MusicPlayManager;->L1(J)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v2, "music_timer_choice"

    invoke-static {v0, v2, v1}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->g()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final F0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->n0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_1
    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lav3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->G:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/playercommon/player/b$b;->d(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public G1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->G:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b$b;->c(Z)V

    :cond_0
    return-void
.end method

.method public H(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->L1(J)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->F()Z

    :goto_0
    return-void
.end method

.method public final H0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->f0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->z1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->J0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const-string v0, "play_audio_item"

    if-eqz p1, :cond_1

    new-instance v11, Lcom/transsion/dbdata/beans/media/MediaItemClone;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v6, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-object v7, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    iget-wide v9, p0, Lcom/transsion/audio/player/MusicPlayManager;->r:J

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/transsion/dbdata/beans/media/MediaItemClone;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/MediaItemClone;->parentPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {p0, v0, v11}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPlayItemChanged null,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->v:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicPlayManager"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final I()V
    .locals 4

    invoke-static {}, Luq3;->a()Z

    move-result v0

    const-string v1, "MusicPlayManager"

    if-eqz v0, :cond_0

    const-string p0, "checkPlayData isRenaming"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPlayData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lmv6;

    invoke-direct {v2, p0, v0}, Lmv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->f0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public I0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    return-void
.end method

.method public I1()V
    .locals 5

    const-string v0, "MusicPlayManager"

    const-string v1, "updatePlayList"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->r:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->z()V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->I()V

    sget-boolean p0, Laf9;->h:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v1, 0x460

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    sput v0, Laf9;->i:I

    sput-boolean v0, Laf9;->h:Z

    return-void
.end method

.method public J0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->z()V

    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    :cond_1
    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    sput-object v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->t:Ljava/lang/String;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x440

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/player/MusicPlayManager$c;

    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Lcom/transsion/audio/player/MusicPlayManager$c;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K1()V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    return-void
.end method

.method public final J1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->i1(Z)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    return-void
.end method

.method public K0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->x:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->S0(Z)Z

    return-void
.end method

.method public L()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public L0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->J1(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K()V

    :cond_0
    return-void
.end method

.method public L1(J)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onTimerShow(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public M()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->b()I

    move-result p0

    return p0
.end method

.method public M0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    return-void
.end method

.method public N()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->G:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/playercommon/player/b$b;->d(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iput v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    iput-wide v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->r:J

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayListTitle(Ljava/lang/String;)V

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid mediaId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudio old :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isSamePlayAudioData(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isSamePlayAudioData(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    const/4 v8, 0x1

    const/4 v5, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/audio/player/MusicPlayManager;->a1(Landroid/net/Uri;ZJZ)V

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->n(Lcom/transsion/audio/utils/AudioLoadDataUtils$a;)V

    iget v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    if-eq v0, v1, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->clearPlayList()V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->n(Lcom/transsion/audio/utils/AudioLoadDataUtils$a;)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->f(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_5
    :goto_0
    sget p0, Lzdc;->b:I

    invoke-static {p0}, Lzdc;->t(I)V

    return-void
.end method

.method public O()Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    :goto_0
    iget v2, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-static {v2}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->setData(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    :cond_2
    iget v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    iput v0, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iget-wide v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->r:J

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    return-object v1
.end method

.method public O0(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    return-void
.end method

.method public P()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/audio/player/MusicPlayManager;->Q0(Lcom/transsion/dbdata/beans/media/AudioItem;ZZ)V

    return-void
.end method

.method public Q()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public final Q0(Lcom/transsion/dbdata/beans/media/AudioItem;ZZ)V
    .locals 6

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->e0(Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/net/Uri;

    move-result-object v1

    const-string p2, "MusicPlayManager"

    if-nez v1, :cond_0

    const-string p0, "playAudioItem uri null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->F0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudioItem-->autoPlay:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget p2, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v2, p2

    :goto_0
    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    if-eqz p2, :cond_2

    const-wide/16 p1, 0x0

    :goto_1
    move-wide v3, p1

    goto :goto_2

    :cond_2
    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long p1, p1

    goto :goto_1

    :goto_2
    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/player/MusicPlayManager;->a1(Landroid/net/Uri;ZJZ)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->E()V

    sget p0, Lzdc;->b:I

    invoke-static {p0}, Lzdc;->t(I)V

    return-void
.end method

.method public R()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->getDuration()I

    move-result p0

    return p0
.end method

.method public R0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->S0(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/audio/player/MusicPlayManager$d;->hideBottomOperateBar()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final S0(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playForRepeatMode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicPlayManager"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isAllDemaged()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "playForRepeatMode repeat error max"

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playForRepeatMode repeatMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->O0(IZ)V

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const-string p1, "triggerPlayOrPause"

    invoke-static {v3, p1}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v2}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_4

    return v1

    :cond_4
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->W0()V

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->W0()V

    :cond_7
    :goto_0
    return v2
.end method

.method public T()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->q:I

    return p0
.end method

.method public T0(Ljava/util/ArrayList;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public U()Lcom/transsion/audio/service/MusicService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    return-object p0
.end method

.method public U0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playNextByBtn()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_0
    return-void
.end method

.method public V()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNewShuffleList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final V0()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNextForError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->i0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->o0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNextForError :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v2}, Lcom/transsion/playercommon/player/b;->I()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->removeAndPlayNextNotSafe()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->i0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1}, Lcom/transsion/playercommon/player/b;->I()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q0(Lcom/transsion/dbdata/beans/media/AudioItem;ZZ)V

    goto :goto_1

    :cond_3
    const-string p0, "playNextForError return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public W()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public W0()V
    .locals 2

    const-string v0, "MusicPlayManager"

    const-string v1, "playNextItem"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playNext()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_0
    return-void
.end method

.method public X()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public X0()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNextItemAfterRemove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->removeAndPlayNext(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_0
    return-void
.end method

.method public Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    return-object p0
.end method

.method public Y0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playPreviousByBtn()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_0
    return-void
.end method

.method public Z()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->r:J

    return-wide v0
.end method

.method public Z0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playPrevious()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "MusicPlayManager"

    const-string v1, "onLoadBucketsResult"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Luq3;->b(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K1()V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->T0(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->i1(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->I()V

    return-void
.end method

.method public a0()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public final a1(Landroid/net/Uri;ZJZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->F()Z

    const-string v0, "MusicPlayManager"

    if-nez p1, :cond_0

    const-string p0, "playUri uri null"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->v:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_2

    const-string v1, "playAudioItem-->isMusicVideo"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/player/b;->h(Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/player/b;->o(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/player/b;->o(Z)V

    :cond_2
    :goto_0
    new-instance v0, Ljb8;

    if-eqz p2, :cond_3

    :goto_1
    move-wide v4, p3

    goto :goto_2

    :cond_3
    const-wide/16 p3, 0x0

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move v7, p5

    invoke-direct/range {v2 .. v7}, Ljb8;-><init>(Landroid/net/Uri;JZZ)V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b;->R(Ljb8;)V

    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->G0()V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->N()V

    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K1()V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->E0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 7

    const-string v0, "onLoadResult"

    const-string v1, "MusicPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadResult "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget v0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->T0(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-wide v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/audio/player/MusicPlayManager;->a1(Landroid/net/Uri;ZJZ)V

    return-void
.end method

.method public b0()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->a()I

    move-result p0

    return p0
.end method

.method public b1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    new-instance v0, Lcom/transsion/audio/player/MusicPlayManager$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$4;-><init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/net/Uri;Z)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/audio/player/MusicPlayManager;->a1(Landroid/net/Uri;ZJZ)V

    return-void
.end method

.method public c0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayListTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->m:Lzs7;

    if-eqz v0, :cond_0

    const-string v0, "MusicPlayManager"

    const-string v1, "refreshAudioFocus"

    invoke-static {v0, v1}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->m:Lzs7;

    invoke-virtual {p0}, Lzs7;->f()I

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 10

    sget-boolean p2, Lpp3;->B:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->z:Lrt6;

    invoke-virtual {p1}, Lrt6;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->z:Lrt6;

    invoke-virtual {p1}, Lrt6;->a()I

    move-result p1

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->l0()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    new-instance p2, Lnv6;

    invoke-direct {p2, p0}, Lnv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->b(Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v7

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v8

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->z:Lrt6;

    invoke-virtual {p1}, Lrt6;->a()I

    move-result p1

    int-to-long v3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v9, Lcom/transsion/audio/player/MusicPlayManager$b;

    invoke-direct {v9, p0}, Lcom/transsion/audio/player/MusicPlayManager$b;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->c(FFJJIILcom/transsion/playercommon/player/MusicFade/MusicFade$a;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    if-eqz p1, :cond_3

    new-instance p2, Lov6;

    invoke-direct {p2, p0}, Lov6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->b(Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d0()J
    .locals 4

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v0, "music_timer"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d1()V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->d0()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v1, "music_timer_for_mark"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lvy5;->c(I)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v4, "music_timer_finish_current"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v6, "music_timer_choice"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/transsion/audio/player/MusicPlayManager;->t1(Z)V

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/transsion/audio/player/MusicPlayManager;->L1(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/transsion/audio/player/MusicPlayManager;->L1(J)V

    invoke-virtual {p0, v5}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->y:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/audio/player/MusicPlayManager;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v4, "music_timer"

    invoke-static {v0, v4, v2, v3}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {p0, v1, v2, v3}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->L1(J)V

    :goto_1
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0x429

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x42f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x480

    if-ne p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x430

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synDelete()V

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0x431

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synFilter(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0x403

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x453

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p1, :cond_a

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x45d

    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->o:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService;->K()V

    goto :goto_2

    :cond_6
    const/16 v0, 0x48c

    if-ne p1, v0, :cond_a

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->x1(I)V

    goto :goto_2

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p1, :cond_9

    array-length v0, p2

    if-lez v0, :cond_9

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->X0()V

    goto :goto_1

    :cond_8
    const-string p1, ""

    sput-object p1, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->t:Ljava/lang/String;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x42e

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V

    :cond_9
    :goto_1
    array-length p0, p2

    if-lez p0, :cond_a

    aget-object p0, p2, v1

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->deleteItem(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager$c;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public final f0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mPlayListData remove not exist audioItem"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    const-string v0, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current media invalid,and current playMode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no next item,so stop playback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->i1(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->l1()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->g1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->clearPlayList()V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x42e

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->j1()V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void
.end method

.method public f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager$d;->onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V

    return-void
.end method

.method public g0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasNext()Z

    move-result p0

    return p0
.end method

.method public g1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->u(Z)V

    return-void
.end method

.method public h0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public h1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MusicPlayManager"

    const-string v1, "releasePlayerForMount "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/player/b;->u(Z)V

    iget p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->cannot_play_music:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public i0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->t:Z

    return p0
.end method

.method public i1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/service/MusicService;->F(Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->D1(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->G:Lcom/transsion/playercommon/player/b$b;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/playercommon/player/b$b;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public final j1()V
    .locals 2

    const-string v0, "MusicPlayManager"

    const-string v1, "removePlayNextItemErrorInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final k0()V
    .locals 5

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mmkv_key_listen_music_count"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_show_filter_tip"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->B:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public k1(Liz;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->w:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->g()V

    :cond_0
    return-void
.end method

.method public l0()V
    .locals 1

    sget-boolean v0, Lpp3;->B:Z

    if-nez v0, :cond_0

    const-string p0, "MusicPlayManager"

    const-string v0, "[music fade] not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->z:Lrt6;

    invoke-virtual {v0}, Lrt6;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    invoke-direct {v0}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->A:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    :cond_1
    return-void
.end method

.method public l1()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->reset()V

    return-void
.end method

.method public m0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public m1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/player/b;->seekTo(I)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->seekTo(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/audio/player/MusicPlayManager;->H:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n1(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    :cond_0
    return-void
.end method

.method public final o0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o1(Landroid/view/SurfaceHolder;Z)V
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

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->h1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->I1()V

    return-void
.end method

.method public onInfo(II)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onInfo(II)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onLoadingOnlineVideo(ZZ)V
    .locals 0

    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->k0()V

    :cond_0
    iput p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    invoke-static {p1}, Lm27;->c(I)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/transsion/audio/service/MusicService;->C(I)V

    :cond_2
    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->j1()V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    if-eq v0, v3, :cond_6

    iput-boolean v3, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->m:Lzs7;

    invoke-virtual {v0}, Lzs7;->f()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->t:Z

    invoke-virtual {p0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->J1(Z)V

    invoke-static {}, Lcom/transsion/playercommon/player/a;->a()Lcom/transsion/playercommon/player/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/player/a;->e(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->y1()V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K1()V

    :cond_6
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onPlayerStateUpdate(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lvf;->f(Landroid/content/Context;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->K0()V

    :cond_9
    return-void
.end method

.method public onSdSwap()V
    .locals 0

    return-void
.end method

.method public onShowError(II)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDamaged(Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setDamaged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->I()V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {p2}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    const-string v7, "audio"

    const/4 v8, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    move v2, p1

    invoke-static/range {v1 .. v8}, Lp06;->F(Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;FZLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->F:Landroid/os/Handler;

    new-instance v1, Llv6;

    invoke-direct {v1, p0}, Llv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onShowError(II)V

    goto :goto_0

    :cond_2
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

    const-string v1, "MusicPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/transsion/audio/player/MusicPlayManager$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->w:Z

    return p0
.end method

.method public p1(Lcom/transsion/playercommon/player/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->G:Lcom/transsion/playercommon/player/b$b;

    return-void
.end method

.method public q0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    return p0
.end method

.method public q1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->x:Z

    return-void
.end method

.method public r0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0}, Lcom/transsion/playercommon/player/b;->E()Z

    move-result p0

    return p0
.end method

.method public r1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->h(Z)V

    return-void
.end method

.method public s0()Z
    .locals 1

    iget p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->o:Z

    return-void
.end method

.method public final synthetic t0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->H0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public t1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->w:Z

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->c(Z)V

    return-void
.end method

.method public final synthetic u0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPlayData: item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lqv6;

    invoke-direct {v1, p0, p1, v0}, Lqv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public final synthetic v0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    const-string v0, "MusicPlayManager"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPlayMediaItem "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "the mPlayMediaItem is no longer exist"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_1
    return-void
.end method

.method public v1(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->l(F)V

    return-void
.end method

.method public final synthetic w0()V
    .locals 3

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lsv6;

    invoke-direct {v2, p0, v0}, Lsv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w1(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1, p1}, Lcom/transsion/playercommon/player/b;->setVolume(FF)V

    return-void
.end method

.method public final synthetic x0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->c1()V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->d(Z)V

    return-void
.end method

.method public x1(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->M(I)V

    return-void
.end method

.method public final y()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->m:Lzs7;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzs7;->b()I

    :cond_0
    return-void
.end method

.method public final synthetic y0(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayManager"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v0, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    if-eq p1, v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/transsion/audio/player/MusicPlayManager;->t:Z

    iget v5, p0, Lcom/transsion/audio/player/MusicPlayManager;->s:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_8

    iget-boolean v6, p0, Lcom/transsion/audio/player/MusicPlayManager;->n:Z

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eq p1, v0, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    if-ne v5, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->k:Lcom/transsion/playercommon/player/b;

    invoke-interface {p1, v2}, Lcom/transsion/playercommon/player/b;->d(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->A(Z)V

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->d:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->y()V

    goto :goto_3

    :cond_5
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v5, "audio_focus_allow_may_duck"

    invoke-static {v0, v5, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    if-ne p1, v4, :cond_6

    iput-boolean v3, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    invoke-virtual {p0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    invoke-virtual {p0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->A(Z)V

    :goto_2
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

    new-instance v0, Lpv6;

    invoke-direct {v0, p0}, Lpv6;-><init>(Lcom/transsion/audio/player/MusicPlayManager;)V

    invoke-virtual {p1, v0}, Lyp;->q(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    iput-boolean v3, p0, Lcom/transsion/audio/player/MusicPlayManager;->u:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Player playing with other app, onAudioFocusChange: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_8
    :goto_4
    const-string p0, "onAudioFocusChange return "

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void
.end method

.method public y1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->C(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/audio/service/MusicService;->H()V

    :goto_0
    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->j:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->l:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->p:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public final synthetic z0(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->V0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->o:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/audio/player/MusicPlayManager;->f:I

    if-nez p1, :cond_2

    const-string p1, "MusicPlayManager"

    const-string v1, "service stopSelf"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->b:Lcom/transsion/audio/service/MusicService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    :goto_0
    return v0
.end method

.method public final z1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_1

    invoke-static {p1, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;->copy(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager;->i:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    :cond_2
    :goto_0
    return-void
.end method
