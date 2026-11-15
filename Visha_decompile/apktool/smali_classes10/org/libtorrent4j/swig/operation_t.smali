.class public final Lorg/libtorrent4j/swig/operation_t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final alloc_cache_piece:Lorg/libtorrent4j/swig/operation_t;

.field public static final alloc_recvbuf:Lorg/libtorrent4j/swig/operation_t;

.field public static final alloc_sndbuf:Lorg/libtorrent4j/swig/operation_t;

.field public static final available:Lorg/libtorrent4j/swig/operation_t;

.field public static final bittorrent:Lorg/libtorrent4j/swig/operation_t;

.field public static final check_resume:Lorg/libtorrent4j/swig/operation_t;

.field public static final connect:Lorg/libtorrent4j/swig/operation_t;

.field public static final encryption:Lorg/libtorrent4j/swig/operation_t;

.field public static final enum_if:Lorg/libtorrent4j/swig/operation_t;

.field public static final enum_route:Lorg/libtorrent4j/swig/operation_t;

.field public static final exception:Lorg/libtorrent4j/swig/operation_t;

.field public static final file:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_copy:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_fallocate:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_hard_link:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_mmap:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_open:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_read:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_remove:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_rename:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_seek:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_stat:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_truncate:Lorg/libtorrent4j/swig/operation_t;

.field public static final file_write:Lorg/libtorrent4j/swig/operation_t;

.field public static final get_interface:Lorg/libtorrent4j/swig/operation_t;

.field public static final getname:Lorg/libtorrent4j/swig/operation_t;

.field public static final getpeername:Lorg/libtorrent4j/swig/operation_t;

.field public static final handshake:Lorg/libtorrent4j/swig/operation_t;

.field public static final hostname_lookup:Lorg/libtorrent4j/swig/operation_t;

.field public static final iocontrol:Lorg/libtorrent4j/swig/operation_t;

.field public static final mkdir:Lorg/libtorrent4j/swig/operation_t;

.field public static final parse_address:Lorg/libtorrent4j/swig/operation_t;

.field public static final partfile_move:Lorg/libtorrent4j/swig/operation_t;

.field public static final partfile_read:Lorg/libtorrent4j/swig/operation_t;

.field public static final partfile_write:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_accept:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_bind:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_bind_to_device:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_listen:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_open:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_option:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_read:Lorg/libtorrent4j/swig/operation_t;

.field public static final sock_write:Lorg/libtorrent4j/swig/operation_t;

.field public static final ssl_handshake:Lorg/libtorrent4j/swig/operation_t;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/operation_t;

.field public static final symlink:Lorg/libtorrent4j/swig/operation_t;

.field public static final timer:Lorg/libtorrent4j/swig/operation_t;

