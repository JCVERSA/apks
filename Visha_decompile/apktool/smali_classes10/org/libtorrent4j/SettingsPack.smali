.class public final Lorg/libtorrent4j/SettingsPack;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/settings_pack;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/settings_pack;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/SettingsPack;-><init>(Lorg/libtorrent4j/swig/settings_pack;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/settings_pack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static defaultSettings()Lorg/libtorrent4j/SettingsPack;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/SettingsPack;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent;->default_settings()Lorg/libtorrent4j/swig/settings_pack;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/SettingsPack;-><init>(Lorg/libtorrent4j/swig/settings_pack;)V

    return-object v0
.end method


# virtual methods
.method public activeChecking()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_checking:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeChecking(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_checking:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeDhtLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_dht_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeDhtLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_dht_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeDownloads()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_downloads:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeDownloads(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_downloads:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeLsdLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_lsd_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeLsdLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_lsd_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeSeeds()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_seeds:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeSeeds(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_seeds:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public activeTrackerLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_tracker_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public activeTrackerLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->active_tracker_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public alertQueueSize()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_queue_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public alertQueueSize(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->alert_queue_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public anonymousMode(Z)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$bool_types;->anonymous_mode:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    return-object p0
.end method

.method public anonymousMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->anonymous_mode:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_bool(I)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack;->clear()V

    return-void
.end method

.method public clear(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->clear(I)V

    return-void
.end method

.method public connectionsLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->connections_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public connectionsLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->connections_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public downloadRateLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->download_rate_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public downloadRateLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->download_rate_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public getAnnouncePort()I
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->announce_port:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public getBoolean(I)Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->get_bool(I)Z

    move-result p0

    return p0
.end method

.method public getBytes(I)[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->get_bytes(I)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0
.end method

.method public getDhtBootstrapNodes()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInteger(I)I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public getMaxMetadataSize()I
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_metadata_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public getPeerFingerprint()[B
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->peer_fingerprint:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/SettingsPack;->getBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebtorrentStunServer()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->webtorrent_stun_server:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasValue(I)Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/settings_pack;->has_val(I)Z

    move-result p0

    return p0
.end method

.method public inactivityTimeout()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->inactivity_timeout:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public inactivityTimeout(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->inactivity_timeout:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public isEnableDht()Z
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_dht:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_bool(I)Z

    move-result p0

    return p0
.end method

.method public isEnableLsd()Z
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_lsd:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_bool(I)Z

    move-result p0

    return p0
.end method

.method public listenInterfaces()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->listen_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_str(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listenInterfaces(Ljava/lang/String;)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$string_types;->listen_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    return-object p0
.end method

.method public maxPeerlistSize()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_peerlist_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public maxPeerlistSize(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_peerlist_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public maxQueuedDiskBytes()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_queued_disk_bytes:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public maxQueuedDiskBytes(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_queued_disk_bytes:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public seedingOutgoingConnections(Z)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$bool_types;->seeding_outgoing_connections:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    return-object p0
.end method

.method public seedingOutgoingConnections()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->seeding_outgoing_connections:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_bool(I)Z

    move-result p0

    return p0
.end method

.method public sendBufferWatermark()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->send_buffer_watermark:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public sendBufferWatermark(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->send_buffer_watermark:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public setAnnouncePort(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->announce_port:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public setBoolean(IZ)Lorg/libtorrent4j/SettingsPack;
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {v0, p1, p2}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    return-object p0
.end method

.method public setBytes(I[B)V
    .locals 0

    invoke-static {p2}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p2

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/settings_pack;->set_bytes(ILorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public setDhtBootstrapNodes(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    return-void
.end method

.method public setEnableDht(Z)V
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_dht:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    return-void
.end method

.method public setEnableLsd(Z)V
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$bool_types;->enable_lsd:Lorg/libtorrent4j/swig/settings_pack$bool_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$bool_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_bool(IZ)V

    return-void
.end method

.method public setInteger(II)Lorg/libtorrent4j/SettingsPack;
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {v0, p1, p2}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public setMaxMetadataSize(I)V
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->max_metadata_size:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-void
.end method

.method public setPeerFingerprint([B)V
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->peer_fingerprint:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/SettingsPack;->setBytes(I[B)V

    return-void
.end method

.method public setString(ILjava/lang/String;)Lorg/libtorrent4j/SettingsPack;
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    invoke-virtual {v0, p1, p2}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    return-object p0
.end method

.method public setWebtorrentStunServer(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->webtorrent_stun_server:Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_str(ILjava/lang/String;)V

    return-void
.end method

.method public stopTrackerTimeout()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->stop_tracker_timeout:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public stopTrackerTimeout(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->stop_tracker_timeout:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public tickInterval()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->tick_interval:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public tickInterval(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->tick_interval:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method

.method public uploadRateLimit()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$int_types;->upload_rate_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/settings_pack;->get_int(I)I

    move-result p0

    return p0
.end method

.method public uploadRateLimit(I)Lorg/libtorrent4j/SettingsPack;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast v0, Lorg/libtorrent4j/swig/settings_pack;

    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$int_types;->upload_rate_limit:Lorg/libtorrent4j/swig/settings_pack$int_types;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/settings_pack$int_types;->swigValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;->set_int(II)V

    return-object p0
.end method
