.class public Lorg/libtorrent4j/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/SessionManager$MutableItem;
    }
.end annotation


# static fields
.field private static final ALERTS_LOOP_WAIT_MILLIS:J = 0x1f4L

.field private static final DHT_GET_PEERS_REPLY_ALERT_TYPES:[I

.field private static final DHT_IMMUTABLE_ITEM_TYPES:[I

.field private static final DHT_MUTABLE_ITEM_TYPES:[I

.field private static final FETCH_MAGNET_DOWNLOAD_KEY:Ljava/lang/String; = "fetch_magnet___"

.field private static final METADATA_ALERT_TYPES:[I

.field private static final REQUEST_STATS_RESOLUTION_MILLIS:J = 0x3e8L


# instance fields
.field private alertsLoop:Ljava/lang/Thread;

.field private externalAddress:Ljava/lang/String;

.field private externalPort:I

.field private firewalled:Z

.field private lastAlertError:Ljava/lang/Throwable;

.field private lastStatsRequestTime:J

.field private final listenEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:[Lorg/libtorrent4j/AlertListener;

.field private final logging:Z

.field private volatile session:Lorg/libtorrent4j/swig/session;

.field private final stats:Lorg/libtorrent4j/SessionStats;

.field private final sync:Ljava/util/concurrent/locks/ReentrantLock;

.field private final syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->METADATA_RECEIVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    sget-object v1, Lorg/libtorrent4j/alerts/AlertType;->METADATA_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v1}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v1

    sget-object v2, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v2}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v2

    sget-object v3, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/SessionManager;->METADATA_ALERT_TYPES:[I

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->DHT_IMMUTABLE_ITEM:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/SessionManager;->DHT_IMMUTABLE_ITEM_TYPES:[I

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->DHT_MUTABLE_ITEM:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/SessionManager;->DHT_MUTABLE_ITEM_TYPES:[I

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->DHT_GET_PEERS_REPLY:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/SessionManager;->DHT_GET_PEERS_REPLY_ALERT_TYPES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lorg/libtorrent4j/SessionManager;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/libtorrent4j/SessionManager;->logging:Z

    .line 3
    sget p1, Lorg/libtorrent4j/alerts/Alerts;->NUM_ALERT_TYPES:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lorg/libtorrent4j/AlertListener;

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->listeners:[Lorg/libtorrent4j/AlertListener;

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    new-instance p1, Lorg/libtorrent4j/SessionStats;

    invoke-direct {p1}, Lorg/libtorrent4j/SessionStats;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->listenEndpoints:Ljava/util/Map;

    .line 8
    invoke-direct {p0}, Lorg/libtorrent4j/SessionManager;->resetState()V

    return-void
.end method

.method public static synthetic access$000()[I
    .locals 1

    sget-object v0, Lorg/libtorrent4j/SessionManager;->METADATA_ALERT_TYPES:[I

    return-object v0
.end method

.method public static synthetic access$100()[I
    .locals 1

    sget-object v0, Lorg/libtorrent4j/SessionManager;->DHT_IMMUTABLE_ITEM_TYPES:[I

    return-object v0
.end method

.method public static synthetic access$1000(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/AddTorrentAlert;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SessionManager;->isFetchMagnetDownload(Lorg/libtorrent4j/alerts/AddTorrentAlert;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lorg/libtorrent4j/SessionManager;)[Lorg/libtorrent4j/AlertListener;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->listeners:[Lorg/libtorrent4j/AlertListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/Alert;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/SessionManager;->fireAlert(Lorg/libtorrent4j/alerts/Alert;I)V

    return-void
.end method

.method public static synthetic access$1300(I)Z
    .locals 0

    invoke-static {p0}, Lorg/libtorrent4j/SessionManager;->isSpecialType(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lorg/libtorrent4j/SessionManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/SessionManager;->lastStatsRequestTime:J

    return-wide v0
.end method

.method public static synthetic access$1402(Lorg/libtorrent4j/SessionManager;J)J
    .locals 0

    iput-wide p1, p0, Lorg/libtorrent4j/SessionManager;->lastStatsRequestTime:J

    return-wide p1
.end method

.method public static synthetic access$200()[I
    .locals 1

    sget-object v0, Lorg/libtorrent4j/SessionManager;->DHT_MUTABLE_ITEM_TYPES:[I

    return-object v0
.end method

.method public static synthetic access$400()[I
    .locals 1

    sget-object v0, Lorg/libtorrent4j/SessionManager;->DHT_GET_PEERS_REPLY_ALERT_TYPES:[I

    return-object v0
.end method

.method public static synthetic access$500(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/swig/session;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/SessionStats;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    return-object p0
.end method

.method public static synthetic access$702(Lorg/libtorrent4j/SessionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/libtorrent4j/SessionManager;->firewalled:Z

    return p1
.end method

.method public static synthetic access$800(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/ListenSucceededAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SessionManager;->onListenSucceeded(Lorg/libtorrent4j/alerts/ListenSucceededAlert;)V

    return-void
.end method

.method public static synthetic access$900(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/ExternalIpAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SessionManager;->onExternalIpAlert(Lorg/libtorrent4j/alerts/ExternalIpAlert;)V

    return-void
.end method

.method private static alertMask(Z)Lorg/libtorrent4j/swig/alert_category_t;
    .locals 2

    sget-object v0, Lorg/libtorrent4j/swig/alert;->all_categories:Lorg/libtorrent4j/swig/alert_category_t;

    if-nez p0, :cond_0

    sget-object p0, Lorg/libtorrent4j/swig/alert;->session_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v1, Lorg/libtorrent4j/swig/alert;->torrent_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    sget-object v1, Lorg/libtorrent4j/swig/alert;->peer_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    sget-object v1, Lorg/libtorrent4j/swig/alert;->dht_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    sget-object v1, Lorg/libtorrent4j/swig/alert;->port_mapping_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    sget-object v1, Lorg/libtorrent4j/swig/alert;->picker_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/alert_category_t;->or_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert_category_t;->inv()Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/libtorrent4j/swig/alert_category_t;->and_(Lorg/libtorrent4j/swig/alert_category_t;)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private alertsLoop()V
    .locals 3

    new-instance v0, Lorg/libtorrent4j/SessionManager$5;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionManager$5;-><init>(Lorg/libtorrent4j/SessionManager;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "SessionManager-alertsLoop"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v1, p0, Lorg/libtorrent4j/SessionManager;->alertsLoop:Ljava/lang/Thread;

    return-void
.end method

.method private fireAlert(Lorg/libtorrent4j/alerts/Alert;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->listeners:[Lorg/libtorrent4j/AlertListener;

    aget-object p2, v0, p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, p1}, Lorg/libtorrent4j/AlertListener;->alert(Lorg/libtorrent4j/alerts/Alert;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling alert listener: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/libtorrent4j/Log;->warn(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->lastAlertError:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-void
.end method

.method private isFetchMagnetDownload(Lorg/libtorrent4j/alerts/AddTorrentAlert;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_alert;->getParams()Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "fetch_magnet___"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSpecialType(I)Z
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SESSION_STATS:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->STATE_UPDATE:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SESSION_STATS_HEADER:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v0

    if-ne p0, v0, :cond_0

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

.method private declared-synchronized modifyListeners(ZILorg/libtorrent4j/AlertListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->listeners:[Lorg/libtorrent4j/AlertListener;

    aget-object v0, p1, p2

    invoke-static {v0, p3}, Lorg/libtorrent4j/AlertMulticaster;->add(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->listeners:[Lorg/libtorrent4j/AlertListener;

    aget-object v0, p1, p2

    invoke-static {v0, p3}, Lorg/libtorrent4j/AlertMulticaster;->remove(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p3

    aput-object p3, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private modifyListeners(ZLorg/libtorrent4j/AlertListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Lorg/libtorrent4j/AlertListener;->types()[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget v0, Lorg/libtorrent4j/alerts/Alerts;->NUM_ALERT_TYPES:I

    invoke-direct {p0, p1, v0, p2}, Lorg/libtorrent4j/SessionManager;->modifyListeners(ZILorg/libtorrent4j/AlertListener;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    aget v2, v0, v1

    invoke-direct {p0, p1, v2, p2}, Lorg/libtorrent4j/SessionManager;->modifyListeners(ZILorg/libtorrent4j/AlertListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private onExternalIpAlert(Lorg/libtorrent4j/alerts/ExternalIpAlert;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/external_ip_alert;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/external_ip_alert;->get_external_address()Lorg/libtorrent4j/swig/address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/address;->is_v4()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ExternalIpAlert;->externalAddress()Lorg/libtorrent4j/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/Address;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager;->externalAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Error saving reported external ip"

    invoke-static {p1, p0}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private onListenSucceeded(Lorg/libtorrent4j/alerts/ListenSucceededAlert;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ListenSucceededAlert;->socketType()Lorg/libtorrent4j/alerts/SocketType;

    move-result-object v0

    sget-object v1, Lorg/libtorrent4j/alerts/SocketType;->TCP:Lorg/libtorrent4j/alerts/SocketType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ListenSucceededAlert;->address()Lorg/libtorrent4j/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->isV4()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ListenSucceededAlert;->port()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/SessionManager;->externalPort:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->isMulticast()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->isUnspecified()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ListenSucceededAlert;->port()I

    move-result p1

    const-string v2, "127."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "fe80::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/libtorrent4j/Address;->isV6()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->listenEndpoints:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    :goto_2
    return-void

    :goto_3
    const-string p1, "Error adding listen endpoint to internal list"

    invoke-static {p1, p0}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private resetState()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionStats;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/libtorrent4j/SessionManager;->firewalled:Z

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->listenEndpoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/libtorrent4j/SessionManager;->externalAddress:Ljava/lang/String;

    iput-object v0, p0, Lorg/libtorrent4j/SessionManager;->alertsLoop:Ljava/lang/Thread;

    return-void
.end method

.method private toggleDht(Z)V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->isDhtRunning()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->setEnableDht(Z)V

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lorg/libtorrent4j/AlertListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/libtorrent4j/SessionManager;->modifyListeners(ZLorg/libtorrent4j/AlertListener;)V

    return-void
.end method

.method public applySettings(Lorg/libtorrent4j/SettingsPack;)V
    .locals 2

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/session_handle;->apply_settings(Lorg/libtorrent4j/swig/settings_pack;)V

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->onApplySettings(Lorg/libtorrent4j/SettingsPack;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "settings pack can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public defaultDhtBootstrapNodes()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dht.libtorrent.org:25401"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "router.bittorrent.com:6881"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "router.utorrent.com:6881"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dht.transmissionbt.com:6881"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dhtAnnounce(Lorg/libtorrent4j/Sha1Hash;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;)V

    :cond_0
    return-void
.end method

.method public dhtAnnounce(Lorg/libtorrent4j/Sha1Hash;IB)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/session_handle;->dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;IB)V

    :cond_0
    return-void
.end method

.method public dhtGetItem(Lorg/libtorrent4j/Sha1Hash;I)Lorg/libtorrent4j/Entry;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v2, Lorg/libtorrent4j/SessionManager$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/libtorrent4j/SessionManager$2;-><init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/sha1_hash;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 6
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    .line 7
    :try_start_0
    iget-object v3, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v3, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_get_item(Lorg/libtorrent4j/swig/sha1_hash;)V

    int-to-long p1, p2

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    const-string p2, "Error getting immutable item"

    invoke-static {p2, p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/Entry;

    return-object p0

    :catchall_1
    move-exception p1

    .line 12
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    .line 13
    throw p1
.end method

.method public dhtGetItem([B[BI)Lorg/libtorrent4j/SessionManager$MutableItem;
    .locals 9

    .line 14
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 17
    new-instance v8, Lorg/libtorrent4j/SessionManager$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/libtorrent4j/SessionManager$3;-><init>(Lorg/libtorrent4j/SessionManager;[B[BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 18
    invoke-virtual {p0, v8}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    .line 19
    :try_start_0
    new-instance v0, Lorg/libtorrent4j/SessionHandle;

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-direct {v0, v1}, Lorg/libtorrent4j/SessionHandle;-><init>(Lorg/libtorrent4j/swig/session_handle;)V

    invoke-virtual {v0, p1, p2}, Lorg/libtorrent4j/SessionHandle;->dhtGetItem([B[B)V

    int-to-long p1, p3

    .line 20
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    invoke-virtual {p0, v8}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    const-string p2, "Error getting mutable item"

    invoke-static {p2, p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/SessionManager$MutableItem;

    return-object p0

    :catchall_1
    move-exception p1

    .line 24
    invoke-virtual {p0, v8}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    .line 25
    throw p1
.end method

.method public dhtGetPeers(Lorg/libtorrent4j/Sha1Hash;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/Sha1Hash;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lorg/libtorrent4j/SessionManager$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/libtorrent4j/SessionManager$4;-><init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/sha1_hash;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    :try_start_0
    iget-object v3, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v3, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_get_peers(Lorg/libtorrent4j/swig/sha1_hash;)V

    int-to-long p1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "Error getting peers from the dht"

    invoke-static {p2, p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    throw p1
.end method

.method public dhtNodes()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->dhtNodes()J

    move-result-wide v0

    return-wide v0
.end method

.method public dhtPutItem(Lorg/libtorrent4j/Entry;)Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/SessionHandle;

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionHandle;-><init>(Lorg/libtorrent4j/swig/session_handle;)V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SessionHandle;->dhtPutItem(Lorg/libtorrent4j/Entry;)Lorg/libtorrent4j/Sha1Hash;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public dhtPutItem([B[BLorg/libtorrent4j/Entry;[B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/libtorrent4j/SessionHandle;

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionHandle;-><init>(Lorg/libtorrent4j/swig/session_handle;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/libtorrent4j/SessionHandle;->dhtPutItem([B[BLorg/libtorrent4j/Entry;[B)V

    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 35
    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/libtorrent;->parse_magnet_uri(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_4

    .line 37
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    .line 41
    :cond_2
    const-string p2, ""

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 42
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/sha1_hash;->to_hex()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setName(Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    .line 44
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void

    .line 45
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;)V
    .locals 7

    .line 46
    new-instance v6, Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-direct {v6}, Lorg/libtorrent4j/swig/torrent_flags_t;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/libtorrent4j/SessionManager;->download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;Ljava/io/File;[Lorg/libtorrent4j/Priority;Ljava/util/List;Lorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public download(Lorg/libtorrent4j/TorrentInfo;Ljava/io/File;Ljava/io/File;[Lorg/libtorrent4j/Priority;Ljava/util/List;Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/TorrentInfo;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "[",
            "Lorg/libtorrent4j/Priority;",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;",
            "Lorg/libtorrent4j/swig/torrent_flags_t;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->swig()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_info;->info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v0

    .line 4
    const-string v1, "priorities count should be equals to the number of files"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    .line 5
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result p0

    array-length p1, p4

    if-ne p0, p1, :cond_1

    .line 6
    invoke-static {p4}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/libtorrent4j/swig/torrent_handle;->prioritize_files_ex(Lorg/libtorrent4j/swig/byte_vector;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    sget-object p0, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result p1

    invoke-static {p0, p1}, Lorg/libtorrent4j/Priority;->array(Lorg/libtorrent4j/Priority;I)[Lorg/libtorrent4j/Priority;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/libtorrent4j/swig/torrent_handle;->prioritize_files_ex(Lorg/libtorrent4j/swig/byte_vector;)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 10
    :try_start_0
    invoke-static {p3}, Lorg/libtorrent4j/Files;->bytes(Ljava/io/File;)[B

    move-result-object p3

    .line 11
    new-instance v2, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v2}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 12
    invoke-static {p3}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p3

    invoke-static {p3, v2}, Lorg/libtorrent4j/swig/libtorrent;->read_resume_data_ex(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object v0

    .line 13
    invoke-virtual {v2}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read the resume data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p3

    .line 15
    const-string v2, "Unable to set resume data"

    invoke-static {v2, p3}, Lorg/libtorrent4j/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 16
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>()V

    .line 17
    :cond_6
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->swig()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/libtorrent4j/swig/add_torrent_params;->set_ti(Lorg/libtorrent4j/swig/torrent_info;)V

    if-eqz p2, :cond_7

    .line 18
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    :cond_7
    if-eqz p4, :cond_a

    .line 19
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/FileStorage;->numFiles()I

    move-result p1

    array-length p2, p4

    if-ne p1, p2, :cond_9

    .line 20
    new-instance p1, Lorg/libtorrent4j/swig/byte_vector;

    invoke-direct {p1}, Lorg/libtorrent4j/swig/byte_vector;-><init>()V

    const/4 p2, 0x0

    .line 21
    :goto_2
    array-length p3, p4

    if-ge p2, p3, :cond_8

    .line 22
    aget-object p3, p4, p2

    invoke-virtual {p3}, Lorg/libtorrent4j/Priority;->swig()B

    move-result p3

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/byte_vector;->add(Ljava/lang/Byte;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_file_priorities(Lorg/libtorrent4j/swig/byte_vector;)V

    goto :goto_3

    .line 24
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    if-eqz p5, :cond_c

    .line 25
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 26
    new-instance p1, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    invoke-direct {p1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>()V

    .line 27
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/libtorrent4j/TcpEndpoint;

    .line 28
    invoke-virtual {p3}, Lorg/libtorrent4j/TcpEndpoint;->swig()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->add(Lorg/libtorrent4j/swig/tcp_endpoint;)Z

    goto :goto_4

    .line 29
    :cond_b
    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setPeers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    .line 30
    :cond_c
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    .line 31
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void

    .line 32
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "torrent info not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public downloadRate()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->downloadRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public downloadRateLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->downloadRateLimit()I

    move-result p0

    return p0
.end method

.method public downloadRateLimit(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->downloadRateLimit(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public externalAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->externalAddress:Ljava/lang/String;

    return-object p0
.end method

.method public fetchMagnet(Ljava/lang/String;ILjava/io/File;)[B
    .locals 10

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/libtorrent;->parse_magnet_uri(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object v2

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/add_torrent_params;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v7, Lorg/libtorrent4j/SessionManager$1;

    invoke-direct {v7, p0, v3, v4, v5}, Lorg/libtorrent4j/SessionManager$1;-><init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/info_hash_t;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v7}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lorg/libtorrent4j/SessionManager;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v9, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->torrent_file_ptr()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/torrent_info;->is_valid()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/libtorrent4j/swig/torrent_handle;->save_info_dict:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {v1, v3}, Lorg/libtorrent4j/swig/torrent_handle;->save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    move v6, v8

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetch_magnet___"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setName(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->inv()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->UPLOAD_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    sget-object p3, Lorg/libtorrent4j/TorrentFlags;->STOP_WHEN_READY:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/swig/torrent_flags_t;->or_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->clear()V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1, v2, v0}, Lorg/libtorrent4j/swig/session_handle;->add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move v8, v6

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_3
    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    int-to-long p1, p2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v7}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz p1, :cond_4

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_2
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V

    goto :goto_5

    :catchall_2
    move-exception p1

    move v8, v6

    goto :goto_4

    :goto_3
    :try_start_4
    iget-object p2, p0, Lorg/libtorrent4j/SessionManager;->syncMagnet:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    :goto_4
    :try_start_5
    const-string p2, "Error fetching magnet"

    invoke-static {p2, p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {p0, v7}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz p1, :cond_4

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :catchall_4
    move-exception p1

    invoke-virtual {p0, v7}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    iget-object p2, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz p2, :cond_5

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V

    :cond_5
    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stop()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public find(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;
    .locals 2

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v1, Lorg/libtorrent4j/TorrentHandle;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    :cond_1
    return-object v1
.end method

.method public isDhtRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_dht_running()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirewalled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/SessionManager;->firewalled:Z

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_paused()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastAlertError()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->lastAlertError:Ljava/lang/Throwable;

    return-object p0
.end method

.method public listenEndpoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->listenEndpoints:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public listenInterfaces()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->listenInterfaces()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listenInterfaces(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->listenInterfaces(Ljava/lang/String;)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public magnetPeers()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->externalAddress:Ljava/lang/String;

    const-string v2, "&x.pe="

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/libtorrent4j/SessionManager;->externalPort:I

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->externalAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/libtorrent4j/SessionManager;->externalPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->listenEndpoints:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public maxActiveDownloads()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->activeDownloads()I

    move-result p0

    return p0
.end method

.method public maxActiveDownloads(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->activeDownloads(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public maxActiveSeeds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->activeSeeds()I

    move-result p0

    return p0
.end method

.method public maxActiveSeeds(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->activeSeeds(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public maxConnections()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->connectionsLimit()I

    move-result p0

    return p0
.end method

.method public maxConnections(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->connectionsLimit(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public maxPeers()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->maxPeerlistSize()I

    move-result p0

    return p0
.end method

.method public maxPeers(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->maxPeerlistSize(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method

.method public moveStorage(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->get_torrents()Lorg/libtorrent4j/swig/torrent_handle_vector;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->status()Lorg/libtorrent4j/swig/torrent_status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status;->getIs_seeding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status;->getIs_finished()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->move_storage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    const-string p1, "Error changing save path for session"

    invoke-static {p1, p0}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public onAfterStart()V
    .locals 0

    return-void
.end method

.method public onAfterStop()V
    .locals 0

    return-void
.end method

.method public onApplySettings(Lorg/libtorrent4j/SettingsPack;)V
    .locals 0

    return-void
.end method

.method public onBeforeStart()V
    .locals 0

    return-void
.end method

.method public onBeforeStop()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/session_handle;->is_paused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->pause()V

    :cond_0
    return-void
.end method

.method public postDhtStats()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_dht_stats()V

    :cond_0
    return-void
.end method

.method public postSessionStats()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_session_stats()V

    :cond_0
    return-void
.end method

.method public postTorrentUpdates()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_torrent_updates()V

    :cond_0
    return-void
.end method

.method public remove(Lorg/libtorrent4j/TorrentHandle;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    :cond_0
    return-void
.end method

.method public removeListener(Lorg/libtorrent4j/AlertListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/libtorrent4j/SessionManager;->modifyListeners(ZLorg/libtorrent4j/AlertListener;)V

    return-void
.end method

.method public reopenNetworkSockets()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->reopen_network_sockets()V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 3

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/session_handle;->session_state()Lorg/libtorrent4j/swig/session_params;

    move-result-object v0

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->stop()V

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    new-instance v1, Lorg/libtorrent4j/SessionParams;

    invoke-direct {v1, v0}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/swig/session_params;)V

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/SessionManager;->start(Lorg/libtorrent4j/SessionParams;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->resume()V

    :cond_0
    return-void
.end method

.method public saveState()[B
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->session_state()Lorg/libtorrent4j/swig/session_params;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/session_params;->write_session_params_buf(Lorg/libtorrent4j/swig/session_params;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public settings()Lorg/libtorrent4j/SettingsPack;
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->get_settings()Lorg/libtorrent4j/swig/settings_pack;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SettingsPack;-><init>(Lorg/libtorrent4j/swig/settings_pack;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public start()V
    .locals 1

    .line 23
    new-instance v0, Lorg/libtorrent4j/SessionParams;

    invoke-direct {v0}, Lorg/libtorrent4j/SessionParams;-><init>()V

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/SessionManager;->start(Lorg/libtorrent4j/SessionParams;)V

    return-void
.end method

.method public start(Lorg/libtorrent4j/SessionParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->onBeforeStart()V

    .line 6
    invoke-direct {p0}, Lorg/libtorrent4j/SessionManager;->resetState()V

    .line 7
    invoke-virtual {p1}, Lorg/libtorrent4j/SessionParams;->getSettings()Lorg/libtorrent4j/SettingsPack;

    move-result-object v0

    .line 8
    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_mask:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    iget-boolean v2, p0, Lorg/libtorrent4j/SessionManager;->logging:Z

    invoke-static {v2}, Lorg/libtorrent4j/SessionManager;->alertMask(Z)Lorg/libtorrent4j/swig/alert_category_t;

    move-result-object v2

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/alert_category_t;->to_int()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/libtorrent4j/SettingsPack;->setInteger(II)Lorg/libtorrent4j/SettingsPack;

    .line 9
    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_metadata_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/SettingsPack;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x200000

    .line 10
    invoke-virtual {v0, v1}, Lorg/libtorrent4j/SettingsPack;->setMaxMetadataSize(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$string_types;->dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/SettingsPack;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->defaultDhtBootstrapNodes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/SettingsPack;->setDhtBootstrapNodes(Ljava/lang/String;)V

    .line 13
    :cond_3
    new-instance v0, Lorg/libtorrent4j/swig/session;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/session_params;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/session;-><init>(Lorg/libtorrent4j/swig/session_params;)V

    iput-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    .line 14
    invoke-direct {p0}, Lorg/libtorrent4j/SessionManager;->alertsLoop()V

    .line 15
    new-instance p1, Lorg/libtorrent4j/swig/port_filter;

    invoke-direct {p1}, Lorg/libtorrent4j/swig/port_filter;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x4f

    const-wide/16 v2, 0x1

    .line 16
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/libtorrent4j/swig/port_filter;->add_rule(IIJ)V

    const/16 v0, 0x51

    const/16 v1, 0x1ba

    .line 17
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/libtorrent4j/swig/port_filter;->add_rule(IIJ)V

    const/16 v0, 0x1bc

    const/16 v1, 0x3ff

    .line 18
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/libtorrent4j/swig/port_filter;->add_rule(IIJ)V

    .line 19
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/swig/session_handle;->set_port_filter(Lorg/libtorrent4j/swig/port_filter;)V

    .line 20
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->onAfterStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    throw p1
.end method

.method public startDht()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SessionManager;->toggleDht(Z)V

    return-void
.end method

.method public stats()Lorg/libtorrent4j/SessionStats;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    return-object p0
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->onBeforeStop()V

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/session_handle;->post_session_stats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x2ee

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lorg/libtorrent4j/SessionManager;->alertsLoop:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_2
    :try_start_5
    invoke-direct {p0}, Lorg/libtorrent4j/SessionManager;->resetState()V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/session;->delete()V

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->onAfterStop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->sync:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopDht()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SessionManager;->toggleDht(Z)V

    return-void
.end method

.method public swig()Lorg/libtorrent4j/swig/session;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    return-object p0
.end method

.method public totalDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->totalDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->totalUpload()J

    move-result-wide v0

    return-wide v0
.end method

.method public uploadRate()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager;->stats:Lorg/libtorrent4j/SessionStats;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionStats;->uploadRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public uploadRateLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->settings()Lorg/libtorrent4j/SettingsPack;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/SettingsPack;->uploadRateLimit()I

    move-result p0

    return p0
.end method

.method public uploadRateLimit(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/libtorrent4j/SessionManager;->session:Lorg/libtorrent4j/swig/session;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-direct {v0}, Lorg/libtorrent4j/SettingsPack;-><init>()V

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SettingsPack;->uploadRateLimit(I)Lorg/libtorrent4j/SettingsPack;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/SessionManager;->applySettings(Lorg/libtorrent4j/SettingsPack;)V

    return-void
.end method
