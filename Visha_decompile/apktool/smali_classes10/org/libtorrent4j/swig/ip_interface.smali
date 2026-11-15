.class public Lorg/libtorrent4j/swig/ip_interface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_ip_interface()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/ip_interface;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/ip_interface;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/ip_interface;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/ip_interface;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_ip_interface(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/ip_interface;->delete()V

    return-void
.end method

.method public getDescription()Lorg/libtorrent4j/swig/byte_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_description_get(JLorg/libtorrent4j/swig/ip_interface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/byte_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getFriendly_name()Lorg/libtorrent4j/swig/byte_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_friendly_name_get(JLorg/libtorrent4j/swig/ip_interface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/byte_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getInterface_address()Lorg/libtorrent4j/swig/address;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_interface_address_get(JLorg/libtorrent4j/swig/ip_interface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/address;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/address;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getName()Lorg/libtorrent4j/swig/byte_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_name_get(JLorg/libtorrent4j/swig/ip_interface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/byte_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getNetmask()Lorg/libtorrent4j/swig/address;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_netmask_get(JLorg/libtorrent4j/swig/ip_interface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/address;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/address;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getPreferred()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_preferred_get(JLorg/libtorrent4j/swig/ip_interface;)Z

    move-result p0

    return p0
.end method

.method public setDescription(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_description_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public setFriendly_name(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_friendly_name_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public setInterface_address(Lorg/libtorrent4j/swig/address;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_interface_address_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/address;)V

    return-void
.end method

.method public setName(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_name_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public setNetmask(Lorg/libtorrent4j/swig/address;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_netmask_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/address;)V

    return-void
.end method

.method public setPreferred(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/ip_interface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->ip_interface_preferred_set(JLorg/libtorrent4j/swig/ip_interface;Z)V

    return-void
.end method
