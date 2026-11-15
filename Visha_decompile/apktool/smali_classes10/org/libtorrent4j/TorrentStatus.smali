.class public final Lorg/libtorrent4j/TorrentStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/TorrentStatus$State;
    }
.end annotation


# instance fields
.field private final ts:Lorg/libtorrent4j/swig/torrent_status;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    return-void
.end method

.method private static time2millis(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public activeDuration()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_active_duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public addedTime()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAdded_time()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/libtorrent4j/TorrentStatus;->time2millis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public allTimeDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAll_time_download()J

    move-result-wide v0

    return-wide v0
.end method

.method public allTimeUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAll_time_upload()J

    move-result-wide v0

    return-wide v0
.end method

.method public announcingToDht()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAnnouncing_to_dht()Z

    move-result p0

    return p0
.end method

.method public announcingToLsd()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAnnouncing_to_lsd()Z

    move-result p0

    return p0
.end method

.method public announcingToTrackers()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getAnnouncing_to_trackers()Z

    move-result p0

    return p0
.end method

.method public blockSize()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getBlock_size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->clone()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/libtorrent4j/TorrentStatus;
    .locals 2

    .line 2
    new-instance v0, Lorg/libtorrent4j/TorrentStatus;

    new-instance v1, Lorg/libtorrent4j/swig/torrent_status;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/swig/torrent_status;-><init>(Lorg/libtorrent4j/swig/torrent_status;)V

    invoke-direct {v0, v1}, Lorg/libtorrent4j/TorrentStatus;-><init>(Lorg/libtorrent4j/swig/torrent_status;)V

    return-object v0
.end method

.method public completedTime()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getCompleted_time()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/libtorrent4j/TorrentStatus;->time2millis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public connectCandidates()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getConnect_candidates()I

    move-result p0

    return p0
.end method

.method public connectionsLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getConnections_limit()I

    move-result p0

    return p0
.end method

.method public currentTracker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getCurrent_tracker()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public distributedCopies()F
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDistributed_copies()F

    move-result p0

    return p0
.end method

.method public distributedFraction()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDistributed_fraction()I

    move-result p0

    return p0
.end method

.method public distributedFullCopies()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDistributed_full_copies()I

    move-result p0

    return p0
.end method

.method public downBandwidthQueue()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDown_bandwidth_queue()I

    move-result p0

    return p0
.end method

.method public downloadPayloadRate()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDownload_payload_rate()I

    move-result p0

    return p0
.end method

.method public downloadRate()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getDownload_rate()I

    move-result p0

    return p0
.end method

.method public errorCode()Lorg/libtorrent4j/ErrorCode;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/ErrorCode;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getErrc()Lorg/libtorrent4j/swig/error_code;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/ErrorCode;-><init>(Lorg/libtorrent4j/swig/error_code;)V

    return-object v0
.end method

.method public finishedDuration()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_finished_duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public flags()Lorg/libtorrent4j/swig/torrent_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    return-object p0
.end method

.method public getInfoHashes()Lorg/libtorrent4j/InfoHash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/InfoHash;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getInfo_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/InfoHash;-><init>(Lorg/libtorrent4j/swig/info_hash_t;)V

    return-object v0
.end method

.method public hasIncoming()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getHas_incoming()Z

    move-result p0

    return p0
.end method

.method public hasMetadata()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getHas_metadata()Z

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getIs_finished()Z

    move-result p0

    return p0
.end method

.method public isMovingStorage()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getMoving_storage()Z

    move-result p0

    return p0
.end method

.method public isSeeding()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getIs_seeding()Z

    move-result p0

    return p0
.end method

.method public lastDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_last_download()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastSeenComplete()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getLast_seen_complete()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/libtorrent4j/TorrentStatus;->time2millis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_last_upload()J

    move-result-wide v0

    return-wide v0
.end method

.method public listPeers()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getList_peers()I

    move-result p0

    return p0
.end method

.method public listSeeds()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getList_seeds()I

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public needSaveResumeData()Lorg/libtorrent4j/swig/resume_data_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNeed_save_resume_data()Lorg/libtorrent4j/swig/resume_data_flags_t;

    move-result-object p0

    return-object p0
.end method

.method public nextAnnounce()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_next_announce()J

    move-result-wide v0

    return-wide v0
.end method

.method public numComplete()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_complete()I

    move-result p0

    return p0
.end method

.method public numConnections()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_connections()I

    move-result p0

    return p0
.end method

.method public numIncomplete()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_incomplete()I

    move-result p0

    return p0
.end method

.method public numPeers()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_peers()I

    move-result p0

    return p0
.end method

.method public numPieces()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_pieces()I

    move-result p0

    return p0
.end method

.method public numSeeds()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_seeds()I

    move-result p0

    return p0
.end method

.method public numUploads()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_uploads()I

    move-result p0

    return p0
.end method

.method public pieces()Lorg/libtorrent4j/PieceIndexBitfield;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/PieceIndexBitfield;

    iget-object v1, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status;->get_pieces()Lorg/libtorrent4j/swig/bitfield;

    move-result-object v1

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-direct {v0, v1, p0}, Lorg/libtorrent4j/PieceIndexBitfield;-><init>(Lorg/libtorrent4j/swig/bitfield;Lorg/libtorrent4j/swig/torrent_status;)V

    return-object v0
.end method

.method public progress()F
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getProgress()F

    move-result p0

    return p0
.end method

.method public progressPpm()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getProgress_ppm()I

    move-result p0

    return p0
.end method

.method public queuePosition()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_queue_position()I

    move-result p0

    return p0
.end method

.method public seedRank()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getSeed_rank()I

    move-result p0

    return p0
.end method

.method public seedingDuration()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->get_seeding_duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public state()Lorg/libtorrent4j/TorrentStatus$State;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getState()Lorg/libtorrent4j/swig/torrent_status$state_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/TorrentStatus$State;->fromSwig(I)Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object p0

    return-object p0
.end method

.method public final storageMode()Lorg/libtorrent4j/StorageMode;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getStorage_mode()Lorg/libtorrent4j/swig/storage_mode_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/StorageMode;->fromSwig(I)Lorg/libtorrent4j/StorageMode;

    move-result-object p0

    return-object p0
.end method

.method public swig()Lorg/libtorrent4j/swig/torrent_status;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    return-object p0
.end method

.method public total()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalDone()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_done()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_download()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalFailedBytes()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_failed_bytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalPayloadDownload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_payload_download()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalPayloadUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_payload_upload()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalRedundantBytes()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_redundant_bytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalUpload()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_upload()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalWanted()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_wanted()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalWantedDone()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_wanted_done()J

    move-result-wide v0

    return-wide v0
.end method

.method public upBandwidthQueue()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getUp_bandwidth_queue()I

    move-result p0

    return p0
.end method

.method public uploadPayloadRate()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getUpload_payload_rate()I

    move-result p0

    return p0
.end method

.method public uploadRate()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getUpload_rate()I

    move-result p0

    return p0
.end method

.method public uploadsLimit()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_status;->getUploads_limit()I

    move-result p0

    return p0
.end method

.method public verifiedPieces()Lorg/libtorrent4j/PieceIndexBitfield;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/PieceIndexBitfield;

    iget-object v1, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status;->get_verified_pieces()Lorg/libtorrent4j/swig/bitfield;

    move-result-object v1

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStatus;->ts:Lorg/libtorrent4j/swig/torrent_status;

    invoke-direct {v0, v1, p0}, Lorg/libtorrent4j/PieceIndexBitfield;-><init>(Lorg/libtorrent4j/swig/bitfield;Lorg/libtorrent4j/swig/torrent_status;)V

    return-object v0
.end method
