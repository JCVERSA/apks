.class public Lcom/cloud/sdk/commonutil/pool/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile b:Lcom/cloud/sdk/commonutil/pool/b;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


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

.method public static b()Lcom/cloud/sdk/commonutil/pool/b;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcom/cloud/sdk/commonutil/pool/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/cloud/sdk/commonutil/pool/b;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloud/sdk/commonutil/pool/b;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    .line 20
    .line 21
    sget-object v2, Lcom/cloud/sdk/commonutil/pool/b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;->b()Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    iput-object v2, v1, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    goto :goto_3

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :cond_2
    :goto_3
    sget-object v0, Lcom/cloud/sdk/commonutil/pool/b;->b:Lcom/cloud/sdk/commonutil/pool/b;

    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

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
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/pool/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
