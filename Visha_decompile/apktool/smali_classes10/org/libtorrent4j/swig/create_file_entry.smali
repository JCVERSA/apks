.class public Lorg/libtorrent4j/swig/create_file_entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 7
    invoke-static {p1, p2, p3}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_file_entry__SWIG_3(Ljava/lang/String;J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/create_file_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;)V
    .locals 6

    .line 6
    invoke-static {p4}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v3

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_file_entry__SWIG_2(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/create_file_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;J)V
    .locals 8

    .line 5
    invoke-static {p4}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v3

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_file_entry__SWIG_1(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/create_file_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)V
    .locals 9

    .line 4
    invoke-static {p4}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v3

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_file_entry__SWIG_0(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    move-object v3, p0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/create_file_entry;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/create_file_entry;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/create_file_entry;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_file_entry;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_create_file_entry(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_file_entry;->delete()V

    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_filename_get(JLorg/libtorrent4j/swig/create_file_entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/file_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_flags_get(JLorg/libtorrent4j/swig/create_file_entry;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/file_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getMtime()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_mtime_get(JLorg/libtorrent4j/swig/create_file_entry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_size_get(JLorg/libtorrent4j/swig/create_file_entry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_symlink_get(JLorg/libtorrent4j/swig/create_file_entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_filename_set(JLorg/libtorrent4j/swig/create_file_entry;Ljava/lang/String;)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/file_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_flags_set(JLorg/libtorrent4j/swig/create_file_entry;JLorg/libtorrent4j/swig/file_flags_t;)V

    return-void
.end method

.method public setMtime(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_mtime_set(JLorg/libtorrent4j/swig/create_file_entry;J)V

    return-void
.end method

.method public setSize(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_size_set(JLorg/libtorrent4j/swig/create_file_entry;J)V

    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_file_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_file_entry_symlink_set(JLorg/libtorrent4j/swig/create_file_entry;Ljava/lang/String;)V

    return-void
.end method
