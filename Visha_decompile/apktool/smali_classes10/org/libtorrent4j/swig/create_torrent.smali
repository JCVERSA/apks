.class public Lorg/libtorrent4j/swig/create_torrent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final allow_odd_piece_size:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final canonical_files:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final canonical_files_no_tail_padding:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final modification_time:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final no_attributes:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final symlinks:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final v1_only:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final v2_only:Lorg/libtorrent4j/swig/create_flags_t;


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_modification_time_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->modification_time:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_symlinks_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->symlinks:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_v2_only_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->v2_only:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_v1_only_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->v1_only:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_canonical_files_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->canonical_files:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_no_attributes_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->no_attributes:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_canonical_files_no_tail_padding_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->canonical_files_no_tail_padding:Lorg/libtorrent4j/swig/create_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_allow_odd_piece_size_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/create_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/create_torrent;->allow_odd_piece_size:Lorg/libtorrent4j/swig/create_flags_t;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/create_file_entry_vector;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/create_file_entry_vector;->getCPtr(Lorg/libtorrent4j/swig/create_file_entry_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_torrent__SWIG_2(JLorg/libtorrent4j/swig/create_file_entry_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/create_torrent;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/create_file_entry_vector;I)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/create_file_entry_vector;->getCPtr(Lorg/libtorrent4j/swig/create_file_entry_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_torrent__SWIG_1(JLorg/libtorrent4j/swig/create_file_entry_vector;I)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/create_torrent;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/create_file_entry_vector;ILorg/libtorrent4j/swig/create_flags_t;)V
    .locals 7

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/create_file_entry_vector;->getCPtr(Lorg/libtorrent4j/swig/create_file_entry_vector;)J

    move-result-wide v0

    invoke-static {p3}, Lorg/libtorrent4j/swig/create_flags_t;->getCPtr(Lorg/libtorrent4j/swig/create_flags_t;)J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_create_torrent__SWIG_0(JLorg/libtorrent4j/swig/create_file_entry_vector;IJLorg/libtorrent4j/swig/create_flags_t;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/create_torrent;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/create_torrent;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/create_torrent;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_torrent;->delete()V

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
.method public add_collection(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_collection(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V

    return-void
.end method

.method public add_node(Lorg/libtorrent4j/swig/string_int_pair;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_int_pair;->getCPtr(Lorg/libtorrent4j/swig/string_int_pair;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_node(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/string_int_pair;)V

    return-void
.end method

.method public add_similar_torrent(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_similar_torrent(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public add_tracker(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_tracker__SWIG_0(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V

    return-void
.end method

.method public add_tracker(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_tracker__SWIG_1(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;I)V

    return-void
.end method

.method public add_url_seed(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_add_url_seed(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_create_torrent(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J
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

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_end_file(JLorg/libtorrent4j/swig/create_torrent;)I

    move-result p0

    return p0
.end method

.method public end_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_end_piece(JLorg/libtorrent4j/swig/create_torrent;)I

    move-result p0

    return p0
.end method

.method public file_at(I)Lorg/libtorrent4j/swig/create_file_entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/create_file_entry;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_file_at(JLorg/libtorrent4j/swig/create_torrent;I)J

    move-result-wide p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/create_file_entry;-><init>(JZ)V

    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_torrent;->delete()V

    return-void
.end method

.method public generate()Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_generate(JLorg/libtorrent4j/swig/create_torrent;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public is_v1_only()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_is_v1_only(JLorg/libtorrent4j/swig/create_torrent;)Z

    move-result p0

    return p0
.end method

.method public is_v2_only()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_is_v2_only(JLorg/libtorrent4j/swig/create_torrent;)Z

    move-result p0

    return p0
.end method

.method public num_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_num_pieces(JLorg/libtorrent4j/swig/create_torrent;)I

    move-result p0

    return p0
.end method

.method public piece_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_piece_length(JLorg/libtorrent4j/swig/create_torrent;)I

    move-result p0

    return p0
.end method

.method public piece_size(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_piece_size(JLorg/libtorrent4j/swig/create_torrent;I)I

    move-result p0

    return p0
.end method

.method public priv()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_priv(JLorg/libtorrent4j/swig/create_torrent;)Z

    move-result p0

    return p0
.end method

.method public set_comment(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_comment(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V

    return-void
.end method

.method public set_creation_date(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_creation_date(JLorg/libtorrent4j/swig/create_torrent;J)V

    return-void
.end method

.method public set_creator(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_creator(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V

    return-void
.end method

.method public set_hash(ILorg/libtorrent4j/swig/sha1_hash;)V
    .locals 7

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_hash(JLorg/libtorrent4j/swig/create_torrent;IJLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public set_hash2(IILorg/libtorrent4j/swig/sha256_hash;)V
    .locals 8

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {p3}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_hash2(JLorg/libtorrent4j/swig/create_torrent;IIJLorg/libtorrent4j/swig/sha256_hash;)V

    return-void
.end method

.method public set_priv(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_priv(JLorg/libtorrent4j/swig/create_torrent;Z)V

    return-void
.end method

.method public set_root_cert(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_set_root_cert(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public total_size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/create_torrent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->create_torrent_total_size(JLorg/libtorrent4j/swig/create_torrent;)J

    move-result-wide v0

    return-wide v0
.end method
