.class public Lorg/libtorrent4j/swig/boost_string_entry_map;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_boost_string_entry_map()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/boost_string_entry_map;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/boost_string_entry_map;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/boost_string_entry_map;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->delete()V

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
.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_clear(JLorg/libtorrent4j/swig/boost_string_entry_map;)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_contains(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_boost_string_entry_map(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J
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

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_empty(JLorg/libtorrent4j/swig/boost_string_entry_map;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;->delete()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_get(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public keys()Lorg/libtorrent4j/swig/string_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_keys(JLorg/libtorrent4j/swig/boost_string_entry_map;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/string_vector;-><init>(JZ)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V
    .locals 7

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_put(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;JLorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_remove(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/boost_string_entry_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->boost_string_entry_map_size(JLorg/libtorrent4j/swig/boost_string_entry_map;)J

    move-result-wide v0

    return-wide v0
.end method
