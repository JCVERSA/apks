.class public Lorg/libtorrent4j/swig/tracker_alert;
.super Lorg/libtorrent4j/swig/torrent_alert;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/libtorrent4j/swig/torrent_alert;-><init>(JZ)V

    iput-wide p1, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/tracker_alert;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/tracker_alert;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_alert;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_tracker_alert(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lorg/libtorrent4j/swig/torrent_alert;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tracker_alert;->delete()V

    return-void
.end method

.method public getVersion()Lorg/libtorrent4j/swig/protocol_version;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_version_get(JLorg/libtorrent4j/swig/tracker_alert;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/protocol_version;->swigToEnum(I)Lorg/libtorrent4j/swig/protocol_version;

    move-result-object p0

    return-object p0
.end method

.method public get_local_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_get_local_endpoint(JLorg/libtorrent4j/swig/tracker_alert;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_message(JLorg/libtorrent4j/swig/tracker_alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setVersion(Lorg/libtorrent4j/swig/protocol_version;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/protocol_version;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_version_set(JLorg/libtorrent4j/swig/tracker_alert;I)V

    return-void
.end method

.method public tracker_url()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/tracker_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->tracker_alert_tracker_url(JLorg/libtorrent4j/swig/tracker_alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
