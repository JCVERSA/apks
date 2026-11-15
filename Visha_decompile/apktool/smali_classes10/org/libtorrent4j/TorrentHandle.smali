.class public final Lorg/libtorrent4j/TorrentHandle;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/torrent_handle;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALERT_WHEN_AVAILABLE:Lorg/libtorrent4j/swig/deadline_flags_t;

.field public static final FLUSH_DISK_CACHE:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final IGNORE_MIN_INTERVAL:Lorg/libtorrent4j/swig/reannounce_flags_t;

.field public static final ONLY_IF_MODIFIED:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final OVERWRITE_EXISTING:Lorg/libtorrent4j/swig/add_piece_flags_t;

.field public static final PIECE_GRANULARITY:Lorg/libtorrent4j/swig/file_progress_flags_t;

.field public static final QUERY_ACCURATE_DOWNLOAD_COUNTERS:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_DISTRIBUTED_COPIES:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_LAST_SEEN_COMPLETE:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_NAME:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_SAVE_PATH:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_TORRENT_FILE:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final QUERY_VERIFIED_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

.field private static final REQUEST_STATUS_RESOLUTION_MILLIS:J = 0x1f4L

.field public static final SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field private static final STATUS_FLAGS_ZERO:Lorg/libtorrent4j/swig/status_flags_t;


# instance fields
.field private lastStatus:Lorg/libtorrent4j/TorrentStatus;

