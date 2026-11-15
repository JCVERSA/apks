.class public Lorg/libtorrent4j/swig/load_torrent_limits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_load_torrent_limits()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/load_torrent_limits;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/load_torrent_limits;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/load_torrent_limits;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/load_torrent_limits;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_load_torrent_limits(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/load_torrent_limits;->delete()V

    return-void
.end method

.method public getMax_buffer_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_buffer_size_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I

    move-result p0

    return p0
.end method

.method public getMax_decode_depth()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_decode_depth_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I

    move-result p0

    return p0
.end method

.method public getMax_decode_tokens()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_decode_tokens_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I

    move-result p0

    return p0
.end method

.method public getMax_duplicate_filenames()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_duplicate_filenames_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I

    move-result p0

    return p0
.end method

.method public getMax_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_pieces_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I

    move-result p0

    return p0
.end method

.method public setMax_buffer_size(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_buffer_size_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V

    return-void
.end method

.method public setMax_decode_depth(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_decode_depth_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V

    return-void
.end method

.method public setMax_decode_tokens(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_decode_tokens_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V

    return-void
.end method

.method public setMax_duplicate_filenames(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_duplicate_filenames_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V

    return-void
.end method

.method public setMax_pieces(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/load_torrent_limits;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->load_torrent_limits_max_pieces_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V

    return-void
.end method
