.class public interface abstract Lcom/mgtv/downloader/p2p/mg/IMgP2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildURL(I)Ljava/lang/String;
.end method

.method public abstract createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract deinitHLS()V
.end method

.method public abstract deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteOfflineCacheAll()I
.end method

.method public abstract getErrorCode(I)I
.end method

.method public abstract getOfflineM3U8Path(I)Ljava/lang/String;
.end method

.method public abstract getTaskInfo(I)Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initHLS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract pauseTask(I)I
.end method

.method public abstract pushEvent(I)V
.end method

.method public abstract runTask(I)I
.end method

.method public abstract setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V
.end method

.method public abstract setPlayTime(III)V
.end method

.method public abstract setPlayingPos(II)V
.end method

.method public abstract setReportThreeListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V
.end method

.method public abstract setServerConfig(Ljava/lang/String;)V
.end method

.method public abstract setUserData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopTask(I)I
.end method
