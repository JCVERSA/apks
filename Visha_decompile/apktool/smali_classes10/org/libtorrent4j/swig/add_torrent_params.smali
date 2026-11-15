.class public Lorg/libtorrent4j/swig/add_torrent_params;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_add_torrent_params__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/add_torrent_params;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->swigRelease(Lorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_add_torrent_params__SWIG_1(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/add_torrent_params;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static load_torrent_buffer(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 7

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_buffer__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_buffer(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/load_torrent_limits;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 10

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    invoke-static {p2}, Lorg/libtorrent4j/swig/load_torrent_limits;->getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide v7

    move-object v3, p0

    move-object v6, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_buffer__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_file(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_file__SWIG_1(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_file(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/load_torrent_limits;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 8

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v2

    invoke-static {p2}, Lorg/libtorrent4j/swig/load_torrent_limits;->getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_file__SWIG_0(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_native_buffer(JILorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 7

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p3}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    move-wide v1, p0

    move v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_native_buffer__SWIG_1(JIJLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_native_buffer(JILorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/load_torrent_limits;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 10

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p3}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    invoke-static {p4}, Lorg/libtorrent4j/swig/load_torrent_limits;->getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide v7

    move-wide v1, p0

    move v3, p2

    move-object v6, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_native_buffer__SWIG_0(JIJLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_parsed(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 7

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_parsed__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static load_torrent_parsed(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/load_torrent_limits;)Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 10

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    invoke-static {p2}, Lorg/libtorrent4j/swig/load_torrent_limits;->getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide v7

    move-object v3, p0

    move-object v6, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_load_torrent_parsed__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    return-object v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/add_torrent_params;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_add_torrent_params(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->delete()V

    return-void
.end method

.method public getActive_time()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_active_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getAdded_time()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_added_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBanned_peers()Lorg/libtorrent4j/swig/tcp_endpoint_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_banned_peers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_comment_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCompleted_time()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_completed_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreated_by()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_created_by_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreation_date()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_creation_date_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDht_nodes()Lorg/libtorrent4j/swig/string_int_pair_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_dht_nodes_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/string_int_pair_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/string_int_pair_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getDownload_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_download_limit_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getFinished_time()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_finished_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_flags_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

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

.method public getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_info_hashes_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

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

.method public getLast_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_download_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLast_seen_complete()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_seen_complete_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLast_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_upload_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax_connections()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_max_connections_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getMax_uploads()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_max_uploads_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_name_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNum_complete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_complete_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getNum_downloaded()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_downloaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getNum_incomplete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_incomplete_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getPart_file_dir()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_part_file_dir_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPeers()Lorg/libtorrent4j/swig/tcp_endpoint_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_peers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getSave_path()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_save_path_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeeding_time()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_seeding_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getStorage_mode()Lorg/libtorrent4j/swig/storage_mode_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_storage_mode_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/storage_mode_t;->swigToEnum(I)Lorg/libtorrent4j/swig/storage_mode_t;

    move-result-object p0

    return-object p0
.end method

.method public getTotal_downloaded()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_total_downloaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_uploaded()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_total_uploaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTracker_tiers()Lorg/libtorrent4j/swig/int_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_tracker_tiers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/int_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/int_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getTrackerid()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_trackerid_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTrackers()Lorg/libtorrent4j/swig/string_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_trackers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/string_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/string_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getUpload_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_upload_limit_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public getUrl_seeds()Lorg/libtorrent4j/swig/string_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_url_seeds_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/string_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/string_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getUserdata()Lorg/libtorrent4j/swig/client_data_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_userdata_get(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/client_data_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/client_data_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getVersion()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_version_get(JLorg/libtorrent4j/swig/add_torrent_params;)I

    move-result p0

    return p0
.end method

.method public get_file_priorities()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_file_priorities(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_have_pieces()Lorg/libtorrent4j/swig/bitfield;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_have_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield;-><init>(JZ)V

    return-object v0
.end method

.method public get_merkle_tree_mask()Lorg/libtorrent4j/swig/bitfield_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_merkle_tree_mask(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_merkle_trees()Lorg/libtorrent4j/swig/sha256_hash_vector_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha256_hash_vector_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_merkle_trees(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha256_hash_vector_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_piece_priorities()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_piece_priorities(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_renamed_files()Lorg/libtorrent4j/swig/int_string_map;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/int_string_map;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_renamed_files(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/int_string_map;-><init>(JZ)V

    return-object v0
.end method

.method public get_unfinished_pieces()Lorg/libtorrent4j/swig/int_bitfield_map;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/int_bitfield_map;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_unfinished_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/int_bitfield_map;-><init>(JZ)V

    return-object v0
.end method

.method public get_verified_leaf_hashes()Lorg/libtorrent4j/swig/bitfield_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_verified_leaf_hashes(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_verified_pieces()Lorg/libtorrent4j/swig/bitfield;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_get_verified_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield;-><init>(JZ)V

    return-object v0
.end method

.method public setActive_time(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_active_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setAdded_time(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_added_time_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setBanned_peers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_banned_peers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_comment_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setCompleted_time(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_completed_time_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setCreated_by(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_created_by_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setCreation_date(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_creation_date_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setDht_nodes(Lorg/libtorrent4j/swig/string_int_pair_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_int_pair_vector;->getCPtr(Lorg/libtorrent4j/swig/string_int_pair_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_dht_nodes_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_int_pair_vector;)V

    return-void
.end method

.method public setDownload_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_download_limit_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setFinished_time(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_finished_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->getCPtr(Lorg/libtorrent4j/swig/torrent_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_flags_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public setInfo_hashes(Lorg/libtorrent4j/swig/info_hash_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_info_hashes_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/info_hash_t;)V

    return-void
.end method

.method public setLast_download(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_download_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setLast_seen_complete(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_seen_complete_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setLast_upload(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_last_upload_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setMax_connections(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_max_connections_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setMax_uploads(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_max_uploads_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_name_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setNum_complete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_complete_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setNum_downloaded(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_downloaded_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setNum_incomplete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_num_incomplete_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setPart_file_dir(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_part_file_dir_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setPeers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_peers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    return-void
.end method

.method public setSave_path(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_save_path_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setSeeding_time(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_seeding_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setStorage_mode(Lorg/libtorrent4j/swig/storage_mode_t;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_storage_mode_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setTotal_downloaded(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_total_downloaded_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setTotal_uploaded(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_total_uploaded_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V

    return-void
.end method

.method public setTracker_tiers(Lorg/libtorrent4j/swig/int_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_vector;->getCPtr(Lorg/libtorrent4j/swig/int_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_tracker_tiers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_vector;)V

    return-void
.end method

.method public setTrackerid(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_trackerid_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V

    return-void
.end method

.method public setTrackers(Lorg/libtorrent4j/swig/string_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_vector;->getCPtr(Lorg/libtorrent4j/swig/string_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_trackers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_vector;)V

    return-void
.end method

.method public setUpload_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_upload_limit_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public setUrl_seeds(Lorg/libtorrent4j/swig/string_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_vector;->getCPtr(Lorg/libtorrent4j/swig/string_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_url_seeds_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_vector;)V

    return-void
.end method

.method public setUserdata(Lorg/libtorrent4j/swig/client_data_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/client_data_t;->getCPtr(Lorg/libtorrent4j/swig/client_data_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_userdata_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/client_data_t;)V

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_version_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V

    return-void
.end method

.method public set_file_priorities(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_file_priorities(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public set_have_pieces(Lorg/libtorrent4j/swig/bitfield;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bitfield;->getCPtr(Lorg/libtorrent4j/swig/bitfield;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_have_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield;)V

    return-void
.end method

.method public set_merkle_tree_mask(Lorg/libtorrent4j/swig/bitfield_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bitfield_vector;->getCPtr(Lorg/libtorrent4j/swig/bitfield_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_merkle_tree_mask(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield_vector;)V

    return-void
.end method

.method public set_merkle_trees(Lorg/libtorrent4j/swig/sha256_hash_vector_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha256_hash_vector_vector;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash_vector_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_merkle_trees(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)V

    return-void
.end method

.method public set_piece_priorities(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_piece_priorities(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public set_renamed_files(Lorg/libtorrent4j/swig/int_string_map;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_string_map;->getCPtr(Lorg/libtorrent4j/swig/int_string_map;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_renamed_files(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_string_map;)V

    return-void
.end method

.method public set_ti(Lorg/libtorrent4j/swig/torrent_info;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_info;->getCPtr(Lorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_ti(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/torrent_info;)V

    return-void
.end method

.method public set_unfinished_pieces(Lorg/libtorrent4j/swig/int_bitfield_map;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_bitfield_map;->getCPtr(Lorg/libtorrent4j/swig/int_bitfield_map;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_unfinished_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_bitfield_map;)V

    return-void
.end method

.method public set_verified_leaf_hashes(Lorg/libtorrent4j/swig/bitfield_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bitfield_vector;->getCPtr(Lorg/libtorrent4j/swig/bitfield_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_verified_leaf_hashes(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield_vector;)V

    return-void
.end method

.method public set_verified_pieces(Lorg/libtorrent4j/swig/bitfield;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bitfield;->getCPtr(Lorg/libtorrent4j/swig/bitfield;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_set_verified_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield;)V

    return-void
.end method

.method public ti_ptr()Lorg/libtorrent4j/swig/torrent_info;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_params_ti_ptr(JLorg/libtorrent4j/swig/add_torrent_params;)J

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
