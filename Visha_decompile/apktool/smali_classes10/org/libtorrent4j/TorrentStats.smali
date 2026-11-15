.class public final Lorg/libtorrent4j/TorrentStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/TorrentStats$SeriesMetric;
    }
.end annotation


# instance fields
.field private allTimeDownload:J

.field private allTimeUpload:J

.field private downloadPayloadRate:I

.field private downloadRate:I

.field private final downloadRateSeries:Lorg/libtorrent4j/IntSeries;

.field private final ih:Lorg/libtorrent4j/Sha1Hash;

.field private isFinished:Z

.field private isPaused:Z

.field private isSeeding:Z

.field private isSequentialDownload:Z

.field private listPeers:I

.field private listSeeds:I

.field private final maxSamples:I

.field private needSaveResume:Z

.field private numConnections:I

.field private numPeers:I

.field private numPieces:I

.field private numSeeds:I

.field private progress:F

.field private progressPpm:I

.field private state:Lorg/libtorrent4j/TorrentStatus$State;

.field private final time:Lorg/libtorrent4j/IntSeries;

.field private totalDone:J

.field private totalDownload:J

.field private totalPayloadDownload:J

.field private totalPayloadUpload:J

.field private totalUpload:J

.field private totalWanted:J

.field private totalWantedDone:J

.field private uploadPayloadRate:I

.field private uploadRate:I

.field private final uploadRateSeries:Lorg/libtorrent4j/IntSeries;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/Sha1Hash;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/Sha1Hash;->clone()Lorg/libtorrent4j/Sha1Hash;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStats;->ih:Lorg/libtorrent4j/Sha1Hash;

    iput p2, p0, Lorg/libtorrent4j/TorrentStats;->maxSamples:I

    new-instance p1, Lorg/libtorrent4j/IntSeries;

    invoke-direct {p1, p2}, Lorg/libtorrent4j/IntSeries;-><init>(I)V

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStats;->time:Lorg/libtorrent4j/IntSeries;

    new-instance p1, Lorg/libtorrent4j/IntSeries;

    invoke-direct {p1, p2}, Lorg/libtorrent4j/IntSeries;-><init>(I)V

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStats;->downloadRateSeries:Lorg/libtorrent4j/IntSeries;

    new-instance p1, Lorg/libtorrent4j/IntSeries;

    invoke-direct {p1, p2}, Lorg/libtorrent4j/IntSeries;-><init>(I)V

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStats;->uploadRateSeries:Lorg/libtorrent4j/IntSeries;

    return-void
.end method


# virtual methods
.method public allTimeDownload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->allTimeDownload:J

    return-wide v0
.end method

.method public allTimeUpload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->allTimeUpload:J

    return-wide v0
.end method

.method public downloadPayloadRate()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->downloadPayloadRate:I

    return p0
.end method

.method public downloadRate()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->downloadRate:I

    return p0
.end method

.method public isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentStats;->isFinished:Z

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentStats;->isPaused:Z

    return p0
.end method

.method public isSeeding()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentStats;->isSeeding:Z

    return p0
.end method

.method public isSequentialDownload()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentStats;->isSequentialDownload:Z

    return p0
.end method

.method public last(Lorg/libtorrent4j/TorrentStats$SeriesMetric;)J
    .locals 0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/TorrentStats;->series(Lorg/libtorrent4j/TorrentStats$SeriesMetric;)Lorg/libtorrent4j/IntSeries;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/IntSeries;->last()J

    move-result-wide p0

    return-wide p0
.end method

.method public listPeers()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->listPeers:I

    return p0
.end method

.method public listSeeds()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->listSeeds:I

    return p0
.end method

.method public maxSamples()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->maxSamples:I

    return p0
.end method

.method public needSaveResume()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentStats;->needSaveResume:Z

    return p0
.end method

.method public numConnections()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->numConnections:I

    return p0
.end method

.method public numPeers()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->numPeers:I

    return p0
.end method

.method public numPieces()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->numPieces:I

    return p0
.end method

.method public numSeeds()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->numSeeds:I

    return p0
.end method

