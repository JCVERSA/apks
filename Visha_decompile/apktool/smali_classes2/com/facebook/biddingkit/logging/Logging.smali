.class public Lcom/facebook/biddingkit/logging/Logging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Logging"

.field private static sDebugBuild:Z = false


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

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/biddingkit/logging/BiddingStaticEnvironmentData;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/biddingkit/logging/LoggingConfig;

    invoke-direct {p1, p3}, Lcom/facebook/biddingkit/logging/LoggingConfig;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->startDispatcher(Lcom/facebook/biddingkit/logging/LoggingConfig;)V

    invoke-static {p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/facebook/biddingkit/logging/CrashReportHandler;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Logging"

    const-string p2, "Failed to initialize"

    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized isDebugBuild()Z
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/logging/Logging;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/facebook/biddingkit/logging/Logging;->sDebugBuild:Z
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

    const-class v0, Lcom/facebook/biddingkit/logging/Logging;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/facebook/biddingkit/logging/Logging;->sDebugBuild:Z
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
