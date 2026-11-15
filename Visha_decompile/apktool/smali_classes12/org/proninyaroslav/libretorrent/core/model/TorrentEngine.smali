.class public Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Ljava/lang/String; = "TorrentEngine"

.field public static volatile n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

.field public c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;

.field public d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

.field public e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

.field public f:Lgd1;

.field public g:Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;

.field public h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

.field public i:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

.field public j:Ljava/util/concurrent/ExecutorService;

.field public k:Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;

.field public final l:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->k:Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->l:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->c(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->i:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->b(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;)V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->d0()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static bridge synthetic A(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lzm9;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->G0(Lzm9;[B)V

    return-void
.end method

.method public static bridge synthetic B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static T(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    if-nez v0, :cond_1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    const-string v1, "==>\u521d\u59cb\u5316TorrentEngine"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-object p0
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->o0()V

    return-void
.end method

.method public static synthetic c(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->q0(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Lzm9;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->g0(Ljava/lang/String;Lzm9;)V

    return-void
.end method

.method public static synthetic f(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h0(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->n0(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    return-void
.end method

.method public static synthetic i(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->k0()V

    return-void
.end method

.method public static synthetic j(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic k(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e0(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic l(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Z()V

    return-void
.end method

.method public static synthetic m(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->l0()V

    return-void
.end method

.method public static synthetic n(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->p0()V

    return-void
.end method

.method public static synthetic o(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->j0(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    return-void
.end method

.method public static bridge synthetic p(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic q(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lgd1;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    return-object p0
.end method

.method public static bridge synthetic r(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->k:Lorg/proninyaroslav/libretorrent/core/model/SessionErrorFilter;

    return-object p0
.end method

.method public static bridge synthetic s(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    return-object p0
.end method

.method public static bridge synthetic t(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    return-object p0
.end method

.method public static bridge synthetic u(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    return-object p0
.end method

.method public static bridge synthetic v(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    return-object p0
.end method

.method public static bridge synthetic w(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->J()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a0()V

    return-void
.end method

.method public static bridge synthetic y(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->v0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static bridge synthetic z(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->E0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public A0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public B0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lgsa;

    invoke-direct {v1, p0}, Lgsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public C(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public C0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lfsa;

    invoke-direct {v1, p0}, Lfsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public D(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->E(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public final D0(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->R(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    move-object p1, p3

    :cond_1
    iget-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    const/4 v2, 0x1

    invoke-interface {p3, p2, p1, v2}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->m(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->f([BLandroid/net/Uri;)V

    return v2
.end method

.method public E(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->G(Landroid/net/Uri;Landroid/net/Uri;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final E0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "Could not save torrent file + "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".torrent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->D0(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public F(Landroid/net/Uri;)Lhb1;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->G(Landroid/net/Uri;Landroid/net/Uri;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, ".torrent"

    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->suffixFileFilter(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->D(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public G(Landroid/net/Uri;Landroid/net/Uri;)Lhb1;
    .locals 1

    new-instance v0, Lisa;

    invoke-direct {v0, p0, p1, p2}, Lisa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {v0}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Lzm9;[B)V
    .locals 1

    :try_start_0
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>([B)V
    :try_end_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lzm9;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Lzm9;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object p2, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lzm9;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Lzm9;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final H(Landroid/net/Uri;Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 12

    iget v0, p2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    new-array v6, v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p3}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->U()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    :cond_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    iget-object v5, p2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v11}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Landroid/net/Uri;ZZLjava/util/List;Z)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {p1, p3}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->a(Landroid/net/Uri;)J

    move-result-wide v1

    iget-wide p1, p2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    cmp-long p1, v1, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->I(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;-><init>()V

    throw p0
.end method

.method public H0(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lwra;

    invoke-direct {v1, p0, p1, p2}, Lwra;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public I(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->addTorrent(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p0

    return-object p0
.end method

.method public final I0(II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object v0

    iput p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    iput p2, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final J0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->c()I

    move-result v1

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->v()I

    move-result v1

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->i()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->F()Z

    move-result v1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    return-void
.end method

.method public final K()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    const-string v1, "Error during setup of temp directory: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final K0(Z)V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object v0

    iput-boolean p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->G()I

    move-result p1

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->B()I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-eq v1, v2, :cond_0

    iput p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V

    return-void
.end method

.method public final L(Ljava/lang/String;)Lxm9;
    .locals 1

    new-instance v0, Lyra;

    invoke-direct {v0, p0, p1}, Lyra;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V

    invoke-static {v0}, Lxm9;->d(Ljn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final L0()V
    .locals 3

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->N0()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->p()I

    move-result v1

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;

    invoke-direct {v2, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;

    :try_start_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->w(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public M(Ljava/util/List;Z)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    invoke-static {p1}, Lmc7;->E(Ljava/lang/Iterable;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v1, Lzra;

    invoke-direct {v1, p0, p2}, Lzra;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Z)V

    invoke-virtual {p1, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final M0()V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->f(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->F0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->u0(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->g:Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAF is not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public N()V
    .locals 4

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->P0()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Q0()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->Y()Lr14;

    move-result-object v1

    new-instance v2, Lvra;

    invoke-direct {v2, p0}, Lvra;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-virtual {v1, v2}, Lr14;->n(Lzf1;)Lrc2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgd1;->b(Lrc2;)Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->i:Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/DownloadsCompletedListener;->g()Lhb1;

    move-result-object v1

    new-instance v2, Lbsa;

    invoke-direct {v2, p0}, Lbsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    new-instance v3, Lcsa;

    invoke-direct {v3, p0}, Lcsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-virtual {v1, v2, v3}, Lhb1;->h(Ld5;Lzf1;)Lrc2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgd1;->b(Lrc2;)Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getLogger()Lorg/proninyaroslav/libretorrent/core/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->observeDataSetChanged()Lmc7;

    move-result-object v1

    new-instance v2, Ldsa;

    invoke-direct {v2, p0}, Ldsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-virtual {v1, v2}, Lmc7;->Z(Lzf1;)Lrc2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgd1;->b(Lrc2;)Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->start()V

    return-void
.end method

.method public final N0()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->t()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->c:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;

    return-void
.end method

.method public O()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->O0()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->N0()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->requestStop()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->K()V

    return-void
.end method

.method public final O0()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->g:Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->g:Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;

    return-void
.end method

.method public P(Ljava/lang/String;)Landroidx/core/util/Pair;
    .locals 2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->fetchMagnet(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->getSha1hash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->L(Ljava/lang/String;)Lxm9;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final P0()V
    .locals 0

    return-void
.end method

.method public Q()V
    .locals 0

    return-void
.end method

.method public final Q0()V
    .locals 0

    return-void
.end method

.method public R(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getBencode()[B

    move-result-object p0

    return-object p0
.end method

.method public final S()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->a()I

    move-result p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    move-result-object p0

    return-object p0
.end method

.method public U(Ljava/lang/String;I)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
    .locals 2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getStream(I)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object p0

    return-object p0
.end method

.method public V(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    return-object p0
.end method

.method public W(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;)V

    return-object v0
.end method

.method public X(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getTorrentMetaInfo()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object v1
    :try_end_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    const-string v0, "Can\'t decode torrent info: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    instance-of p1, p2, Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p2, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/bt_download/R$string;->error_file_not_found_add_torrent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/bt_download/R$string;->error_io_add_torrent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/bt_download/R$string;->error_add_torrent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Q()V

    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->enableIpFilter(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->M0()V

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->L0()V

    :cond_2
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->r0()V

    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_unmetered_connections_only:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_roaming:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_download_and_upload_only_when_charging:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_battery_control:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_custom_battery_control:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_custom_battery_control_value:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_download_speed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->T()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_upload_speed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->R()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_connections:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->X()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_5
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_connections_per_torrent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->o()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setMaxConnectionsPerTorrent(I)V

    goto/16 :goto_6

    :cond_6
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_uploads_per_torrent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->c0()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setMaxUploadsPerTorrent(I)V

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_downloads:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->l()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_uploads:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->e0()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_active_torrents:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->I()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_dht:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->d()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_lsd:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->e()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_utp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->r()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_upnp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->z()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_e
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_natpmp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->O()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enc_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->S()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    move-result-object v0

    iput-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_10
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enc_in_connections:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->DISABLED:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->w()Z

    move-result v1

    iput-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->s:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->S()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    move-result-object v0

    :cond_11
    iput-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enc_out_connections:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->DISABLED:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->E()Z

    move-result v1

    iput-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->t:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->S()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    move-result-object v0

    :cond_13
    iput-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_use_random_port:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->H()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->K0(Z)V

    goto/16 :goto_6

    :cond_15
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_port_range_first:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_port_range_second:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_ip_filtering:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->A()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->V()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->enableIpFilter(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_17
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->disableIpFilter()V

    goto/16 :goto_6

    :cond_18
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_ip_filtering_file:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->V()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->enableIpFilter(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_19
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_apply_proxy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->u()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->S(Z)V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->J0()V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/bt_download/R$string;->proxy_settings_applied:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_1a
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_auto_manage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->W()Z

    move-result p0

    invoke-interface {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setAutoManaged(Z)V

    goto/16 :goto_6

    :cond_1b
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_watch_dir:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->N()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->M0()V

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->O0()V

    goto/16 :goto_6

    :cond_1d
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_dir_to_watch:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->N()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->O0()V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->M0()V

    goto/16 :goto_6

    :cond_1e
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_enable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->k()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->L0()V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->N0()V

    goto/16 :goto_6

    :cond_20
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_port:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_streaming_hostname:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_anonymous_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->M()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_22
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_seeding_outgoing_connections:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->t()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_23
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_enable_logging:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->Z()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_24
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_session_filter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->h()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_25
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_dht_filter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->D()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_26
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_peer_filter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->x()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_27
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_portmap_filter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->P()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_28
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_log_torrent_filter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->j()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto/16 :goto_6

    :cond_29
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_max_log_size:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->L()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_default_trackers_list:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->b0()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setDefaultTrackersList([Ljava/lang/String;)V

    goto :goto_6

    :cond_2b
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->pref_key_validate_https_trackers:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->q()Z

    move-result v0

    iput-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    goto :goto_6

    :cond_2c
    :goto_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->L0()V

    goto :goto_6

    :cond_2d
    :goto_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->G()I

    move-result p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->B()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->I0(II)V

    goto :goto_6

    :cond_2e
    :goto_2
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Q0()V

    goto :goto_6

    :cond_2f
    :goto_3
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Q0()V

    goto :goto_5

    :cond_30
    :goto_4
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->P0()V

    :goto_5
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->B0()V

    :cond_31
    :goto_6
    return-void
.end method

.method public c0()Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->hasTaskRunning()Z

    move-result p0

    return p0
.end method

.method public d0()Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final synthetic e0(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->h:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->n(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "r"

    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;->f(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Ljava/io/FileInputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0, p1, v2, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->H(Landroid/net/Uri;Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    move-object v0, v2

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_8
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    :goto_1
    :try_start_9
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;

    invoke-direct {v2, p2}, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_a
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_b
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_3
    throw p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_2
    iget-object p1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Y(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public final synthetic f0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public final synthetic g0(Ljava/lang/String;Lzm9;)V
    .locals 2

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Lzm9;)V

    invoke-interface {p2}, Lzm9;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getLoadedMagnet(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    new-instance p1, Lasa;

    invoke-direct {p1, p0, v0}, Lasa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    invoke-static {p1}, Lio/reactivex/disposables/a;->c(Ld5;)Lrc2;

    move-result-object p0

    invoke-interface {p2, p0}, Lzm9;->setDisposable(Lrc2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->G0(Lzm9;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic h0(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p2, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->deleteTorrent(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic i0(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto stop error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->Z()V

    return-void
.end method

.method public final synthetic j0(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 2

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;->b:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->y0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic k0()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->restoreTorrents()V

    :cond_0
    return-void
.end method

.method public final synthetic l0()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->pauseAllManually()V

    :cond_0
    return-void
.end method

.method public final synthetic m0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->resumeManually()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pauseManually()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final synthetic n0(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->prioritizeFiles([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    :cond_1
    return-void
.end method

.method public final synthetic o0()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->pauseAll()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->resumeAll()V

    :goto_0
    return-void
.end method

.method public final synthetic p0()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->resumeAllManually()V

    :cond_0
    return-void
.end method

.method public final synthetic q0(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setDownloadPath(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final r0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lhsa;

    invoke-direct {v1, p0}, Lhsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final s0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    iget-object v2, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-object v3, v2

    iget-object v4, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    iget-object v5, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getStateCode()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v6

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getProgress()I

    move-result v7

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getReceivedBytes()J

    move-result-wide v8

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getTotalWanted()J

    move-result-wide v10

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getDownloadSpeed()J

    move-result-wide v12

    iget-wide v14, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->dateAdded:J

    iget-object v1, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object v17

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilesReceivedBytes()[J

    move-result-object v18

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFileSizes()[J

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;IJJJJLjava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;[J[J)V

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->calculateFileCount()V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object v2, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    iget-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    iget-wide v4, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->dateAdded:J

    iget-object v1, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v4

    move-object/from16 v25, v1

    invoke-direct/range {v20 .. v26}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public t0()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->s0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final u0(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/TorrentFileObserver;
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;

    invoke-direct {v0, p0, p1, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final v0(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->visibility:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public w0()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lesa;

    invoke-direct {v1, p0}, Lesa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Ljsa;

    invoke-direct {v1, p0, p1}, Ljsa;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final y0(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z0(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->f:Lgd1;

    new-instance v1, Lxra;

    invoke-direct {v1, p0, p1, p2}, Lxra;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method
