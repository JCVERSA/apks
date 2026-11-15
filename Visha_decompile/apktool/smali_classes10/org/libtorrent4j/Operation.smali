.class public final enum Lorg/libtorrent4j/Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/Operation;

.field public static final enum ALLOC_CACHE_PIECE:Lorg/libtorrent4j/Operation;

.field public static final enum ALLOC_RECVBUF:Lorg/libtorrent4j/Operation;

.field public static final enum ALLOC_SNDBUF:Lorg/libtorrent4j/Operation;

.field public static final enum AVAILABLE:Lorg/libtorrent4j/Operation;

.field public static final enum BITTORRENT:Lorg/libtorrent4j/Operation;

.field public static final enum CHECK_RESUME:Lorg/libtorrent4j/Operation;

.field public static final enum CONNECT:Lorg/libtorrent4j/Operation;

.field public static final enum ENCRYPTION:Lorg/libtorrent4j/Operation;

.field public static final enum ENUM_IF:Lorg/libtorrent4j/Operation;

.field public static final enum ENUM_ROUTE:Lorg/libtorrent4j/Operation;

.field public static final enum EXCEPTION:Lorg/libtorrent4j/Operation;

.field public static final enum FILE:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_COPY:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_FALLOCATE:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_HARD_LINK:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_MMAP:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_OPEN:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_READ:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_REMOVE:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_RENAME:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_SEEK:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_STAT:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_TRUNCATE:Lorg/libtorrent4j/Operation;

.field public static final enum FILE_WRITE:Lorg/libtorrent4j/Operation;

.field public static final enum GETNAME:Lorg/libtorrent4j/Operation;

.field public static final enum GETPEERNAME:Lorg/libtorrent4j/Operation;

.field public static final enum GET_INTERFACE:Lorg/libtorrent4j/Operation;

.field public static final enum HANDSHAKE:Lorg/libtorrent4j/Operation;

.field public static final enum HOSTNAME_LOOKUP:Lorg/libtorrent4j/Operation;

.field public static final enum IOCONTROL:Lorg/libtorrent4j/Operation;

.field public static final enum MKDIR:Lorg/libtorrent4j/Operation;

.field public static final enum PARSE_ADDRESS:Lorg/libtorrent4j/Operation;

.field public static final enum PARTFILE_MOVE:Lorg/libtorrent4j/Operation;

.field public static final enum PARTFILE_READ:Lorg/libtorrent4j/Operation;

.field public static final enum PARTFILE_WRITE:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_ACCEPT:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_BIND:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_BIND_TO_DEVICE:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_LISTEN:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_OPEN:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_OPTION:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_READ:Lorg/libtorrent4j/Operation;

.field public static final enum SOCK_WRITE:Lorg/libtorrent4j/Operation;

.field public static final enum SSL_HANDSHAKE:Lorg/libtorrent4j/Operation;

.field public static final enum SYMLINK:Lorg/libtorrent4j/Operation;

