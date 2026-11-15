.class public Lorg/libtorrent4j/swig/torrent_status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/torrent_status$state_t;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_torrent_status__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_status;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_status;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_status;->getCPtr(Lorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_torrent_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/torrent_status;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/torrent_status;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getError_file_exception()I
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_exception_get()I

    move-result v0

    return v0
.end method

.method public static getError_file_metadata()I
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_metadata_get()I

    move-result v0

    return v0
.end method

.method public static getError_file_none()I
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_none_get()I

    move-result v0

    return v0
.end method

.method public static getError_file_partfile()I
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_partfile_get()I

    move-result v0

    return v0
.end method

.method public static getError_file_ssl_ctx()I
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_ssl_ctx_get()I

    move-result v0

    return v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/torrent_status;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->delete()V

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
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_torrent_status(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J
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

.method public eq(Lorg/libtorrent4j/swig/torrent_status;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_status;->getCPtr(Lorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_eq(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->delete()V

    return-void
.end method

.method public getAdded_time()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_added_time_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAll_time_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_all_time_download_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAll_time_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_all_time_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAnnouncing_to_dht()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_dht_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getAnnouncing_to_lsd()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_lsd_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getAnnouncing_to_trackers()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_trackers_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getBlock_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_block_size_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getCompleted_time()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_completed_time_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnect_candidates()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_connect_candidates_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getConnections_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_connections_limit_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getCurrent_tracker()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_current_tracker_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDistributed_copies()F
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_copies_get(JLorg/libtorrent4j/swig/torrent_status;)F

    move-result p0

    return p0
.end method

.method public getDistributed_fraction()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_fraction_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getDistributed_full_copies()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_full_copies_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getDown_bandwidth_queue()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_down_bandwidth_queue_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getDownload_payload_rate()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_download_payload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getDownload_rate()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_download_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getErrc()Lorg/libtorrent4j/swig/error_code;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_errc_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/error_code;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/error_code;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getError_file()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_flags_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getHandle()Lorg/libtorrent4j/swig/torrent_handle;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_handle_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/torrent_handle;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/torrent_handle;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getHas_incoming()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_has_incoming_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getHas_metadata()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_has_metadata_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_info_hashes_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/info_hash_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getIs_finished()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_is_finished_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getIs_seeding()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_is_seeding_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getLast_seen_complete()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_last_seen_complete_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getList_peers()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_list_peers_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getList_seeds()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_list_seeds_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getMoving_storage()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_moving_storage_get(JLorg/libtorrent4j/swig/torrent_status;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_name_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNeed_save_resume_data()Lorg/libtorrent4j/swig/resume_data_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_need_save_resume_data_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/resume_data_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/resume_data_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getNum_complete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_complete_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_connections()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_connections_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_incomplete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_incomplete_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_peers()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_peers_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_pieces_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_seeds()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_seeds_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getNum_uploads()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_uploads_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getProgress()F
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_progress_get(JLorg/libtorrent4j/swig/torrent_status;)F

    move-result p0

    return p0
.end method

.method public getProgress_ppm()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_progress_ppm_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getSave_path()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_save_path_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeed_rank()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_seed_rank_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getState()Lorg/libtorrent4j/swig/torrent_status$state_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_state_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigToEnum(I)Lorg/libtorrent4j/swig/torrent_status$state_t;

    move-result-object p0

    return-object p0
.end method

.method public getStorage_mode()Lorg/libtorrent4j/swig/storage_mode_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_storage_mode_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/storage_mode_t;->swigToEnum(I)Lorg/libtorrent4j/swig/storage_mode_t;

    move-result-object p0

    return-object p0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_done()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_done_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_download_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_failed_bytes()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_failed_bytes_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_payload_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_payload_download_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_payload_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_payload_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_redundant_bytes()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_redundant_bytes_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_wanted()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_wanted_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_wanted_done()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_wanted_done_get(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUp_bandwidth_queue()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_up_bandwidth_queue_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getUpload_payload_rate()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_upload_payload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getUpload_rate()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_upload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public getUploads_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_uploads_limit_get(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public get_active_duration()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_active_duration(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_finished_duration()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_finished_duration(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_last_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_last_download(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_last_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_last_upload(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_next_announce()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_next_announce(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_pieces()Lorg/libtorrent4j/swig/bitfield;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_pieces(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield;-><init>(JZ)V

    return-object v0
.end method

.method public get_queue_position()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_queue_position(JLorg/libtorrent4j/swig/torrent_status;)I

    move-result p0

    return p0
.end method

.method public get_seeding_duration()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_seeding_duration(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_verified_pieces()Lorg/libtorrent4j/swig/bitfield;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_get_verified_pieces(JLorg/libtorrent4j/swig/torrent_status;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield;-><init>(JZ)V

    return-object v0
.end method

.method public setAdded_time(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_added_time_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setAll_time_download(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_all_time_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setAll_time_upload(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_all_time_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setAnnouncing_to_dht(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_dht_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setAnnouncing_to_lsd(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_lsd_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setAnnouncing_to_trackers(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_announcing_to_trackers_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setBlock_size(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_block_size_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setCompleted_time(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_completed_time_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setConnect_candidates(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_connect_candidates_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setConnections_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_connections_limit_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setCurrent_tracker(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_current_tracker_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V

    return-void
.end method

.method public setDistributed_copies(F)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_copies_set(JLorg/libtorrent4j/swig/torrent_status;F)V

    return-void
.end method

.method public setDistributed_fraction(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_fraction_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setDistributed_full_copies(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_distributed_full_copies_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setDown_bandwidth_queue(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_down_bandwidth_queue_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setDownload_payload_rate(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_download_payload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setDownload_rate(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_download_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setErrc(Lorg/libtorrent4j/swig/error_code;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_errc_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/error_code;)V

    return-void
.end method

.method public setError_file(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_error_file_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_flags_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public setHandle(Lorg/libtorrent4j/swig/torrent_handle;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_handle_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public setHas_incoming(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_has_incoming_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setHas_metadata(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_has_metadata_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setInfo_hashes(Lorg/libtorrent4j/swig/info_hash_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_info_hashes_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/info_hash_t;)V

    return-void
.end method

.method public setIs_finished(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_is_finished_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setIs_seeding(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_is_seeding_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setLast_seen_complete(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_last_seen_complete_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setList_peers(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_list_peers_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setList_seeds(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_list_seeds_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setMoving_storage(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_moving_storage_set(JLorg/libtorrent4j/swig/torrent_status;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_name_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V

    return-void
.end method

.method public setNeed_save_resume_data(Lorg/libtorrent4j/swig/resume_data_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/resume_data_flags_t;->getCPtr(Lorg/libtorrent4j/swig/resume_data_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_need_save_resume_data_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/resume_data_flags_t;)V

    return-void
.end method

.method public setNum_complete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_complete_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_connections(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_connections_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_incomplete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_incomplete_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_peers(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_peers_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_pieces(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_pieces_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_seeds(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_seeds_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setNum_uploads(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_num_uploads_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_progress_set(JLorg/libtorrent4j/swig/torrent_status;F)V

    return-void
.end method

.method public setProgress_ppm(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_progress_ppm_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setSave_path(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_save_path_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V

    return-void
.end method

.method public setSeed_rank(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_seed_rank_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setState(Lorg/libtorrent4j/swig/torrent_status$state_t;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_state_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setStorage_mode(Lorg/libtorrent4j/swig/storage_mode_t;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_storage_mode_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setTotal(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_done(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_done_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_download(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_failed_bytes(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_failed_bytes_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_payload_download(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_payload_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_payload_upload(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_payload_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_redundant_bytes(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_redundant_bytes_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_upload(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_wanted(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_wanted_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setTotal_wanted_done(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_total_wanted_done_set(JLorg/libtorrent4j/swig/torrent_status;J)V

    return-void
.end method

.method public setUp_bandwidth_queue(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_up_bandwidth_queue_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setUpload_payload_rate(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_upload_payload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setUpload_rate(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_upload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public setUploads_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_uploads_limit_set(JLorg/libtorrent4j/swig/torrent_status;I)V

    return-void
.end method

.method public torrent_file_ptr()Lorg/libtorrent4j/swig/torrent_info;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_status;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_status_torrent_file_ptr(JLorg/libtorrent4j/swig/torrent_status;)J

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
