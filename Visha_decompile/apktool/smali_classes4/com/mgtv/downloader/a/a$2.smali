.class Lcom/mgtv/downloader/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/a/b;

.field final synthetic b:Lcom/mgtv/downloader/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/a/a;Lcom/mgtv/downloader/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iput-object p2, p0, Lcom/mgtv/downloader/a/a$2;->a:Lcom/mgtv/downloader/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "taskID: "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delete hls offline cache failed, videoID: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", definition: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ret: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", media type not null, deleted mp4 offline, videoID: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    invoke-static {v1}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", media type is null, deleted mp4 offline, videoID: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v1, v1, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/mgtv/downloader/a/a$2;->a:Lcom/mgtv/downloader/a/b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v1

    iget-object p0, p0, Lcom/mgtv/downloader/a/a$2;->b:Lcom/mgtv/downloader/a/a;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v0, v1, p0}, Lcom/mgtv/downloader/a/b;->c(ILcom/mgtv/downloader/net/entity/a;)V

    :cond_3
    return-void
.end method