.field public static final enum TIMER:Lorg/libtorrent4j/Operation;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/Operation;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/Operation;
    .locals 47

    sget-object v0, Lorg/libtorrent4j/Operation;->UNKNOWN:Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/Operation;->BITTORRENT:Lorg/libtorrent4j/Operation;

    sget-object v2, Lorg/libtorrent4j/Operation;->IOCONTROL:Lorg/libtorrent4j/Operation;

    sget-object v3, Lorg/libtorrent4j/Operation;->GETPEERNAME:Lorg/libtorrent4j/Operation;

    sget-object v4, Lorg/libtorrent4j/Operation;->GETNAME:Lorg/libtorrent4j/Operation;

    sget-object v5, Lorg/libtorrent4j/Operation;->ALLOC_RECVBUF:Lorg/libtorrent4j/Operation;

    sget-object v6, Lorg/libtorrent4j/Operation;->ALLOC_SNDBUF:Lorg/libtorrent4j/Operation;

    sget-object v7, Lorg/libtorrent4j/Operation;->FILE_WRITE:Lorg/libtorrent4j/Operation;

    sget-object v8, Lorg/libtorrent4j/Operation;->FILE_READ:Lorg/libtorrent4j/Operation;

    sget-object v9, Lorg/libtorrent4j/Operation;->FILE:Lorg/libtorrent4j/Operation;

    sget-object v10, Lorg/libtorrent4j/Operation;->SOCK_WRITE:Lorg/libtorrent4j/Operation;

    sget-object v11, Lorg/libtorrent4j/Operation;->SOCK_READ:Lorg/libtorrent4j/Operation;

    sget-object v12, Lorg/libtorrent4j/Operation;->SOCK_OPEN:Lorg/libtorrent4j/Operation;

    sget-object v13, Lorg/libtorrent4j/Operation;->SOCK_BIND:Lorg/libtorrent4j/Operation;

    sget-object v14, Lorg/libtorrent4j/Operation;->AVAILABLE:Lorg/libtorrent4j/Operation;

    sget-object v15, Lorg/libtorrent4j/Operation;->ENCRYPTION:Lorg/libtorrent4j/Operation;

    sget-object v16, Lorg/libtorrent4j/Operation;->CONNECT:Lorg/libtorrent4j/Operation;

    sget-object v17, Lorg/libtorrent4j/Operation;->SSL_HANDSHAKE:Lorg/libtorrent4j/Operation;

    sget-object v18, Lorg/libtorrent4j/Operation;->GET_INTERFACE:Lorg/libtorrent4j/Operation;

    sget-object v19, Lorg/libtorrent4j/Operation;->SOCK_LISTEN:Lorg/libtorrent4j/Operation;

    sget-object v20, Lorg/libtorrent4j/Operation;->SOCK_BIND_TO_DEVICE:Lorg/libtorrent4j/Operation;

    sget-object v21, Lorg/libtorrent4j/Operation;->SOCK_ACCEPT:Lorg/libtorrent4j/Operation;

    sget-object v22, Lorg/libtorrent4j/Operation;->PARSE_ADDRESS:Lorg/libtorrent4j/Operation;

    sget-object v23, Lorg/libtorrent4j/Operation;->ENUM_IF:Lorg/libtorrent4j/Operation;

    sget-object v24, Lorg/libtorrent4j/Operation;->FILE_STAT:Lorg/libtorrent4j/Operation;

    sget-object v25, Lorg/libtorrent4j/Operation;->FILE_COPY:Lorg/libtorrent4j/Operation;

    sget-object v26, Lorg/libtorrent4j/Operation;->FILE_FALLOCATE:Lorg/libtorrent4j/Operation;

    sget-object v27, Lorg/libtorrent4j/Operation;->FILE_HARD_LINK:Lorg/libtorrent4j/Operation;

    sget-object v28, Lorg/libtorrent4j/Operation;->FILE_REMOVE:Lorg/libtorrent4j/Operation;

    sget-object v29, Lorg/libtorrent4j/Operation;->FILE_RENAME:Lorg/libtorrent4j/Operation;

    sget-object v30, Lorg/libtorrent4j/Operation;->FILE_OPEN:Lorg/libtorrent4j/Operation;

    sget-object v31, Lorg/libtorrent4j/Operation;->MKDIR:Lorg/libtorrent4j/Operation;

    sget-object v32, Lorg/libtorrent4j/Operation;->CHECK_RESUME:Lorg/libtorrent4j/Operation;

    sget-object v33, Lorg/libtorrent4j/Operation;->EXCEPTION:Lorg/libtorrent4j/Operation;

    sget-object v34, Lorg/libtorrent4j/Operation;->ALLOC_CACHE_PIECE:Lorg/libtorrent4j/Operation;

    sget-object v35, Lorg/libtorrent4j/Operation;->PARTFILE_MOVE:Lorg/libtorrent4j/Operation;

    sget-object v36, Lorg/libtorrent4j/Operation;->PARTFILE_READ:Lorg/libtorrent4j/Operation;

    sget-object v37, Lorg/libtorrent4j/Operation;->PARTFILE_WRITE:Lorg/libtorrent4j/Operation;

    sget-object v38, Lorg/libtorrent4j/Operation;->HOSTNAME_LOOKUP:Lorg/libtorrent4j/Operation;

    sget-object v39, Lorg/libtorrent4j/Operation;->SYMLINK:Lorg/libtorrent4j/Operation;

    sget-object v40, Lorg/libtorrent4j/Operation;->HANDSHAKE:Lorg/libtorrent4j/Operation;

    sget-object v41, Lorg/libtorrent4j/Operation;->SOCK_OPTION:Lorg/libtorrent4j/Operation;

    sget-object v42, Lorg/libtorrent4j/Operation;->ENUM_ROUTE:Lorg/libtorrent4j/Operation;

    sget-object v43, Lorg/libtorrent4j/Operation;->FILE_SEEK:Lorg/libtorrent4j/Operation;

    sget-object v44, Lorg/libtorrent4j/Operation;->TIMER:Lorg/libtorrent4j/Operation;

    sget-object v45, Lorg/libtorrent4j/Operation;->FILE_MMAP:Lorg/libtorrent4j/Operation;

    sget-object v46, Lorg/libtorrent4j/Operation;->FILE_TRUNCATE:Lorg/libtorrent4j/Operation;

    filled-new-array/range {v0 .. v46}, [Lorg/libtorrent4j/Operation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->unknown:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->UNKNOWN:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->bittorrent:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "BITTORRENT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->BITTORRENT:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->iocontrol:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "IOCONTROL"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->IOCONTROL:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->getpeername:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "GETPEERNAME"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->GETPEERNAME:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->getname:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "GETNAME"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->GETNAME:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->alloc_recvbuf:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ALLOC_RECVBUF"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ALLOC_RECVBUF:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->alloc_sndbuf:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ALLOC_SNDBUF"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ALLOC_SNDBUF:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_write:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_WRITE"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_WRITE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_read:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_READ"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_READ:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_write:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_WRITE"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_WRITE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_read:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_READ"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_READ:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_open:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_OPEN"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_OPEN:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_bind:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_BIND"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_BIND:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->available:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "AVAILABLE"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->AVAILABLE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->encryption:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ENCRYPTION"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ENCRYPTION:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->connect:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "CONNECT"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->CONNECT:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->ssl_handshake:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SSL_HANDSHAKE"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SSL_HANDSHAKE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->get_interface:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "GET_INTERFACE"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->GET_INTERFACE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_listen:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_LISTEN"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_LISTEN:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_bind_to_device:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_BIND_TO_DEVICE"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_BIND_TO_DEVICE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_accept:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_ACCEPT"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_ACCEPT:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->parse_address:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "PARSE_ADDRESS"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->PARSE_ADDRESS:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->enum_if:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ENUM_IF"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ENUM_IF:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_stat:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_STAT"

    const/16 v3, 0x18

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_STAT:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_copy:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_COPY"

    const/16 v3, 0x19

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_COPY:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_fallocate:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_FALLOCATE"

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_FALLOCATE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_hard_link:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_HARD_LINK"

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_HARD_LINK:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_remove:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_REMOVE"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_REMOVE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_rename:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_RENAME"

    const/16 v3, 0x1d

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_RENAME:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_open:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_OPEN"

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_OPEN:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->mkdir:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "MKDIR"

    const/16 v3, 0x1f

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->MKDIR:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->check_resume:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "CHECK_RESUME"

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->CHECK_RESUME:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->exception:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "EXCEPTION"

    const/16 v3, 0x21

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->EXCEPTION:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->alloc_cache_piece:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ALLOC_CACHE_PIECE"

    const/16 v3, 0x22

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ALLOC_CACHE_PIECE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->partfile_move:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "PARTFILE_MOVE"

    const/16 v3, 0x23

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->PARTFILE_MOVE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->partfile_read:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "PARTFILE_READ"

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->PARTFILE_READ:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->partfile_write:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "PARTFILE_WRITE"

    const/16 v3, 0x25

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->PARTFILE_WRITE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->hostname_lookup:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "HOSTNAME_LOOKUP"

    const/16 v3, 0x26

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->HOSTNAME_LOOKUP:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->symlink:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SYMLINK"

    const/16 v3, 0x27

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SYMLINK:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->handshake:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "HANDSHAKE"

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->HANDSHAKE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->sock_option:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "SOCK_OPTION"

    const/16 v3, 0x29

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->SOCK_OPTION:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->enum_route:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "ENUM_ROUTE"

    const/16 v3, 0x2a

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->ENUM_ROUTE:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_seek:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_SEEK"

    const/16 v3, 0x2b

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_SEEK:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->timer:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "TIMER"

    const/16 v3, 0x2c

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->TIMER:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_mmap:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_MMAP"

    const/16 v3, 0x2d

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_MMAP:Lorg/libtorrent4j/Operation;

    new-instance v0, Lorg/libtorrent4j/Operation;

    sget-object v1, Lorg/libtorrent4j/swig/operation_t;->file_truncate:Lorg/libtorrent4j/swig/operation_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result v1

    const-string v2, "FILE_TRUNCATE"

    const/16 v3, 0x2e

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Operation;->FILE_TRUNCATE:Lorg/libtorrent4j/Operation;

    invoke-static {}, Lorg/libtorrent4j/Operation;->$values()[Lorg/libtorrent4j/Operation;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/Operation;->$VALUES:[Lorg/libtorrent4j/Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/libtorrent4j/Operation;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/Operation;
    .locals 5

    .line 1
    const-class v0, Lorg/libtorrent4j/Operation;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/Operation;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lorg/libtorrent4j/Operation;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lorg/libtorrent4j/Operation;->UNKNOWN:Lorg/libtorrent4j/Operation;

    return-object p0
.end method

.method public static fromSwig(Lorg/libtorrent4j/swig/operation_t;)Lorg/libtorrent4j/Operation;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/Operation;->fromSwig(I)Lorg/libtorrent4j/Operation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/Operation;
    .locals 1

    const-class v0, Lorg/libtorrent4j/Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/Operation;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/Operation;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/Operation;->$VALUES:[Lorg/libtorrent4j/Operation;

    invoke-virtual {v0}, [Lorg/libtorrent4j/Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/Operation;

    return-object v0
.end method


# virtual methods
.method public nativeName()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget p0, p0, Lorg/libtorrent4j/Operation;->swigValue:I

    invoke-static {p0}, Lorg/libtorrent4j/swig/operation_t;->swigToEnum(I)Lorg/libtorrent4j/swig/operation_t;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->operation_name(Lorg/libtorrent4j/swig/operation_t;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "invalid enum value"

    return-object p0
.end method

.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/Operation;->swigValue:I

    return p0
.end method
