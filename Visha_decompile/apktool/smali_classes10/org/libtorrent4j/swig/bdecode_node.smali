.class public Lorg/libtorrent4j/swig/bdecode_node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/bdecode_node$type_t;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_bdecode_node__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/bdecode_node;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_bdecode_node__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-void
.end method

.method public static bdecode(JILorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I
    .locals 9

    .line 2
    invoke-static {p3}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v3

    invoke-static {p4}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v6

    move-wide v0, p0

    move v2, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_bdecode__SWIG_1(JIJLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)I

    move-result p0

    return p0
.end method

.method public static bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I
    .locals 9

    .line 1
    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_bdecode__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)I

    move-result p0

    return p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/bdecode_node;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/bdecode_node;->delete()V

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

.method public static to_string(Lorg/libtorrent4j/swig/bdecode_node;ZI)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_to_string(JLorg/libtorrent4j/swig/bdecode_node;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_clear(JLorg/libtorrent4j/swig/bdecode_node;)V

    return-void
.end method

.method public data_offset()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_data_offset(JLorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_bdecode_node(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J
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

.method public dict_at_node(I)Lorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_at_node(JLorg/libtorrent4j/swig/bdecode_node;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_dict_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_dict_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_int_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_int_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_int_value_ex(Ljava/lang/String;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_int_value_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public dict_find_int_value_ex(Ljava/lang/String;J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_int_value_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public dict_find_list_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_list_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_string_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_string_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public dict_find_string_value_ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_string_value_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dict_find_string_value_ex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_find_string_value_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dict_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_dict_size(JLorg/libtorrent4j/swig/bdecode_node;)I

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/bdecode_node;->delete()V

    return-void
.end method

.method public int_value()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_int_value(JLorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    return-wide v0
.end method

.method public list_at(I)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_at(JLorg/libtorrent4j/swig/bdecode_node;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/bdecode_node;-><init>(JZ)V

    return-object v0
.end method

.method public list_int_value_at(I)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_int_value_at__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public list_int_value_at(IJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_int_value_at__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public list_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_size(JLorg/libtorrent4j/swig/bdecode_node;)I

    move-result p0

    return p0
.end method

.method public list_string_value_at_ex(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_string_value_at_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public list_string_value_at_ex(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_list_string_value_at_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public string_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_string_length(JLorg/libtorrent4j/swig/bdecode_node;)I

    move-result p0

    return p0
.end method

.method public string_offset()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_string_offset(JLorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v0

    return-wide v0
.end method

.method public string_value_ex()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_string_value_ex(JLorg/libtorrent4j/swig/bdecode_node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public to_bool()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_to_bool(JLorg/libtorrent4j/swig/bdecode_node;)Z

    move-result p0

    return p0
.end method

.method public type()Lorg/libtorrent4j/swig/bdecode_node$type_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bdecode_node;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bdecode_node_type(JLorg/libtorrent4j/swig/bdecode_node;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node$type_t;->swigToEnum(I)Lorg/libtorrent4j/swig/bdecode_node$type_t;

    move-result-object p0

    return-object p0
.end method
