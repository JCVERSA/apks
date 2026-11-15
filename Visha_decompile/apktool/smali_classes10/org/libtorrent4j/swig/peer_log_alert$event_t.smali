.class public final Lorg/libtorrent4j/swig/peer_log_alert$event_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/swig/peer_log_alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "event_t"
.end annotation


# static fields
.field public static final allowed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final allowed_fast:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final assign_bandwidth:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final async_connect:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final async_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final async_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final attach:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final available:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final banning_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final bind:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final bitfield:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final cancel:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final cancel_all_requests:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final cannot_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final cannot_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final choke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final choking_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final chunked_encoding:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final close_reason:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final closing_connection:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final connect_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final connection:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final connection_closed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final connection_established:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final connection_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final construct:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final corked_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final dht_port:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final disk_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final dont_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final duplicate_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final duplicate_peer_resolution:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final encryption:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final exception:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final extended_handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final extension_message:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final extensions:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final file_async_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final file_async_read_complete:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final file_async_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final file_async_write_complete:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final graceful_pause:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final grow_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final handle_padfile:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final hash_reject:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final hash_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final hashes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final have_all:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final have_none:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final holepunch:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final holepunch_mode:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final i2p_pex:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final i2p_pex_diff:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final i2p_pex_full:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final incoming_payload:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final incoming_zeroes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final init:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final interested:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_allowed_fast:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_cancel:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_http_response:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final invalid_suggest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final keepalive:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final last_activity:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final local_endpoint:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final location:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final max_out_queue_size:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final merging_requests:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final missing_file:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final mutual_no_interest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final no_handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final no_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final not_interested:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final on_connected:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final on_files_checked:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final on_metadata:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final on_receive_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final on_send_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final open:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final optimistic_unchoke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final peer_class:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final peer_error:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final pex:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final pex_diff:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final pex_full:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final piece_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final piece_picker:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final piece_request_timed_out:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final pop_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final predictive_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final receive_bytes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final received:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final reject:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final request_bandwidth:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final request_time:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final restart_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final save_restart_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final seed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final seed_mode_file_async_hash:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final seed_mode_file_hash:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final send_barrier:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final send_buffer_depleted:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final send_buffer_watermark:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final set_dscp:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final set_non_blocking:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final set_peer_class:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final share_mode:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final short_lived_disconnect:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final slow_start:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final socket_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final status:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final suggest_piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final super_seeding:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final sync_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final torrent:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final torrent_aborted:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final tracker_response:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final unchoke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final update_interest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final update_queue_size:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final upload_only:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final ut_metadata:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final waiting_for_disk:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final web_seed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

