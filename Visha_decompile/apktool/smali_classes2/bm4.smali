.class public Lbm4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lbm4;

.field public static c:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lbm4;
    .locals 3

    sget-object v0, Lbm4;->b:Lbm4;

    if-nez v0, :cond_2

    const-class v0, Lbm4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbm4;->b:Lbm4;

    if-nez v1, :cond_1

    new-instance v1, Lbm4;

    invoke-direct {v1}, Lbm4;-><init>()V

    sput-object v1, Lbm4;->b:Lbm4;

    sget-object v1, Lbm4;->b:Lbm4;

    sget-object v2, Lbm4;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->b()Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lbm4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_3
    sget-object v0, Lbm4;->b:Lbm4;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lbm4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbm4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    :cond_0
    iget-object p0, p0, Lbm4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
