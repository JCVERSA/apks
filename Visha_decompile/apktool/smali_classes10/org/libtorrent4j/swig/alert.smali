.class public Lorg/libtorrent4j/swig/alert;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final all_categories:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final block_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final connect_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final dht_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final dht_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final dht_operation_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final error_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final file_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final incoming_request_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final ip_block_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final peer_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final peer_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final performance_warning:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final picker_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final piece_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final port_mapping_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final port_mapping_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final session_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final status_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final storage_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final torrent_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final tracker_notification:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final upload_notification:Lorg/libtorrent4j/swig/alert_category_t;


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_error_notification_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->error_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_peer_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->peer_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_port_mapping_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->port_mapping_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_storage_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->storage_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_tracker_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->tracker_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_connect_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->connect_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_status_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->status_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_ip_block_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->ip_block_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_performance_warning_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->performance_warning:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_dht_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->dht_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_session_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->session_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_torrent_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->torrent_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_peer_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->peer_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_incoming_request_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->incoming_request_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_dht_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->dht_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_dht_operation_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->dht_operation_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_port_mapping_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->port_mapping_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_picker_log_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->picker_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_file_progress_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->file_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_piece_progress_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->piece_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_upload_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->upload_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_block_progress_notification_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->block_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_all_categories_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/alert;->all_categories:Lorg/libtorrent4j/swig/alert_category_t;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    return-void
.end method

