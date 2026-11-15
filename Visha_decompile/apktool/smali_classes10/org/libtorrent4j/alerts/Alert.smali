.class public interface abstract Lorg/libtorrent4j/alerts/Alert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/libtorrent4j/swig/alert;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALL_CATEGORIES:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final BLOCK_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final CONNECT_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final DHT_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final DHT_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final DHT_OPERATION_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final ERROR_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final FILE_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final INCOMING_REQUEST_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final IP_BLOCK_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PEER_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PEER_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PERFORMANCE_WARNING:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PICKER_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PIECE_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PORT_MAPPING_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final PORT_MAPPING_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final SESSION_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final STATUS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final STORAGE_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final TORRENT_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final TRACKER_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

.field public static final UPLOAD_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/alert;->error_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->ERROR_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->peer_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PEER_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->port_mapping_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PORT_MAPPING_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->storage_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->STORAGE_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->tracker_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->TRACKER_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->connect_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->CONNECT_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->status_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->STATUS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->ip_block_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->IP_BLOCK_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->performance_warning:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PERFORMANCE_WARNING:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->dht_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->DHT_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->session_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->SESSION_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->torrent_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->TORRENT_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->peer_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PEER_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->incoming_request_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->INCOMING_REQUEST_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->dht_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->DHT_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->dht_operation_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->DHT_OPERATION_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->port_mapping_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PORT_MAPPING_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->picker_log_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PICKER_LOG_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->file_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->FILE_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->piece_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->PIECE_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->upload_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->UPLOAD_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->block_progress_notification:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->BLOCK_PROGRESS_NOTIFICATION:Lorg/libtorrent4j/swig/alert_category_t;

    sget-object v0, Lorg/libtorrent4j/swig/alert;->all_categories:Lorg/libtorrent4j/swig/alert_category_t;

    sput-object v0, Lorg/libtorrent4j/alerts/Alert;->ALL_CATEGORIES:Lorg/libtorrent4j/swig/alert_category_t;

    return-void
.end method


# virtual methods
.method public abstract category()Lorg/libtorrent4j/swig/alert_category_t;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract swig()Lorg/libtorrent4j/swig/alert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract timestamp()J
.end method

.method public abstract type()Lorg/libtorrent4j/alerts/AlertType;
.end method

.method public abstract what()Ljava/lang/String;
.end method
