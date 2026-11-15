.class public Lorg/libtorrent4j/swig/announce_endpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_announce_endpoint()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/announce_endpoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/announce_endpoint;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/announce_endpoint;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_announce_endpoint(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint;->delete()V

    return-void
.end method

.method public getEnabled()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_enabled_get(JLorg/libtorrent4j/swig/announce_endpoint;)Z

    move-result p0

    return p0
.end method

.method public getLocal_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_local_endpoint_get(JLorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/tcp_endpoint;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public get_infohash_v1()Lorg/libtorrent4j/swig/announce_infohash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/announce_infohash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_get_infohash_v1(JLorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/announce_infohash;-><init>(JZ)V

    return-object v0
.end method

.method public get_infohash_v2()Lorg/libtorrent4j/swig/announce_infohash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/announce_infohash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_get_infohash_v2(JLorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/announce_infohash;-><init>(JZ)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_enabled_set(JLorg/libtorrent4j/swig/announce_endpoint;Z)V

    return-void
.end method

.method public setLocal_endpoint(Lorg/libtorrent4j/swig/tcp_endpoint;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_local_endpoint_set(JLorg/libtorrent4j/swig/announce_endpoint;JLorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method