.field public static final wrote:Lorg/libtorrent4j/swig/peer_log_alert$event_t;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 135

    new-instance v1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v0, v1

    const-string v2, "tracker_response"

    invoke-direct {v1, v2}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->tracker_response:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v2, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v1, v2

    const-string v3, "allowed"

    invoke-direct {v2, v3}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->allowed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v3, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v2, v3

    const-string v4, "seed"

    invoke-direct {v3, v4}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->seed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v4, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v3, v4

    const-string v5, "cancel_all_requests"

    invoke-direct {v4, v5}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->cancel_all_requests:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v5, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v4, v5

    const-string v6, "short_lived_disconnect"

    invoke-direct {v5, v6}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->short_lived_disconnect:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v6, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v5, v6

    const-string v7, "graceful_pause"

    invoke-direct {v6, v7}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->graceful_pause:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v7, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v6, v7

    const-string v8, "request_time"

    invoke-direct {v7, v8}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->request_time:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v8, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v7, v8

    const-string v9, "connection"

    invoke-direct {v8, v9}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->connection:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v9, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v8, v9

    const-string v10, "set_peer_class"

    invoke-direct {v9, v10}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->set_peer_class:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v10, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v9, v10

    const-string v11, "peer_class"

    invoke-direct {v10, v11}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->peer_class:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v11, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v10, v11

    const-string v12, "local_endpoint"

    invoke-direct {v11, v12}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->local_endpoint:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v12, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v11, v12

    const-string v13, "update_interest"

    invoke-direct {v12, v13}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->update_interest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v13, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v12, v13

    const-string v14, "init"

    invoke-direct {v13, v14}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v13, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->init:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v14, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v13, v14

    const-string v15, "received"

    invoke-direct {v14, v15}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v14, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->received:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v15, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v14, v15

    move-object/from16 v133, v0

    const-string v0, "attach"

    invoke-direct {v15, v0}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v15, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->attach:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object v15, v0

    move-object/from16 v134, v1

    const-string v1, "construct"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->construct:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v16, v0

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->encryption:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v17, v0

    const-string v1, "extensions"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->extensions:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v18, v0

    const-string v1, "upload_only"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->upload_only:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v19, v0

    const-string v1, "share_mode"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->share_mode:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v20, v0

    const-string v1, "send_barrier"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->send_barrier:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v21, v0

    const-string v1, "piece_picker"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->piece_picker:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v22, v0

    const-string v1, "duplicate_peer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->duplicate_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v23, v0

    const-string v1, "duplicate_peer_resolution"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->duplicate_peer_resolution:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v24, v0

    const-string v1, "super_seeding"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->super_seeding:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v25, v0

    const-string v1, "merging_requests"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->merging_requests:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v26, v0

    const-string v1, "predictive_have"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->predictive_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v27, v0

    const-string v1, "banning_peer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->banning_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v28, v0

    const-string v1, "choking_peer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->choking_peer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v29, v0

    const-string v1, "torrent"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->torrent:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v30, v0

    const-string v1, "optimistic_unchoke"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->optimistic_unchoke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v31, v0

    const-string v1, "max_out_queue_size"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->max_out_queue_size:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v32, v0

    const-string v1, "update_queue_size"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->update_queue_size:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v33, v0

    const-string v1, "last_activity"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->last_activity:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v34, v0

    const-string v1, "mutual_no_interest"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->mutual_no_interest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v35, v0

    const-string v1, "slow_start"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->slow_start:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v36, v0

    const-string v1, "send_buffer_watermark"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->send_buffer_watermark:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v37, v0

    const-string v1, "torrent_aborted"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->torrent_aborted:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v38, v0

    const-string v1, "piece_failed"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->piece_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v39, v0

    const-string v1, "request_bandwidth"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->request_bandwidth:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v40, v0

    const-string v1, "assign_bandwidth"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->assign_bandwidth:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v41, v0

    const-string v1, "waiting_for_disk"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->waiting_for_disk:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v42, v0

    const-string v1, "close_reason"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->close_reason:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v43, v0

    const-string v1, "peer_error"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->peer_error:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v44, v0

    const-string v1, "no_handshake"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->no_handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v45, v0

    const-string v1, "no_request"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->no_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v46, v0

    const-string v1, "piece_request_timed_out"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->piece_request_timed_out:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v47, v0

    const-string v1, "invalid_cancel"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_cancel:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v48, v0

    const-string v1, "invalid_request"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v49, v0

    const-string v1, "invalid_piece"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v50, v0

    const-string v1, "invalid_suggest"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_suggest:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v51, v0

    const-string v1, "invalid_have"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v52, v0

    const-string v1, "invalid_allowed_fast"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_allowed_fast:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v53, v0

    const-string v1, "exception"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->exception:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v54, v0

    const-string v1, "holepunch"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->holepunch:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v55, v0

    const-string v1, "holepunch_mode"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->holepunch_mode:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v56, v0

    const-string v1, "send_buffer_depleted"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->send_buffer_depleted:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v57, v0

    const-string v1, "available"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->available:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v58, v0

    const-string v1, "grow_buffer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->grow_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v59, v0

    const-string v1, "async_write"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->async_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v60, v0

    const-string v1, "async_read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->async_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v61, v0

    const-string v1, "sync_read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->sync_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v62, v0

    const-string v1, "cannot_write"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->cannot_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v63, v0

    const-string v1, "cannot_read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->cannot_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v64, v0

    const-string v1, "on_receive_data"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->on_receive_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v65, v0

    const-string v1, "on_send_data"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->on_send_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v66, v0

    const-string v1, "wrote"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->wrote:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v67, v0

    const-string v1, "read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v68, v0

    const-string v1, "corked_write"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->corked_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v69, v0

    const-string v1, "file_async_write"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->file_async_write:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v70, v0

    const-string v1, "file_async_write_complete"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->file_async_write_complete:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v71, v0

    const-string v1, "file_async_read"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->file_async_read:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v72, v0

    const-string v1, "file_async_read_complete"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->file_async_read_complete:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v73, v0

    const-string v1, "seed_mode_file_async_hash"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->seed_mode_file_async_hash:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v74, v0

    const-string v1, "seed_mode_file_hash"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->seed_mode_file_hash:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v75, v0

    const-string v1, "disk_buffer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->disk_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v76, v0

    const-string v1, "on_files_checked"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->on_files_checked:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v77, v0

    const-string v1, "open"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->open:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v78, v0

    const-string v1, "bind"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->bind:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v79, v0

    const-string v1, "socket_buffer"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->socket_buffer:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v80, v0

    const-string v1, "set_non_blocking"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->set_non_blocking:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v81, v0

    const-string v1, "set_dscp"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->set_dscp:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v82, v0

    const-string v1, "async_connect"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->async_connect:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v83, v0

    const-string v1, "connection_failed"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->connection_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v84, v0

    const-string v1, "connection_closed"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->connection_closed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v85, v0

    const-string v1, "closing_connection"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->closing_connection:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v86, v0

    const-string v1, "connect_failed"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->connect_failed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v87, v0

    const-string v1, "on_connected"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->on_connected:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v88, v0

    const-string v1, "connection_established"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->connection_established:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v89, v0

    const-string v1, "ut_metadata"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->ut_metadata:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v90, v0

    const-string v1, "on_metadata"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->on_metadata:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v91, v0

    const-string v1, "pex"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->pex:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v92, v0

    const-string v1, "pex_diff"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->pex_diff:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v93, v0

    const-string v1, "pex_full"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->pex_full:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v94, v0

    const-string v1, "i2p_pex"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->i2p_pex:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v95, v0

    const-string v1, "i2p_pex_diff"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->i2p_pex_diff:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v96, v0

    const-string v1, "i2p_pex_full"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->i2p_pex_full:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v97, v0

    const-string v1, "web_seed"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->web_seed:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v98, v0

    const-string v1, "save_restart_data"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->save_restart_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v99, v0

    const-string v1, "restart_data"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->restart_data:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v100, v0

    const-string v1, "location"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->location:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v101, v0

    const-string v1, "missing_file"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->missing_file:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v102, v0

    const-string v1, "receive_bytes"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->receive_bytes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v103, v0

    const-string v1, "status"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->status:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v104, v0

    const-string v1, "invalid_http_response"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->invalid_http_response:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v105, v0

    const-string v1, "chunked_encoding"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->chunked_encoding:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v106, v0

    const-string v1, "incoming_payload"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->incoming_payload:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v107, v0

    const-string v1, "incoming_zeroes"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->incoming_zeroes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v108, v0

    const-string v1, "pop_request"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->pop_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v109, v0

    const-string v1, "handle_padfile"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->handle_padfile:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v110, v0

    const-string v1, "allowed_fast"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->allowed_fast:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v111, v0

    const-string v1, "have_none"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->have_none:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v112, v0

    const-string v1, "have_all"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->have_all:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v113, v0

    const-string v1, "have"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v114, v0

    const-string v1, "dont_have"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->dont_have:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v115, v0

    const-string v1, "dht_port"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->dht_port:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v116, v0

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->cancel:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v117, v0

    const-string v1, "reject"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->reject:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v118, v0

    const-string v1, "interested"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->interested:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v119, v0

    const-string v1, "not_interested"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->not_interested:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v120, v0

    const-string v1, "keepalive"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->keepalive:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v121, v0

    const-string v1, "choke"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->choke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v122, v0

    const-string v1, "unchoke"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->unchoke:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v123, v0

    const-string v1, "suggest_piece"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->suggest_piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v124, v0

    const-string v1, "bitfield"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->bitfield:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v125, v0

    const-string v1, "request"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v126, v0

    const-string v1, "handshake"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v127, v0

    const-string v1, "hash_request"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->hash_request:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v128, v0

    const-string v1, "hashes"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->hashes:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v129, v0

    const-string v1, "hash_reject"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->hash_reject:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v130, v0

    const-string v1, "extension_message"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->extension_message:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v131, v0

    const-string v1, "extended_handshake"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->extended_handshake:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v132, v0

    const-string v1, "piece"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/peer_log_alert$event_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->piece:Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-object/from16 v0, v133

    move-object/from16 v1, v134

    filled-new-array/range {v0 .. v132}, [Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValues:[Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/peer_log_alert$event_t;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/peer_log_alert$event_t;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValues:[Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValues:[Lorg/libtorrent4j/swig/peer_log_alert$event_t;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

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

    const-class v2, Lorg/libtorrent4j/swig/peer_log_alert$event_t;

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

    iget p0, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/peer_log_alert$event_t;->swigName:Ljava/lang/String;

    return-object p0
.end method
