.class Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;

.field final synthetic c:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Ljava/lang/String;Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->c:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    iput-object p2, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->b:Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->c:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Z)Z

    iget-object v1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->c:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    iget-object v2, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->resumeDownload(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->c:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->a(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Z)Z

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$3;->b:Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/downloadsdk/OnCreateTaskCallback;->createTaskResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
