.class public Lcom/transsion/sniffer_load/DownloadService$d;
.super Luz2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    const-string p1, "StatusDownloadListener"

    invoke-direct {p0, p1}, Luz2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->lastSize:J

    sub-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/sniffer_load/DownloadService$b;->F(Lcom/transsion/sniffer_load/DownloadService$b;Lcom/lzy/okgo/model/Progress;J)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$d;->i(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/model/Progress;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->C(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->e(Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "visha_DownloadService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip global retry after breakpoint recovery: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->b:I

    if-ltz v0, :cond_2

    invoke-static {p1}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->isMergeFailed(Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->D(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error, retry:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->start()V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    iget v3, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    if-nez v3, :cond_3

    invoke-static {v0}, Lty2;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget v0, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    invoke-static {v0}, Lty2;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    const-string v3, "dl_manager_downloading_error"

    const-string v4, "error_code"

    invoke-static {v3, v4, v0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a task is onError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/lzy/okgo/model/Progress;->isClient:Z

    if-eqz v2, :cond_6

    const-string v2, "dl_manager_downloading_cfail"

    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lp06;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v2, "dl_manager_downloading_sfail"

    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lp06;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/sniffer_load/DownloadService$b;->n0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->l0()V

    iget-boolean v0, p1, Lcom/lzy/okgo/model/Progress;->hasErrorNotify:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->I()V

    iput-boolean v1, p1, Lcom/lzy/okgo/model/Progress;->hasErrorNotify:Z

    :cond_8
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->d(Lcom/transsion/sniffer_load/DownloadService;)V

    return-void
.end method

.method public d(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task_start:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Progress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_DownloadService"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task_removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " needStartNext:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_DownloadService"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->l0()V

    :cond_0
    return-void
.end method

.method public i(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task_finish\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lzy/okgo/model/Progress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_DownloadService"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->X(Lcom/lzy/okgo/model/Progress;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/DownloadService$b;->l0()V

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object p1

    iget-object p2, p2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lr03;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/DownloadService$b;->J()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->d(Lcom/transsion/sniffer_load/DownloadService;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p1}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/DownloadService$b;->o()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$d;->c:Lcom/transsion/sniffer_load/DownloadService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method
