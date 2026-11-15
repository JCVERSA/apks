.class Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/downloadsdk/DownloaderManager;->init(Lcom/mgtv/ssp/downloadsdk/DlPluginContext;Lcom/mgtv/ssp/downloadsdk/DownloadEventListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/downloadsdk/DlPluginContext;

.field final synthetic b:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/downloadsdk/DownloaderManager;Lcom/mgtv/ssp/downloadsdk/DlPluginContext;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;->b:Lcom/mgtv/ssp/downloadsdk/DownloaderManager;

    iput-object p2, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;->a:Lcom/mgtv/ssp/downloadsdk/DlPluginContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloaderManager$1;->a:Lcom/mgtv/ssp/downloadsdk/DlPluginContext;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/ssp/downloadsdk/DlPluginContext;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/ssp/utils/e;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    const-string p0, "20"

    return-object p0
.end method
