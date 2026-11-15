.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lju4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;

.field public static volatile i:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lqhb;

.field public final d:Lmq3;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->h:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->a:Landroid/content/Context;

    const-string p1, "CloudUploadManagerImpl"

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->b:Ljava/lang/String;

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/impl/a;->a:Lcom/transsion/cloudcore/cloudapi/impl/a;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object v0

    invoke-virtual {v0}, Lrz0;->e()Lqhb;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->c:Lqhb;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/impl/a;->d()Lrz0;

    move-result-object p1

    invoke-virtual {p1}, Lrz0;->c()Lmq3;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->d:Lmq3;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final E()Ljava/lang/String;
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

.method private final I(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private final K(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private final L(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private final M(Ljava/lang/String;JJ)V
    .locals 7

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method private final N(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public static final synthetic j(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->B(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Lmq3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->d:Lmq3;

    return-object p0
.end method

.method public static final synthetic l()Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->i:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->G(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->H(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->J(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->K(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->L(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->M(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static final synthetic w(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->N(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic x(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->O(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return-void
.end method

.method public static final synthetic y(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)V
    .locals 0

    sput-object p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->i:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    return-void
.end method

.method public static final synthetic z(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->Q(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Lb41;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public final B(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;-><init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public final C(Ljava/lang/String;)Lof7;
    .locals 0

    new-instance p1, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;

    invoke-direct {p1, p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;-><init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)V

    return-object p1
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;-><init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public F(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;
    .locals 4

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->d:Lmq3;

    invoke-interface {v2, p1}, Lmq3;->f(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    instance-of v2, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    instance-of v2, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    :goto_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTranscodeStatusSync error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    return-object p0
.end method

.method public final H(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->getStatus()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x447f341d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x24a738

    if-eq v1, v2, :cond_3

    const v2, 0x7b29883d

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "FAILED"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object p3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->K(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return v3

    :cond_3
    const-string v1, "NONE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_4
    const-string v1, "SUCCESS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->O(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return v3
.end method

.method public final J(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public final O(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
    .locals 2

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u5b8c\u6210(\u542b\u8f6c\u7801) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_CloudUploadManagerImpl"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->J(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return-void
.end method

.method public P(Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lb41;)Ljava/lang/String;
    .locals 5

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->A(Ljava/lang/String;Lb41;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->C(Ljava/lang/String;)Lof7;

    move-result-object p2

    :try_start_0
    new-instance v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setTags(Ljava/util/List;)V

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->c:Lqhb;

    invoke-interface {v2, v1, p2}, Lqhb;->c(Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Lof7;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V
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

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->K(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-object v0
.end method

.method public final Q(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V
    .locals 12

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESSING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    const-wide/16 v8, 0x5

    const-wide/16 v10, 0x64

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->M(Ljava/lang/String;JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v1, 0xea60

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    sub-long/2addr v3, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-gtz v0, :cond_1

    :cond_0
    move-wide v8, v1

    goto :goto_0

    :cond_1
    move-wide v8, v3

    :goto_0
    new-instance v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$startTranscodePolling$1;-><init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;JJ)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->c:Lqhb;

    invoke-interface {p0, v1}, Lqhb;->a(Ljava/lang/String;)V

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

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;-><init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lb41;)Z
    .locals 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->A(Ljava/lang/String;Lb41;)V

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->c:Lqhb;

    invoke-interface {p2, v2}, Lqhb;->b(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v0, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    invoke-direct {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->N(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->c:Lqhb;

    invoke-interface {v3, v2}, Lqhb;->cancel(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v0, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->B(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->F(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;Lb41;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->P(Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Lb41;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLb41;)Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;
    .locals 20

    move-object/from16 v5, p1

    move-object/from16 v0, p6

    const-string v1, "filePath"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parentId"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->E()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v7

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, v2}, Lb41;->e(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v14, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    move-object v0, v14

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    const/16 v17, 0xfe0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v19, v14

    move-wide v14, v15

    const/16 v16, 0x0

    move-object/from16 p3, v1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v18}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/cloud_drive/base/api/model/FileUserTag;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long v2, p4, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_video_duration"

    invoke-direct {v1, v3, v2}, Lcom/transsion/cloud_drive/base/api/model/FileUserTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->setTags(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v2, p3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public i(Ljava/lang/String;Lb41;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
