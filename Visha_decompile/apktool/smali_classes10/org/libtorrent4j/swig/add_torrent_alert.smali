.class public Lorg/libtorrent4j/swig/add_torrent_alert;
.super Lorg/libtorrent4j/swig/torrent_alert;
.source "SourceFile"


# static fields
.field public static final alert_type:I

.field public static final priority:Lorg/libtorrent4j/swig/alert_priority;

.field public static final static_category:Lorg/libtorrent4j/swig/alert_category_t;


# instance fields
.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_priority_get()I

    move-result v0

    invoke-static {v0}, Lorg/libtorrent4j/swig/alert_priority;->swigToEnum(I)Lorg/libtorrent4j/swig/alert_priority;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/add_torrent_alert;->priority:Lorg/libtorrent4j/swig/alert_priority;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_alert_type_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/add_torrent_alert;->alert_type:I

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_static_category_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/add_torrent_alert;->static_category:Lorg/libtorrent4j/swig/alert_category_t;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/libtorrent4j/swig/torrent_alert;-><init>(JZ)V

    iput-wide p1, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/add_torrent_alert;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/add_torrent_alert;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_alert;->delete()V

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
.method public category()Lorg/libtorrent4j/swig/alert_category_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/alert_category_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_category(JLorg/libtorrent4j/swig/add_torrent_alert;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/alert_category_t;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/alert;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_add_torrent_alert(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_alert;->delete()V

    return-void
.end method

.method public getError()Lorg/libtorrent4j/swig/error_code;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_error_get(JLorg/libtorrent4j/swig/add_torrent_alert;)J

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

.method public getParams()Lorg/libtorrent4j/swig/add_torrent_params;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_params_get(JLorg/libtorrent4j/swig/add_torrent_alert;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/add_torrent_params;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_message(JLorg/libtorrent4j/swig/add_torrent_alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setError(Lorg/libtorrent4j/swig/error_code;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_error_set(JLorg/libtorrent4j/swig/add_torrent_alert;JLorg/libtorrent4j/swig/error_code;)V

    return-void
.end method

.method public setParams(Lorg/libtorrent4j/swig/add_torrent_params;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getCPtr(Lorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_params_set(JLorg/libtorrent4j/swig/add_torrent_alert;JLorg/libtorrent4j/swig/add_torrent_params;)V

    return-void
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_type(JLorg/libtorrent4j/swig/add_torrent_alert;)I

    move-result p0

    return p0
.end method

.method public what()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/add_torrent_alert;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->add_torrent_alert_what(JLorg/libtorrent4j/swig/add_torrent_alert;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
