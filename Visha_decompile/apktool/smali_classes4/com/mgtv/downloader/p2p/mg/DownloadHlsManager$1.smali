.class Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/p2p/mg/IP2PListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineDownloadError(II)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHlsDownloadSelect(I)V

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {v0, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setErrorCode(I)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadError, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onOfflineDownloadFinish(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHlsDownloadSelect(I)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadFinish, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadSDK_1.8.0"

    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfflineDownloadProgress(IJIJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOfflineDownloadRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHlsDownloadSelect(I)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadRemoved, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadSDK_1.8.0"

    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfflinePlayError(I)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOfflinePlayError, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onOnlinePlayError(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOnlinePlayError, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  errorCode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method
