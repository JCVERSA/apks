.class public Lorg/libtorrent4j/swig/peer_info;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bw_disk:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

.field public static final bw_idle:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

.field public static final bw_limit:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

.field public static final bw_network:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

.field public static final choked:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final connecting:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final dht:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final endgame_mode:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final handshake:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final holepunched:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final http_seed:Lorg/libtorrent4j/swig/connection_type_t;

.field public static final i2p_socket:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final incoming:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final interesting:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final local_connection:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final lsd:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final on_parole:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final optimistic_unchoke:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final outgoing_connection:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final pex:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final plaintext_encrypted:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final rc4_encrypted:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final remote_choked:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final remote_interested:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final resume_data:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final seed:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final snubbed:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final ssl_socket:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final standard_bittorrent:Lorg/libtorrent4j/swig/connection_type_t;

.field public static final supports_extensions:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final tracker:Lorg/libtorrent4j/swig/peer_source_flags_t;

.field public static final upload_only:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final utp_socket:Lorg/libtorrent4j/swig/peer_flags_t;

.field public static final web_seed:Lorg/libtorrent4j/swig/connection_type_t;


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_interesting_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->interesting:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_choked_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->choked:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_remote_interested_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->remote_interested:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_remote_choked_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->remote_choked:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_supports_extensions_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->supports_extensions:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_outgoing_connection_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->outgoing_connection:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_local_connection_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->local_connection:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_handshake_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->handshake:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_connecting_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->connecting:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_on_parole_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->on_parole:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_seed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->seed:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_optimistic_unchoke_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->optimistic_unchoke:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_snubbed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->snubbed:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_upload_only_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->upload_only:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_endgame_mode_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->endgame_mode:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_holepunched_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->holepunched:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_i2p_socket_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->i2p_socket:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_utp_socket_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->utp_socket:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_ssl_socket_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->ssl_socket:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_rc4_encrypted_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->rc4_encrypted:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_plaintext_encrypted_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->plaintext_encrypted:Lorg/libtorrent4j/swig/peer_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_tracker_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->tracker:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_dht_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->dht:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pex_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->pex:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_lsd_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->lsd:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_resume_data_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->resume_data:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_incoming_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->incoming:Lorg/libtorrent4j/swig/peer_source_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/connection_type_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_standard_bittorrent_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/connection_type_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->standard_bittorrent:Lorg/libtorrent4j/swig/connection_type_t;

    new-instance v0, Lorg/libtorrent4j/swig/connection_type_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_web_seed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/connection_type_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->web_seed:Lorg/libtorrent4j/swig/connection_type_t;

    new-instance v0, Lorg/libtorrent4j/swig/connection_type_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_http_seed_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/connection_type_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->http_seed:Lorg/libtorrent4j/swig/connection_type_t;

    new-instance v0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_bw_idle_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->bw_idle:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_bw_limit_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->bw_limit:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_bw_network_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->bw_network:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_bw_disk_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/peer_info;->bw_disk:Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_peer_info__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_info;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/peer_info;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/peer_info;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/peer_info;->getCPtr(Lorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_peer_info__SWIG_1(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/peer_info;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/peer_info;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/peer_info;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/peer_info;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_info;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/peer_info;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/peer_info;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_peer_info(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/peer_info;->delete()V

    return-void
.end method

.method public getBusy_requests()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_busy_requests_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getConnection_type()Lorg/libtorrent4j/swig/connection_type_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_connection_type_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/connection_type_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/connection_type_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getDown_speed()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_down_speed_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownload_queue_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_download_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownload_rate_peak()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_download_rate_peak_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownloading_block_index()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_block_index_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownloading_piece_index()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_piece_index_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownloading_progress()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_progress_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getDownloading_total()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_total_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getFailcount()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_failcount_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/peer_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_flags_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getNum_hashfails()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_num_hashfails_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getNum_pieces()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_num_pieces_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getPayload_down_speed()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_payload_down_speed_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getPayload_up_speed()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_payload_up_speed_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getPending_disk_bytes()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pending_disk_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getPending_disk_read_bytes()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pending_disk_read_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getPid()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pid_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/sha1_hash;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getProgress()F
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_progress_get(JLorg/libtorrent4j/swig/peer_info;)F

    move-result p0

    return p0
.end method

.method public getProgress_ppm()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_progress_ppm_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getQueue_bytes()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_queue_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getRead_state()Lorg/libtorrent4j/swig/bandwidth_state_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_read_state_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getReceive_buffer_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_buffer_size_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getReceive_buffer_watermark()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_buffer_watermark_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getReceive_quota()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_quota_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getRequest_timeout()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_request_timeout_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getRequests_in_buffer()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_requests_in_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getRtt()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_rtt_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getSend_buffer_size()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_send_buffer_size_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getSend_quota()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_send_quota_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getSource()Lorg/libtorrent4j/swig/peer_source_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_source_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/peer_source_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/peer_source_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getTarget_dl_queue_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_target_dl_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getTimed_out_requests()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_timed_out_requests_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getTotal_download()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_total_download_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal_upload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_total_upload_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUp_speed()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_up_speed_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getUpload_queue_length()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_upload_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getUpload_rate_peak()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_upload_rate_peak_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getUsed_receive_buffer()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_used_receive_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getUsed_send_buffer()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_used_send_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public getWrite_state()Lorg/libtorrent4j/swig/bandwidth_state_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_write_state_get(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public get_client()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_client(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_download_queue_time()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_download_queue_time(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_flags()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_flags(JLorg/libtorrent4j/swig/peer_info;)I

    move-result p0

    return p0
.end method

.method public get_last_active()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_last_active(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_last_request()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_last_request(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get_pieces()Lorg/libtorrent4j/swig/bitfield;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/bitfield;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_pieces(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/bitfield;-><init>(JZ)V

    return-object v0
.end method

.method public get_read_state()B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_read_state(JLorg/libtorrent4j/swig/peer_info;)B

    move-result p0

    return p0
.end method

.method public get_source()B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_source(JLorg/libtorrent4j/swig/peer_info;)B

    move-result p0

    return p0
.end method

.method public get_write_state()B
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_get_write_state(JLorg/libtorrent4j/swig/peer_info;)B

    move-result p0

    return p0
.end method

.method public local_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_local_endpoint(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method public remote_endpoint()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_remote_endpoint(JLorg/libtorrent4j/swig/peer_info;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method public setBusy_requests(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_busy_requests_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setConnection_type(Lorg/libtorrent4j/swig/connection_type_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/connection_type_t;->getCPtr(Lorg/libtorrent4j/swig/connection_type_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_connection_type_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/connection_type_t;)V

    return-void
.end method

.method public setDown_speed(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_down_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownload_queue_length(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_download_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownload_rate_peak(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_download_rate_peak_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownloading_block_index(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_block_index_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownloading_piece_index(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_piece_index_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownloading_progress(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_progress_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setDownloading_total(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_downloading_total_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setFailcount(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_failcount_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/peer_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/peer_flags_t;->getCPtr(Lorg/libtorrent4j/swig/peer_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_flags_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/peer_flags_t;)V

    return-void
.end method

.method public setNum_hashfails(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_num_hashfails_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setNum_pieces(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_num_pieces_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setPayload_down_speed(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_payload_down_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setPayload_up_speed(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_payload_up_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setPending_disk_bytes(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pending_disk_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setPending_disk_read_bytes(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pending_disk_read_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setPid(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_pid_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_progress_set(JLorg/libtorrent4j/swig/peer_info;F)V

    return-void
.end method

.method public setProgress_ppm(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_progress_ppm_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setQueue_bytes(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_queue_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setRead_state(Lorg/libtorrent4j/swig/bandwidth_state_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/bandwidth_state_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_read_state_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)V

    return-void
.end method

.method public setReceive_buffer_size(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_buffer_size_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setReceive_buffer_watermark(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_buffer_watermark_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setReceive_quota(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_receive_quota_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setRequest_timeout(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_request_timeout_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setRequests_in_buffer(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_requests_in_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setRtt(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_rtt_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setSend_buffer_size(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_send_buffer_size_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setSend_quota(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_send_quota_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setSource(Lorg/libtorrent4j/swig/peer_source_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/peer_source_flags_t;->getCPtr(Lorg/libtorrent4j/swig/peer_source_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_source_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/peer_source_flags_t;)V

    return-void
.end method

.method public setTarget_dl_queue_length(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_target_dl_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setTimed_out_requests(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_timed_out_requests_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setTotal_download(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_total_download_set(JLorg/libtorrent4j/swig/peer_info;J)V

    return-void
.end method

.method public setTotal_upload(J)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_total_upload_set(JLorg/libtorrent4j/swig/peer_info;J)V

    return-void
.end method

.method public setUp_speed(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_up_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setUpload_queue_length(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_upload_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setUpload_rate_peak(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_upload_rate_peak_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setUsed_receive_buffer(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_used_receive_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setUsed_send_buffer(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_used_send_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V

    return-void
.end method

.method public setWrite_state(Lorg/libtorrent4j/swig/bandwidth_state_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/bandwidth_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/bandwidth_state_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_write_state_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)V

    return-void
.end method

.method public set_endpoints(Lorg/libtorrent4j/swig/tcp_endpoint;Lorg/libtorrent4j/swig/tcp_endpoint;)V
    .locals 9

    iget-wide v0, p0, Lorg/libtorrent4j/swig/peer_info;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/tcp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/tcp_endpoint;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->peer_info_set_endpoints(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method
