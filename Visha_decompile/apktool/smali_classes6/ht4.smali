.class public Lht4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc8;


# static fields
.field public static volatile b:Lht4;


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lht4;
    .locals 3

    sget-object v0, Lht4;->b:Lht4;

    if-nez v0, :cond_1

    const-class v0, Lht4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lht4;->b:Lht4;

    if-nez v1, :cond_0

    new-instance v1, Lht4;

    invoke-direct {v1}, Lht4;-><init>()V

    sput-object v1, Lht4;->b:Lht4;

    sget-object v1, Lht4;->b:Lht4;

    invoke-static {}, Lcom/transsion/core/pool/TranssionPoolExecutor;->e()Lcom/transsion/core/pool/TranssionPoolExecutor;

    move-result-object v2

    iput-object v2, v1, Lht4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

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
    sget-object v0, Lht4;->b:Lht4;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lht4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lht4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    :cond_0
    iget-object p0, p0, Lht4;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
