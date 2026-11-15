.class public interface abstract Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addTrackers(Ljava/util/Set;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forceRecheck()V
.end method

.method public abstract getActiveTime()J
.end method

.method public abstract getAvailability([I)D
.end method

.method public abstract getBencode()[B
.end method

.method public abstract getConnectedLeechers()I
.end method

.method public abstract getConnectedPeers()I
.end method

.method public abstract getConnectedSeeds()I
.end method

.method public abstract getDownloadSpeed()J
.end method

.method public abstract getDownloadSpeedLimit()I
.end method

.method public abstract getETA()J
.end method

.method public abstract getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
.end method

.method public abstract getFileSizes()[J
.end method

.method public abstract getFilesAvailability([I)[D
.end method

.method public abstract getFilesReceivedBytes()[J
.end method

.method public abstract getInfoHash()Ljava/lang/String;
.end method

.method public abstract getMaxConnections()I
.end method

.method public abstract getMaxUploads()I
.end method

.method public abstract getNumDownloadedPieces()I
.end method

.method public abstract getPartsFile()Landroid/net/Uri;
.end method

.method public abstract getPeerInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPiecesAvailability()[I
.end method

.method public abstract getProgress()I
.end method

.method public abstract getReceivedBytes()J
.end method

.method public abstract getSeedingTime()J
.end method

.method public abstract getShareRatio()D
.end method

.method public abstract getSize()J
.end method

.method public abstract getStateCode()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
.end method

.method public abstract getStream(I)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
.end method

.method public abstract getTorrentId()Ljava/lang/String;
.end method

.method public abstract getTorrentMetaInfo()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;
        }
    .end annotation
.end method

.method public abstract getTorrentName()Ljava/lang/String;
.end method

.method public abstract getTotalLeechers()I
.end method

.method public abstract getTotalPeers()I
.end method

.method public abstract getTotalSeeds()I
.end method

.method public abstract getTotalSentBytes()J
.end method

.method public abstract getTotalWanted()J
.end method

.method public abstract getTrackerInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrackersUrl()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUploadSpeed()J
.end method

.method public abstract getUploadSpeedLimit()I
.end method

.method public abstract hasMissingFiles()Z
.end method

.method public abstract havePiece(I)Z
.end method

.method public abstract isAutoManaged()Z
.end method

.method public abstract isDownloading()Z
.end method

.method public abstract isFinished()Z
.end method

.method public abstract isFirstLastPiecePriority()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isSeeding()Z
.end method

.method public abstract isSequentialDownload()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract makeMagnet(Z)Ljava/lang/String;
.end method

.method public abstract pause()V
.end method

.method public abstract pauseManually()V
.end method

.method public abstract pieces()[Z
.end method

.method public abstract prioritizeFiles([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .param p1    # [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract readPiece(I)V
.end method

.method public abstract remove(Z)V
.end method

.method public abstract replaceTrackers(Ljava/util/Set;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestStop()Lhb1;
.end method

.method public abstract requestTrackerAnnounce()V
.end method

.method public abstract resume()V
.end method

.method public abstract resumeManually()V
.end method

.method public abstract saveResumeData(Z)V
.end method

.method public abstract setAutoManaged(Z)V
.end method

.method public abstract setDownloadPath(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDownloadSpeedLimit(I)V
.end method

.method public abstract setFirstLastPiecePriority(Z)V
.end method

.method public abstract setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMaxConnections(I)V
.end method

.method public abstract setMaxUploads(I)V
.end method

.method public abstract setSequentialDownload(Z)V
.end method

.method public abstract setTorrentName(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUploadSpeedLimit(I)V
.end method
