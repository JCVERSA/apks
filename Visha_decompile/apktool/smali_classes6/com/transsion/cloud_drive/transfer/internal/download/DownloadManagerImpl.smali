.class public final Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls03;


# instance fields
.field public final a:Lny2;

.field public final b:Lay2;

.field public final c:Lt5b;

.field public final d:Lgea;

.field public final e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;


# direct methods
.method public constructor <init>(Lny2;)V
    .locals 7

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->a:Lny2;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->a:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DbProvider;->a()Lq5b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;-><init>(Lq5b;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->b:Lay2;

    new-instance v0, Lt5b;

    invoke-direct {v0}, Lt5b;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->c:Lt5b;

    invoke-virtual {p1}, Lny2;->g()Lgea;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljfb;

    invoke-direct {v0}, Ljfb;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->d:Lgea;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p1}, Lny2;->c()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "download"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->q(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;->INSTANCE:Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl$resume$1;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->u(Ljava/lang/String;Le74;)V

    return-void
.end method

.method public c(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lof7;)V
    .locals 3

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;

    invoke-direct {v0, p1}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;-><init>(Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V

    iget-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->a:Lny2;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->c:Lt5b;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->b:Lay2;

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadExecuteTask;->S(Lny2;Ls5b;Lay2;)V

    invoke-virtual {v0, p2}, Lwc0;->setListener(Lof7;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m(Lwda;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/download/DownloadManagerImpl;->e:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->s(Ljava/lang/String;)V

    return-void
.end method
