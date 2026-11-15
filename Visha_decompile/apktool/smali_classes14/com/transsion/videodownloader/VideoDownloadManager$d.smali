.class public Lcom/transsion/videodownloader/VideoDownloadManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodownloader/VideoDownloadManager;->A(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljv4;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/videodownloader/VideoDownloadManager;


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->e:Lcom/transsion/videodownloader/VideoDownloadManager;

    iput-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iput-object p3, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->c:Ljv4;

    iput-object p5, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/videodownloader/VideoDownloadManager$d;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljv4;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->e:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltz2;->k(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteFolder:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoDownloadManager"

    invoke-static {p2, p1}, Leq5;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lzu3;->g(Ljava/io/File;)Z

    return-void
.end method

.method public onTransformFailed(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMerge onTransformFailed e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->c:Ljv4;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-interface {v0, v1}, Ljv4;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->e:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p0, p1}, Ltz2;->i(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/lang/Exception;)V

    return-void
.end method

.method public onTransformFinished()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMerge onTransformFinished outputPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const-string v1, "m3u8.mp4"

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    sget-object v1, Lcom/transsion/videodownloader/model/Video$Mime;->MIME_TYPE_MP4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setMimeType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setVideoType(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v4, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v5, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->b:Ljava/io/File;

    iget-object v6, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->c:Ljv4;

    iget-object v7, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->d:Ljava/lang/String;

    new-instance v0, Lyqb;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lyqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager$d;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onTransformProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPercent(F)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->e:Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-static {v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager$d;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0, p0, p1}, Ltz2;->j(Lcom/transsion/videodownloader/model/VideoTaskItem;F)V

    return-void
.end method
