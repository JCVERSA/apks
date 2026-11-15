.class Lcom/mgtv/downloader/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/net/entity/a;

.field final synthetic b:Lcom/mgtv/downloader/a/b;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/downloader/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete hls offline cache failed, videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", definition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media type not null, deleted mp4 offline, videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media type is null, deleted mp4 offline, videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$1;->b:Lcom/mgtv/downloader/a/b;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/mgtv/downloader/b$1;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v0, v1, p0}, Lcom/mgtv/downloader/a/b;->c(ILcom/mgtv/downloader/net/entity/a;)V

    :cond_3
    return-void
.end method
