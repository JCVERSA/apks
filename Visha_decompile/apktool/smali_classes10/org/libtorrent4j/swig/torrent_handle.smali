.class public Lorg/libtorrent4j/swig/torrent_handle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final alert_when_available:Lorg/libtorrent4j/swig/deadline_flags_t;

.field public static final flush_disk_cache:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final graceful_pause:Lorg/libtorrent4j/swig/pause_flags_t;

.field public static final high_priority:Lorg/libtorrent4j/swig/reannounce_flags_t;

.field public static final if_config_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final if_counters_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final if_download_progress:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final if_metadata_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final if_state_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final ignore_min_interval:Lorg/libtorrent4j/swig/reannounce_flags_t;

.field public static final only_if_modified:Lorg/libtorrent4j/swig/resume_data_flags_t;

.field public static final overwrite_existing:Lorg/libtorrent4j/swig/add_piece_flags_t;

.field public static final piece_granularity:Lorg/libtorrent4j/swig/file_progress_flags_t;

.field public static final query_accurate_download_counters:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_distributed_copies:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_last_seen_complete:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_name:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_pieces:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_save_path:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_torrent_file:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final query_verified_pieces:Lorg/libtorrent4j/swig/status_flags_t;

.field public static final save_info_dict:Lorg/libtorrent4j/swig/resume_data_flags_t;


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/add_piece_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_overwrite_existing_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/add_piece_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->overwrite_existing:Lorg/libtorrent4j/swig/add_piece_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_distributed_copies_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_distributed_copies:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_accurate_download_counters_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_accurate_download_counters:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_last_seen_complete_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_last_seen_complete:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_pieces_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_pieces:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_verified_pieces_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_verified_pieces:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_torrent_file_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_torrent_file:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_name_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_name:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/status_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_query_save_path_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/status_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->query_save_path:Lorg/libtorrent4j/swig/status_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/deadline_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_alert_when_available_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/deadline_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->alert_when_available:Lorg/libtorrent4j/swig/deadline_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/file_progress_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_piece_granularity_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/file_progress_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->piece_granularity:Lorg/libtorrent4j/swig/file_progress_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/pause_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_graceful_pause_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/pause_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->graceful_pause:Lorg/libtorrent4j/swig/pause_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_flush_disk_cache_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->flush_disk_cache:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_save_info_dict_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->save_info_dict:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_if_counters_changed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->if_counters_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_if_download_progress_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->if_download_progress:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_if_config_changed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->if_config_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_if_state_changed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->if_state_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_if_metadata_changed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->if_metadata_changed:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_only_if_modified_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->only_if_modified:Lorg/libtorrent4j/swig/resume_data_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/reannounce_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_ignore_min_interval_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/reannounce_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->ignore_min_interval:Lorg/libtorrent4j/swig/reannounce_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/reannounce_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_high_priority_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/reannounce_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/torrent_handle;->high_priority:Lorg/libtorrent4j/swig/reannounce_flags_t;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/torrent_handle;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->delete()V

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
.method public add_piece_bytes(ILorg/libtorrent4j/swig/byte_vector;)V
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_add_piece_bytes__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public add_piece_bytes(ILorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/add_piece_flags_t;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/libtorrent4j/swig/add_piece_flags_t;->getCPtr(Lorg/libtorrent4j/swig/add_piece_flags_t;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_add_piece_bytes__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/add_piece_flags_t;)V

    return-void
.end method

.method public add_tracker(Lorg/libtorrent4j/swig/announce_entry;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/announce_entry;->getCPtr(Lorg/libtorrent4j/swig/announce_entry;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_add_tracker(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/announce_entry;)V

    return-void
.end method

.method public add_url_seed(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_add_url_seed(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V

    return-void
.end method

.method public clear_error()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_clear_error(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public clear_peers()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_clear_peers(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public clear_piece_deadlines()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_clear_piece_deadlines(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public connect_peer(Lorg/libtorrent4j/swig/tcp_endpoint;)V
    .locals 6

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_connect_peer__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method

.method public connect_peer(Lorg/libtorrent4j/swig/tcp_endpoint;Lorg/libtorrent4j/swig/peer_source_flags_t;)V
    .locals 9

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/peer_source_flags_t;->getCPtr(Lorg/libtorrent4j/swig/peer_source_flags_t;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_connect_peer__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/peer_source_flags_t;)V

    return-void
.end method

.method public connect_peer(Lorg/libtorrent4j/swig/tcp_endpoint;Lorg/libtorrent4j/swig/peer_source_flags_t;Lorg/libtorrent4j/swig/pex_flags_t;)V
    .locals 12

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/peer_source_flags_t;->getCPtr(Lorg/libtorrent4j/swig/peer_source_flags_t;)J

    move-result-wide v6

    invoke-static {p3}, Lorg/libtorrent4j/swig/pex_flags_t;->getCPtr(Lorg/libtorrent4j/swig/pex_flags_t;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_connect_peer__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_torrent_handle(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J
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

.method public download_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_download_limit(JLorg/libtorrent4j/swig/torrent_handle;)I

    move-result p0

    return p0
.end method

.method public eq(Lorg/libtorrent4j/swig/torrent_handle;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_eq(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public file_priority_ex(I)B
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_priority_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)B

    move-result p0

    return p0
.end method

.method public file_priority_ex(IB)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_priority_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IB)V

    return-void
.end method

.method public file_progress()Lorg/libtorrent4j/swig/int64_vector;
    .locals 3

    .line 4
    new-instance v0, Lorg/libtorrent4j/swig/int64_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_progress__SWIG_3(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/int64_vector;-><init>(JZ)V

    return-object v0
.end method

.method public file_progress(Lorg/libtorrent4j/swig/file_progress_flags_t;)Lorg/libtorrent4j/swig/int64_vector;
    .locals 7

    .line 3
    new-instance v0, Lorg/libtorrent4j/swig/int64_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/file_progress_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_progress_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_progress__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/file_progress_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/int64_vector;-><init>(JZ)V

    return-object v0
.end method

.method public file_progress(Lorg/libtorrent4j/swig/int64_vector;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int64_vector;->getCPtr(Lorg/libtorrent4j/swig/int64_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_progress__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int64_vector;)V

    return-void
.end method

.method public file_progress(Lorg/libtorrent4j/swig/int64_vector;Lorg/libtorrent4j/swig/file_progress_flags_t;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int64_vector;->getCPtr(Lorg/libtorrent4j/swig/int64_vector;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/file_progress_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_progress_flags_t;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_file_progress__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int64_vector;JLorg/libtorrent4j/swig/file_progress_flags_t;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->delete()V

    return-void
.end method

.method public flags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/torrent_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_flags(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/torrent_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public flush_cache()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_flush_cache(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public force_dht_announce()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_dht_announce(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public force_lsd_announce()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_lsd_announce(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public force_reannounce()V
    .locals 2

    .line 7
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_6(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public force_reannounce(I)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_5(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public force_reannounce(II)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;II)V

    return-void
.end method

.method public force_reannounce(IILorg/libtorrent4j/swig/reannounce_flags_t;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p3}, Lorg/libtorrent4j/swig/reannounce_flags_t;->getCPtr(Lorg/libtorrent4j/swig/reannounce_flags_t;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IIJLorg/libtorrent4j/swig/reannounce_flags_t;)V

    return-void
.end method

.method public force_reannounce(ILjava/lang/String;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_3(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;)V

    return-void
.end method

.method public force_reannounce(ILjava/lang/String;Lorg/libtorrent4j/swig/reannounce_flags_t;)V
    .locals 8

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p3}, Lorg/libtorrent4j/swig/reannounce_flags_t;->getCPtr(Lorg/libtorrent4j/swig/reannounce_flags_t;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;JLorg/libtorrent4j/swig/reannounce_flags_t;)V

    return-void
.end method

.method public force_reannounce(ILorg/libtorrent4j/swig/reannounce_flags_t;)V
    .locals 7

    .line 5
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/reannounce_flags_t;->getCPtr(Lorg/libtorrent4j/swig/reannounce_flags_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_reannounce__SWIG_4(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/reannounce_flags_t;)V

    return-void
.end method

.method public force_recheck()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_force_recheck(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public get_download_queue()Lorg/libtorrent4j/swig/partial_piece_info_vector;
    .locals 3

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/partial_piece_info_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_download_queue__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/partial_piece_info_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_download_queue(Lorg/libtorrent4j/swig/partial_piece_info_vector;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/partial_piece_info_vector;->getCPtr(Lorg/libtorrent4j/swig/partial_piece_info_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_download_queue__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/partial_piece_info_vector;)V

    return-void
.end method

.method public get_file_priorities_ex()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_file_priorities_ex(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_peer_info(Lorg/libtorrent4j/swig/peer_info_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/peer_info_vector;->getCPtr(Lorg/libtorrent4j/swig/peer_info_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_peer_info(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/peer_info_vector;)V

    return-void
.end method

.method public get_piece_priorities_ex()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_piece_priorities_ex(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_resume_data()Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public get_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/resume_data_flags_t;->getCPtr(Lorg/libtorrent4j/swig/resume_data_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public get_url_seeds()Lorg/libtorrent4j/swig/string_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_get_url_seeds(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/string_vector;-><init>(JZ)V

    return-object v0
.end method

.method public have_piece(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_have_piece(JLorg/libtorrent4j/swig/torrent_handle;I)Z

    move-result p0

    return p0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_id(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public in_session()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_in_session(JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public info_hash()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_info_hash(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public info_hashes()Lorg/libtorrent4j/swig/info_hash_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/info_hash_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_info_hashes(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-object v0
.end method

.method public is_valid()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_is_valid(JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public lt(Lorg/libtorrent4j/swig/torrent_handle;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_lt(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public max_connections()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_max_connections(JLorg/libtorrent4j/swig/torrent_handle;)I

    move-result p0

    return p0
.end method

.method public max_uploads()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_max_uploads(JLorg/libtorrent4j/swig/torrent_handle;)I

    move-result p0

    return p0
.end method

.method public move_storage(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_move_storage__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V

    return-void
.end method

.method public move_storage(Ljava/lang/String;Lorg/libtorrent4j/swig/move_flags_t;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/move_flags_t;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_move_storage__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;I)V

    return-void
.end method

.method public ne(Lorg/libtorrent4j/swig/torrent_handle;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_ne(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public need_save_resume_data()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_need_save_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;)Z

    move-result p0

    return p0
.end method

.method public need_save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)Z
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/resume_data_flags_t;->getCPtr(Lorg/libtorrent4j/swig/resume_data_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_need_save_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_pause__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public pause(Lorg/libtorrent4j/swig/pause_flags_t;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/pause_flags_t;->getCPtr(Lorg/libtorrent4j/swig/pause_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_pause__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/pause_flags_t;)V

    return-void
.end method

.method public piece_availability(Lorg/libtorrent4j/swig/int_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_vector;->getCPtr(Lorg/libtorrent4j/swig/int_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_piece_availability(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int_vector;)V

    return-void
.end method

.method public piece_layers()Lorg/libtorrent4j/swig/sha256_hash_vector_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha256_hash_vector_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_piece_layers(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha256_hash_vector_vector;-><init>(JZ)V

    return-object v0
.end method

.method public piece_priority_ex(I)B
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_piece_priority_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)B

    move-result p0

    return p0
.end method

.method public piece_priority_ex(IB)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_piece_priority_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IB)V

    return-void
.end method

.method public post_download_queue()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_download_queue(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public post_file_progress(Lorg/libtorrent4j/swig/file_progress_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/file_progress_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_progress_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_file_progress(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/file_progress_flags_t;)V

    return-void
.end method

.method public post_peer_info()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_peer_info(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public post_piece_availability()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_piece_availability(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public post_status()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public post_status(Lorg/libtorrent4j/swig/status_flags_t;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/status_flags_t;->getCPtr(Lorg/libtorrent4j/swig/status_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_status__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/status_flags_t;)V

    return-void
.end method

.method public post_trackers()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_post_trackers(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public prioritize_files_ex(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_prioritize_files_ex(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public prioritize_pieces_ex(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_prioritize_pieces_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public prioritize_pieces_ex(Lorg/libtorrent4j/swig/int_byte_pair_vector;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_byte_pair_vector;->getCPtr(Lorg/libtorrent4j/swig/int_byte_pair_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_prioritize_pieces_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int_byte_pair_vector;)V

    return-void
.end method

.method public queue_position_bottom()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_bottom(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public queue_position_down()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_down(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public queue_position_ex()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_ex(JLorg/libtorrent4j/swig/torrent_handle;)I

    move-result p0

    return p0
.end method

.method public queue_position_set_ex(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_set_ex(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public queue_position_top()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_top(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public queue_position_up()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_queue_position_up(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public read_piece(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_read_piece(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public remove_url_seed(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_remove_url_seed(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V

    return-void
.end method

.method public rename_file(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_rename_file(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;)V

    return-void
.end method

.method public replace_trackers(Lorg/libtorrent4j/swig/announce_entry_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/announce_entry_vector;->getCPtr(Lorg/libtorrent4j/swig/announce_entry_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_replace_trackers(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/announce_entry_vector;)V

    return-void
.end method

.method public reset_piece_deadline(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_reset_piece_deadline(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_resume(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public save_resume_data()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_save_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/resume_data_flags_t;->getCPtr(Lorg/libtorrent4j/swig/resume_data_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_save_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)V

    return-void
.end method

.method public scrape_tracker()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_scrape_tracker__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public scrape_tracker(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_scrape_tracker__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public scrape_tracker(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_scrape_tracker__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V

    return-void
.end method

.method public set_download_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_download_limit(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public set_flags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_flags__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public set_flags(Lorg/libtorrent4j/swig/torrent_flags_t;Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_flags__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public set_max_connections(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_max_connections(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public set_max_uploads(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_max_uploads(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public set_piece_deadline(II)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_piece_deadline__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;II)V

    return-void
.end method

.method public set_piece_deadline(IILorg/libtorrent4j/swig/deadline_flags_t;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p3}, Lorg/libtorrent4j/swig/deadline_flags_t;->getCPtr(Lorg/libtorrent4j/swig/deadline_flags_t;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_piece_deadline__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IIJLorg/libtorrent4j/swig/deadline_flags_t;)V

    return-void
.end method

.method public set_sequential_range(I)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_sequential_range__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public set_sequential_range(II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_sequential_range__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;II)V

    return-void
.end method

.method public set_ssl_certificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_ssl_certificate__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set_ssl_certificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_ssl_certificate__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set_ssl_certificate_buffer_ex(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 12

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v6

    invoke-static {p3}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_ssl_certificate_buffer_ex(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public set_upload_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_set_upload_limit(JLorg/libtorrent4j/swig/torrent_handle;I)V

    return-void
.end method

.method public status()Lorg/libtorrent4j/swig/torrent_status;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/torrent_status;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/torrent_status;-><init>(JZ)V

    return-object v0
.end method

.method public status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/swig/torrent_status;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/torrent_status;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/status_flags_t;->getCPtr(Lorg/libtorrent4j/swig/status_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_status__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/status_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/torrent_status;-><init>(JZ)V

    return-object v0
.end method

.method public torrent_file_ptr()Lorg/libtorrent4j/swig/torrent_info;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_torrent_file_ptr(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_info;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_info;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public trackers()Lorg/libtorrent4j/swig/announce_entry_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/announce_entry_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_trackers(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/announce_entry_vector;-><init>(JZ)V

    return-object v0
.end method

.method public unset_flags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_unset_flags(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public upload_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_upload_limit(JLorg/libtorrent4j/swig/torrent_handle;)I

    move-result p0

    return p0
.end method

.method public userdata()Lorg/libtorrent4j/swig/client_data_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/client_data_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_handle_userdata(JLorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/client_data_t;-><init>(JZ)V

    return-object v0
.end method
