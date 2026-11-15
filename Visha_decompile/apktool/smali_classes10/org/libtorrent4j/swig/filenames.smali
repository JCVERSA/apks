.class public Lorg/libtorrent4j/swig/filenames;
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
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/filenames;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/file_storage;Lorg/libtorrent4j/swig/renamed_files;)V
    .locals 6

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/file_storage;->getCPtr(Lorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/libtorrent4j/swig/renamed_files;->getCPtr(Lorg/libtorrent4j/swig/renamed_files;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_filenames(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/renamed_files;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/filenames;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/filenames;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/filenames;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/filenames;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/filenames;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/filenames;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/filenames;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_filenames(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J
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

.method public end_file()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_end_file(JLorg/libtorrent4j/swig/filenames;)I

    move-result p0

    return p0
.end method

.method public end_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_end_piece(JLorg/libtorrent4j/swig/filenames;)I

    move-result p0

    return p0
.end method

.method public file_absolute_path(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_absolute_path(JLorg/libtorrent4j/swig/filenames;I)Z

    move-result p0

    return p0
.end method

.method public file_flags(I)Lorg/libtorrent4j/swig/file_flags_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_flags(JLorg/libtorrent4j/swig/filenames;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public file_offset(I)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_offset(JLorg/libtorrent4j/swig/filenames;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public file_path(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_path__SWIG_1(JLorg/libtorrent4j/swig/filenames;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public file_path(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_path__SWIG_0(JLorg/libtorrent4j/swig/filenames;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public file_size(I)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_file_size(JLorg/libtorrent4j/swig/filenames;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/filenames;->delete()V

    return-void
.end method

.method public map_block(IJJ)Lorg/libtorrent4j/swig/file_slice_vector;
    .locals 9

    new-instance v0, Lorg/libtorrent4j/swig/file_slice_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_map_block(JLorg/libtorrent4j/swig/filenames;IJJ)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/file_slice_vector;-><init>(JZ)V

    return-object v0
.end method

.method public map_file(IJI)Lorg/libtorrent4j/swig/peer_request;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/peer_request;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_map_file(JLorg/libtorrent4j/swig/filenames;IJI)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/peer_request;-><init>(JZ)V

    return-object v0
.end method

.method public num_files()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_num_files(JLorg/libtorrent4j/swig/filenames;)I

    move-result p0

    return p0
.end method

.method public num_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_num_pieces(JLorg/libtorrent4j/swig/filenames;)I

    move-result p0

    return p0
.end method

.method public pad_file_at(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_pad_file_at(JLorg/libtorrent4j/swig/filenames;I)Z

    move-result p0

    return p0
.end method

.method public piece_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_piece_length(JLorg/libtorrent4j/swig/filenames;)I

    move-result p0

    return p0
.end method

.method public root(I)Lorg/libtorrent4j/swig/sha256_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha256_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_root(JLorg/libtorrent4j/swig/filenames;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha256_hash;-><init>(JZ)V

    return-object v0
.end method

.method public symlink(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/filenames;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->filenames_symlink(JLorg/libtorrent4j/swig/filenames;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
