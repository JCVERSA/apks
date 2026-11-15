.class public Lorg/libtorrent4j/swig/torrent_info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/info_hash_t;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_torrent_info__SWIG_0(JLorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/torrent_info;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_info;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_info;->getCPtr(Lorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_torrent_info__SWIG_1(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/torrent_info;-><init>(JZ)V

    return-void
.end method

.method public static create_torrent_info(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_info;
    .locals 7

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/torrent_info;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_create_torrent_info__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/torrent_info;-><init>(JZ)V

    return-object v0
.end method

.method public static create_torrent_info(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/load_torrent_limits;)Lorg/libtorrent4j/swig/torrent_info;
    .locals 10

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/torrent_info;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v4

    invoke-static {p2}, Lorg/libtorrent4j/swig/load_torrent_limits;->getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide v7

    move-object v3, p0

    move-object v6, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_create_torrent_info__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_info;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/torrent_info;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/torrent_info;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->delete()V

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
.method public blocks_per_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_blocks_per_piece(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public collections()Lorg/libtorrent4j/swig/string_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_collections(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/string_vector;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_torrent_info(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J
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

.method public end_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_end_piece(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public files_impl()Lorg/libtorrent4j/swig/file_storage;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/file_storage;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_files_impl(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/file_storage;-><init>(JZ)V

    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->delete()V

    return-void
.end method

.method public get_info_section()Lorg/libtorrent4j/swig/byte_span;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_span;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_get_info_section(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_span;-><init>(JZ)V

    return-object v0
.end method

.method public hash_for_piece(I)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_hash_for_piece(JLorg/libtorrent4j/swig/torrent_info;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_info(JLorg/libtorrent4j/swig/torrent_info;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public info_hash()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_info_hash(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public info_hashes()Lorg/libtorrent4j/swig/info_hash_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/info_hash_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_info_hashes(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-object v0
.end method

.method public internal_set_collections(Lorg/libtorrent4j/swig/string_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_vector;->getCPtr(Lorg/libtorrent4j/swig/string_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_internal_set_collections(JLorg/libtorrent4j/swig/torrent_info;JLorg/libtorrent4j/swig/string_vector;)V

    return-void
.end method

.method public internal_set_similar(Lorg/libtorrent4j/swig/sha1_hash_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash_vector;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_internal_set_similar(JLorg/libtorrent4j/swig/torrent_info;JLorg/libtorrent4j/swig/sha1_hash_vector;)V

    return-void
.end method

.method public is_i2p()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_is_i2p(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method

.method public is_loaded()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_is_loaded(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method

.method public is_valid()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_is_valid(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method

.method public last_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_last_piece(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public layout()Lorg/libtorrent4j/swig/file_storage;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/file_storage;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_layout(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/file_storage;-><init>(JZ)V

    return-object v0
.end method

.method public map_block(IJI)Lorg/libtorrent4j/swig/file_slice_vector;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/file_slice_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_map_block(JLorg/libtorrent4j/swig/torrent_info;IJI)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/file_slice_vector;-><init>(JZ)V

    return-object v0
.end method

.method public map_file(IJI)Lorg/libtorrent4j/swig/peer_request;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/peer_request;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_map_file(JLorg/libtorrent4j/swig/torrent_info;IJI)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/peer_request;-><init>(JZ)V

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_name(JLorg/libtorrent4j/swig/torrent_info;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public num_files()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_num_files(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public num_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_num_pieces(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public piece_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_piece_length(JLorg/libtorrent4j/swig/torrent_info;)I

    move-result p0

    return p0
.end method

.method public piece_size(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_piece_size(JLorg/libtorrent4j/swig/torrent_info;I)I

    move-result p0

    return p0
.end method

.method public priv()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_priv(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method

.method public similar_torrents()Lorg/libtorrent4j/swig/sha1_hash_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_similar_torrents(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash_vector;-><init>(JZ)V

    return-object v0
.end method

.method public size_on_disk()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_size_on_disk(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public total_size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_total_size(JLorg/libtorrent4j/swig/torrent_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public v1()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_v1(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method

.method public v2()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/torrent_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->torrent_info_v2(JLorg/libtorrent4j/swig/torrent_info;)Z

    move-result p0

    return p0
.end method