.method public progress()F
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->progress:F

    return p0
.end method

.method public progressPpm()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->progressPpm:I

    return p0
.end method

.method public series(Lorg/libtorrent4j/TorrentStats$SeriesMetric;)Lorg/libtorrent4j/IntSeries;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStats;->uploadRateSeries:Lorg/libtorrent4j/IntSeries;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "metric type not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentStats;->downloadRateSeries:Lorg/libtorrent4j/IntSeries;

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/libtorrent4j/TorrentStats;->time:Lorg/libtorrent4j/IntSeries;

    return-object p0
.end method

.method public state()Lorg/libtorrent4j/TorrentStatus$State;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentStats;->state:Lorg/libtorrent4j/TorrentStatus$State;

    return-object p0
.end method

.method public totalDone()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalDone:J

    return-wide v0
.end method

.method public totalDownload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalDownload:J

    return-wide v0
.end method

.method public totalPayloadDownload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalPayloadDownload:J

    return-wide v0
.end method

.method public totalPayloadUpload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalPayloadUpload:J

    return-wide v0
.end method

.method public totalUpload()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalUpload:J

    return-wide v0
.end method

.method public totalWanted()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalWanted:J

    return-wide v0
.end method

.method public totalWantedDone()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/TorrentStats;->totalWantedDone:J

    return-wide v0
.end method

.method public update(Lorg/libtorrent4j/TorrentStatus;)V
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/TorrentStats;->ih:Lorg/libtorrent4j/Sha1Hash;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentStatus;->getInfoHashes()Lorg/libtorrent4j/InfoHash;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/InfoHash;->getBest()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/Sha1Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/libtorrent4j/TorrentStats;->time:Lorg/libtorrent4j/IntSeries;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/libtorrent4j/IntSeries;->add(J)V

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentStatus;->swig()Lorg/libtorrent4j/swig/torrent_status;

    move-result-object v0

    iget-object v1, p0, Lorg/libtorrent4j/TorrentStats;->downloadRateSeries:Lorg/libtorrent4j/IntSeries;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getDownload_rate()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/libtorrent4j/IntSeries;->add(J)V

    iget-object v1, p0, Lorg/libtorrent4j/TorrentStats;->uploadRateSeries:Lorg/libtorrent4j/IntSeries;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getUpload_rate()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/libtorrent4j/IntSeries;->add(J)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_download()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalDownload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_upload()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalUpload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_payload_download()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalPayloadDownload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_payload_upload()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalPayloadUpload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_done()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalDone:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_wanted_done()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalWantedDone:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getTotal_wanted()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->totalWanted:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getAll_time_upload()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->allTimeUpload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getAll_time_download()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/libtorrent4j/TorrentStats;->allTimeDownload:J

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getProgress()F

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->progress:F

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getProgress_ppm()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->progressPpm:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getDownload_rate()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->downloadRate:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getUpload_rate()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->uploadRate:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getDownload_payload_rate()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->downloadPayloadRate:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getUpload_payload_rate()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->uploadPayloadRate:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_seeds()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->numSeeds:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_peers()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->numPeers:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getList_seeds()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->listSeeds:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getList_peers()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->listPeers:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_pieces()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->numPieces:I

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getNum_connections()I

    move-result v1

    iput v1, p0, Lorg/libtorrent4j/TorrentStats;->numConnections:I

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentStatus;->state()Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/TorrentStats;->state:Lorg/libtorrent4j/TorrentStatus$State;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getNeed_save_resume_data()Lorg/libtorrent4j/swig/resume_data_flags_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/resume_data_flags_t;->non_zero()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentStats;->needSaveResume:Z

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->non_zero()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentStats;->isPaused:Z

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getFlags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p1, v1}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->non_zero()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentStats;->isSequentialDownload:Z

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getIs_seeding()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentStats;->isSeeding:Z

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_status;->getIs_finished()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentStats;->isFinished:Z

    return-void
.end method

.method public uploadPayloadRate()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->uploadPayloadRate:I

    return p0
.end method

.method public uploadRate()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStats;->uploadRate:I

    return p0
.end method
