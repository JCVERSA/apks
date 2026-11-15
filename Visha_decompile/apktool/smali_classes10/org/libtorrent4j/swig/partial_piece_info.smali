.class public Lorg/libtorrent4j/swig/partial_piece_info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_partial_piece_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/partial_piece_info;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/partial_piece_info;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/partial_piece_info;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_partial_piece_info(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/partial_piece_info;->delete()V

    return-void
.end method

.method public getBlocks()Lorg/libtorrent4j/swig/block_info;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_blocks_get(JLorg/libtorrent4j/swig/partial_piece_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/block_info;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/block_info;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getBlocks_in_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_blocks_in_piece_get(JLorg/libtorrent4j/swig/partial_piece_info;)I

    move-result p0

    return p0
.end method

.method public getFinished()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_finished_get(JLorg/libtorrent4j/swig/partial_piece_info;)I

    move-result p0

    return p0
.end method

.method public getPiece_index()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_piece_index_get(JLorg/libtorrent4j/swig/partial_piece_info;)I

    move-result p0

    return p0
.end method

.method public getRequested()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_requested_get(JLorg/libtorrent4j/swig/partial_piece_info;)I

    move-result p0

    return p0
.end method

.method public getWriting()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_writing_get(JLorg/libtorrent4j/swig/partial_piece_info;)I

    move-result p0

    return p0
.end method

.method public setBlocks(Lorg/libtorrent4j/swig/block_info;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/block_info;->getCPtr(Lorg/libtorrent4j/swig/block_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_blocks_set(JLorg/libtorrent4j/swig/partial_piece_info;JLorg/libtorrent4j/swig/block_info;)V

    return-void
.end method

.method public setBlocks_in_piece(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_blocks_in_piece_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V

    return-void
.end method

.method public setFinished(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_finished_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V

    return-void
.end method

.method public setPiece_index(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_piece_index_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V

    return-void
.end method

.method public setRequested(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_requested_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V

    return-void
.end method

.method public setWriting(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/partial_piece_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->partial_piece_info_writing_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V

    return-void
.end method
