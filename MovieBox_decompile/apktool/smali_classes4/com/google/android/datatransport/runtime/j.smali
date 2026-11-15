.class abstract Lcom/google/android/datatransport/runtime/j;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
