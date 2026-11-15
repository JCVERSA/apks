.class public Lorg/libtorrent4j/swig/block_info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/block_info$block_state_t;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_block_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_info;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/block_info;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/block_info;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/block_info;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/block_info;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/block_info;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/block_info;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_block_info(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/block_info;->delete()V

    return-void
.end method

.method public getBlock_size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_block_size_get(JLorg/libtorrent4j/swig/block_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBytes_progress()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_bytes_progress_get(JLorg/libtorrent4j/swig/block_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNum_peers()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_num_peers_get(JLorg/libtorrent4j/swig/block_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_state_get(JLorg/libtorrent4j/swig/block_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public peer()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_peer(JLorg/libtorrent4j/swig/block_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method public setBlock_size(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_block_size_set(JLorg/libtorrent4j/swig/block_info;J)V

    return-void
.end method

.method public setBytes_progress(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_bytes_progress_set(JLorg/libtorrent4j/swig/block_info;J)V

    return-void
.end method

.method public setNum_peers(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_num_peers_set(JLorg/libtorrent4j/swig/block_info;J)V

    return-void
.end method

.method public setState(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_state_set(JLorg/libtorrent4j/swig/block_info;J)V

    return-void
.end method

.method public set_peer(Lorg/libtorrent4j/swig/tcp_endpoint;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/block_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->block_info_set_peer(JLorg/libtorrent4j/swig/block_info;JLorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method
