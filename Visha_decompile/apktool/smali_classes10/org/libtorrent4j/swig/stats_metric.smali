.class public Lorg/libtorrent4j/swig/stats_metric;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_stats_metric()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/stats_metric;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/stats_metric;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/stats_metric;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/stats_metric;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_stats_metric(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/stats_metric;->delete()V

    return-void
.end method

.method public getType()Lorg/libtorrent4j/swig/metric_type_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_type_get(JLorg/libtorrent4j/swig/stats_metric;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/metric_type_t;->swigToEnum(I)Lorg/libtorrent4j/swig/metric_type_t;

    move-result-object p0

    return-object p0
.end method

.method public getValue_index()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_value_index_get(JLorg/libtorrent4j/swig/stats_metric;)I

    move-result p0

    return p0
.end method

.method public get_name()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_get_name(JLorg/libtorrent4j/swig/stats_metric;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setType(Lorg/libtorrent4j/swig/metric_type_t;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/metric_type_t;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_type_set(JLorg/libtorrent4j/swig/stats_metric;I)V

    return-void
.end method

.method public setValue_index(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_value_index_set(JLorg/libtorrent4j/swig/stats_metric;I)V

    return-void
.end method
