.class public final Lorg/libtorrent4j/swig/close_reason_t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final blocked:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final corrupt_pieces:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final duplicate_peer_id:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final encryption_error:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_allow_fast_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_bitfield_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_cancel_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_choke_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_dht_port_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_dont_have_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_extended_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_have_all_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_have_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_have_none_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_info_hash:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_message_id:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_metadata:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_metadata_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_metadata_offset:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_metadata_request_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_not_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_pex_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_piece_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_reject_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_request_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_suggest_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final invalid_unchoke_message:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final metadata_too_big:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final no_memory:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final none:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final not_interested_upload_only:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final peer_churn:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final pex_message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final pex_too_frequent:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final port_blocked:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final protocol_blocked:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final request_when_choked:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final self_connection:Lorg/libtorrent4j/swig/close_reason_t;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/close_reason_t;

.field public static final timed_out_activity:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final timed_out_handshake:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final timed_out_interest:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final timed_out_request:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final timeout:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final too_many_connections:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final too_many_files:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final torrent_removed:Lorg/libtorrent4j/swig/close_reason_t;

.field public static final upload_to_upload:Lorg/libtorrent4j/swig/close_reason_t;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 53

    new-instance v1, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v0, v1

    const-string v2, "none"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->close_reason_t_none_get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/libtorrent4j/swig/close_reason_t;->none:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v2, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v1, v2

    const-string v3, "duplicate_peer_id"

    invoke-direct {v2, v3}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/libtorrent4j/swig/close_reason_t;->duplicate_peer_id:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v3, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v2, v3

    const-string v4, "torrent_removed"

    invoke-direct {v3, v4}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/libtorrent4j/swig/close_reason_t;->torrent_removed:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v4, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v3, v4

    const-string v5, "no_memory"

    invoke-direct {v4, v5}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/libtorrent4j/swig/close_reason_t;->no_memory:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v5, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v4, v5

    const-string v6, "port_blocked"

    invoke-direct {v5, v6}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/libtorrent4j/swig/close_reason_t;->port_blocked:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v6, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v5, v6

    const-string v7, "blocked"

    invoke-direct {v6, v7}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/libtorrent4j/swig/close_reason_t;->blocked:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v7, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v6, v7

    const-string v8, "upload_to_upload"

    invoke-direct {v7, v8}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/libtorrent4j/swig/close_reason_t;->upload_to_upload:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v8, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v7, v8

    const-string v9, "not_interested_upload_only"

    invoke-direct {v8, v9}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/libtorrent4j/swig/close_reason_t;->not_interested_upload_only:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v9, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v8, v9

    const-string v10, "timeout"

    invoke-direct {v9, v10}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/libtorrent4j/swig/close_reason_t;->timeout:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v10, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v9, v10

    const-string v11, "timed_out_interest"

    invoke-direct {v10, v11}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_interest:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v11, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v10, v11

    const-string v12, "timed_out_activity"

    invoke-direct {v11, v12}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_activity:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v12, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v11, v12

    const-string v13, "timed_out_handshake"

    invoke-direct {v12, v13}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_handshake:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v13, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v12, v13

    const-string v14, "timed_out_request"

    invoke-direct {v13, v14}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/libtorrent4j/swig/close_reason_t;->timed_out_request:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v14, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v13, v14

    const-string v15, "protocol_blocked"

    invoke-direct {v14, v15}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/libtorrent4j/swig/close_reason_t;->protocol_blocked:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v15, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v14, v15

    move-object/from16 v50, v0

    const-string v0, "peer_churn"

    invoke-direct {v15, v0}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/libtorrent4j/swig/close_reason_t;->peer_churn:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object v15, v0

    move-object/from16 v51, v1

    const-string v1, "too_many_connections"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->too_many_connections:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v16, v0

    const-string v1, "too_many_files"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->too_many_files:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v17, v0

    const-string v1, "encryption_error"

    move-object/from16 v52, v2

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->close_reason_t_encryption_error_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->encryption_error:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v18, v0

    const-string v1, "invalid_info_hash"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_info_hash:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v19, v0

    const-string v1, "self_connection"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->self_connection:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v20, v0

    const-string v1, "invalid_metadata"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v21, v0

    const-string v1, "metadata_too_big"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->metadata_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v22, v0

    const-string v1, "message_too_big"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v23, v0

    const-string v1, "invalid_message_id"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_message_id:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v24, v0

    const-string v1, "invalid_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v25, v0

    const-string v1, "invalid_piece_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_piece_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v26, v0

    const-string v1, "invalid_have_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v27, v0

    const-string v1, "invalid_bitfield_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_bitfield_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v28, v0

    const-string v1, "invalid_choke_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_choke_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v29, v0

    const-string v1, "invalid_unchoke_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_unchoke_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v30, v0

    const-string v1, "invalid_interested_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v31, v0

    const-string v1, "invalid_not_interested_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_not_interested_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v32, v0

    const-string v1, "invalid_request_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_request_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v33, v0

    const-string v1, "invalid_reject_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_reject_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v34, v0

    const-string v1, "invalid_allow_fast_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_allow_fast_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v35, v0

    const-string v1, "invalid_extended_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_extended_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v36, v0

    const-string v1, "invalid_cancel_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_cancel_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v37, v0

    const-string v1, "invalid_dht_port_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_dht_port_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v38, v0

    const-string v1, "invalid_suggest_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_suggest_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v39, v0

    const-string v1, "invalid_have_all_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_all_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v40, v0

    const-string v1, "invalid_dont_have_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_dont_have_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v41, v0

    const-string v1, "invalid_have_none_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_have_none_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v42, v0

    const-string v1, "invalid_pex_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_pex_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v43, v0

    const-string v1, "invalid_metadata_request_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_request_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v44, v0

    const-string v1, "invalid_metadata_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_message:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v45, v0

    const-string v1, "invalid_metadata_offset"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->invalid_metadata_offset:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v46, v0

    const-string v1, "request_when_choked"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->request_when_choked:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v47, v0

    const-string v1, "corrupt_pieces"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->corrupt_pieces:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v48, v0

    const-string v1, "pex_message_too_big"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->pex_message_too_big:Lorg/libtorrent4j/swig/close_reason_t;

    new-instance v0, Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v49, v0

    const-string v1, "pex_too_frequent"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/close_reason_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->pex_too_frequent:Lorg/libtorrent4j/swig/close_reason_t;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    filled-new-array/range {v0 .. v49}, [Lorg/libtorrent4j/swig/close_reason_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/close_reason_t;->swigValues:[Lorg/libtorrent4j/swig/close_reason_t;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/close_reason_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/close_reason_t;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/close_reason_t;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/close_reason_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/close_reason_t;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/close_reason_t;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/close_reason_t;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/close_reason_t;->swigValues:[Lorg/libtorrent4j/swig/close_reason_t;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/close_reason_t;->swigValues:[Lorg/libtorrent4j/swig/close_reason_t;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

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

    const-class v2, Lorg/libtorrent4j/swig/close_reason_t;

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

    iget p0, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/close_reason_t;->swigName:Ljava/lang/String;

    return-object p0
.end method
