.class public final enum Lorg/libtorrent4j/alerts/CloseReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/CloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum CORRUPT_PIECES:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum DUPLICATE_PEER_ID:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum ENCRYPTION_ERROR:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_ALLOW_FAST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_BITFIELD_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_CANCEL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_CHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_DHT_PORT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_DONT_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_HAVE_ALL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_HAVE_NONE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_INFO_HASH:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_MESSAGE_ID:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_METADATA:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_METADATA_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_METADATA_OFFSET:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_METADATA_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_NOT_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_PEX_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_PIECE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_REJECT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_SUGGEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum INVALID_UNCHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum METADATA_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum NONE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum NOT_INTERESTED_UPLOAD_ONLY:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum NO_MEMORY:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum NVALID_EXTENDED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum PEER_CHURN:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum PEX_MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum PEX_TOO_FREQUENT:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum PORT_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum PROTOCOL_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum REQUEST_WHEN_CHOKED:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum SELF_CONNECTION:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TIMED_OUT_ACTIVITY:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TIMED_OUT_HANDSHAKE:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TIMED_OUT_INTEREST:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TIMED_OUT_REQUEST:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TIMEOUT:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TOO_MANY_CONNECTIONS:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TOO_MANY_FILES:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum TORRENT_REMOVED:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/CloseReason;

