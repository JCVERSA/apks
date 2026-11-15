.class public Lorg/libtorrent4j/swig/byte_span;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/byte_span;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/byte_span;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/byte_span;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/byte_span;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_span;->delete()V

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
.method public at(J)B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_at(JLorg/libtorrent4j/swig/byte_span;J)B

    move-result p0

    return p0
.end method

.method public back()B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_back(JLorg/libtorrent4j/swig/byte_span;)B

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/byte_span;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/byte_span;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_byte_span(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J
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

.method public empty()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_empty(JLorg/libtorrent4j/swig/byte_span;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_span;->delete()V

    return-void
.end method

.method public first(J)Lorg/libtorrent4j/swig/byte_span;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_span;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_first(JLorg/libtorrent4j/swig/byte_span;J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/byte_span;-><init>(JZ)V

    return-object v0
.end method

.method public front()B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_front(JLorg/libtorrent4j/swig/byte_span;)B

    move-result p0

    return p0
.end method

.method public last(J)Lorg/libtorrent4j/swig/byte_span;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_span;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_last(JLorg/libtorrent4j/swig/byte_span;J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/byte_span;-><init>(JZ)V

    return-object v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_size(JLorg/libtorrent4j/swig/byte_span;)J

    move-result-wide v0

    return-wide v0
.end method

.method public subspan(J)Lorg/libtorrent4j/swig/byte_span;
    .locals 3

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/byte_span;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_subspan__SWIG_0(JLorg/libtorrent4j/swig/byte_span;J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/byte_span;-><init>(JZ)V

    return-object v0
.end method

.method public subspan(JJ)Lorg/libtorrent4j/swig/byte_span;
    .locals 8

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/byte_span;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/byte_span;->swigCPtr:J

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->byte_span_subspan__SWIG_1(JLorg/libtorrent4j/swig/byte_span;JJ)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/byte_span;-><init>(JZ)V

    return-object v0
.end method
