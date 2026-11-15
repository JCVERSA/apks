.class public interface abstract Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSession;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
.end method

.method public abstract addTorrent(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException;,
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;,
            Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException;
        }
    .end annotation
.end method

.method public abstract cancelFetchMagnet(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteTorrent(Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract dhtNodes()J
.end method

.method public abstract disableIpFilter()V
.end method

.method public abstract download(Ljava/lang/String;Ljava/io/File;ZZ)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract enableIpFilter(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract fetchMagnet(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDhtNodes()J
.end method

.method public abstract getDownloadSpeed()J
.end method

.method public abstract getDownloadSpeedLimit()I
.end method

.method public abstract getListenPort()I
.end method

.method public abstract getLoadedMagnet(Ljava/lang/String;)[B
.end method

.method public abstract getLogger()Lorg/proninyaroslav/libretorrent/core/logger/Logger;
.end method

.method public abstract getPieceSizeList()[I
.end method

.method public abstract getSettings()Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
.end method

.method public abstract getTask(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
.end method

.method public abstract getTotalDownload()J
.end method

.method public abstract getTotalUpload()J
.end method

.method public abstract getUploadSpeed()J
.end method

.method public abstract getUploadSpeedLimit()I
.end method

.method public abstract hasTaskRunning()Z
.end method

.method public abstract isDHTEnabled()Z
.end method

.method public abstract isPeXEnabled()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract parseMagnet(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract pauseAll()V
.end method

.method public abstract pauseAllManually()V
.end method

.method public abstract removeListener(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
.end method

.method public abstract removeLoadedMagnet(Ljava/lang/String;)V
.end method

.method public abstract requestStop()V
.end method

.method public abstract restoreTorrents()V
.end method

.method public abstract resumeAll()V
.end method

.method public abstract resumeAllManually()V
.end method

.method public abstract setAutoManaged(Z)V
.end method

.method public abstract setDefaultTrackersList([Ljava/lang/String;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMaxConnectionsPerTorrent(I)V
.end method

.method public abstract setMaxUploadsPerTorrent(I)V
.end method

.method public abstract setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .param p1    # Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSettings(Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;Z)V
    .param p1    # Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method
