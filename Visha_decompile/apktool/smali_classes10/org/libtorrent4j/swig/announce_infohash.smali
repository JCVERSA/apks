.class public Lorg/libtorrent4j/swig/announce_infohash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/announce_infohash;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/announce_infohash;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_announce_infohash(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_infohash;->delete()V

    return-void
.end method

.method public getComplete_sent()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_complete_sent_get(JLorg/libtorrent4j/swig/announce_infohash;)Z

    move-result p0

    return p0
.end method

.method public getFails()S
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_fails_get(JLorg/libtorrent4j/swig/announce_infohash;)S

    move-result p0

    return p0
.end method

.method public getLast_error()Lorg/libtorrent4j/swig/error_code;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_last_error_get(JLorg/libtorrent4j/swig/announce_infohash;)J

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

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_message_get(JLorg/libtorrent4j/swig/announce_infohash;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScrape_complete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_complete_get(JLorg/libtorrent4j/swig/announce_infohash;)I

    move-result p0

    return p0
.end method

.method public getScrape_downloaded()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_downloaded_get(JLorg/libtorrent4j/swig/announce_infohash;)I

    move-result p0

    return p0
.end method

.method public getScrape_incomplete()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_incomplete_get(JLorg/libtorrent4j/swig/announce_infohash;)I

    move-result p0

    return p0
.end method

.method public getStart_sent()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_start_sent_get(JLorg/libtorrent4j/swig/announce_infohash;)Z

    move-result p0

    return p0
.end method

.method public getTriggered_manually()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_triggered_manually_get(JLorg/libtorrent4j/swig/announce_infohash;)Z

    move-result p0

    return p0
.end method

.method public getUpdating()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_updating_get(JLorg/libtorrent4j/swig/announce_infohash;)Z

    move-result p0

    return p0
.end method

.method public get_min_announce()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_get_min_announce(JLorg/libtorrent4j/swig/announce_infohash;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_next_announce()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_get_next_announce(JLorg/libtorrent4j/swig/announce_infohash;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setComplete_sent(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_complete_sent_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V

    return-void
.end method

.method public setFails(S)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_fails_set(JLorg/libtorrent4j/swig/announce_infohash;S)V

    return-void
.end method

.method public setLast_error(Lorg/libtorrent4j/swig/error_code;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_last_error_set(JLorg/libtorrent4j/swig/announce_infohash;JLorg/libtorrent4j/swig/error_code;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_message_set(JLorg/libtorrent4j/swig/announce_infohash;Ljava/lang/String;)V

    return-void
.end method

.method public setScrape_complete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_complete_set(JLorg/libtorrent4j/swig/announce_infohash;I)V

    return-void
.end method

.method public setScrape_downloaded(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_downloaded_set(JLorg/libtorrent4j/swig/announce_infohash;I)V

    return-void
.end method

.method public setScrape_incomplete(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_scrape_incomplete_set(JLorg/libtorrent4j/swig/announce_infohash;I)V

    return-void
.end method

.method public setStart_sent(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_start_sent_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V

    return-void
.end method

.method public setTriggered_manually(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_triggered_manually_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V

    return-void
.end method

.method public setUpdating(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_infohash;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_infohash_updating_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V

    return-void
.end method
