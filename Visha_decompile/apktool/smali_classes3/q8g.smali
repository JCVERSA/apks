.class public abstract Lq8g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/Executor;


# direct methods
.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 2

    const-class v0, Lq8g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq8g;->a:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const-string v1, "ExoPlayer:BackgroundExecutor"

    invoke-static {v1}, Lkfh;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lq8g;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lq8g;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
