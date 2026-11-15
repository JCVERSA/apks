.class public final Lorg/libtorrent4j/AddTorrentParams;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/add_torrent_params;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/add_torrent_params;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/add_torrent_params;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static parseMagnetUri(Ljava/lang/String;)Lorg/libtorrent4j/AddTorrentParams;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p0, v0}, Lorg/libtorrent4j/swig/libtorrent;->parse_magnet_uri(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid magnet uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeResumeData(Lorg/libtorrent4j/AddTorrentParams;)Lorg/libtorrent4j/Entry;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->write_resume_data(Lorg/libtorrent4j/swig/add_torrent_params;)Lorg/libtorrent4j/swig/entry;

    move-result-object p0

    new-instance v0, Lorg/libtorrent4j/Entry;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    return-object v0
.end method

.method public static writeResumeDataBuf(Lorg/libtorrent4j/AddTorrentParams;)[B
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->write_resume_data_buf_ex(Lorg/libtorrent4j/swig/add_torrent_params;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bannedPeers()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getBanned_peers()Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    new-instance v3, Lorg/libtorrent4j/TcpEndpoint;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->get(I)Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bannedPeers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/TcpEndpoint;

    .line 7
    invoke-virtual {v1}, Lorg/libtorrent4j/TcpEndpoint;->swig()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->add(Lorg/libtorrent4j/swig/tcp_endpoint;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setBanned_peers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    return-void
.end method

.method public filePriorities([Lorg/libtorrent4j/Priority;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_file_priorities(Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public filePriorities()[Lorg/libtorrent4j/Priority;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->get_file_priorities()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/libtorrent4j/Priority;->vector2array(Lorg/libtorrent4j/swig/byte_vector;)[Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getCreated_by()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreationDate()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getCreation_date()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDhtNodes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getDht_nodes()Lorg/libtorrent4j/swig/string_int_pair_vector;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_int_pair_vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/string_int_pair;

    new-instance v2, Lorg/libtorrent4j/Pair;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/string_int_pair;->getFirst()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/string_int_pair;->getSecond()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDownloadLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getDownload_limit()I

    move-result p0

    return p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    return-object p0
.end method

.method public getInfoHashes()Lorg/libtorrent4j/InfoHash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/InfoHash;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/InfoHash;-><init>(Lorg/libtorrent4j/swig/info_hash_t;)V

    return-object v0
.end method

.method public getLastDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getLast_download()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getLast_upload()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxConnections()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getMax_connections()I

    move-result p0

    return p0
.end method

.method public getMaxUploads()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getMax_uploads()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getSave_path()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorageMode()Lorg/libtorrent4j/StorageMode;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getStorage_mode()Lorg/libtorrent4j/swig/storage_mode_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/StorageMode;->fromSwig(I)Lorg/libtorrent4j/StorageMode;

    move-result-object p0

    return-object p0
.end method

.method public getTorrentInfo()Lorg/libtorrent4j/TorrentInfo;
    .locals 1

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->ti_ptr()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->is_valid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/libtorrent4j/TorrentInfo;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTrackerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getTrackerid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTrackerTiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getTracker_tiers()Lorg/libtorrent4j/swig/int_vector;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getTrackers()Lorg/libtorrent4j/swig/string_vector;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUploadLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getUpload_limit()I

    move-result p0

    return p0
.end method

.method public getUrlSeeds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getUrl_seeds()Lorg/libtorrent4j/swig/string_vector;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getVersion()I

    move-result p0

    return p0
.end method

.method public peers()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->getPeers()Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    new-instance v3, Lorg/libtorrent4j/TcpEndpoint;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->get(I)Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public peers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/TcpEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/TcpEndpoint;

    .line 7
    invoke-virtual {v1}, Lorg/libtorrent4j/TcpEndpoint;->swig()Lorg/libtorrent4j/swig/tcp_endpoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/tcp_endpoint_vector;->add(Lorg/libtorrent4j/swig/tcp_endpoint;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setPeers(Lorg/libtorrent4j/swig/tcp_endpoint_vector;)V

    return-void
.end method

.method public piecePriorities([Lorg/libtorrent4j/Priority;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/Priority;->array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_piece_priorities(Lorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public piecePriorities()[Lorg/libtorrent4j/Priority;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/add_torrent_params;->get_piece_priorities()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/libtorrent4j/Priority;->vector2array(Lorg/libtorrent4j/swig/byte_vector;)[Lorg/libtorrent4j/Priority;

    move-result-object p0

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setCreated_by(Ljava/lang/String;)V

    return-void
.end method

.method public setCreationDate(J)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setCreation_date(J)V

    return-void
.end method

.method public setDhtNodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/string_int_pair_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/string_int_pair_vector;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/Pair;

    invoke-virtual {v1}, Lorg/libtorrent4j/Pair;->to_string_int_pair()Lorg/libtorrent4j/swig/string_int_pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/string_int_pair_vector;->add(Lorg/libtorrent4j/swig/string_int_pair;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setDht_nodes(Lorg/libtorrent4j/swig/string_int_pair_vector;)V

    return-void
.end method

.method public setDownloadLimit(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setDownload_limit(I)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    return-void
.end method

.method public setInfoHashes(Lorg/libtorrent4j/InfoHash;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setInfo_hashes(Lorg/libtorrent4j/swig/info_hash_t;)V

    return-void
.end method

.method public setLastDownload(J)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setLast_download(J)V

    return-void
.end method

.method public setLastUpload(J)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/add_torrent_params;->setLast_upload(J)V

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setMax_connections(I)V

    return-void
.end method

.method public setMaxUploads(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setMax_uploads(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setSave_path(Ljava/lang/String;)V

    return-void
.end method

.method public setStorageMode(Lorg/libtorrent4j/StorageMode;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p1}, Lorg/libtorrent4j/StorageMode;->swig()I

    move-result p1

    invoke-static {p1}, Lorg/libtorrent4j/swig/storage_mode_t;->swigToEnum(I)Lorg/libtorrent4j/swig/storage_mode_t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setStorage_mode(Lorg/libtorrent4j/swig/storage_mode_t;)V

    return-void
.end method

.method public setTorrentInfo(Lorg/libtorrent4j/TorrentInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->swig()Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->set_ti(Lorg/libtorrent4j/swig/torrent_info;)V

    return-void
.end method

.method public setTrackerId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setTrackerid(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackerTiers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/int_vector;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/int_vector;-><init>(Ljava/lang/Iterable;)V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setTracker_tiers(Lorg/libtorrent4j/swig/int_vector;)V

    return-void
.end method

.method public setTrackers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/string_vector;-><init>(Ljava/lang/Iterable;)V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setTrackers(Lorg/libtorrent4j/swig/string_vector;)V

    return-void
.end method

.method public setUploadLimit(I)V
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/add_torrent_params;->setUpload_limit(I)V

    return-void
.end method

.method public setUrlSeeds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/string_vector;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/swig/string_vector;-><init>(Ljava/lang/Iterable;)V

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/add_torrent_params;->setUrl_seeds(Lorg/libtorrent4j/swig/string_vector;)V

    return-void
.end method
