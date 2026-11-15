.class public Lcom/transsion/core/pool/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/core/pool/b;


# static fields
.field private static volatile b:Lcom/transsion/core/pool/a;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/transsion/core/pool/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/transsion/core/pool/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/core/pool/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/core/pool/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    .line 20
    .line 21
    invoke-static {}, Lcom/transsion/core/pool/TranssionPoolExecutor;->c()Lcom/transsion/core/pool/TranssionPoolExecutor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v1, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/core/pool/a;->b:Lcom/transsion/core/pool/a;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/core/pool/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