.field private lastStatusRequestTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/status_flags_t;-><init>()V

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->STATUS_FLAGS_ZERO:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->overwrite_existing:Lorg/libtorrent4j/swig/add_piece_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->OVERWRITE_EXISTING:Lorg/libtorrent4j/swig/add_piece_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_distributed_copies:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_DISTRIBUTED_COPIES:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_accurate_download_counters:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_ACCURATE_DOWNLOAD_COUNTERS:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_last_seen_complete:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_LAST_SEEN_COMPLETE:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_pieces:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_verified_pieces:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_VERIFIED_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_torrent_file:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_TORRENT_FILE:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_name:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_NAME:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_save_path:Lorg/libtorrent4j/swig/status_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_SAVE_PATH:Lorg/libtorrent4j/swig/status_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->flush_disk_cache:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->FLUSH_DISK_CACHE:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->save_info_dict:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->only_if_modified:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->ONLY_IF_MODIFIED:Lorg/libtorrent4j/swig/resume_data_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->ignore_min_interval:Lorg/libtorrent4j/swig/reannounce_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->IGNORE_MIN_INTERVAL:Lorg/libtorrent4j/swig/reannounce_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->alert_when_available:Lorg/libtorrent4j/swig/deadline_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->ALERT_WHEN_AVAILABLE:Lorg/libtorrent4j/swig/deadline_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->piece_granularity:Lorg/libtorrent4j/swig/file_progress_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentHandle;->PIECE_GRANULARITY:Lorg/libtorrent4j/swig/file_progress_flags_t;

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_handle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static trackers(Lorg/libtorrent4j/swig/announce_entry_vector;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/announce_entry_vector;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/AnnounceEntry;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_entry_vector;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    new-instance v3, Lorg/libtorrent4j/AnnounceEntry;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/announce_entry_vector;->get(I)Lorg/libtorrent4j/swig/announce_entry;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/AnnounceEntry;-><init>(Lorg/libtorrent4j/swig/announce_entry;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addPiece(I[B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->add_piece_bytes(ILorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public addPiece(I[BLorg/libtorrent4j/swig/add_piece_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->add_piece_bytes(ILorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/add_piece_flags_t;)V

    return-void
.end method

.method public addTracker(Lorg/libtorrent4j/AnnounceEntry;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->add_tracker(Lorg/libtorrent4j/swig/announce_entry;)V

    return-void
.end method

.method public addUrlSeed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->add_url_seed(Ljava/lang/String;)V

    return-void
.end method

.method public clearPieceDeadlines()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->clear_piece_deadlines()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/libtorrent4j/TorrentHandle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    check-cast p1, Lorg/libtorrent4j/TorrentHandle;

    iget-object p1, p1, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->eq(Lorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public filePriorities()[Lorg/libtorrent4j/Priority;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->get_file_priorities_ex()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Priority;->vector2array(Lorg/libtorrent4j/swig/byte_vector;)[Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public filePriority(I)Lorg/libtorrent4j/Priority;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->file_priority_ex(I)B

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/Priority;->fromSwig(I)Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public filePriority(ILorg/libtorrent4j/Priority;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p2}, Lorg/libtorrent4j/Priority;->swig()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->file_priority_ex(IB)V

    return-void
.end method

.method public fileProgress()[J
    .locals 1

    .line 4
    new-instance v0, Lorg/libtorrent4j/swig/int64_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/int64_vector;-><init>()V

    .line 5
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->file_progress(Lorg/libtorrent4j/swig/int64_vector;)V

    .line 6
    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->int64_vector2longs(Lorg/libtorrent4j/swig/int64_vector;)[J

    move-result-object p0

    return-object p0
.end method

.method public fileProgress(Lorg/libtorrent4j/swig/file_progress_flags_t;)[J
    .locals 1

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/int64_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/int64_vector;-><init>()V

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->file_progress(Lorg/libtorrent4j/swig/int64_vector;Lorg/libtorrent4j/swig/file_progress_flags_t;)V

    .line 3
    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->int64_vector2longs(Lorg/libtorrent4j/swig/int64_vector;)[J

    move-result-object p0

    return-object p0
.end method

.method public flushCache()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->flush_cache()V

    return-void
.end method

.method public forceDHTAnnounce()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->force_dht_announce()V

    return-void
.end method

.method public forceLSDAnnounce()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->force_lsd_announce()V

    return-void
.end method

.method public forceReannounce()V
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce()V

    return-void
.end method

.method public forceReannounce(I)V
    .locals 0

    .line 5
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce(I)V

    return-void
.end method

.method public forceReannounce(II)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce(II)V

    return-void
.end method

.method public forceReannounce(IILorg/libtorrent4j/swig/reannounce_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce(IILorg/libtorrent4j/swig/reannounce_flags_t;)V

    return-void
.end method

.method public forceReannounce(ILjava/lang/String;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce(ILjava/lang/String;)V

    return-void
.end method

.method public forceReannounce(ILjava/lang/String;Lorg/libtorrent4j/swig/reannounce_flags_t;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->force_reannounce(ILjava/lang/String;Lorg/libtorrent4j/swig/reannounce_flags_t;)V

    return-void
.end method

.method public forceRecheck()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->force_recheck()V

    return-void
.end method

.method public getDownloadLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->download_limit()I

    move-result p0

    return p0
.end method

.method public getDownloadQueue()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/PartialPieceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/partial_piece_info_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/partial_piece_info_vector;-><init>()V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->get_download_queue(Lorg/libtorrent4j/swig/partial_piece_info_vector;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/partial_piece_info_vector;->size()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    new-instance v3, Lorg/libtorrent4j/PartialPieceInfo;

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/partial_piece_info_vector;->get(I)Lorg/libtorrent4j/swig/partial_piece_info;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/PartialPieceInfo;-><init>(Lorg/libtorrent4j/swig/partial_piece_info;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->flags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_name:Lorg/libtorrent4j/swig/status_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/swig/torrent_status;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUploadLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->upload_limit()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public havePiece(I)Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->have_piece(I)Z

    move-result p0

    return p0
.end method

.method public inSession()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->in_session()Z

    move-result p0

    return p0
.end method

.method public infoHash()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p0

    return p0
.end method

.method public makeMagnetUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->make_magnet_uri_from_torrent_handle(Lorg/libtorrent4j/swig/torrent_handle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public moveStorage(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->move_storage(Ljava/lang/String;)V

    return-void
.end method

.method public moveStorage(Ljava/lang/String;Lorg/libtorrent4j/MoveFlags;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p2}, Lorg/libtorrent4j/MoveFlags;->swig()Lorg/libtorrent4j/swig/move_flags_t;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->move_storage(Ljava/lang/String;Lorg/libtorrent4j/swig/move_flags_t;)V

    return-void
.end method

.method public needSaveResumeData()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->need_save_resume_data()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->pause()V

    return-void
.end method

.method public peerInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/PeerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lorg/libtorrent4j/swig/peer_info_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/peer_info_vector;-><init>()V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->get_peer_info(Lorg/libtorrent4j/swig/peer_info_vector;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/peer_info_vector;->size()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    new-instance v3, Lorg/libtorrent4j/PeerInfo;

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/peer_info_vector;->get(I)Lorg/libtorrent4j/swig/peer_info;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/PeerInfo;-><init>(Lorg/libtorrent4j/swig/peer_info;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public pieceAvailability()[I
    .locals 1

    new-instance v0, Lorg/libtorrent4j/swig/int_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/int_vector;-><init>()V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->piece_availability(Lorg/libtorrent4j/swig/int_vector;)V

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->int_vector2ints(Lorg/libtorrent4j/swig/int_vector;)[I

    move-result-object p0

    return-object p0
.end method

.method public piecePriorities()[Lorg/libtorrent4j/Priority;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->get_piece_priorities_ex()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Priority;->vector2array(Lorg/libtorrent4j/swig/byte_vector;)[Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public piecePriority(I)Lorg/libtorrent4j/Priority;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->piece_priority_ex(I)B

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/Priority;->fromSwig(I)Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public piecePriority(ILorg/libtorrent4j/Priority;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p2}, Lorg/libtorrent4j/Priority;->swig()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->piece_priority_ex(IB)V

    return-void
.end method

.method public prioritizeFiles([Lorg/libtorrent4j/Priority;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-static {p1}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->prioritize_files_ex(Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public prioritizePieces([Lorg/libtorrent4j/Priority;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-static {p1}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->prioritize_pieces_ex(Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public queuePosition()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_ex()I

    move-result p0

    return p0
.end method

.method public queuePositionBottom()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_bottom()V

    return-void
.end method

.method public queuePositionDown()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_down()V

    return-void
.end method

.method public queuePositionSet(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_set_ex(I)V

    return-void
.end method

.method public queuePositionTop()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_top()V

    return-void
.end method

.method public queuePositionUp()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->queue_position_up()V

    return-void
.end method

.method public readPiece(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->read_piece(I)V

    return-void
.end method

.method public removeUrlSeed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->remove_url_seed(Ljava/lang/String;)V

    return-void
.end method

.method public renameFile(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->rename_file(ILjava/lang/String;)V

    return-void
.end method

.method public replaceTrackers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/AnnounceEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/announce_entry_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/announce_entry_vector;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/AnnounceEntry;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/announce_entry;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/announce_entry_vector;->add(Lorg/libtorrent4j/swig/announce_entry;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->replace_trackers(Lorg/libtorrent4j/swig/announce_entry_vector;)V

    return-void
.end method

.method public resetPieceDeadline(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->reset_piece_deadline(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->resume()V

    return-void
.end method

.method public savePath()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_save_path:Lorg/libtorrent4j/swig/status_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/swig/torrent_status;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getSave_path()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveResumeData()V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->save_resume_data()V

    return-void
.end method

.method public saveResumeData(Lorg/libtorrent4j/swig/resume_data_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)V

    return-void
.end method

.method public scrapeTracker()V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->scrape_tracker()V

    return-void
.end method

.method public scrapeTracker(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->scrape_tracker(I)V

    return-void
.end method

.method public scrapeTracker(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->scrape_tracker(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadLimit(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_download_limit(I)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_flags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->set_flags(Lorg/libtorrent4j/swig/torrent_flags_t;Lorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public setPieceDeadline(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->set_piece_deadline(II)V

    return-void
.end method

.method public setPieceDeadline(IILorg/libtorrent4j/swig/deadline_flags_t;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->set_piece_deadline(IILorg/libtorrent4j/swig/deadline_flags_t;)V

    return-void
.end method

.method public setSequentialRange(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_sequential_range(I)V

    return-void
.end method

.method public setSequentialRange(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;->set_sequential_range(II)V

    return-void
.end method

.method public setSslCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->set_ssl_certificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSslCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/swig/torrent_handle;->set_ssl_certificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSslCertificateBuffer([B[B[B)V
    .locals 0

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-static {p3}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p3

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/torrent_handle;->set_ssl_certificate_buffer_ex(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public setUploadLimit(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_upload_limit(I)V

    return-void
.end method

.method public status()Lorg/libtorrent4j/TorrentStatus;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lorg/libtorrent4j/TorrentHandle;->status(Z)Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    return-object p0
.end method

.method public status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/TorrentStatus;
    .locals 1

    .line 7
    new-instance v0, Lorg/libtorrent4j/TorrentStatus;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/swig/torrent_status;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentStatus;-><init>(Lorg/libtorrent4j/swig/torrent_status;)V

    return-object v0
.end method

.method public status(Z)Lorg/libtorrent4j/TorrentStatus;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 2
    iget-wide v2, p0, Lorg/libtorrent4j/TorrentHandle;->lastStatusRequestTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    .line 3
    :cond_0
    iput-wide v0, p0, Lorg/libtorrent4j/TorrentHandle;->lastStatusRequestTime:J

    .line 4
    new-instance p1, Lorg/libtorrent4j/TorrentStatus;

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    sget-object v1, Lorg/libtorrent4j/TorrentHandle;->STATUS_FLAGS_ZERO:Lorg/libtorrent4j/swig/status_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/torrent_handle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/swig/torrent_status;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/libtorrent4j/TorrentStatus;-><init>(Lorg/libtorrent4j/swig/torrent_status;)V

    iput-object p1, p0, Lorg/libtorrent4j/TorrentHandle;->lastStatus:Lorg/libtorrent4j/TorrentStatus;

    .line 5
    :cond_1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentHandle;->lastStatus:Lorg/libtorrent4j/TorrentStatus;

    return-object p0
.end method

.method public torrentFile()Lorg/libtorrent4j/TorrentInfo;
    .locals 2

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->torrent_file_ptr()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lorg/libtorrent4j/TorrentInfo;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    :cond_1
    return-object v1
.end method

.method public trackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/AnnounceEntry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->trackers()Lorg/libtorrent4j/swig/announce_entry_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/TorrentHandle;->trackers(Lorg/libtorrent4j/swig/announce_entry_vector;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public unsetFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->unset_flags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public urlSeeds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->get_url_seeds()Lorg/libtorrent4j/swig/string_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->string_vector2list(Lorg/libtorrent4j/swig/string_vector;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
