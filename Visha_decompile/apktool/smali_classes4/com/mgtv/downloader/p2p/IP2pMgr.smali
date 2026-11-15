.class public interface abstract Lcom/mgtv/downloader/p2p/IP2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/p2p/IP2pMgr$Config;,
        Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;
    }
.end annotation


# virtual methods
.method public abstract CleanCache()V
.end method

.method public abstract SetVideoDuration(Lcom/mgtv/downloader/p2p/ImgoP2pTask;I)V
.end method

.method public abstract addNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
.end method

.method public abstract createTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
.end method

.method public abstract deleteTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
.end method

.method public abstract enableP2pDownload(Z)V
.end method

.method public abstract enableP2pUpload(Z)V
.end method

.method public abstract getHttpport()I
.end method

.method public abstract getProxyUrl(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Ljava/lang/String;
.end method

.method public abstract getTaskInfo(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Lcom/mgtv/downloader/p2p/ImgoTaskInfo;
.end method

.method public abstract hasInit()Z
.end method

.method public abstract init(Lcom/mgtv/downloader/p2p/IP2pMgr$Config;Landroid/content/Context;)I
.end method

.method public abstract isTaskExist(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
.end method

.method public abstract pauseTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
.end method

.method public abstract readData(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Ljava/lang/String;[BJJ[J[I)J
.end method

.method public abstract removeNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
.end method

.method public abstract runTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
.end method

.method public abstract setApkType(I)I
.end method

.method public abstract setNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
.end method

.method public abstract setPlaySpeed(I)V
.end method

.method public abstract setPlayingTimepoint(Lcom/mgtv/downloader/p2p/ImgoP2pTask;IZ)V
.end method

.method public abstract setTaskPlayingStatus(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Z)V
.end method

.method public abstract startLog()I
.end method

.method public abstract stopLog()I
.end method

.method public abstract unInit()V
.end method
