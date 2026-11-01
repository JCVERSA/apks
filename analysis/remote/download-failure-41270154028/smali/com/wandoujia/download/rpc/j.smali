.class public Lcom/wandoujia/download/rpc/j;
.super Lo/xu;

# interfaces
.implements Lcom/wandoujia/download/rpc/IBlockDownloadTask;
.implements Lcom/wandoujia/mtdownload/Dispatcher$e;
.implements Lcom/wandoujia/mtdownload/Dispatcher$d;


# static fields
.field public static r:Landroid/os/HandlerThread;

.field public static s:Landroid/os/Handler;

.field public static final t:Lo/pb4;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lo/yu;

.field public final d:Lcom/wandoujia/download/listener/NetworkStatusStub;

.field public e:Lcom/wandoujia/mtdownload/Dispatcher;

.field public f:Lcom/wandoujia/download/rpc/g;

.field public g:Lo/cn3;

.field public h:J

.field public i:Ljava/util/Map;

.field public j:J

.field public k:Lcom/wandoujia/mtdownload/c;

.field public l:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

.field public m:Lcom/wandoujia/mtdownload/impl/StopRequestException;

.field public n:Z

.field public o:J

.field public p:J

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wandoujia/download/rpc/j$c;

    invoke-direct {v0}, Lcom/wandoujia/download/rpc/j$c;-><init>()V

    sput-object v0, Lcom/wandoujia/download/rpc/j;->t:Lo/pb4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/listener/NetworkStatusStub;Lo/yu;JZ)V
    .locals 1

    invoke-direct {p0}, Lo/xu;-><init>()V

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iput-object v0, p0, Lcom/wandoujia/download/rpc/j;->l:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/j;->n:Z

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/j;->d:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/j;->c:Lo/yu;

    iput-wide p4, p0, Lcom/wandoujia/download/rpc/j;->p:J

    iput-boolean p6, p0, Lcom/wandoujia/download/rpc/j;->q:Z

    const-class p1, Lcom/wandoujia/download/rpc/j;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/wandoujia/download/rpc/j;->r:Landroid/os/HandlerThread;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "mtdownload-dispatcher"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/wandoujia/download/rpc/j;->r:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    sget-object p3, Lcom/wandoujia/download/rpc/j;->r:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p2, Lcom/wandoujia/download/rpc/j;->s:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public static bridge synthetic A(Lcom/wandoujia/download/rpc/j;Lcom/wandoujia/mtdownload/Dispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->e:Lcom/wandoujia/mtdownload/Dispatcher;

    return-void
.end method

.method public static bridge synthetic B(Lcom/wandoujia/download/rpc/j;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/j;->o:J

    return-void
.end method

.method public static bridge synthetic C()Lo/pb4;
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/j;->t:Lo/pb4;

    return-object v0
.end method

.method public static bridge synthetic r(Lcom/wandoujia/download/rpc/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/j;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/wandoujia/download/rpc/j;)Lcom/wandoujia/mtdownload/Dispatcher;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/j;->e:Lcom/wandoujia/mtdownload/Dispatcher;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/wandoujia/download/rpc/j;)Lcom/wandoujia/mtdownload/c;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/j;->k:Lcom/wandoujia/mtdownload/c;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/wandoujia/download/rpc/j;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/j;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/wandoujia/download/rpc/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/j;->p:J

    return-wide v0
.end method

.method public static bridge synthetic w(Lcom/wandoujia/download/rpc/j;)Lcom/wandoujia/download/rpc/g;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/wandoujia/download/rpc/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wandoujia/download/rpc/j;->q:Z

    return p0
.end method

.method public static bridge synthetic y(Lcom/wandoujia/download/rpc/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/j;->j:J

    return-wide v0
.end method

.method public static bridge synthetic z(Lcom/wandoujia/download/rpc/j;Lo/cn3;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    return-void
.end method


# virtual methods
.method public final D(Lcom/wandoujia/mtdownload/impl/StopRequestException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/impl/StopRequestException;->getFinalStatus()I

    move-result p1

    const/16 v0, 0x1ef

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1ec

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_1
    const/16 v0, 0xc6

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_2
    const/16 v0, 0x258

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2bb

    if-gt p1, v0, :cond_3

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UMP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->d:Lcom/wandoujia/download/listener/NetworkStatusStub;

    invoke-interface {p1}, Lcom/wandoujia/download/listener/NetworkStatusStub;->a()Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;

    move-result-object p1

    sget-object v0, Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;->NETWORK_NO_CONNECTION:Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_WIFI_OR_USB:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lo/q55;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INTERNET_NO_ACCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_6
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CONNECTION_TIMEOUT:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1
.end method

.method public E(JLcom/wandoujia/mtdownload/c;)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/j;->j:J

    new-instance p1, Lcom/wandoujia/mtdownload/c;

    invoke-direct {p1, p3}, Lcom/wandoujia/mtdownload/c;-><init>(Lcom/wandoujia/mtdownload/c;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->k:Lcom/wandoujia/mtdownload/c;

    return-void
.end method

.method public final F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 5

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->l:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {v0, p0, v1, p1}, Lo/cn3;->a(Lcom/wandoujia/download/rpc/IBlockDownloadTask;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iget v2, v2, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v3, p0, Lcom/wandoujia/download/rpc/j;->o:J

    sub-long v3, v0, v3

    invoke-interface {p1, v2, v3, v4}, Lo/cn3;->b(IJ)V

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/j;->o:J

    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->l:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RUNNING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/j;->F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/wandoujia/mtdownload/Dispatcher;Lcom/wandoujia/mtdownload/impl/StopRequestException;)V
    .locals 0

    iput-object p2, p0, Lcom/wandoujia/download/rpc/j;->m:Lcom/wandoujia/mtdownload/impl/StopRequestException;

    const-string p1, "MultiThreadBlockDownloa"

    invoke-static {p1, p2}, Lcom/snaptube/util/ProductionEnv;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/wandoujia/download/rpc/j;->D(Lcom/wandoujia/mtdownload/impl/StopRequestException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/j;->F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    invoke-static {p1, p2}, Lo/kb0;->a(Lcom/wandoujia/download/rpc/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/wandoujia/mtdownload/Dispatcher;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/j;->G()V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    invoke-interface {p1, p2}, Lo/cn3;->h(I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->m:Lcom/wandoujia/mtdownload/impl/StopRequestException;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/mtdownload/impl/StopRequestException;->getFinalStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1eb

    :goto_0
    return v0
.end method

.method public d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/j;->F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->c:Lo/yu;

    invoke-virtual {p1, p0}, Lo/yu;->g(Lo/xu;)V

    return-void
.end method

.method public e(Lcom/wandoujia/mtdownload/Dispatcher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/j;->G()V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    invoke-interface {p1}, Lo/cn3;->e()V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/j;->i:Ljava/util/Map;

    return-void
.end method

.method public g(Lcom/wandoujia/mtdownload/Dispatcher;)V
    .locals 0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->SUCCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/j;->F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    return-void
.end method

.method public getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->l:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object v0
.end method

.method public h(Lcom/wandoujia/mtdownload/Dispatcher;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/j;->G()V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {p1, v0, p2, p3}, Lo/cn3;->g(IJ)V

    return-void
.end method

.method public j(Lcom/wandoujia/mtdownload/Dispatcher;)V
    .locals 0

    invoke-virtual {p0}, Lo/xu;->o()V

    return-void
.end method

.method public k(Lcom/wandoujia/mtdownload/Dispatcher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/j;->G()V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    invoke-interface {p1}, Lo/cn3;->d()V

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    return v0
.end method

.method public m(Lcom/wandoujia/mtdownload/Dispatcher;Lcom/wandoujia/mtdownload/c;)V
    .locals 11

    iget-boolean p1, p0, Lcom/wandoujia/download/rpc/j;->n:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/wandoujia/download/rpc/j;->n:Z

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RUNNING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/j;->F(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :cond_0
    invoke-virtual {p2}, Lcom/wandoujia/mtdownload/c;->d()J

    move-result-wide v9

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/j;->h:J

    sub-long v0, v9, v0

    long-to-int v5, v0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->g:Lo/cn3;

    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->f:Lcom/wandoujia/download/rpc/g;

    iget v1, p1, Lcom/wandoujia/download/rpc/g;->f:I

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    move-wide v2, v9

    move-object v6, p2

    invoke-interface/range {v0 .. v8}, Lo/cn3;->c(IJ[BILcom/wandoujia/mtdownload/c;J)V

    iput-wide v9, p0, Lcom/wandoujia/download/rpc/j;->h:J

    return-void
.end method

.method public n()V
    .locals 2

    sget-object v0, Lcom/wandoujia/download/rpc/j;->s:Landroid/os/Handler;

    new-instance v1, Lcom/wandoujia/download/rpc/j$b;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/j$b;-><init>(Lcom/wandoujia/download/rpc/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q()V
    .locals 2

    sget-object v0, Lcom/wandoujia/download/rpc/j;->s:Landroid/os/Handler;

    new-instance v1, Lcom/wandoujia/download/rpc/j$a;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/j$a;-><init>(Lcom/wandoujia/download/rpc/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/j;->c:Lo/yu;

    invoke-virtual {v0, p0}, Lo/yu;->f(Lo/xu;)V

    return-void
.end method
