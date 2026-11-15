.class public final Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;
.super Lwc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;,
        Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$b;
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public k:Lny2;

.field public l:Ls5b;

.field public m:Lay2;

.field public n:Z

.field public o:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

.field public volatile p:J

.field public volatile q:J

.field public r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwc0;-><init>(Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    const-string v0, "DownloadExecuteTask"

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->j:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->P(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic F(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lmy2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->N(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lmy2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic G(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic H(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;Lby2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->U(Lby2;)V

    return-void
.end method

.method public static final N(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lmy2;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "$exception"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$executor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "error"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->z(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;)V

    return-void
.end method

.method public static final P(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->n()V

    return-void
.end method


# virtual methods
.method public final I(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace failed: unable to rename or delete old file, dest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5
    new-instance v0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace failed: rename temp to dest failed, temp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dest="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lcom/transsion/cloud_drive/transfer/exception/TransferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :goto_2
    if-eqz p0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_8
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replace failed with unexpected error, dest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :goto_3
    throw p0

    :cond_9
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dest parent dir invalid, dest="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final J()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->W()V

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download task["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is cancelled!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->y()V

    return-void
.end method

.method public final K()V
    .locals 6

    sget-object v0, Lrh1;->a:Lrh1;

    invoke-virtual {v0}, Lrh1;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v2

    const/high16 v4, 0xa00000

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: disk space is not enough"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/SpaceNotEnoughException;

    invoke-direct {p0}, Lcom/transsion/cloud_drive/transfer/exception/SpaceNotEnoughException;-><init>()V

    throw p0
.end method

.method public final L()Z
    .locals 11

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getContentHash()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "download task["

    if-nez v2, :cond_1

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: check file sum error,tmp file ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".tempFilePath] not exist"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lr5b;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->TMP_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lwc0;->p(Lr5b;)V

    return v3

    :cond_1
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getCrcAlgorithm()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "toLowerCase(...)"

    invoke-static {v2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x509bfc70

    if-eq v5, v6, :cond_5

    const v6, 0x5a86333

    if-eq v5, v6, :cond_4

    const v6, 0x5a86392

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "crc64"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Leq3;

    invoke-direct {v2, v0}, Leq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Leq3;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v5, "crc32"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ldq3;

    invoke-direct {v2, v0}, Ldq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ldq3;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v5, "crc32c"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    :goto_0
    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getCrcAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported CRC algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_1

    :cond_7
    new-instance v2, Lcq3;

    invoke-direct {v2, v0}, Lcq3;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lcq3;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getContentHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v1, Loq5;->a:Loq5;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getContentHash()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: check file has error, cloud hash:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", local hash:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lr5b;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CHECK_FILE_HASH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lwc0;->p(Lr5b;)V

    return v3

    :cond_8
    :goto_2
    return v1
.end method

.method public final M(Ljava/util/List;)V
    .locals 10

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lby2;

    invoke-virtual {v5}, Lby2;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lby2;

    invoke-virtual {v3, v1, v2}, Lby2;->h(J)V

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :cond_2
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setTransferredSize(J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lby2;

    invoke-virtual {v2}, Lby2;->d()J

    move-result-wide v3

    invoke-virtual {v2}, Lby2;->b()J

    move-result-wide v5

    invoke-virtual {v2}, Lby2;->e()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v1, :cond_6

    const-string v1, "config"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v1}, Lny2;->d()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v1, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    const-string v2, "parallel-download"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->o:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lby2;

    new-instance v2, Lmy2;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    sget-object v7, Lmt4;->a:Lmt4;

    new-instance v9, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;

    invoke-direct {v9, p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$download$2$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V

    move-object v4, v2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lmy2;-><init>(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lby2;Lhs4;Ljava/util/concurrent/CountDownLatch;Le74;)V

    invoke-virtual {v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m(Lwda;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lvy2;

    invoke-direct {v2, v0, p1, v1}, Lvy2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    invoke-virtual {v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->z(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->W()V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_8

    return-void

    :cond_8
    throw p0
.end method

.method public final O()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->L()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->a:Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setFileName(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->I(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    sget-object v0, Lrh1;->a:Lrh1;

    invoke-virtual {v0}, Lrh1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Luy2;

    invoke-direct {v2, p0}, Luy2;-><init>(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    if-nez v0, :cond_5

    const-string v0, "dbChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lay2;->delete(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download task success -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download task["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileName: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " completed]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename temp file to dest failed, temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dest="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final Q()V
    .locals 6

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->w()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] conflict"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwc0;->j()Lof7;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lof7;->c(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;->RENAME:Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    :cond_1
    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle download file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] conflict resolution:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwc0;->B(Z)V

    invoke-virtual {p0}, Lwc0;->l()V

    return-void

    :cond_3
    new-instance v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download task["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: prepare file info"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->V()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: check local storage space"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->K()V

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: init temp file"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->T()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->R()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->M(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->O()V

    return-void
.end method

.method public final R()Ljava/util/List;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    const-string v2, "dbChannel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lay2;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v1, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    const-string v6, "config"

    if-nez v1, :cond_2

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lny2;->b()J

    move-result-wide v7

    rem-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v1, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v1, :cond_3

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Lny2;->b()J

    move-result-wide v9

    div-long/2addr v4, v9

    :goto_0
    long-to-int v1, v4

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    iget-object v1, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v1, :cond_5

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    invoke-virtual {v1}, Lny2;->b()J

    move-result-wide v9

    div-long/2addr v4, v9

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v4, :cond_6

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    invoke-virtual {v4}, Lny2;->a()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    int-to-long v9, v1

    rem-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    div-long/2addr v5, v9

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v7

    rem-long/2addr v7, v9

    sub-long/2addr v5, v7

    add-int/lit8 v7, v1, -0x1

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    :goto_2
    new-instance v7, Lu15;

    invoke-direct {v7, v4, v1}, Lu15;-><init>(II)V

    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v7

    check-cast v8, Lq15;

    invoke-virtual {v8}, Lq15;->nextInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v9

    check-cast v9, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v9}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v9, v8, -0x1

    int-to-long v14, v9

    mul-long v18, v14, v5

    if-ne v8, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v8

    :goto_4
    move-wide/from16 v20, v8

    goto :goto_5

    :cond_9
    int-to-long v8, v8

    mul-long/2addr v8, v5

    goto :goto_4

    :goto_5
    new-instance v8, Lby2;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v23}, Lby2;-><init>(JLjava/lang/String;JJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v9, v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    if-nez v9, :cond_a

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v9, v3

    :cond_a
    invoke-interface {v9, v8}, Lay2;->c(Lby2;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lby2;->g(J)V

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    return-object v4
.end method

.method public final S(Lny2;Ls5b;Lay2;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileChannel"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbChannel"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->l:Ls5b;

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    return-void
.end method

.method public final T()Z
    .locals 11

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[\"*:<>?|\\\\]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Loq5;->a:Loq5;

    iget-object v3, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create download temp file fail,invalid file path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lr5b;

    sget-object v6, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PATH_RULE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid file path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lwc0;->p(Lr5b;)V

    return v2

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    const/4 v3, 0x0

    const-string v4, "dbChannel"

    if-nez v0, :cond_3

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lay2;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->r:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask$a;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->a:Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v7, v6}, Lcom/transsion/cloud_drive/transfer/common/CommonFileUtils;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setFileName(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    if-nez v0, :cond_5

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v3, v0

    :goto_1
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lay2;->delete(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    const-string v3, "create download temp file error:"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lr5b;

    sget-object v4, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lr5b;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lwc0;->p(Lr5b;)V

    return v2

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPath(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setTempFilePath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final U(Lby2;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->p:J

    invoke-virtual {p0}, Lwc0;->t()V

    :cond_1
    iget-wide v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->q:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v4

    check-cast v4, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    :cond_2
    iput-wide v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->q:J

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    if-nez p0, :cond_3

    const-string p0, "dbChannel"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3
    invoke-interface {p0, p1}, Lay2;->b(Lby2;)V

    :cond_4
    return-void
.end method

.method public final V()Z
    .locals 15

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->l:Ls5b;

    if-nez v0, :cond_0

    const-string v0, "fileChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ls5b;->a(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setFileSize(J)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getCrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setCrcAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->getCrc64Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->setContentHash(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    const-string v3, "download task["

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    sget-object v4, Loq5;->a:Loq5;

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->G(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v7

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: get file info fail,errorCode:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  errorMessage:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lr5b;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v8

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x1c

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Lr5b;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v4}, Lwc0;->p(Lr5b;)V

    :cond_2
    instance-of v2, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-nez v2, :cond_3

    return v1

    :cond_3
    check-cast v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    sget-object v1, Loq5;->a:Loq5;

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->G(Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] occur exception:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public final W()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->o:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->A()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->o:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->m:Lay2;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "dbChannel"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lay2;->delete(Ljava/lang/String;)V

    sget-object v0, Loq5;->a:Loq5;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] cache cleared"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public execute()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, " fail, retry "

    const-string v4, " fileName: "

    invoke-virtual/range {p0 .. p0}, Lwc0;->z()V

    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    const-string v5, "config"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_0
    invoke-virtual {v0}, Lny2;->e()I

    move-result v0

    const-wide/16 v7, 0x7d0

    const-string v9, "] occur error:"

    const-string v10, "download task["

    if-ltz v0, :cond_20

    const/4 v0, 0x0

    :goto_0
    move-object v11, v6

    :goto_1
    iget-boolean v12, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    if-nez v12, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v12

    if-nez v12, :cond_1f

    iget-object v12, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v12, :cond_1

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v12, v6

    :cond_1
    invoke-virtual {v12}, Lny2;->e()I

    move-result v12

    if-gt v0, v12, :cond_1f

    add-int/lit8 v11, v0, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->Q()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_1
    invoke-virtual {v1, v6}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_2

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    invoke-virtual {v0}, Lny2;->e()I

    move-result v0

    add-int/2addr v0, v14

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_4

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_5

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    sget-object v0, Loq5;->a:Loq5;

    iget-object v12, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v13

    check-cast v13, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v13}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v14

    check-cast v14, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v14}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V

    :cond_7
    :goto_2
    move v0, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_2
    invoke-virtual {v1, v15}, Lwc0;->k(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_8

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v6

    goto/16 :goto_b

    :cond_8
    :goto_3
    :try_start_4
    invoke-virtual {v1, v15}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v16

    check-cast v16, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v15}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_b

    :catch_1
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v15, 0x0

    :goto_4
    iget-boolean v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v15, :cond_9

    :try_start_7
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v0

    if-ne v0, v14, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_5
    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_a

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lny2;->e()I

    move-result v0

    add-int/2addr v0, v14

    :goto_6
    move-object v11, v15

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_c

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_c
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-lez v0, :cond_e

    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_d

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_e
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V

    move v0, v11

    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v11

    goto :goto_6

    :goto_8
    const/4 v6, 0x0

    const-wide/16 v7, 0x7d0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lwc0;->D()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V

    const/4 v15, 0x0

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->W()V

    invoke-virtual {v1, v6}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v15}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_9
    iget-boolean v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v15, :cond_11

    :try_start_a
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v0

    if-ne v0, v14, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_a
    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_12

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_12
    invoke-virtual {v0}, Lny2;->e()I

    move-result v0

    add-int/2addr v0, v14

    goto/16 :goto_6

    :cond_13
    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_14

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-lez v0, :cond_16

    iget-object v0, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v0, :cond_15

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_15
    invoke-virtual {v0}, Lny2;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_16
    sget-object v0, Loq5;->a:Loq5;

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    :cond_17
    move v0, v11

    goto/16 :goto_6

    :goto_b
    iget-boolean v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    if-nez v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lwc0;->h()Z

    move-result v6

    if-nez v6, :cond_1e

    if-eqz v15, :cond_18

    :try_start_b
    invoke-virtual {v15}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;->isNoNetwork()Z

    move-result v6

    if-ne v6, v14, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v1, v15}, Lwc0;->v(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :goto_c
    iget-object v2, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v2, :cond_19

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_d

    :cond_19
    move-object v6, v2

    :goto_d
    invoke-virtual {v6}, Lny2;->e()I

    goto :goto_e

    :cond_1a
    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v6, :cond_1b

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1b
    invoke-virtual {v6}, Lny2;->f()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_1d

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->k:Lny2;

    if-nez v6, :cond_1c

    invoke-static {v5}, Ly45;->B(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1c
    invoke-virtual {v6}, Lny2;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    :cond_1d
    sget-object v5, Loq5;->a:Loq5;

    iget-object v6, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_e

    :catch_4
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V

    :cond_1e
    :goto_e
    throw v0

    :cond_1f
    move-object v6, v11

    goto/16 :goto_10

    :cond_20
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->Q()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Lwc0;->k(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_21
    invoke-virtual {v1, v2}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v6

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lwc0;->D()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->J()V

    :goto_f
    const/4 v6, 0x0

    goto :goto_10

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->W()V

    invoke-virtual {v1, v2}, Lwc0;->A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    move-result-object v6

    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    if-nez v6, :cond_23

    return-void

    :cond_23
    sget-object v0, Loq5;->a:Loq5;

    iget-object v2, v1, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lwc0;->i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] finish,post error:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lr5b;->f:Lr5b$a;

    invoke-virtual {v0, v6}, Lr5b$a;->a(Lcom/transsion/cloud_drive/transfer/exception/TransferException;)Lr5b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lwc0;->p(Lr5b;)V

    throw v6
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->j:Ljava/lang/String;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->n:Z

    return p0
.end method