.field public static final unknown:Lorg/libtorrent4j/swig/operation_t;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    new-instance v1, Lorg/libtorrent4j/swig/operation_t;

    move-object v0, v1

    const-string v2, "unknown"

    invoke-direct {v1, v2}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libtorrent4j/swig/operation_t;->unknown:Lorg/libtorrent4j/swig/operation_t;

    new-instance v2, Lorg/libtorrent4j/swig/operation_t;

    move-object v1, v2

    const-string v3, "bittorrent"

    invoke-direct {v2, v3}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/libtorrent4j/swig/operation_t;->bittorrent:Lorg/libtorrent4j/swig/operation_t;

    new-instance v3, Lorg/libtorrent4j/swig/operation_t;

    move-object v2, v3

    const-string v4, "iocontrol"

    invoke-direct {v3, v4}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/libtorrent4j/swig/operation_t;->iocontrol:Lorg/libtorrent4j/swig/operation_t;

    new-instance v4, Lorg/libtorrent4j/swig/operation_t;

    move-object v3, v4

    const-string v5, "getpeername"

    invoke-direct {v4, v5}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/libtorrent4j/swig/operation_t;->getpeername:Lorg/libtorrent4j/swig/operation_t;

    new-instance v5, Lorg/libtorrent4j/swig/operation_t;

    move-object v4, v5

    const-string v6, "getname"

    invoke-direct {v5, v6}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/libtorrent4j/swig/operation_t;->getname:Lorg/libtorrent4j/swig/operation_t;

    new-instance v6, Lorg/libtorrent4j/swig/operation_t;

    move-object v5, v6

    const-string v7, "alloc_recvbuf"

    invoke-direct {v6, v7}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/libtorrent4j/swig/operation_t;->alloc_recvbuf:Lorg/libtorrent4j/swig/operation_t;

    new-instance v7, Lorg/libtorrent4j/swig/operation_t;

    move-object v6, v7

    const-string v8, "alloc_sndbuf"

    invoke-direct {v7, v8}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/libtorrent4j/swig/operation_t;->alloc_sndbuf:Lorg/libtorrent4j/swig/operation_t;

    new-instance v8, Lorg/libtorrent4j/swig/operation_t;

    move-object v7, v8

    const-string v9, "file_write"

    invoke-direct {v8, v9}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/libtorrent4j/swig/operation_t;->file_write:Lorg/libtorrent4j/swig/operation_t;

    new-instance v9, Lorg/libtorrent4j/swig/operation_t;

    move-object v8, v9

    const-string v10, "file_read"

    invoke-direct {v9, v10}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/libtorrent4j/swig/operation_t;->file_read:Lorg/libtorrent4j/swig/operation_t;

    new-instance v10, Lorg/libtorrent4j/swig/operation_t;

    move-object v9, v10

    const-string v11, "file"

    invoke-direct {v10, v11}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/libtorrent4j/swig/operation_t;->file:Lorg/libtorrent4j/swig/operation_t;

    new-instance v11, Lorg/libtorrent4j/swig/operation_t;

    move-object v10, v11

    const-string v12, "sock_write"

    invoke-direct {v11, v12}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/libtorrent4j/swig/operation_t;->sock_write:Lorg/libtorrent4j/swig/operation_t;

    new-instance v12, Lorg/libtorrent4j/swig/operation_t;

    move-object v11, v12

    const-string v13, "sock_read"

    invoke-direct {v12, v13}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/libtorrent4j/swig/operation_t;->sock_read:Lorg/libtorrent4j/swig/operation_t;

    new-instance v13, Lorg/libtorrent4j/swig/operation_t;

    move-object v12, v13

    const-string v14, "sock_open"

    invoke-direct {v13, v14}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/libtorrent4j/swig/operation_t;->sock_open:Lorg/libtorrent4j/swig/operation_t;

    new-instance v14, Lorg/libtorrent4j/swig/operation_t;

    move-object v13, v14

    const-string v15, "sock_bind"

    invoke-direct {v14, v15}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/libtorrent4j/swig/operation_t;->sock_bind:Lorg/libtorrent4j/swig/operation_t;

    new-instance v15, Lorg/libtorrent4j/swig/operation_t;

    move-object v14, v15

    move-object/from16 v47, v0

    const-string v0, "available"

    invoke-direct {v15, v0}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/libtorrent4j/swig/operation_t;->available:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object v15, v0

    move-object/from16 v48, v1

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->encryption:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v16, v0

    const-string v1, "connect"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->connect:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v17, v0

    const-string v1, "ssl_handshake"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->ssl_handshake:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v18, v0

    const-string v1, "get_interface"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->get_interface:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v19, v0

    const-string v1, "sock_listen"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->sock_listen:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v20, v0

    const-string v1, "sock_bind_to_device"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->sock_bind_to_device:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v21, v0

    const-string v1, "sock_accept"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->sock_accept:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v22, v0

    const-string v1, "parse_address"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->parse_address:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v23, v0

    const-string v1, "enum_if"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->enum_if:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v24, v0

    const-string v1, "file_stat"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_stat:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v25, v0

    const-string v1, "file_copy"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_copy:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v26, v0

    const-string v1, "file_fallocate"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_fallocate:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v27, v0

    const-string v1, "file_hard_link"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_hard_link:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v28, v0

    const-string v1, "file_remove"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_remove:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v29, v0

    const-string v1, "file_rename"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_rename:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v30, v0

    const-string v1, "file_open"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_open:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v31, v0

    const-string v1, "mkdir"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->mkdir:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v32, v0

    const-string v1, "check_resume"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->check_resume:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v33, v0

    const-string v1, "exception"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->exception:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v34, v0

    const-string v1, "alloc_cache_piece"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->alloc_cache_piece:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v35, v0

    const-string v1, "partfile_move"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->partfile_move:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v36, v0

    const-string v1, "partfile_read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->partfile_read:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v37, v0

    const-string v1, "partfile_write"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->partfile_write:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v38, v0

    const-string v1, "hostname_lookup"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->hostname_lookup:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v39, v0

    const-string v1, "symlink"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->symlink:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v40, v0

    const-string v1, "handshake"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->handshake:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v41, v0

    const-string v1, "sock_option"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->sock_option:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v42, v0

    const-string v1, "enum_route"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->enum_route:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v43, v0

    const-string v1, "file_seek"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_seek:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v44, v0

    const-string v1, "timer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->timer:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v45, v0

    const-string v1, "file_mmap"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_mmap:Lorg/libtorrent4j/swig/operation_t;

    new-instance v0, Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v46, v0

    const-string v1, "file_truncate"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/operation_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->file_truncate:Lorg/libtorrent4j/swig/operation_t;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    filled-new-array/range {v0 .. v46}, [Lorg/libtorrent4j/swig/operation_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/operation_t;->swigValues:[Lorg/libtorrent4j/swig/operation_t;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/operation_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/operation_t;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/operation_t;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/operation_t;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/operation_t;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/operation_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/operation_t;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/operation_t;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/operation_t;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/operation_t;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/operation_t;->swigValues:[Lorg/libtorrent4j/swig/operation_t;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->swigValues:[Lorg/libtorrent4j/swig/operation_t;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/swig/operation_t;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/operation_t;->swigName:Ljava/lang/String;

    return-object p0
.end method
