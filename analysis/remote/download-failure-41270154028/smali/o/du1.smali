.class public abstract Lo/du1;
.super Lo/k08;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/du1$g;
    }
.end annotation


# instance fields
.field public k:J

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/k08;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-void
.end method

.method public static bridge synthetic s0(Lo/du1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/du1;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic t0(Lo/du1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lo/du1;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u0(Lo/du1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/du1;->J0(Ljava/lang/String;)V

    return-void
.end method

.method public static w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V
    .locals 4

    const-string v0, "download-task"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadInfo is null. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", identity="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/phoenix/download/DownloadInfo;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/phoenix/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", path="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/phoenix/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract A0(I)Ljava/io/File;
.end method

.method public abstract B0()I
.end method

.method public C0()V
    .locals 0

    invoke-virtual {p0}, Lo/du1;->L0()V

    return-void
.end method

.method public D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": [before]"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lo/ca8;->d(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    const-string p1, "[exist]dst size:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/du1;->M0(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "[rename]dst size:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lo/du1$g;->onSuccess(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p3, Lo/du1$f;

    invoke-direct {p3, p0, v6, p1, p2}, Lo/du1$f;-><init>(Lo/du1;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/io/File;)V

    invoke-static {p3}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object p3

    invoke-virtual {p1, p3}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object p3

    invoke-virtual {p1, p3}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance p3, Lo/du1$d;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/du1$d;-><init>(Lo/du1;Ljava/lang/StringBuilder;Ljava/io/File;Lo/du1$g;Lcom/snaptube/taskManager/task/TaskError;)V

    new-instance p2, Lo/du1$e;

    invoke-direct {p2, p0, v6}, Lo/du1$e;-><init>(Lo/du1;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p3, p2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public E0()V
    .locals 5

    iget-wide v0, p0, Lo/du1;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "all_file_ok"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0, v1}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    invoke-virtual {p0, v0}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public F0()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lo/a18;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v2, "Fail to start task due to permission issue."

    invoke-virtual {v1, v0, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v3, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v1, v0, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lo/du1;->l:J

    const/4 v0, -0x1

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/du1;->B0()I

    move-result v8

    const-wide/16 v9, -0x1

    if-ge v5, v8, :cond_7

    invoke-virtual {v1, v5}, Lo/du1;->A0(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1, v5}, Lo/du1;->z0(I)Lcom/phoenix/download/DownloadRequest;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-wide v12, v1, Lo/du1;->l:J

    invoke-virtual {v1, v8, v11}, Lo/du1;->v0(Ljava/io/File;Lcom/phoenix/download/DownloadRequest;)J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v1, Lo/du1;->l:J

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    move v0, v5

    :cond_4
    :goto_1
    iget-wide v12, v1, Lo/k08;->i:J

    cmp-long v8, v12, v3

    if-gez v8, :cond_6

    cmp-long v8, v6, v3

    if-ltz v8, :cond_5

    if-eqz v11, :cond_5

    iget-wide v11, v11, Lcom/phoenix/download/DownloadRequest;->h:J

    cmp-long v8, v11, v3

    if-lez v8, :cond_5

    add-long/2addr v6, v11

    goto :goto_2

    :cond_5
    move-wide v6, v9

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    cmp-long v5, v6, v3

    if-lez v5, :cond_8

    invoke-virtual {v1, v6, v7}, Lo/k08;->e0(J)V

    :cond_8
    if-gez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lo/du1;->C0()V

    return-void

    :cond_9
    invoke-virtual {v1, v0}, Lo/du1;->A0(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v0}, Lo/du1;->z0(I)Lcom/phoenix/download/DownloadRequest;

    move-result-object v6

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v7, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_b

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v11

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v12, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lo/qs1;->O(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v7, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v7, v7, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v7, v8}, Lo/qs1;->q(J)V

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-wide v9, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    :cond_b
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v7, v6, Lcom/phoenix/download/DownloadRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lo/qs1;->y(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->CREATED:Lcom/phoenix/download/DownloadInfo$Status;

    if-eq v0, v8, :cond_e

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->PENDING:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v8, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->DOWNLOADING:Lcom/phoenix/download/DownloadInfo$Status;

    if-eq v0, v8, :cond_d

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v8, Lcom/phoenix/download/DownloadInfo$Status;->PAUSED:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v8, :cond_f

    :cond_d
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v8, v3

    if-gez v0, :cond_f

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lo/qs1;->q(J)V

    goto :goto_4

    :cond_e
    :goto_3
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lo/qs1;->q(J)V

    :cond_f
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/phoenix/download/DownloadRequest;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/phoenix/download/DownloadRequest;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/qs1;->S(Lcom/phoenix/download/DownloadRequest;)Lcom/phoenix/download/DownloadInfo;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    if-nez v7, :cond_13

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->START_DOWNLOAD_REQUEST_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/phoenix/download/DownloadRequest;->h:J

    invoke-static {v7, v8}, Lcom/phoenix/download/b;->d(J)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "; "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v6, Lcom/phoenix/download/DownloadRequest;->h:J

    invoke-static {v6, v7}, Lo/ca8;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-interface {v7}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long v0, v8, v3

    if-gtz v0, :cond_14

    const-string v0, "Invalid download info"

    invoke-static {v7, v0}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->INVALID_DOWNLOAD_INFO:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/task/TaskError;->getDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "Download started !"

    invoke-static {v7, v0}, Lo/du1;->w0(Lcom/phoenix/download/DownloadInfo;Ljava/lang/String;)V

    iget-object v0, v1, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v1, v2, v3}, Lo/du1;->H0(J)V

    return-void
.end method

.method public final G0(J)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/du1;->m:Z

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->X2()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-nez v1, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lo/cu1;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/cu1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lo/k08;->v()V

    iget-object p2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p2, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lo/k08;->j0(Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lo/k08;->Y()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {p2}, Lo/rt1;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final H0(J)V
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-wide p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->d1(JJ)I

    return-void
.end method

.method public final I0()V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0, v1}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "task_start"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    invoke-virtual {p0, v0}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".spf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    const-string v1, "originPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    const-string v1, "thumbnailUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 p1, 0x1

    invoke-static {v1, v2, v0, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    return-void
.end method

.method public final K0(Lcom/phoenix/download/DownloadInfo;Z)V
    .locals 13

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->i()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->e()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lo/du1;->l:J

    add-long v7, v0, v2

    iget-wide v0, p0, Lo/k08;->i:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    :goto_1
    move-wide v9, v0

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->i()J

    move-result-wide v0

    iget-wide v4, p0, Lo/du1;->l:J

    add-long/2addr v0, v4

    goto :goto_1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lo/du1;->k:J

    sub-long v4, v0, v4

    const-wide/16 v11, 0x2bc

    cmp-long p2, v4, v11

    if-gez p2, :cond_3

    cmp-long p2, v7, v9

    if-ltz p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 p2, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    iput-wide v0, p0, Lo/du1;->k:J

    const/4 p2, 0x1

    :goto_4
    cmp-long v0, v7, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    if-nez v1, :cond_4

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lo/k08;->b0()V

    :cond_4
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->c()J

    move-result-wide v5

    move-object v4, p0

    move v11, p2

    invoke-virtual/range {v4 .. v11}, Lo/k08;->l0(JJJZ)I

    const-string v0, "running_description"

    invoke-interface {p1, v0}, Lcom/phoenix/download/DownloadInfo;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    :cond_5
    return-void
.end method

.method public L0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/du1;->M0(Ljava/lang/String;)V

    return-void
.end method

.method public M0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->AUDIO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o4()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/du1$c;

    invoke-direct {v0, p0}, Lo/du1$c;-><init>(Lo/du1;)V

    invoke-static {v0}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/du1$a;

    invoke-direct {v1, p0, p1}, Lo/du1$a;-><init>(Lo/du1;Ljava/lang/String;)V

    new-instance v2, Lo/du1$b;

    invoke-direct {v2, p0, p1}, Lo/du1$b;-><init>(Lo/du1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lo/du1;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public P()V
    .locals 5

    invoke-super {p0}, Lo/k08;->P()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v1, v2}, Lo/qs1;->q(J)V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v1, v2}, Lo/qs1;->q(J)V

    :cond_0
    invoke-super {p0}, Lo/k08;->Q()V

    return-void
.end method

.method public V(Lcom/phoenix/download/DownloadInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lo/k08;->V(Lcom/phoenix/download/DownloadInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/du1;->K0(Lcom/phoenix/download/DownloadInfo;Z)V

    return-void
.end method

.method public W(Lcom/phoenix/download/DownloadInfo;)V
    .locals 9

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/phoenix/download/DownloadInfo$Status;->SUCCESS:Lcom/phoenix/download/DownloadInfo$Status;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lo/du1;->K0(Lcom/phoenix/download/DownloadInfo;Z)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {p0}, Lo/du1;->F0()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->i()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v0}, Lo/cu1;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/phoenix/download/b;->e(Ljava/lang/String;J)Z

    move-result v0

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v5, Lcom/phoenix/download/DownloadInfo$Status;->DOWNLOADING:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v1, v5, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/phoenix/download/b;->b(Lcom/phoenix/download/DownloadInfo;Z)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    :cond_2
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v1

    sget-object v2, Lcom/phoenix/download/DownloadInfo$Status;->FAILED:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v6

    const-string v7, "status code is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x1e6

    if-ne v7, v6, :cond_4

    const-string v7, ", filePath is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uri is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", totalBytes is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/wandoujia/download/rpc/h;->f:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ", filePath length is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_1
    invoke-static {v3, v4}, Lo/ca8;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/ca8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_6

    invoke-static {}, Lo/bu1;->d()V

    iget-boolean v0, p0, Lo/du1;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v3, v4}, Lo/du1;->G0(J)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_ENOUGH_SPACE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v6}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    invoke-static {p1}, Lo/zr7;->b(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/zy8;->e(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->DOWNLOAD_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v6}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    const/16 v0, 0xbbb

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, p1}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    :cond_8
    :goto_2
    return-void
.end method

.method public X()V
    .locals 5

    invoke-super {p0}, Lo/k08;->X()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v1, v2}, Lo/qs1;->J(J)V

    :cond_0
    return-void
.end method

.method public Z()V
    .locals 4

    invoke-super {p0}, Lo/k08;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/du1;->I0()V

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    iget-wide v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v2, v3, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->k1(JI)V

    invoke-virtual {p0}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lo/a18;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->NO_STORAGE_PERMISSION:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Fail to start task due to permission issue."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f0(Lcom/phoenix/download/DownloadInfo;)Z
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getId()J

    move-result-wide v0

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v0(Ljava/io/File;Lcom/phoenix/download/DownloadRequest;)J
    .locals 1

    iget-object v0, p2, Lcom/phoenix/download/DownloadRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/wc1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p1, p2, Lcom/phoenix/download/DownloadRequest;->h:J

    return-wide p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|ext:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0, v0, p1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/k08;->A()V

    :goto_0
    return-void
.end method

.method public final y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    if-le v1, v0, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {p1}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 v1, 0x270f

    if-ge v2, v1, :cond_5

    if-lez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".spf"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->y0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract z0(I)Lcom/phoenix/download/DownloadRequest;
.end method
