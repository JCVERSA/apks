.class public final Lez0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez0$a;
    }
.end annotation


# static fields
.field public static final h:Lez0$a;

.field public static volatile i:Lez0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls03;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public f:I

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lez0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lez0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lez0;->h:Lez0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez0;->a:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object p1

    invoke-virtual {p1}, Lrz0;->b()Ls03;

    move-result-object p1

    iput-object p1, p0, Lez0;->b:Ls03;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lez0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lez0;->f:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lez0;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lez0;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic j()Lez0;
    .locals 1

    sget-object v0, Lez0;->i:Lez0;

    return-object v0
.end method

.method public static final synthetic k(Lez0;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lez0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic l(Lez0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lez0;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic m(Lez0;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lez0;->y(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V

    return-void
.end method

.method public static final synthetic n(Lez0;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lez0;->z(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-void
.end method

.method public static final synthetic o(Lez0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lez0;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic p(Lez0;Ljava/lang/String;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lez0;->B(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static final synthetic q(Lez0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lez0;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic r(Lez0;)V
    .locals 0

    sput-object p0, Lez0;->i:Lez0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb41;

    invoke-interface {v0, p1}, Lb41;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;JJ)V
    .locals 7

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb41;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lb41;->d(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb41;

    invoke-interface {v0, p1}, Lb41;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D(Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;Lb41;)Ljava/lang/String;
    .locals 6

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, Lez0;->s(Ljava/lang/String;Lb41;)V

    :cond_0
    invoke-virtual {p0, p1}, Lez0;->t(Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)Lof7;

    move-result-object p2

    :try_start_0
    new-instance v1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lez0;->b:Ls03;

    invoke-interface {v2, v1, p2}, Ls03;->c(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lof7;)V

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p2, p0, Lez0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->FAILED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v1, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v1, v3, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setErrorInfo(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getErrorInfo()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lez0;->z(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lez0;->b:Ls03;

    invoke-interface {p0, v1}, Ls03;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public c(Ljava/lang/String;Lb41;)Z
    .locals 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lez0;->s(Ljava/lang/String;Lb41;)V

    :cond_1
    :try_start_0
    iget-object p2, p0, Lez0;->b:Ls03;

    invoke-interface {p2, v2}, Ls03;->b(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v0, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    invoke-virtual {p0, p1}, Lez0;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v3

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v3

    sget-object v6, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lez0;->b:Ls03;

    invoke-interface {v3, v2}, Ls03;->cancel(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p0, p0, Lez0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v1

    :cond_2
    :goto_0
    return v5
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lez0;->v(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;Lb41;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0;->D(Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;Lb41;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb41;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;
    .locals 0

    const-string p5, "fileId"

    invoke-static {p1, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "fileName"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "savePath"

    invoke-static {p3, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2, p4}, Lez0;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public i(Ljava/lang/String;Lb41;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;Lb41;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final t(Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)Lof7;
    .locals 1

    new-instance v0, Lez0$b;

    invoke-direct {v0, p0, p1}, Lez0$b;-><init>(Lez0;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "toString(...)"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "-"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lez0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    return-object p0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;
    .locals 18

    if-nez p4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lez0;->u()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    :goto_0
    sget-object v10, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lez0;->g:Z

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    move-object v1, v0

    const-wide/16 v11, 0x0

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const-string v9, ""

    move-object/from16 v3, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v17}, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb41;

    invoke-interface {v0, p1}, Lb41;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb41;

    invoke-interface {v0, p1, p2}, Lb41;->a(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 1

    iget-object p0, p0, Lez0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb41;

    invoke-interface {v0, p1, p2}, Lb41;->e(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
