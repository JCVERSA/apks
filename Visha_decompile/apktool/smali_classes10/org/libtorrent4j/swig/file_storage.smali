.class public Lorg/libtorrent4j/swig/file_storage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final flag_executable:Lorg/libtorrent4j/swig/file_flags_t;

.field public static final flag_hidden:Lorg/libtorrent4j/swig/file_flags_t;

.field public static final flag_pad_file:Lorg/libtorrent4j/swig/file_flags_t;

.field public static final flag_symlink:Lorg/libtorrent4j/swig/file_flags_t;

.field public static final max_file_offset:J

.field public static final max_file_size:J

.field public static final max_num_pieces:I

.field public static final max_piece_size:I


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_max_file_size_get()J

    move-result-wide v0

    sput-wide v0, Lorg/libtorrent4j/swig/file_storage;->max_file_size:J

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_max_file_offset_get()J

    move-result-wide v0

    sput-wide v0, Lorg/libtorrent4j/swig/file_storage;->max_file_offset:J

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_max_num_pieces_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/file_storage;->max_num_pieces:I

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_max_piece_size_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/file_storage;->max_piece_size:I

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_flag_pad_file_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/file_storage;->flag_pad_file:Lorg/libtorrent4j/swig/file_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_flag_hidden_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/file_storage;->flag_hidden:Lorg/libtorrent4j/swig/file_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_flag_executable_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/file_storage;->flag_executable:Lorg/libtorrent4j/swig/file_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_flag_symlink_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/file_storage;->flag_symlink:Lorg/libtorrent4j/swig/file_flags_t;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_file_storage__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/file_storage;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/file_storage;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/file_storage;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/file_storage;->getCPtr(Lorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_file_storage__SWIG_1(JLorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/file_storage;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/file_storage;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/file_storage;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/file_storage;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/file_storage;->delete()V

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
.method public add_file_ex(Lorg/libtorrent4j/swig/error_code;Ljava/lang/String;J)V
    .locals 9

    .line 4
    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_add_file_ex__SWIG_3(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;J)V

    return-void
.end method

.method public add_file_ex(Lorg/libtorrent4j/swig/error_code;Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;)V
    .locals 12

    move-object v2, p0

    .line 3
    iget-wide v0, v2, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    invoke-static/range {p5 .. p5}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v9

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_add_file_ex__SWIG_2(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;)V

    return-void
.end method

.method public add_file_ex(Lorg/libtorrent4j/swig/error_code;Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;J)V
    .locals 14

    move-object v2, p0

    .line 2
    iget-wide v0, v2, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    invoke-static/range {p5 .. p5}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v9

    move-object v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    invoke-static/range {v0 .. v13}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_add_file_ex__SWIG_1(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;J)V

    return-void
.end method

.method public add_file_ex(Lorg/libtorrent4j/swig/error_code;Ljava/lang/String;JLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)V
    .locals 15

    move-object v2, p0

    .line 1
    iget-wide v0, v2, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static/range {p1 .. p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    invoke-static/range {p5 .. p5}, Lorg/libtorrent4j/swig/file_flags_t;->getCPtr(Lorg/libtorrent4j/swig/file_flags_t;)J

    move-result-wide v9

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-static/range {v0 .. v14}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_add_file_ex__SWIG_0(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)V

    return-void
.end method

.method public blocks_in_piece2(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_blocks_in_piece2(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public blocks_per_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_blocks_per_piece(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/file_storage;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/file_storage;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_file_storage(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J
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

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_end_file(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public end_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_end_piece(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public file_absolute_path(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_absolute_path(JLorg/libtorrent4j/swig/file_storage;I)Z

    move-result p0

    return p0
.end method

.method public file_first_block_node(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_first_block_node(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public file_first_piece_node(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_first_piece_node(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public file_flags(I)Lorg/libtorrent4j/swig/file_flags_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/file_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_flags(JLorg/libtorrent4j/swig/file_storage;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/file_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public file_index_at_offset(J)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_index_at_offset(JLorg/libtorrent4j/swig/file_storage;J)I

    move-result p0

    return p0
.end method

.method public file_index_at_piece(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_index_at_piece(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public file_index_for_root(Lorg/libtorrent4j/swig/sha256_hash;)I
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_index_for_root(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/sha256_hash;)I

    move-result p0

    return p0
.end method

.method public file_name_ex(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_name_ex(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public file_num_blocks(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_num_blocks(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public file_num_pieces(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_num_pieces(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public file_offset(I)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_offset(JLorg/libtorrent4j/swig/file_storage;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public file_path(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_path__SWIG_1(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public file_path(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_path__SWIG_0(JLorg/libtorrent4j/swig/file_storage;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public file_size(I)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_file_size(JLorg/libtorrent4j/swig/file_storage;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/file_storage;->delete()V

    return-void
.end method

.method public is_valid()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_is_valid(JLorg/libtorrent4j/swig/file_storage;)Z

    move-result p0

    return p0
.end method

.method public last_file_index_at_piece(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_last_file_index_at_piece(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public last_piece()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_last_piece(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public last_piece_index_at_file(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_last_piece_index_at_file(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public map_block(IJJ)Lorg/libtorrent4j/swig/file_slice_vector;
    .locals 9

    new-instance v0, Lorg/libtorrent4j/swig/file_slice_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_map_block(JLorg/libtorrent4j/swig/file_storage;IJJ)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/file_slice_vector;-><init>(JZ)V

    return-object v0
.end method

.method public map_file(IJI)Lorg/libtorrent4j/swig/peer_request;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/peer_request;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_map_file(JLorg/libtorrent4j/swig/file_storage;IJI)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/peer_request;-><init>(JZ)V

    return-object v0
.end method

.method public mtime(I)J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_mtime(JLorg/libtorrent4j/swig/file_storage;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_name(JLorg/libtorrent4j/swig/file_storage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public num_files()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_num_files(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public num_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_num_pieces(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public pad_file_at(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_pad_file_at(JLorg/libtorrent4j/swig/file_storage;I)Z

    move-result p0

    return p0
.end method

.method public piece_index_at_file(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_piece_index_at_file(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public piece_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_piece_length(JLorg/libtorrent4j/swig/file_storage;)I

    move-result p0

    return p0
.end method

.method public piece_size(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_piece_size(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public piece_size2(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_piece_size2(JLorg/libtorrent4j/swig/file_storage;I)I

    move-result p0

    return p0
.end method

.method public reserve(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_reserve(JLorg/libtorrent4j/swig/file_storage;I)V

    return-void
.end method

.method public root(I)Lorg/libtorrent4j/swig/sha256_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha256_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_root(JLorg/libtorrent4j/swig/file_storage;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha256_hash;-><init>(JZ)V

    return-object v0
.end method

.method public root_ptr(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_root_ptr(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sanitize_symlinks()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_sanitize_symlinks(JLorg/libtorrent4j/swig/file_storage;)V

    return-void
.end method

.method public set_name(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_set_name(JLorg/libtorrent4j/swig/file_storage;Ljava/lang/String;)V

    return-void
.end method

.method public set_num_pieces(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_set_num_pieces(JLorg/libtorrent4j/swig/file_storage;I)V

    return-void
.end method

.method public set_piece_length(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_set_piece_length(JLorg/libtorrent4j/swig/file_storage;I)V

    return-void
.end method

.method public size_on_disk()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_size_on_disk(JLorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public swap(Lorg/libtorrent4j/swig/file_storage;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/file_storage;->getCPtr(Lorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_swap(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/file_storage;)V

    return-void
.end method

.method public symlink(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_symlink(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public total_size()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_total_size(JLorg/libtorrent4j/swig/file_storage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public v2()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/file_storage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->file_storage_v2(JLorg/libtorrent4j/swig/file_storage;)Z

    move-result p0

    return p0
.end method