.field public static final enum UPLOAD_TO_UPLOAD:Lorg/libtorrent4j/alerts/CloseReason;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/CloseReason;
    .locals 51

    sget-object v0, Lorg/libtorrent4j/alerts/CloseReason;->NONE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/alerts/CloseReason;->DUPLICATE_PEER_ID:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v2, Lorg/libtorrent4j/alerts/CloseReason;->TORRENT_REMOVED:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v3, Lorg/libtorrent4j/alerts/CloseReason;->NO_MEMORY:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v4, Lorg/libtorrent4j/alerts/CloseReason;->PORT_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v5, Lorg/libtorrent4j/alerts/CloseReason;->BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v6, Lorg/libtorrent4j/alerts/CloseReason;->UPLOAD_TO_UPLOAD:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v7, Lorg/libtorrent4j/alerts/CloseReason;->NOT_INTERESTED_UPLOAD_ONLY:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v8, Lorg/libtorrent4j/alerts/CloseReason;->TIMEOUT:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v9, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_INTEREST:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v10, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_ACTIVITY:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v11, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_HANDSHAKE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v12, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_REQUEST:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v13, Lorg/libtorrent4j/alerts/CloseReason;->PROTOCOL_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v14, Lorg/libtorrent4j/alerts/CloseReason;->PEER_CHURN:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v15, Lorg/libtorrent4j/alerts/CloseReason;->TOO_MANY_CONNECTIONS:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v16, Lorg/libtorrent4j/alerts/CloseReason;->TOO_MANY_FILES:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v17, Lorg/libtorrent4j/alerts/CloseReason;->ENCRYPTION_ERROR:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v18, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_INFO_HASH:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v19, Lorg/libtorrent4j/alerts/CloseReason;->SELF_CONNECTION:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v20, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v21, Lorg/libtorrent4j/alerts/CloseReason;->METADATA_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v22, Lorg/libtorrent4j/alerts/CloseReason;->MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v23, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_MESSAGE_ID:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v24, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v25, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_PIECE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v26, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v27, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_BITFIELD_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v28, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_CHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v29, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_UNCHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v30, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v31, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_NOT_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v32, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v33, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_REJECT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v34, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_ALLOW_FAST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v35, Lorg/libtorrent4j/alerts/CloseReason;->NVALID_EXTENDED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v36, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_CANCEL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v37, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_DHT_PORT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v38, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_SUGGEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v39, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_ALL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v40, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_DONT_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v41, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_NONE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v42, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_PEX_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v43, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v44, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v45, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_OFFSET:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v46, Lorg/libtorrent4j/alerts/CloseReason;->REQUEST_WHEN_CHOKED:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v47, Lorg/libtorrent4j/alerts/CloseReason;->CORRUPT_PIECES:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v48, Lorg/libtorrent4j/alerts/CloseReason;->PEX_MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v49, Lorg/libtorrent4j/alerts/CloseReason;->PEX_TOO_FREQUENT:Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v50, Lorg/libtorrent4j/alerts/CloseReason;->UNKNOWN:Lorg/libtorrent4j/alerts/CloseReason;

    filled-new-array/range {v0 .. v50}, [Lorg/libtorrent4j/alerts/CloseReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->none:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->NONE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->duplicate_peer_id:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "DUPLICATE_PEER_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->DUPLICATE_PEER_ID:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->torrent_removed:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TORRENT_REMOVED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TORRENT_REMOVED:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->no_memory:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "NO_MEMORY"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->NO_MEMORY:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->port_blocked:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "PORT_BLOCKED"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->PORT_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->blocked:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "BLOCKED"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->upload_to_upload:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "UPLOAD_TO_UPLOAD"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->UPLOAD_TO_UPLOAD:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->not_interested_upload_only:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "NOT_INTERESTED_UPLOAD_ONLY"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->NOT_INTERESTED_UPLOAD_ONLY:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->timeout:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TIMEOUT"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TIMEOUT:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_interest:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TIMED_OUT_INTEREST"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_INTEREST:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_activity:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TIMED_OUT_ACTIVITY"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_ACTIVITY:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_handshake:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TIMED_OUT_HANDSHAKE"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_HANDSHAKE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_request:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TIMED_OUT_REQUEST"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TIMED_OUT_REQUEST:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->protocol_blocked:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "PROTOCOL_BLOCKED"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->PROTOCOL_BLOCKED:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->peer_churn:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "PEER_CHURN"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->PEER_CHURN:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->too_many_connections:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_MANY_CONNECTIONS"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TOO_MANY_CONNECTIONS:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->too_many_files:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_MANY_FILES"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->TOO_MANY_FILES:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->encryption_error:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "ENCRYPTION_ERROR"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->ENCRYPTION_ERROR:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_info_hash:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_INFO_HASH"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_INFO_HASH:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->self_connection:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "SELF_CONNECTION"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->SELF_CONNECTION:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_METADATA"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->metadata_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "METADATA_TOO_BIG"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->METADATA_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "MESSAGE_TOO_BIG"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_message_id:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_MESSAGE_ID"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_MESSAGE_ID:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_MESSAGE"

    const/16 v3, 0x18

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_piece_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_PIECE_MESSAGE"

    const/16 v3, 0x19

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_PIECE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_HAVE_MESSAGE"

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_bitfield_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_BITFIELD_MESSAGE"

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_BITFIELD_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_choke_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_CHOKE_MESSAGE"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_CHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_unchoke_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_UNCHOKE_MESSAGE"

    const/16 v3, 0x1d

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_UNCHOKE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_INTERESTED_MESSAGE"

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_not_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_NOT_INTERESTED_MESSAGE"

    const/16 v3, 0x1f

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_NOT_INTERESTED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_request_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_REQUEST_MESSAGE"

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_reject_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_REJECT_MESSAGE"

    const/16 v3, 0x21

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_REJECT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_allow_fast_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_ALLOW_FAST_MESSAGE"

    const/16 v3, 0x22

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_ALLOW_FAST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_extended_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "NVALID_EXTENDED_MESSAGE"

    const/16 v3, 0x23

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->NVALID_EXTENDED_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_cancel_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_CANCEL_MESSAGE"

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_CANCEL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_dht_port_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_DHT_PORT_MESSAGE"

    const/16 v3, 0x25

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_DHT_PORT_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_suggest_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_SUGGEST_MESSAGE"

    const/16 v3, 0x26

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_SUGGEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_all_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_HAVE_ALL_MESSAGE"

    const/16 v3, 0x27

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_ALL_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_dont_have_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_DONT_HAVE_MESSAGE"

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_DONT_HAVE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_none_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_HAVE_NONE_MESSAGE"

    const/16 v3, 0x29

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_HAVE_NONE_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_pex_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_PEX_MESSAGE"

    const/16 v3, 0x2a

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_PEX_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_request_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_METADATA_REQUEST_MESSAGE"

    const/16 v3, 0x2b

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_REQUEST_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_message:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_METADATA_MESSAGE"

    const/16 v3, 0x2c

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_MESSAGE:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_offset:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_METADATA_OFFSET"

    const/16 v3, 0x2d

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->INVALID_METADATA_OFFSET:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->request_when_choked:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "REQUEST_WHEN_CHOKED"

    const/16 v3, 0x2e

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->REQUEST_WHEN_CHOKED:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->corrupt_pieces:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "CORRUPT_PIECES"

    const/16 v3, 0x2f

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->CORRUPT_PIECES:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->pex_message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "PEX_MESSAGE_TOO_BIG"

    const/16 v3, 0x30

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->PEX_MESSAGE_TOO_BIG:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->pex_too_frequent:Lorg/libtorrent4j/swig/close_reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/close_reason_t;->swigValue()I

    move-result v1

    const-string v2, "PEX_TOO_FREQUENT"

    const/16 v3, 0x31

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->PEX_TOO_FREQUENT:Lorg/libtorrent4j/alerts/CloseReason;

    new-instance v0, Lorg/libtorrent4j/alerts/CloseReason;

    const/16 v1, 0x32

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/CloseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->UNKNOWN:Lorg/libtorrent4j/alerts/CloseReason;

    invoke-static {}, Lorg/libtorrent4j/alerts/CloseReason;->$values()[Lorg/libtorrent4j/alerts/CloseReason;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/CloseReason;->$VALUES:[Lorg/libtorrent4j/alerts/CloseReason;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/CloseReason;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/CloseReason;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/CloseReason;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/CloseReason;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/CloseReason;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/CloseReason;->UNKNOWN:Lorg/libtorrent4j/alerts/CloseReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/CloseReason;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/CloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/CloseReason;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/CloseReason;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/CloseReason;->$VALUES:[Lorg/libtorrent4j/alerts/CloseReason;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/CloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/CloseReason;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/CloseReason;->swigValue:I

    return p0
.end method
