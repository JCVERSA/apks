.class public Lorg/libtorrent4j/swig/peer_class_info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_peer_class_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_class_info;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/peer_class_info;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/peer_class_info;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_class_info;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_peer_class_info(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_class_info;->delete()V

    return-void
.end method

.method public getConnection_limit_factor()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_connection_limit_factor_get(JLorg/libtorrent4j/swig/peer_class_info;)I

    move-result p0

    return p0
.end method

.method public getDownload_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_download_limit_get(JLorg/libtorrent4j/swig/peer_class_info;)I

    move-result p0

    return p0
.end method

.method public getDownload_priority()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_download_priority_get(JLorg/libtorrent4j/swig/peer_class_info;)I

    move-result p0

    return p0
.end method

.method public getIgnore_unchoke_slots()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_ignore_unchoke_slots_get(JLorg/libtorrent4j/swig/peer_class_info;)Z

    move-result p0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_label_get(JLorg/libtorrent4j/swig/peer_class_info;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpload_limit()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_upload_limit_get(JLorg/libtorrent4j/swig/peer_class_info;)I

    move-result p0

    return p0
.end method

.method public getUpload_priority()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_upload_priority_get(JLorg/libtorrent4j/swig/peer_class_info;)I

    move-result p0

    return p0
.end method

.method public setConnection_limit_factor(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_connection_limit_factor_set(JLorg/libtorrent4j/swig/peer_class_info;I)V

    return-void
.end method

.method public setDownload_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_download_limit_set(JLorg/libtorrent4j/swig/peer_class_info;I)V

    return-void
.end method

.method public setDownload_priority(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_download_priority_set(JLorg/libtorrent4j/swig/peer_class_info;I)V

    return-void
.end method

.method public setIgnore_unchoke_slots(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_ignore_unchoke_slots_set(JLorg/libtorrent4j/swig/peer_class_info;Z)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_label_set(JLorg/libtorrent4j/swig/peer_class_info;Ljava/lang/String;)V

    return-void
.end method

.method public setUpload_limit(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_upload_limit_set(JLorg/libtorrent4j/swig/peer_class_info;I)V

    return-void
.end method

.method public setUpload_priority(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_class_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_class_info_upload_priority_set(JLorg/libtorrent4j/swig/peer_class_info;I)V

    return-void
.end method
