.class public Li4d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Li4d;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lhxd;

    const-string v1, "mgmi_i"

    invoke-direct {v8, v1}, Lhxd;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Li4d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lhxd;

    const-string v3, "mgmi_d"

    invoke-direct {v2, v3}, Lhxd;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x3

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    move-object v10, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Li4d;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Li4d;
    .locals 2

    sget-object v0, Li4d;->c:Li4d;

    if-nez v0, :cond_1

    const-class v0, Li4d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li4d;->c:Li4d;

    if-nez v1, :cond_0

    new-instance v1, Li4d;

    invoke-direct {v1}, Li4d;-><init>()V

    sput-object v1, Li4d;->c:Li4d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Li4d;->c:Li4d;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Li4d;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Li4d;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Li4d;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
