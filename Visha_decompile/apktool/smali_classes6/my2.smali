.class public final Lmy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwda;


# instance fields
.field public final a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

.field public final b:Lby2;

.field public final c:Lhs4;

.field public final d:Ljava/util/concurrent/CountDownLatch;

.field public final e:Le74;

.field public final f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lby2;Lhs4;Ljava/util/concurrent/CountDownLatch;Le74;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chunkInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpDownloadChannel"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "latch"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressChangeCallback"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy2;->a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    iput-object p2, p0, Lmy2;->b:Lby2;

    iput-object p3, p0, Lmy2;->c:Lhs4;

    iput-object p4, p0, Lmy2;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lmy2;->e:Le74;

    const-string p3, "DownloadChunkTask"

    iput-object p3, p0, Lmy2;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lby2;->c()J

    move-result-wide p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmy2;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lmy2;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmy2;->c(Lmy2;J)V

    return-void
.end method

.method public static final c(Lmy2;J)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmy2;->b:Lby2;

    invoke-virtual {v0}, Lby2;->d()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lby2;->h(J)V

    iget-object v0, p0, Lmy2;->a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmy2;->a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setTransferredSize(J)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Lmy2;->e:Le74;

    iget-object p0, p0, Lmy2;->b:Lby2;

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public execute()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lmy2;->c:Lhs4;

    iget-object v1, p0, Lmy2;->a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmy2;->a:Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmy2;->b:Lby2;

    invoke-virtual {v3}, Lby2;->e()J

    move-result-wide v3

    iget-object v5, p0, Lmy2;->b:Lby2;

    invoke-virtual {v5}, Lby2;->d()J

    move-result-wide v5

    iget-object v7, p0, Lmy2;->b:Lby2;

    invoke-virtual {v7}, Lby2;->b()J

    move-result-wide v7

    new-instance v9, Lly2;

    invoke-direct {v9, p0}, Lly2;-><init>(Lmy2;)V

    invoke-interface/range {v0 .. v9}, Lhs4;->b(Ljava/lang/String;Ljava/lang/String;JJJLis3;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmy2;->g:Z

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lmy2;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lmy2;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " completed"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmy2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_1
    sget-object v1, Loq5;->a:Loq5;

    iget-object v2, p0, Lmy2;->f:Ljava/lang/String;

    const-string v3, "download file chunk error:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :goto_1
    sget-object v1, Loq5;->a:Loq5;

    iget-object v2, p0, Lmy2;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lmy2;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download file chunk cancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p0, p0, Lmy2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmy2;->h:Ljava/lang/String;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lmy2;->g:Z

    return p0
.end method
