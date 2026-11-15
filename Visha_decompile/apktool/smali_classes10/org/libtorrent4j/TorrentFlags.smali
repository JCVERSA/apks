.class public final Lorg/libtorrent4j/TorrentFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final APPLY_IP_FILTER:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final DEFAULT_DONT_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final DISABLE_DHT:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final DISABLE_LSD:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final DISABLE_PEX:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final DUPLICATE_IS_ERROR:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final I2P_TORRENT:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final NEED_SAVE_RESUME:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final NO_VERIFY_FILES:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final SEED_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final SHARE_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final STOP_WHEN_READY:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final SUPER_SEEDING:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final UPDATE_SUBSCRIBE:Lorg/libtorrent4j/swig/torrent_flags_t;

.field public static final UPLOAD_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getSeed_mode()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->SEED_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getUpload_mode()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->UPLOAD_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getShare_mode()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->SHARE_MODE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getApply_ip_filter()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->APPLY_IP_FILTER:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getPaused()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getAuto_managed()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getDuplicate_is_error()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->DUPLICATE_IS_ERROR:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getUpdate_subscribe()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->UPDATE_SUBSCRIBE:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getSuper_seeding()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->SUPER_SEEDING:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getSequential_download()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getStop_when_ready()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->STOP_WHEN_READY:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getNeed_save_resume()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->NEED_SAVE_RESUME:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getDisable_dht()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->DISABLE_DHT:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getDisable_lsd()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->DISABLE_LSD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getDisable_pex()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->DISABLE_PEX:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getNo_verify_files()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->NO_VERIFY_FILES:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getDefault_dont_download()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->DEFAULT_DONT_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getI2p_torrent()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->I2P_TORRENT:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->getAll()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentFlags;->ALL:Lorg/libtorrent4j/swig/torrent_flags_t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
