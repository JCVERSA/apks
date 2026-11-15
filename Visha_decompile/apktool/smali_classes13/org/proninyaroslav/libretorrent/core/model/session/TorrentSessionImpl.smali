.class public Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;
.super Lorg/libtorrent4j/SessionManager;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;,
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;,
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;
    }
.end annotation


# static fields
.field private static final INNER_LISTENER_TYPES:[I

.field private static final PEER_FINGERPRINT:Ljava/lang/String; = "Lr"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_AGENT:Ljava/lang/String; = "LibreTorrent %s"

.field private static final pieceSize:[I


# instance fields
.field private addTorrentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disposables:Lgd1;

.field private fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

.field private innerListener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;

.field private listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;",
            ">;"
        }
    .end annotation
.end field

.field private loadTorrentsExec:Ljava/util/concurrent/ExecutorService;

.field private loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private magnets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseIpFilterThread:Ljava/lang/Thread;

.field private repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

.field private restoreTorrentsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;",
            ">;"
        }
    .end annotation
.end field

.field private sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

.field private settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

.field private settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private started:Z

.field private stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

.field private system:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

.field private final torrentTaskListener:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

.field private torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->ADD_TORRENT:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v1

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->METADATA_RECEIVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v2

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SESSION_ERROR:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v3

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->PORTMAP_ERROR:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v4

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->LISTEN_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v5

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->LOG:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v6

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->DHT_LOG:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v7

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->PEER_LOG:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v8

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->PORTMAP_LOG:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v9

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_LOG:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v10

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SESSION_STATS:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v11

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v12

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->FILE_RENAMED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v13

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->FILE_COMPLETED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v14

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->OVERSIZED_FILE:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v15

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->FILE_PROGRESS:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v16

    filled-new-array/range {v1 .. v16}, [I

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->INNER_LISTENER_TYPES:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->pieceSize:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;)V
    .locals 2
    .param p1    # Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SessionManager;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-direct {v1}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->restoreTorrentsQueue:Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addTorrentsList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Lgd1;

    invoke-direct {v1}, Lgd1;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->disposables:Lgd1;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$1;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$1;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTaskListener:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->started:Z

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->system:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lnua;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->innerListener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadTorrentsExec:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static bridge synthetic A()[I
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->INNER_LISTENER_TYPES:[I

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$enableIpFilter$2(Landroid/net/Uri;)V

    return-void
.end method

.method private addDefaultTrackers(Lorg/libtorrent4j/swig/add_torrent_params;)V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object p0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getTrackers()Lorg/libtorrent4j/swig/string_vector;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/string_vector;-><init>()V

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setTrackers(Lorg/libtorrent4j/swig/string_vector;)V

    :cond_1
    return-void
.end method

.method private applyMaxStoredLogs(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 2

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->getMaxStoredLogs()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->H:I

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->setMaxStoredLogs(I)V

    return-void
.end method

.method private applyProxy(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V
    .locals 2

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    invoke-direct {p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->convertProxyType(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;Z)I

    move-result p0

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->proxy_type:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p2, v0, p0}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    iget-object p0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->x:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;->NONE:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;

    if-eq p0, v0, :cond_1

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$int_types;->proxy_port:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result p0

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->z:I

    invoke-virtual {p2, p0, v0}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_hostname:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result p0

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->y:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lorg/libtorrent4j/SettingsPack;->setString(ILjava/lang/String;)Lorg/libtorrent4j/SettingsPack;

    iget-boolean p0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->B:Z

    if-eqz p0, :cond_0

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_username:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result p0

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->C:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lorg/libtorrent4j/SettingsPack;->setString(ILjava/lang/String;)Lorg/libtorrent4j/SettingsPack;

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_password:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result p0

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->D:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lorg/libtorrent4j/SettingsPack;->setString(ILjava/lang/String;)Lorg/libtorrent4j/SettingsPack;

    :cond_0
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->proxy_peer_connections:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result p0

    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->A:Z

    invoke-virtual {p2, p0, p1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->proxy_tracker_connections:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->proxy_hostnames:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result p0

    invoke-virtual {p2, p0, p1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    :cond_1
    return-void
.end method

.method private applySessionLoggerFilters(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->disposables:Lgd1;

    new-instance v1, Lkua;

    invoke-direct {v1, p0, p1}, Lkua;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method private applySettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applyMaxStoredLogs(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applySessionLoggerFilters(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->enableSessionLogger(Z)V

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->setRandomPort(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsToSettingsPack(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V

    invoke-direct {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applySettingsPack(Lorg/libtorrent4j/SettingsPack;)V

    :cond_1
    return-void
.end method

.method private applySettingsPack(Lorg/libtorrent4j/SettingsPack;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->saveSettings()V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$stopTasks$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lorg/libtorrent4j/alerts/Alert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$checkError$5(Lorg/libtorrent4j/alerts/Alert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private checkError(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/q;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/q;-><init>(Lorg/libtorrent4j/alerts/Alert;)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    return-void
.end method

.method private checkStop()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addTorrentsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/libtorrent4j/SessionManager;->stop()V

    :cond_0
    return-void
.end method

.method private convertEncryptMode(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;)I
    .locals 0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$2;->$SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$EncryptMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->pe_disabled:Lorg/libtorrent4j/swig/settings_pack$enc_policy;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->swigValue()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->pe_forced:Lorg/libtorrent4j/swig/settings_pack$enc_policy;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->swigValue()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->pe_enabled:Lorg/libtorrent4j/swig/settings_pack$enc_policy;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$enc_policy;->swigValue()I

    move-result p0

    return p0
.end method

.method private convertProxyType(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$ProxyType;Z)I
    .locals 0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$2;->$SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->none:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->http_pw:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->http:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    :goto_0
    return p0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->socks5_pw:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->socks5:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    :goto_1
    return p0

    :cond_4
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->socks4:Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;->swigValue()I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$handleStats$7(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private defaultSettingsPack()Lorg/libtorrent4j/SettingsPack;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-direct {p0, v1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsToSettingsPack(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V

    return-object v0
.end method

.method private static dhtBootstrapNodes()Ljava/lang/String;
    .locals 1

    const-string v0, "dht.libtorrent.org:25401,router.bittorrent.com:6881,dht.transmissionbt.com:6881,outer.silotis.us:6881"

    return-object v0
.end method

.method private download(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->cancelFetchMagnet(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addTorrentsList:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sha1hash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->downloadPath:Landroid/net/Uri;

    invoke-interface {p1, v1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->h(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->isDownloadingMetadata()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    iget-boolean p3, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->addPaused:Z

    iget-boolean p2, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sequentialDownload:Z

    invoke-virtual {p0, p1, v3, p3, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download(Ljava/lang/String;Ljava/io/File;ZZ)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->remove(Z)V

    .line 11
    :cond_2
    iget-boolean p1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->fromMagnet:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object v4, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iget-boolean v5, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sequentialDownload:Z

    iget-boolean v6, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->addPaused:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download([BLjava/io/File;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;ZZLjava/util/List;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object p3, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->n(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;

    move-result-object p1

    .line 14
    :try_start_0
    const-string p3, "r"

    invoke-interface {p1, p3}, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;->f(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p3

    .line 15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 17
    new-instance v2, Lorg/libtorrent4j/TorrentInfo;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/libtorrent4j/TorrentInfo;-><init>(Ljava/nio/MappedByteBuffer;)V

    iget-object v4, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iget-boolean v5, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sequentialDownload:Z

    iget-boolean v6, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->addPaused:Z

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;ZZLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz p1, :cond_4

    .line 21
    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 22
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Torrent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;ZZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/TorrentInfo;",
            "Ljava/io/File;",
            "[",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            "ZZ",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_e

    .line 25
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object v0

    .line 27
    new-instance v1, Lorg/libtorrent4j/swig/int_string_map;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/int_string_map;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 28
    :goto_0
    invoke-virtual {v0}, Lorg/libtorrent4j/FileStorage;->numFiles()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lorg/libtorrent4j/FileStorage;->filePath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xdl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/libtorrent4j/swig/int_string_map;->put(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v0

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->swig()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v3

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/torrent_info;->info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 32
    :cond_2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>()V

    .line 33
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->swig()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/libtorrent4j/swig/add_torrent_params;->set_ti(Lorg/libtorrent4j/swig/torrent_info;)V

    .line 34
    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_renamed_files(Lorg/libtorrent4j/swig/int_string_map;)V

    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_7

    .line 36
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/FileStorage;->numFiles()I

    move-result p1

    array-length p2, p3

    if-ne p1, p2, :cond_6

    .line 37
    new-instance p1, Lorg/libtorrent4j/swig/byte_vector;

    invoke-direct {p1}, Lorg/libtorrent4j/swig/byte_vector;-><init>()V

    .line 38
    array-length p2, p3

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v1, p3, v2

    if-nez v1, :cond_4

    .line 39
    sget-object v1, Lorg/libtorrent4j/Priority;->IGNORE:Lorg/libtorrent4j/Priority;

    invoke-virtual {v1}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/libtorrent4j/swig/byte_vector;->add(Ljava/lang/Byte;)Z

    goto :goto_2

    .line 40
    :cond_4
    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)Lorg/libtorrent4j/Priority;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/libtorrent4j/swig/byte_vector;->add(Ljava/lang/Byte;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_5
    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_file_priorities(Lorg/libtorrent4j/swig/byte_vector;)V

    goto :goto_3

    .line 42
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Priorities count should be equals to the number of files"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    if-eqz p6, :cond_9

    .line 43
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 44
    new-instance p1, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    invoke-direct {p1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>()V

    .line 45
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/libtorrent4j/TcpEndpoint;

    .line 46
    invoke-virtual {p3}, Lorg/libtorrent4j/TcpEndpoint;->swig()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->add(Lorg/libtorrent4j/swig/tcp_endpoint;)Z

    goto :goto_4

    .line 47
    :cond_8
    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setPeers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    .line 48
    :cond_9
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    .line 49
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->NEED_SAVE_RESUME:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean p2, p2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    if-eqz p2, :cond_a

    .line 51
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    goto :goto_5

    .line 52
    :cond_a
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    :goto_5
    if-eqz p4, :cond_b

    .line 53
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    goto :goto_6

    .line 54
    :cond_b
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    :goto_6
    if-eqz p5, :cond_c

    .line 55
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    goto :goto_7

    .line 56
    :cond_c
    sget-object p2, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    .line 57
    :goto_7
    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    .line 58
    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addDefaultTrackers(Lorg/libtorrent4j/swig/add_torrent_params;)V

    .line 59
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void

    .line 60
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Torrent info not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Torrent info is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private download([BLjava/io/File;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;ZZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/io/File;",
            "[",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            "ZZ",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v2, p1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lorg/libtorrent4j/TorrentInfo;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/TorrentInfo;-><init>([B)V

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;ZZLjava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$onAfterStart$4()V

    return-void
.end method

.method private enableSessionLogger(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->resume()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->stopRecording()I

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pause()V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->clean()V

    :goto_0
    return-void
.end method

.method public static synthetic f(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->handleStoppingTasks()V

    return-void
.end method

.method private fetchMagnet(Lorg/libtorrent4j/AddTorrentParams;)Lorg/libtorrent4j/AddTorrentParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    .line 9
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/sha1_hash;->to_hex()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    :try_start_0
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->torrent_file_ptr()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_info;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->save_info_dict:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/torrent_handle;->save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    if-eqz v3, :cond_8

    .line 17
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1, v2}, Lorg/libtorrent4j/swig/add_torrent_params;->setName(Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->resolveMagnetMetadataSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    .line 22
    sget-object v4, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v4}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    .line 23
    sget-object v4, Lorg/libtorrent4j/TorrentFlags;->UPLOAD_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v4}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    .line 24
    sget-object v4, Lorg/libtorrent4j/TorrentFlags;->STOP_WHEN_READY:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v4}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    .line 26
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addDefaultTrackers(Lorg/libtorrent4j/swig/add_torrent_params;)V

    .line 27
    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lorg/libtorrent4j/swig/session_handle;->add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->failed()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 30
    :cond_5
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->resume()V

    goto :goto_2

    .line 31
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->failed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add_torrent failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "add_torrent returned invalid handle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :cond_8
    :goto_2
    :try_start_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    new-instance p0, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {p0, p1}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 38
    :goto_3
    :try_start_3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V

    .line 42
    :cond_9
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic g(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$deleteTorrent$0(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private getAlertMask(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)Lorg/libtorrent4j/swig/alert_category_t;
    .locals 1

    sget-object p0, Lorg/libtorrent4j/swig/alert;->all_categories:Lorg/libtorrent4j/swig/alert_category_t;

    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    if-nez p1, :cond_0

    sget-object p1, Lorg/libtorrent4j/swig/alert;->session_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->torrent_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    sget-object v0, Lorg/libtorrent4j/swig/alert;->peer_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    sget-object v0, Lorg/libtorrent4j/swig/alert;->dht_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    sget-object v0, Lorg/libtorrent4j/swig/alert;->port_mapping_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    sget-object v0, Lorg/libtorrent4j/swig/alert;->picker_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/alert_category_t;->inv()Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/alert_category_t;->and_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getAllowedEncryptLevel(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;)I
    .locals 0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;->FORCED:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    if-ne p1, p0, :cond_0

    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$enc_level;->pe_rc4:Lorg/libtorrent4j/swig/settings_pack$enc_level;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$enc_level;->swigValue()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lorg/libtorrent4j/swig/settings_pack$enc_level;->pe_both:Lorg/libtorrent4j/swig/settings_pack$enc_level;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack$enc_level;->swigValue()I

    move-result p0

    return p0
.end method

.method private getIface(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string p0, "0.0.0.0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0.0.0.0:%1$d,[::]:%1$d"

    goto :goto_0

    :cond_0
    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":%1$d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$applySessionLoggerFilters$8(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    return-void
.end method

.method private handleMetadataReceived(Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V
    .locals 1

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/libtorrent4j/TorrentHandle;->SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {p1, p0}, Lorg/libtorrent4j/TorrentHandle;->saveResumeData(Lorg/libtorrent4j/swig/resume_data_flags_t;)V

    :cond_0
    return-void
.end method

.method private handleSaveMetadata(Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V
    .locals 3

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;->params()Lorg/libtorrent4j/AddTorrentParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent;->write_resume_data(Lorg/libtorrent4j/swig/add_torrent_params;)Lorg/libtorrent4j/swig/entry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/entry;->bencode()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/libtorrent4j/SessionHandle;->DELETE_FILES:Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/SessionManager;->remove(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/session/w;

    invoke-direct {p1, p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/w;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    return-void
.end method

.method private handleStats()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/t;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/t;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    return-void
.end method

.method private handleStoppingTasks()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->checkStop()V

    return-void
.end method

.method public static synthetic i(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$enableIpFilter$1(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private isTorrentAlreadyRunning(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addTorrentsList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method public static synthetic j(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->lambda$handleSaveMetadata$6(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static bridge synthetic k(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addTorrentsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic l(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    return-object p0
.end method

.method private synthetic lambda$applySessionLoggerFilters$8(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 7

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    new-instance v6, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->I:Z

    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->J:Z

    iget-boolean v3, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->K:Z

    iget-boolean v4, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->L:Z

    iget-boolean v5, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->M:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;-><init>(ZZZZZ)V

    invoke-virtual {p0, v6}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->applyFilterParams(Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;)V

    return-void
.end method

.method private static synthetic lambda$checkError$5(Lorg/libtorrent4j/alerts/Alert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$2;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-interface {p0}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lorg/libtorrent4j/alerts/PortmapErrorAlert;

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/PortmapErrorAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onNatError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object p0, v0

    goto :goto_1

    :pswitch_1
    check-cast p0, Lorg/libtorrent4j/alerts/ListenFailedAlert;

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/ListenFailedAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/ListenFailedAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onSessionError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast p0, Lorg/libtorrent4j/alerts/SessionErrorAlert;

    invoke-virtual {p0}, Lorg/libtorrent4j/alerts/SessionErrorAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onSessionError(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_1

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$deleteTorrent$0(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$enableIpFilter$1(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onIpFilterParsed(I)V

    return-void
.end method

.method private synthetic lambda$enableIpFilter$2(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;-><init>()V

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterParser;

    invoke-direct {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterParser;-><init>()V

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-virtual {v1, p1, v2, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterParser;->parseFile(Landroid/net/Uri;Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;Lorg/proninyaroslav/libretorrent/core/model/session/IPFilter;)I

    move-result p1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v1

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;->getFilter()Lorg/libtorrent4j/swig/ip_filter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/session_handle;->set_ip_filter(Lorg/libtorrent4j/swig/ip_filter;)V

    :cond_2
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/u;

    invoke-direct {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/u;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$handleSaveMetadata$6(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onMagnetLoaded(Ljava/lang/String;[B)V

    return-void
.end method

.method private synthetic lambda$handleStats$7(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 13

    new-instance v12, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->dhtNodes()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getTotalDownload()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getTotalUpload()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getDownloadSpeed()J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getUploadSpeed()J

    move-result-wide v9

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getListenPort()I

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;-><init>(JJJJJI)V

    invoke-virtual {p1, v12}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onSessionStats(Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;)V

    return-void
.end method

.method private synthetic lambda$onAfterStart$4()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/s;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/s;-><init>()V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    return-void
.end method

.method private synthetic lambda$stopTasks$3(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping torrents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->handleStoppingTasks()V

    return-void
.end method

.method private loadSettings()Lorg/libtorrent4j/SessionParams;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/SessionParams;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->defaultSettingsPack()Lorg/libtorrent4j/SettingsPack;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/SettingsPack;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    new-instance v1, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    new-instance v2, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v2}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lorg/libtorrent4j/swig/session_params;->read_session_params(Lorg/libtorrent4j/swig/bdecode_node;)Lorg/libtorrent4j/swig/session_params;

    move-result-object v1

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/byte_vector;->clear()V

    new-instance v0, Lorg/libtorrent4j/SessionParams;

    invoke-direct {v0, v1}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/swig/session_params;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t decode data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/libtorrent4j/SessionParams;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->defaultSettingsPack()Lorg/libtorrent4j/SettingsPack;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/SettingsPack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error loading session state: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/libtorrent4j/SessionParams;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->defaultSettingsPack()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/SettingsPack;)V

    return-object v0
.end method

.method public static bridge synthetic m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    return-object p0
.end method

.method private mergeTorrent(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;[B)V
    .locals 3

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sequentialDownload:Z

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setSequentialDownload(Z)V

    iget-object v1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->prioritizeFiles([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    :cond_2
    iget-boolean v1, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->firstLastPiecePriority:Z

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setFirstLastPiecePriority(Z)V

    if-nez p3, :cond_4

    :try_start_0
    iget-object p3, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lorg/libtorrent4j/swig/libtorrent;->load_torrent_file(Ljava/lang/String;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p3

    new-instance v1, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {v1, p3}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Torrent source path is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p3}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p3

    new-instance v1, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    new-instance v2, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v2}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p3, v1, v2}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result p3

    if-nez p3, :cond_9

    invoke-static {v1}, Lorg/libtorrent4j/swig/libtorrent;->load_torrent_parsed(Lorg/libtorrent4j/swig/bdecode_node;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p3

    new-instance v1, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {v1, p3}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    :goto_0
    invoke-static {p1}, Lorg/libtorrent4j/Sha1Hash;->parseHex(Ljava/lang/String;)Lorg/libtorrent4j/Sha1Hash;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->find(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Lorg/libtorrent4j/AddTorrentParams;->getTrackers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lorg/libtorrent4j/AnnounceEntry;

    invoke-direct {v2, p3}, Lorg/libtorrent4j/AnnounceEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/TorrentHandle;->addTracker(Lorg/libtorrent4j/AnnounceEntry;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lorg/libtorrent4j/AddTorrentParams;->getUrlSeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, p3}, Lorg/libtorrent4j/TorrentHandle;->addUrlSeed(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 p0, 0x1

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->saveResumeData(Z)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    iget-boolean p0, p2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->addPaused:Z

    if-eqz p0, :cond_a

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pauseManually()V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->resumeManually()V

    :goto_4
    return-void
.end method

.method public static bridge synthetic n(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    return-object p0
.end method

.method private newTask(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 9

    new-instance v8, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean v7, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    move-object v0, v8

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;-><init>(Lorg/libtorrent4j/SessionManager;Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;Ljava/util/Queue;Ljava/lang/String;Lorg/libtorrent4j/TorrentHandle;Z)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    invoke-interface {v8, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setMaxConnections(I)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    invoke-interface {v8, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setMaxUploads(I)V

    return-object v8
.end method

.method private notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;->apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    return-object p0
.end method

.method private operationNotAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

.method public static bridge synthetic p(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private parseMagnetUri(Ljava/lang/String;)Lorg/libtorrent4j/AddTorrentParams;
    .locals 1

    new-instance p0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {p0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p1, p0}, Lorg/libtorrent4j/swig/libtorrent;->parse_magnet_uri(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p1

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {p0, p1}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic q(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/Alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->checkError(Lorg/libtorrent4j/alerts/Alert;)V

    return-void
.end method

.method public static bridge synthetic r(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->checkStop()V

    return-void
.end method

.method private resolveMagnetMetadataSavePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->i()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot create directory for magnet fetch"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "java.io.tmpdir"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No save path for magnet metadata"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private restoreDownload(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->f(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;->b:[B

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    new-instance v1, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    invoke-static {p1, v1, v0}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->clear()V

    invoke-static {v1, v0}, Lorg/libtorrent4j/swig/libtorrent;->read_resume_data(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p1

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->NEED_SAVE_RESUME:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean v1, v1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read the resume data: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t decode data: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Fast resume data not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runNextLoadTorrentTask()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->restoreTorrentsQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->restoreTorrentsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadTorrentsExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic s(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->handleMetadataReceived(Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V

    return-void
.end method

.method private saveAllResumeData()V
    .locals 2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->hasMissingFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->saveResumeData(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveSettings()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/session_handle;->session_state()Lorg/libtorrent4j/swig/session_params;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/swig/session_params;->write_session_params(Lorg/libtorrent4j/swig/session_params;)Lorg/libtorrent4j/swig/entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/entry;->bencode()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Error saving session state: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRandomPort(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 1

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a()Lorg/libtorrent4j/Pair;

    move-result-object p0

    iget-object v0, p0, Lorg/libtorrent4j/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    iget-object p0, p0, Lorg/libtorrent4j/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    return-void
.end method

.method private settingsToSettingsPack(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V
    .locals 3

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->a:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->activeDownloads(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->b:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->activeSeeds(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->i:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->activeLimit(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->c:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->maxPeerlistSize(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->d:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->tickInterval(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->e:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->inactivityTimeout(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->f:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->connectionsLimit(I)Lorg/libtorrent4j/SettingsPack;

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->w:Ljava/lang/String;

    iget v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    invoke-direct {p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getIface(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->listenInterfaces(Ljava/lang/String;)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_retry_port_bind:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    iget v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->k:I

    iget v2, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->j:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->n:Z

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->setEnableDht(Z)V

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_lsd:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->o:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_incoming_utp:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_outgoing_utp:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->p:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_upnp:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->q:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_natpmp:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->r:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->convertEncryptMode(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;)I

    move-result v0

    iget-object v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->u:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;

    invoke-direct {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getAllowedEncryptLevel(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings$EncryptMode;)I

    move-result v1

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$int_types;->in_enc_policy:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$int_types;->out_enc_policy:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->allowed_enc_level:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->m:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->uploadRateLimit(I)Lorg/libtorrent4j/SettingsPack;

    iget v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->l:I

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->downloadRateLimit(I)Lorg/libtorrent4j/SettingsPack;

    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->E:Z

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->anonymousMode(Z)Lorg/libtorrent4j/SettingsPack;

    iget-boolean v0, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->F:Z

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/SettingsPack;->seedingOutgoingConnections(Z)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_mask:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getAlertMask(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/alert_category_t;->to_int()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->validate_https_trackers:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    iget-boolean v1, p1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->P:Z

    invoke-virtual {p2, v0, v1}, Lorg/libtorrent4j/SettingsPack;->setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applyProxy(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method private stopTasks()V
    .locals 4

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->disposables:Lgd1;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lmc7;->E(Ljava/lang/Iterable;)Lmc7;

    move-result-object v1

    new-instance v2, Llua;

    invoke-direct {v2}, Llua;-><init>()V

    invoke-virtual {v1, v2}, Lmc7;->u(Lie8;)Lmc7;

    move-result-object v1

    new-instance v2, Lmua;

    invoke-direct {v2}, Lmua;-><init>()V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-virtual {v1}, Lmc7;->j0()Lxm9;

    move-result-object v1

    new-instance v2, Lfua;

    invoke-direct {v2}, Lfua;-><init>()V

    invoke-virtual {v1, v2}, Lxm9;->i(Lt74;)Lhb1;

    move-result-object v1

    new-instance v2, Lgua;

    invoke-direct {v2, p0}, Lgua;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    new-instance v3, Lhua;

    invoke-direct {v3, p0}, Lhua;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    invoke-virtual {v1, v2, v3}, Lhb1;->h(Ld5;Lzf1;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public static bridge synthetic t(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->handleSaveMetadata(Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V

    return-void
.end method

.method public static bridge synthetic u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->handleStats()V

    return-void
.end method

.method public static bridge synthetic v(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->isTorrentAlreadyRunning(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->newTask(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    return-void
.end method

.method public static bridge synthetic y(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->restoreDownload(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic z(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->runNextLoadTorrentTask()V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTorrent(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 11
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException;,
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;,
            Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sha1hash:Ljava/lang/String;

    iget-object v4, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->downloadPath:Landroid/net/Uri;

    iget-object v5, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->name:Ljava/lang/String;

    iget-boolean v6, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->addPaused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-boolean v9, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sequentialDownload:Z

    iget-boolean v10, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->firstLastPiecePriority:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZJZZ)V

    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->fromMagnet:Z

    if-eqz v2, :cond_1

    iget-object v1, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sha1hash:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getLoadedMagnet(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->sha1hash:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->removeLoadedMagnet(Ljava/lang/String;)V

    if-nez v1, :cond_1

    iget-object v2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->setMagnetUri(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v2, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->h(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    iget-object v2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->tags:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->k(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->isDownloadingMetadata()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    array-length v2, v2

    if-nez v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->n(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "r"

    invoke-interface {v2, v3}, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;->f(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Ljava/io/FileInputStream;)V

    iget v3, v3, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    new-array v3, v3, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iput-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz v2, :cond_3

    :try_start_7
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :cond_4
    :goto_3
    :try_start_9
    iget-object v2, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->download(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;[B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz p2, :cond_5

    iget-boolean p2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->fromMagnet:Z

    if-nez p2, :cond_5

    :try_start_a
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->d(Landroid/net/Uri;)Z
    :try_end_a
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    :cond_5
    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_b
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v2, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->g(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_4
    if-eqz p2, :cond_6

    iget-boolean p2, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->fromMagnet:Z

    if-nez p2, :cond_6

    :try_start_c
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;->source:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->d(Landroid/net/Uri;)Z
    :try_end_c
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    :cond_6
    throw v0

    :cond_7
    iget-object p2, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->mergeTorrent(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;[B)V

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException;-><init>()V

    throw p0
.end method

.method public cancelFetchMagnet(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lorg/libtorrent4j/Sha1Hash;->parseHex(Ljava/lang/String;)Lorg/libtorrent4j/Sha1Hash;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->find(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/libtorrent4j/SessionHandle;->DELETE_FILES:Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-virtual {p0, p1, v0}, Lorg/libtorrent4j/SessionManager;->remove(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteTorrent(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p2, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0, p2}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->g(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_1
    new-instance p2, Lorg/proninyaroslav/libretorrent/core/model/session/r;

    invoke-direct {p2, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/r;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->remove(Z)V

    :goto_0
    return-void
.end method

.method public dhtNodes()J
    .locals 2

    invoke-super {p0}, Lorg/libtorrent4j/SessionManager;->dhtNodes()J

    move-result-wide v0

    return-wide v0
.end method

.method public disableIpFilter()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    new-instance v0, Lorg/libtorrent4j/swig/ip_filter;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/ip_filter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/session_handle;->set_ip_filter(Lorg/libtorrent4j/swig/ip_filter;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/io/File;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 64
    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/libtorrent;->parse_magnet_uri(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_7

    .line 66
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    .line 70
    :cond_3
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/sha1_hash;->to_hex()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setName(Ljava/lang/String;)V

    .line 72
    :cond_4
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    .line 73
    sget-object v0, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    if-eqz p3, :cond_5

    .line 74
    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p2, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    goto :goto_0

    .line 75
    :cond_5
    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_6

    .line 76
    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p2, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    goto :goto_1

    .line 77
    :cond_6
    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    .line 78
    :goto_1
    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    .line 79
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addDefaultTrackers(Lorg/libtorrent4j/swig/add_torrent_params;)V

    .line 80
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void

    .line 81
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableIpFilter(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljua;

    invoke-direct {v1, p0, p1}, Ljua;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public fetchMagnet(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseMagnetUri(Ljava/lang/String;)Lorg/libtorrent4j/AddTorrentParams;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fetchMagnet(Lorg/libtorrent4j/AddTorrentParams;)Lorg/libtorrent4j/AddTorrentParams;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->filePriorities()[Lorg/libtorrent4j/Priority;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert([Lorg/libtorrent4j/Priority;)[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;

    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->getInfoHashes()Lorg/libtorrent4j/InfoHash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/InfoHash;->getBest()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public getDhtNodes()J
    .locals 2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stats()Lorg/libtorrent4j/SessionStats;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->dhtNodes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadSpeed()J
    .locals 2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stats()Lorg/libtorrent4j/SessionStats;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->downloadRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadSpeedLimit()I
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->downloadRateLimit()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getListenPort()I
    .locals 1

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->swig()Lorg/libtorrent4j/swig/session;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->listen_port()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLoadedMagnet(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public bridge synthetic getLogger()Lorg/proninyaroslav/libretorrent/core/logger/Logger;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getLogger()Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    move-result-object p0

    return-object p0
.end method

.method public getLogger()Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->sessionLogger:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    return-object p0
.end method

.method public getPieceSizeList()[I
    .locals 0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->pieceSize:[I

    return-object p0
.end method

.method public getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-direct {v0, v1}, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;-><init>(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    return-object p0
.end method

.method public getTotalDownload()J
    .locals 2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stats()Lorg/libtorrent4j/SessionStats;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->totalDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUpload()J
    .locals 2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stats()Lorg/libtorrent4j/SessionStats;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->totalUpload()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadSpeed()J
    .locals 2

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stats()Lorg/libtorrent4j/SessionStats;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->uploadRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadSpeedLimit()I
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->uploadRateLimit()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasTaskRunning()Z
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDHTEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->isEnableDht()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPeXEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .locals 1

    invoke-super {p0}, Lorg/libtorrent4j/SessionManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->started:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAfterStart()V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean v0, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_mask:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-direct {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->getAlertMask(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/alert_category_t;->to_int()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applySettingsPack(Lorg/libtorrent4j/SettingsPack;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->enableSessionLogger(Z)V

    :cond_1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->saveSettings()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->started:Z

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->disposables:Lgd1;

    new-instance v1, Liua;

    invoke-direct {v1, p0}, Liua;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

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

.method public onAfterStop()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/v;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/v;-><init>()V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onApplySettings(Lorg/libtorrent4j/SettingsPack;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->saveSettings()V

    return-void
.end method

.method public onBeforeStart()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTaskListener:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->innerListener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    return-void
.end method

.method public onBeforeStop()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->disposables:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->started:Z

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->enableSessionLogger(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->parseIpFilterThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->magnets:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTaskListener:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->innerListener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    return-void
.end method

.method public parseMagnet(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lorg/libtorrent4j/AddTorrentParams;->parseMagnetUri(Ljava/lang/String;)Lorg/libtorrent4j/AddTorrentParams;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->getInfoHashes()Lorg/libtorrent4j/InfoHash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/InfoHash;->getBest()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;

    invoke-virtual {p0}, Lorg/libtorrent4j/AddTorrentParams;->filePriorities()[Lorg/libtorrent4j/Priority;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert([Lorg/libtorrent4j/Priority;)[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p1, v0, v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public pauseAll()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pause()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pauseAllManually()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->pauseManually()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLoadedMagnet(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadedMagnets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestStop()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->saveAllResumeData()V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->stopTasks()V

    return-void
.end method

.method public restoreTorrents()V
    .locals 6

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->isTorrentAlreadyRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v3, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadPath:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->h(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    const-string v4, "Unable to restore torrent:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;

    iget-object v4, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->id:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->isDownloadingMetadata()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->getMagnet()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->manuallyPaused:Z

    iget-boolean v1, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->sequentialDownload:Z

    invoke-virtual {v3, v4, v5, v2, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->putMagnet(Ljava/lang/String;Ljava/io/File;ZZ)V

    :cond_3
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->restoreTorrentsQueue:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->runNextLoadTorrentTask()V

    return-void
.end method

.method public resumeAll()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->resume()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public resumeAllManually()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->resumeManually()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAutoManaged(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iput-boolean p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->v:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setAutoManaged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDefaultTrackersList([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->O:[Ljava/lang/String;

    return-void
.end method

.method public setMaxConnectionsPerTorrent(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iput p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->g:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setMaxConnections(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMaxUploadsPerTorrent(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iput p1, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->h:I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->torrentTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->setMaxUploads(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V

    return-void
.end method

.method public setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->applySettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    throw p1
.end method

.method public start()V
    .locals 8

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->loadSettings()Lorg/libtorrent4j/SessionParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionParams;->getSettings()Lorg/libtorrent4j/SettingsPack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/settings_pack;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean v2, v2, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->Q:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionParams;->setPosixDiskIO()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/libtorrent4j/SessionParams;->setDefaultDiskIO()V

    :goto_0
    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$string_types;->dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v2

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->dhtBootstrapNodes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_ip_notifier:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_queue_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v2

    const/16 v4, 0x1388

    invoke-virtual {v1, v2, v4}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$bool_types;->announce_to_all_trackers:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    sget-object v2, Lorg/libtorrent4j/swig/settings_pack$bool_types;->announce_to_all_tiers:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->system:Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;

    invoke-interface {v2}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacade;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->e(Ljava/lang/String;)[I

    move-result-object v5

    aget v6, v5, v3

    aget v4, v5, v4

    const/4 v7, 0x2

    aget v5, v5, v7

    const-string v7, "Lr"

    invoke-static {v7, v6, v4, v5, v3}, Lorg/libtorrent4j/swig/libtorrent;->generate_fingerprint(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/libtorrent4j/swig/settings_pack$string_types;->peer_fingerprint:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v4}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v5

    invoke-virtual {v1, v5, v3}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    invoke-static {v2}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "LibreTorrent %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/libtorrent4j/swig/settings_pack$string_types;->user_agent:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Peer fingerprint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User agent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    iget-boolean v2, v1, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->N:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->setRandomPort(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    :cond_3
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settings:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionParams;->getSettings()Lorg/libtorrent4j/SettingsPack;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->settingsToSettingsPack(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Lorg/libtorrent4j/SettingsPack;)V

    invoke-super {p0, v0}, Lorg/libtorrent4j/SessionManager;->start(Lorg/libtorrent4j/SessionParams;)V

    return-void
.end method
