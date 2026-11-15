.class public final Lorg/libtorrent4j/SessionHandle;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/session_handle;",
        ">;"
    }
.end annotation


# static fields
.field public static final DELETE_FILES:Lorg/libtorrent4j/swig/remove_flags_t;

.field public static final DELETE_PARTFILE:Lorg/libtorrent4j/swig/remove_flags_t;

.field public static final DHT_ANNOUNCE_IMPLIED_PORT:I = 0x2

.field public static final DHT_ANNOUNCE_SEED:I = 0x1

.field public static final DHT_ANNOUNCE_SSL_TORRENT:I = 0x4

.field public static final PAUSED:Lorg/libtorrent4j/swig/session_flags_t;

.field public static final REOPEN_MAP_PORTS:Lorg/libtorrent4j/swig/reopen_network_flags_t;

.field public static final SAVE_DHT_STATE:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final SAVE_EXTENSION_STATE:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final SAVE_IP_FILTER:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final SAVE_SETTINGS:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final TCP:Lorg/libtorrent4j/swig/portmap_protocol;

.field public static final UDP:Lorg/libtorrent4j/swig/portmap_protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->udp:Lorg/libtorrent4j/swig/portmap_protocol;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->UDP:Lorg/libtorrent4j/swig/portmap_protocol;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->tcp:Lorg/libtorrent4j/swig/portmap_protocol;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->TCP:Lorg/libtorrent4j/swig/portmap_protocol;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->save_settings:Lorg/libtorrent4j/swig/save_state_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->SAVE_SETTINGS:Lorg/libtorrent4j/swig/save_state_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->save_dht_state:Lorg/libtorrent4j/swig/save_state_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->SAVE_DHT_STATE:Lorg/libtorrent4j/swig/save_state_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->save_extension_state:Lorg/libtorrent4j/swig/save_state_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->SAVE_EXTENSION_STATE:Lorg/libtorrent4j/swig/save_state_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->save_ip_filter:Lorg/libtorrent4j/swig/save_state_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->SAVE_IP_FILTER:Lorg/libtorrent4j/swig/save_state_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->delete_files:Lorg/libtorrent4j/swig/remove_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->DELETE_FILES:Lorg/libtorrent4j/swig/remove_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->delete_partfile:Lorg/libtorrent4j/swig/remove_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->DELETE_PARTFILE:Lorg/libtorrent4j/swig/remove_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->paused:Lorg/libtorrent4j/swig/session_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->PAUSED:Lorg/libtorrent4j/swig/session_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/session_handle;->reopen_map_ports:Lorg/libtorrent4j/swig/reopen_network_flags_t;

    sput-object v0, Lorg/libtorrent4j/SessionHandle;->REOPEN_MAP_PORTS:Lorg/libtorrent4j/swig/reopen_network_flags_t;

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/session_handle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addDhtNode(Lorg/libtorrent4j/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/Pair;->to_string_int_pair()Lorg/libtorrent4j/swig/string_int_pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->add_dht_node(Lorg/libtorrent4j/swig/string_int_pair;)V

    return-void
.end method

.method public addPortMapping(Lorg/libtorrent4j/PortmapProtocol;II)[I
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/PortmapProtocol;->swig()I

    move-result p1

    invoke-static {p1}, Lorg/libtorrent4j/swig/portmap_protocol;->swigToEnum(I)Lorg/libtorrent4j/swig/portmap_protocol;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/session_handle;->add_port_mapping_ex(Lorg/libtorrent4j/swig/portmap_protocol;II)Lorg/libtorrent4j/swig/int_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_vector;->size()I

    move-result p1

    new-array p2, p1, [I

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-virtual {p0, p3}, Lorg/libtorrent4j/swig/int_vector;->get(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public addTorrent(Lorg/libtorrent4j/AddTorrentParams;Lorg/libtorrent4j/ErrorCode;)Lorg/libtorrent4j/TorrentHandle;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    new-instance v1, Lorg/libtorrent4j/TorrentHandle;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1, v0}, Lorg/libtorrent4j/swig/session_handle;->add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    invoke-virtual {p2, v0}, Lorg/libtorrent4j/ErrorCode;->assign(Lorg/libtorrent4j/swig/error_code;)V

    return-object v1
.end method

.method public applySettings(Lorg/libtorrent4j/SettingsPack;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->apply_settings(Lorg/libtorrent4j/swig/settings_pack;)V

    return-void
.end method

.method public asyncAddTorrent(Lorg/libtorrent4j/AddTorrentParams;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void
.end method

.method public deletePortMapping(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->delete_port_mapping_ex(I)V

    return-void
.end method

.method public dhtAnnounce(Lorg/libtorrent4j/Sha1Hash;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dhtAnnounce(Lorg/libtorrent4j/Sha1Hash;IB)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/session_handle;->dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;IB)V

    return-void
.end method

.method public dhtDirectRequest(Lorg/libtorrent4j/UdpEndpoint;Lorg/libtorrent4j/Entry;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/UdpEndpoint;->swig()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p1

    invoke-virtual {p2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/session_handle;->dht_direct_request(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public dhtDirectRequest(Lorg/libtorrent4j/UdpEndpoint;Lorg/libtorrent4j/Entry;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/UdpEndpoint;->swig()Lorg/libtorrent4j/swig/udp_endpoint;

    move-result-object p1

    invoke-virtual {p2}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/swig/session_handle;->dht_direct_request(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/entry;J)V

    return-void
.end method

.method public dhtGetItem(Lorg/libtorrent4j/Sha1Hash;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_get_item(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dhtGetItem([B[B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_array_32([B)Lorg/libtorrent4j/swig/byte_array_32;

    move-result-object p1

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/session_handle;->dht_get_item(Lorg/libtorrent4j/swig/byte_array_32;Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public dhtGetPeers(Lorg/libtorrent4j/Sha1Hash;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_get_peers(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dhtPutItem(Lorg/libtorrent4j/Entry;)Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    .line 1
    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->dht_put_item(Lorg/libtorrent4j/swig/entry;)Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public dhtPutItem([B[BLorg/libtorrent4j/Entry;[B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_array_32([B)Lorg/libtorrent4j/swig/byte_array_32;

    move-result-object p1

    .line 3
    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_array_64([B)Lorg/libtorrent4j/swig/byte_array_64;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Lorg/libtorrent4j/Entry;->swig()Lorg/libtorrent4j/swig/entry;

    move-result-object p3

    .line 5
    invoke-static {p4}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p4

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/swig/session_handle;->dht_put_item(Lorg/libtorrent4j/swig/byte_array_32;Lorg/libtorrent4j/swig/byte_array_64;Lorg/libtorrent4j/swig/entry;Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public findTorrent(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/libtorrent4j/TorrentHandle;

    invoke-direct {p1, p0}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getListenPort()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->listen_port()I

    move-result p0

    return p0
.end method

.method public getSslListenPort()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->ssl_listen_port()I

    move-result p0

    return p0
.end method

.method public isDhtRunning()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_dht_running()Z

    move-result p0

    return p0
.end method

.method public isListening()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_listening()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_paused()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->is_valid()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->pause()V

    return-void
.end method

.method public postDhtStats()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_dht_stats()V

    return-void
.end method

.method public postSessionStats()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_session_stats()V

    return-void
.end method

.method public postTorrentUpdates()V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->post_torrent_updates()V

    return-void
.end method

.method public postTorrentUpdates(Lorg/libtorrent4j/swig/status_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->post_torrent_updates(Lorg/libtorrent4j/swig/status_flags_t;)V

    return-void
.end method

.method public removeTorrent(Lorg/libtorrent4j/TorrentHandle;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V

    :cond_0
    return-void
.end method

.method public removeTorrent(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/session_handle;->remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    :cond_0
    return-void
.end method

.method public reopenNetworkSockets()V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->reopen_network_sockets()V

    return-void
.end method

.method public reopenNetworkSockets(Lorg/libtorrent4j/swig/reopen_network_flags_t;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->reopen_network_sockets(Lorg/libtorrent4j/swig/reopen_network_flags_t;)V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->resume()V

    return-void
.end method

.method public sessionState()Lorg/libtorrent4j/SessionParams;
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/SessionParams;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->session_state()Lorg/libtorrent4j/swig/session_params;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/swig/session_params;)V

    return-object v0
.end method

.method public sessionState(Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/SessionParams;
    .locals 1

    .line 1
    new-instance v0, Lorg/libtorrent4j/SessionParams;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/session_handle;->session_state(Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/swig/session_params;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SessionParams;-><init>(Lorg/libtorrent4j/swig/session_params;)V

    return-object v0
.end method

.method public settings()Lorg/libtorrent4j/SettingsPack;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->get_settings()Lorg/libtorrent4j/swig/settings_pack;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/SettingsPack;-><init>(Lorg/libtorrent4j/swig/settings_pack;)V

    return-object v0
.end method

.method public torrents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TorrentHandle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/session_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->get_torrents()Lorg/libtorrent4j/swig/torrent_handle_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/torrent_handle_vector;->get(I)Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/TorrentHandle;-><init>(Lorg/libtorrent4j/swig/torrent_handle;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
