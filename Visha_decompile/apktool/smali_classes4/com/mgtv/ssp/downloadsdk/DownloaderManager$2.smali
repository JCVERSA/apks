.class Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->init(Lcom/mgtv/ssp/downloadsdk/DlPluginContext;Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;->onProgressUpdate(Lcom/mgtv/ssp/downloadsdk/IDownloadManager;Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object p2

    invoke-interface {p1, p0, p2, p3}, Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;->onError(Lcom/mgtv/ssp/downloadsdk/IDownloadManager;Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {p1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;)Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    invoke-static {v0, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;->onStatusChanged(Lcom/mgtv/ssp/downloadsdk/IDownloadManager;Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;)V

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lcom/mgtv/downloader/net/entity/a;->L:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$2;->a:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    const-string p2, "end"

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
