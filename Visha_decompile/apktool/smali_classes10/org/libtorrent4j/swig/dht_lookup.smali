.class public Lorg/libtorrent4j/swig/dht_lookup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_dht_lookup()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_lookup;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/dht_lookup;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/dht_lookup;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_dht_lookup(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_lookup;->delete()V

    return-void
.end method

.method public getBranch_factor()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_branch_factor_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getFirst_timeout()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_first_timeout_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getLast_sent()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_last_sent_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getNodes_left()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_nodes_left_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getOutstanding_requests()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_outstanding_requests_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getResponses()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_responses_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public getTarget()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_target_get(JLorg/libtorrent4j/swig/dht_lookup;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/sha1_hash;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getTimeouts()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_timeouts_get(JLorg/libtorrent4j/swig/dht_lookup;)I

    move-result p0

    return p0
.end method

.method public get_type()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_get_type(JLorg/libtorrent4j/swig/dht_lookup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBranch_factor(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_branch_factor_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setFirst_timeout(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_first_timeout_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setLast_sent(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_last_sent_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setNodes_left(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_nodes_left_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setOutstanding_requests(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_outstanding_requests_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setResponses(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_responses_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method

.method public setTarget(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_target_set(JLorg/libtorrent4j/swig/dht_lookup;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public setTimeouts(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/dht_lookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->dht_lookup_timeouts_set(JLorg/libtorrent4j/swig/dht_lookup;I)V

    return-void
.end method
