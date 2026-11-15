.class public Lcom/facebook/biddingkit/bridge/BiddingKit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static initialized:Z = false

.field private static volatile sAppContext:Landroid/content/Context;

.field private static volatile sConfiguration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bridge/BiddingKit;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getConfiguration()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bridge/BiddingKit;->sConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/bridge/BiddingKit;

    monitor-enter v0

    .line 1
    :try_start_0
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/facebook/biddingkit/bridge/BiddingKit;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/facebook/biddingkit/bridge/BiddingKit;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/facebook/biddingkit/bridge/BiddingKit;->initialized:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/biddingkit/bridge/BiddingKit;->sAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/facebook/biddingkit/bridge/BiddingKit;->initialized:Z

    .line 6
    sput-object p1, Lcom/facebook/biddingkit/bridge/BiddingKit;->sConfiguration:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/biddingkit/bridge/BiddingKit$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/biddingkit/bridge/BiddingKit$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized isDebugBuild()Z
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/bridge/BiddingKit;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/facebook/biddingkit/logging/Logging;->isDebugBuild()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setDebugBuild(Z)V
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/bridge/BiddingKit;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/biddingkit/logging/Logging;->setDebugBuild(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
