.class public Lorg/libtorrent4j/swig/settings_interface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/settings_interface;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/settings_interface;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_interface;->delete()V

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
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    if-nez v0, :cond_0

    iput-wide v2, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get_bool(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_get_bool(JLorg/libtorrent4j/swig/settings_interface;I)Z

    move-result p0

    return p0
.end method

.method public get_int(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_get_int(JLorg/libtorrent4j/swig/settings_interface;I)I

    move-result p0

    return p0
.end method

.method public get_str(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_get_str(JLorg/libtorrent4j/swig/settings_interface;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public has_val(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_has_val(JLorg/libtorrent4j/swig/settings_interface;I)Z

    move-result p0

    return p0
.end method

.method public set_bool(IZ)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_set_bool(JLorg/libtorrent4j/swig/settings_interface;IZ)V

    return-void
.end method

.method public set_int(II)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_set_int(JLorg/libtorrent4j/swig/settings_interface;II)V

    return-void
.end method

.method public set_str(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_interface_set_str(JLorg/libtorrent4j/swig/settings_interface;ILjava/lang/String;)V

    return-void
.end method