.method public static cast_to_add_torrent_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/add_torrent_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_add_torrent_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/add_torrent_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/add_torrent_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_alerts_dropped_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/alerts_dropped_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_alerts_dropped_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/alerts_dropped_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/alerts_dropped_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_block_downloading_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/block_downloading_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_block_downloading_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/block_downloading_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_downloading_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_block_finished_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/block_finished_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_block_finished_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/block_finished_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_finished_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_block_timeout_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/block_timeout_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_block_timeout_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/block_timeout_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_timeout_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_block_uploaded_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/block_uploaded_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_block_uploaded_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/block_uploaded_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_uploaded_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_cache_flushed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/cache_flushed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_cache_flushed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/cache_flushed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/cache_flushed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_announce_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_announce_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_announce_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_announce_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_announce_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_bootstrap_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_bootstrap_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_bootstrap_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_bootstrap_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_bootstrap_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_direct_response_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_direct_response_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_direct_response_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_direct_response_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_direct_response_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_get_peers_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_get_peers_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_get_peers_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_get_peers_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_get_peers_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_get_peers_reply_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_get_peers_reply_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_get_peers_reply_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_get_peers_reply_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_get_peers_reply_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_immutable_item_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_immutable_item_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_immutable_item_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_immutable_item_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_immutable_item_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_live_nodes_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_live_nodes_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_live_nodes_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_live_nodes_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_live_nodes_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_mutable_item_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_mutable_item_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_mutable_item_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_mutable_item_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_mutable_item_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_outgoing_get_peers_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_outgoing_get_peers_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_pkt_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_pkt_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_pkt_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_pkt_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_pkt_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_put_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_put_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_put_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_put_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_put_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_reply_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_reply_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_reply_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_reply_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_reply_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_sample_infohashes_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_sample_infohashes_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_sample_infohashes_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_dht_stats_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_stats_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_dht_stats_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_stats_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_stats_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_external_ip_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/external_ip_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_external_ip_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/external_ip_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/external_ip_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_fastresume_rejected_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/fastresume_rejected_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_fastresume_rejected_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/fastresume_rejected_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/fastresume_rejected_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_completed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_completed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_completed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_completed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_completed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_prio_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_prio_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_prio_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_prio_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_prio_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_progress_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_progress_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_progress_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_progress_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_progress_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_rename_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_rename_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_rename_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_rename_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_rename_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_file_renamed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/file_renamed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_file_renamed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_renamed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_renamed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_hash_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/hash_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_hash_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/hash_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/hash_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_i2p_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/i2p_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_i2p_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/i2p_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/i2p_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_incoming_connection_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/incoming_connection_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_incoming_connection_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/incoming_connection_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/incoming_connection_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_incoming_request_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/incoming_request_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_incoming_request_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/incoming_request_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/incoming_request_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_invalid_request_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/invalid_request_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_invalid_request_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/invalid_request_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/invalid_request_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_listen_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/listen_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_listen_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/listen_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/listen_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_listen_succeeded_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/listen_succeeded_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_listen_succeeded_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/listen_succeeded_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/listen_succeeded_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_lsd_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/lsd_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_lsd_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/lsd_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/lsd_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_lsd_peer_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/lsd_peer_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_lsd_peer_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/lsd_peer_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/lsd_peer_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_metadata_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/metadata_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_metadata_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/metadata_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/metadata_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_metadata_received_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/metadata_received_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_metadata_received_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/metadata_received_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/metadata_received_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_oversized_file_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/oversized_file_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_oversized_file_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/oversized_file_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/oversized_file_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_ban_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_ban_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_ban_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_ban_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_ban_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_blocked_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_blocked_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_blocked_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_blocked_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_blocked_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_connect_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_connect_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_connect_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_connect_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_connect_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_disconnected_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_disconnected_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_disconnected_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_disconnected_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_disconnected_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_info_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_info_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_info_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_info_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_info_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_snubbed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_snubbed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_snubbed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_snubbed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_snubbed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_peer_unsnubbed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/peer_unsnubbed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_peer_unsnubbed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_unsnubbed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_unsnubbed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_performance_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/performance_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_performance_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/performance_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/performance_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_picker_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/picker_log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_picker_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/picker_log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/picker_log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_piece_availability_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/piece_availability_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_piece_availability_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/piece_availability_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/piece_availability_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_piece_finished_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/piece_finished_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_piece_finished_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/piece_finished_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/piece_finished_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_piece_info_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/piece_info_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_piece_info_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/piece_info_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/piece_info_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_portmap_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/portmap_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_portmap_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/portmap_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/portmap_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_portmap_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/portmap_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_portmap_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/portmap_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/portmap_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_portmap_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/portmap_log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_portmap_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/portmap_log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/portmap_log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_read_piece_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/read_piece_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_read_piece_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/read_piece_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/read_piece_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_request_dropped_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/request_dropped_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_request_dropped_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/request_dropped_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/request_dropped_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_save_resume_data_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/save_resume_data_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_save_resume_data_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/save_resume_data_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/save_resume_data_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_save_resume_data_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/save_resume_data_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_save_resume_data_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/save_resume_data_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/save_resume_data_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_scrape_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/scrape_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_scrape_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/scrape_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/scrape_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_scrape_reply_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/scrape_reply_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_scrape_reply_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/scrape_reply_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/scrape_reply_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_session_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/session_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_session_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/session_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_session_stats_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/session_stats_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_session_stats_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/session_stats_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_stats_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_session_stats_header_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/session_stats_header_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_session_stats_header_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/session_stats_header_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_stats_header_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_socks5_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/socks5_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_socks5_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/socks5_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/socks5_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_state_changed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/state_changed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_state_changed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/state_changed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/state_changed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_state_update_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/state_update_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_state_update_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/state_update_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/state_update_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_storage_moved_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/storage_moved_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_storage_moved_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/storage_moved_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/storage_moved_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_storage_moved_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/storage_moved_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_storage_moved_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/storage_moved_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/storage_moved_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_checked_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_checked_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_checked_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_checked_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_checked_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_conflict_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_conflict_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_conflict_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_conflict_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_conflict_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_delete_failed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_delete_failed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_delete_failed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_delete_failed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_delete_failed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_deleted_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_deleted_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_deleted_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_deleted_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_deleted_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_finished_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_finished_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_finished_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_finished_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_finished_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_log_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_log_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_log_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_log_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_log_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_need_cert_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_need_cert_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_need_cert_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_need_cert_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_need_cert_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_paused_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_paused_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_paused_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_paused_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_paused_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_removed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_removed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_removed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_removed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_removed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_torrent_resumed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/torrent_resumed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_torrent_resumed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_resumed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_resumed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_tracker_announce_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/tracker_announce_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_tracker_announce_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tracker_announce_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tracker_announce_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_tracker_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/tracker_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_tracker_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tracker_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tracker_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_tracker_list_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/tracker_list_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_tracker_list_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tracker_list_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tracker_list_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_tracker_reply_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/tracker_reply_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_tracker_reply_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tracker_reply_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tracker_reply_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_tracker_warning_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/tracker_warning_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_tracker_warning_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tracker_warning_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tracker_warning_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_trackerid_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/trackerid_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_trackerid_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/trackerid_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/trackerid_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_udp_error_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/udp_error_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_udp_error_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/udp_error_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/udp_error_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_unwanted_block_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/unwanted_block_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_unwanted_block_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/unwanted_block_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/unwanted_block_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static cast_to_url_seed_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/url_seed_alert;
    .locals 4

    invoke-static {p0}, Lorg/libtorrent4j/swig/alert;->getCPtr(Lorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_cast_to_url_seed_alert(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/url_seed_alert;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/url_seed_alert;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/alert;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/alert;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->delete()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot release ownership as memory is not owned"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public category()Lorg/libtorrent4j/swig/alert_category_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_category(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_alert(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert;->delete()V

    return-void
.end method

.method public get_timestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_get_timestamp(JLorg/libtorrent4j/swig/alert;)J

    move-result-wide v0

    return-wide v0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_message(JLorg/libtorrent4j/swig/alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_type(JLorg/libtorrent4j/swig/alert;)I

    move-result p0

    return p0
.end method

.method public what()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->alert_what(JLorg/libtorrent4j/swig/alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
