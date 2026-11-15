.class Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;


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

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportThreeFailed(II)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-virtual {p0, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setErrorCode(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReportThreeFailed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReportThreeSuccess(I)V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;->this$0:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReportThreeSuccess: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method
