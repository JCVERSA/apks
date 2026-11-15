.class public abstract Lwc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwda;


# instance fields
.field public final a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

.field public final b:Ljava/lang/String;

.field public c:Lof7;

.field public d:J

.field public final e:Landroid/os/Handler;

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwc0;->b:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lwc0;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(Lwc0;)V
    .locals 0

    invoke-static {p0}, Lwc0;->m(Lwc0;)V

    return-void
.end method

.method public static synthetic c(Lwc0;)V
    .locals 0

    invoke-static {p0}, Lwc0;->x(Lwc0;)V

    return-void
.end method

.method public static synthetic d(Lwc0;)V
    .locals 0

    invoke-static {p0}, Lwc0;->s(Lwc0;)V

    return-void
.end method

.method public static synthetic e(Lwc0;)V
    .locals 0

    invoke-static {p0}, Lwc0;->u(Lwc0;)V

    return-void
.end method

.method public static synthetic f(Lwc0;Lr5b;)V
    .locals 0

    invoke-static {p0, p1}, Lwc0;->q(Lwc0;Lr5b;)V

    return-void
.end method

.method public static synthetic g(Lwc0;)V
    .locals 0

    invoke-static {p0}, Lwc0;->o(Lwc0;)V

    return-void
.end method

.method public static final m(Lwc0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc0;->c:Lof7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v1, p0}, Lof7;->a(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    :cond_0
    return-void
.end method

.method public static final o(Lwc0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc0;->c:Lof7;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwc0;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v1, p0}, Lof7;->b(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    :cond_0
    return-void
.end method

.method public static final q(Lwc0;Lr5b;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc0;->c:Lof7;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwc0;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v1, p0, p1}, Lof7;->f(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Lr5b;)V

    :cond_0
    return-void
.end method

.method public static final s(Lwc0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc0;->c:Lof7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v1, p0}, Lof7;->h(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    :cond_0
    return-void
.end method

.method public static final u(Lwc0;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lwc0;->c:Lof7;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lwc0;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v4

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lof7;->e(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;JJ)V

    :cond_0
    return-void
.end method

.method public static final x(Lwc0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc0;->c:Lof7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v1, p0}, Lof7;->g(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Throwable;)Lcom/transsion/cloud_drive/transfer/exception/TransferException;
    .locals 8

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/transsion/cloud_drive/base/exceptions/NoConnectivityException;

    if-nez v0, :cond_8

    sget-object v0, Ld07;->a:Ld07;

    invoke-virtual {v0}, Ld07;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/transsion/cloud_drive/transfer/exception/ServerException;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/exception/ServerException;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/exception/ServerException;->getCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->AUTH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, p0

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SERVER:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lwc0;->k(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_7

    instance-of p0, p1, Ljava/lang/InterruptedException;

    if-nez p0, :cond_7

    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    instance-of p0, p1, Lcom/transsion/cloud_drive/transfer/exception/SpaceNotEnoughException;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->STORAGE_NOT_ENOUGH:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_6

    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->FILE_NOT_FOUND_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7
    :goto_1
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NETWORK_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_8
    :goto_2
    new-instance p0, Lcom/transsion/cloud_drive/transfer/exception/TransferException;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NO_NETWORK:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud_drive/transfer/exception/TransferException;-><init>(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_3
    return-object p1
.end method

.method public final B(Z)V
    .locals 0

    iput-boolean p1, p0, Lwc0;->f:Z

    return-void
.end method

.method public final C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setStatus(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    return-void
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lwc0;->h:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lwc0;->g:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public a(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lwc0;->h:Z

    iput-boolean v0, p0, Lwc0;->g:Z

    iget-boolean v0, p0, Lwc0;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lwc0;->l()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lwc0;->r()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lwc0;->h:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lwc0;->g:Z

    :goto_0
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lwc0;->f:Z

    return p0
.end method

.method public final i()Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;
    .locals 0

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    return-object p0
.end method

.method public final j()Lof7;
    .locals 0

    iget-object p0, p0, Lwc0;->c:Lof7;

    return-object p0
.end method

.method public final k(Ljava/lang/Throwable;)Z
    .locals 20

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    const/4 v3, 0x1

    if-nez v2, :cond_a

    instance-of v2, v0, Ljava/net/ConnectException;

    if-nez v2, :cond_a

    instance-of v2, v0, Ljava/net/SocketException;

    if-nez v2, :cond_a

    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v5, v2, Ljava/net/SocketTimeoutException;

    if-nez v5, :cond_3

    instance-of v5, v2, Ljava/net/ConnectException;

    if-nez v5, :cond_3

    instance-of v5, v2, Ljava/net/SocketException;

    if-nez v5, :cond_3

    instance-of v5, v2, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_6

    :cond_5
    const-string v0, ""

    :cond_6
    const-string v18, "no internet"

    const-string v19, "unable to resolve host"

    const-string v4, "network"

    const-string v5, "connection"

    const-string v6, "timeout"

    const-string v7, "socket"

    const-string v8, "host"

    const-string v9, "unreachable"

    const-string v10, "refused"

    const-string v11, "reset"

    const-string v12, "broken pipe"

    const-string v13, "no route to host"

    const-string v14, "connection timed out"

    const-string v15, "connection reset"

    const-string v16, "connection refused"

    const-string v17, "network is unreachable"

    filled-new-array/range {v4 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v4, v1, v5, v6}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v3

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    return v3
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->CANCEL:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p0, v0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Lqc0;

    invoke-direct {v1, p0}, Lqc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n()V
    .locals 2

    sget-object v0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->COMPLETED:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p0, v0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Luc0;

    invoke-direct {v1, p0}, Luc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Lr5b;)V
    .locals 2

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->ERROR:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p0, v0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Lsc0;

    invoke-direct {v1, p0, p1}, Lsc0;-><init>(Lwc0;Lr5b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r()V
    .locals 2

    sget-object v0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->PAUSED:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p0, v0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Lrc0;

    invoke-direct {v1, p0}, Lrc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setListener(Lof7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lof7;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwc0;->c:Lof7;

    return-void
.end method

.method public final t()V
    .locals 6

    sget-object v0, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->RUNNING:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {p0, v0}, Lwc0;->C(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lwc0;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTransferredSize()J

    move-result-wide v2

    iget-object v4, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getFileSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lwc0;->d:J

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Lvc0;

    invoke-direct {v1, p0}, Lvc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 3

    iget-object v0, p0, Lwc0;->c:Lof7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwc0;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    invoke-interface {v0, v2, p0, p1}, Lof7;->d(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Ljava/lang/Throwable;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lwc0;->a:Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->PREPARE:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    invoke-virtual {v0, v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setStatus(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V

    iget-object v0, p0, Lwc0;->e:Landroid/os/Handler;

    new-instance v1, Ltc0;

    invoke-direct {v1, p0}, Ltc0;-><init>(Lwc0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lwc0;->f:Z

    iget-boolean v0, p0, Lwc0;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwc0;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lwc0;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwc0;->r()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc0;->h:Z

    iput-boolean v0, p0, Lwc0;->g:Z

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc0;->f:Z

    iput-boolean v0, p0, Lwc0;->g:Z

    iput-boolean v0, p0, Lwc0;->h:Z

    return-void
.end method
