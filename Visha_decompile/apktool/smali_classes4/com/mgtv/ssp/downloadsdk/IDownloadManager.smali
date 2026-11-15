.class public interface abstract Lcom/mgtv/ssp/downloadsdk/IDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkFile(Ljava/lang/String;)Z
.end method

.method public abstract createTaskWaitResume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
.end method

.method public abstract deleteDownloadTask(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConcurrentTaskCount(Ljava/lang/String;)I
.end method

.method public abstract getConfig(I)Ljava/lang/String;
.end method

.method public abstract getDownloadTask(Ljava/lang/String;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;
.end method

.method public abstract getDownloadTasks(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskOption(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Lcom/mgtv/ssp/downloadsdk/DlPluginContext;Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;)Ljava/lang/String;
.end method

.method public abstract isSupportDownload()Z
.end method

.method public abstract pauseDownload(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract resumeDownload(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setConfig(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setTaskOption(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
.end method
