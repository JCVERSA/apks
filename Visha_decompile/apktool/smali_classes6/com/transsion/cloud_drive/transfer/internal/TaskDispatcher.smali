.class public final Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/HandlerThread;

.field public h:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;

.field public i:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public final l:Ljava/util/LinkedList;

.field public final m:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 9

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->b:I

    .line 4
    iput-boolean p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->c:Z

    .line 5
    const-string p3, "TaskDispatcher"

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d:Ljava/lang/String;

    .line 6
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p3, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    if-lez p2, :cond_0

    .line 7
    new-instance p3, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud-drive-schedule-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-thread"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f:Landroid/os/Handler;

    .line 10
    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g:Landroid/os/HandlerThread;

    .line 11
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    iget-object v7, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    new-instance v8, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$a;

    invoke-direct {v8, p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$a;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    const-wide/16 v4, 0x3c

    move-object v1, p1

    move v2, p2

    move v3, p2

    .line 15
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 17
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    .line 20
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m:Ljava/util/LinkedList;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "task dispatcher need maxRunning > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final C(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V
    .locals 2

    const-string v0, "$task"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lwda;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->D(Lwda;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v1, p1, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;->a(Lwda;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1, p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->D(Lwda;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->x(Lc74;)V

    return-void
.end method

.method public static synthetic b(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->C(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->y()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->B(Lwda;)V

    return-void
.end method

.method public static final x(Lc74;)V
    .locals 1

    const-string v0, "$block"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, Lzfb;->a:Lzfb;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->g:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    :goto_4
    monitor-exit p0

    throw v0
.end method

.method public final B(Lwda;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lwda;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->b:I

    iget-object v3, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueue-runningTask.size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , maxRunning: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", waitingQueue.size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueue-runningFutures.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pausedTaskQueue.size : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue-mQueue.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lwda;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lbea;

    invoke-direct {v3, p1, p0}, Lbea;-><init>(Lwda;Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    const-string v3, "submit(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lwda;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final D(Lwda;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$taskFinish$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->w(Lc74;)V

    return-void
.end method

.method public final l(Ljava/util/concurrent/Future;)V
    .locals 0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public final m(Lwda;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$enqueue$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Lwda;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->w(Lc74;)V

    return-void
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->b:I

    return p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->c:Z

    return p0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->r(Ljava/util/List;)V

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 1

    const-string v0, "taskIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$pauseMany$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->w(Lc74;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->t(Ljava/util/List;)V

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 1

    const-string v0, "taskIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$removeMany$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->w(Lc74;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Le74;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resume$1;

    invoke-direct {v0, p2}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resume$1;-><init>(Le74;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->v(Ljava/util/List;Le74;)V

    return-void
.end method

.method public final v(Ljava/util/List;Le74;)V
    .locals 1

    const-string v0, "taskIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$resumeMany$1;-><init>(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;Le74;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->w(Lc74;)V

    return-void
.end method

.method public final w(Lc74;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->f:Landroid/os/Handler;

    new-instance v0, Laea;

    invoke-direct {v0, p1}, Laea;-><init>(Lc74;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->b:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwda;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->B(Lwda;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final z(Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher;->h:Lcom/transsion/cloud_drive/transfer/internal/TaskDispatcher$b;

    return-void
.end method
