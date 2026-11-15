.class public Lcom/hunantv/imgo/util/ThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "Unknown"

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG_LONG_LOCAL_IMAGE:Ljava/lang/String; = "TAG_LONG_LOCAL_IMAGE"

.field private static final TAG_LONG_LOCAL_IMAGE_SIZE:I = 0x2

.field private static final TAG_LONG_NETWORK:Ljava/lang/String; = "TAG_LONG_NETWORK"

.field private static final TAG_LONG_NETWORK_IMAGE:Ljava/lang/String; = "TAG_LONG_NETWORK_IMAGE"

.field private static final TAG_LONG_NETWORK_IMAGE_SIZE:I = 0x3

.field private static final TAG_LONG_NETWORK_SIZE:I = 0x3

.field private static final TAG_LONG_POOL:Ljava/lang/String; = "TAG_LONG_POOL"

.field private static final TAG_LONG_POOL_SIZE:I = 0x4

.field private static final TAG_MEDIUM_POOL:Ljava/lang/String; = "TAG_MEDIUM_POOL"

.field private static final TAG_MEDIUM_POOL_SIZE:I = 0x3

.field private static final TAG_P2PLOG_POOL:Ljava/lang/String; = "TAG_P2PLOG_POOL"

.field private static final TAG_P2PLOG_POOL_SIZE:I = 0x1

.field private static final TAG_SHORT_POOL:Ljava/lang/String; = "TAG_SHORT_POOL"

.field private static final TAG_SHORT_POOL_SIZE:I = 0x2

.field private static final TAG_STATISTICS_POOL:Ljava/lang/String; = "TAG_STATISTICS_POOL"

.field private static final TAG_STATISTICS_POOL_SIZE:I = 0x1

.field private static final WHAT_HANDLER_POST:I = 0x1

.field private static sCurrentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "TAG_LONG_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_SHORT_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/16 v2, -0x10

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_MEDIUM_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_STATISTICS_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_LONG_NETWORK"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/16 v1, -0x13

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_LONG_NETWORK_IMAGE"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_LONG_LOCAL_IMAGE"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    const-string v0, "TAG_P2PLOG_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Lcom/hunantv/imgo/c/a/b/d;)V

    const-string v0, "Unknown"

    sput-object v0, Lcom/hunantv/imgo/util/ThreadManager;->sCurrentTag:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/imgo/util/ThreadManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/util/ThreadManager$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hunantv/imgo/util/ThreadManager;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMainThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final create(Landroid/app/Activity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/imgo/util/ThreadManager;->sCurrentTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final destory(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/c/b;->c()Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b$a;->a()Lcom/hunantv/imgo/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hunantv/imgo/c/b;->c()Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const-string v0, "TAG_MEDIUM_POOL"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    sget-object v0, Lcom/hunantv/imgo/util/ThreadManager;->sCurrentTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->b(I)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b$a;->a()Lcom/hunantv/imgo/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b;->a()V

    return-void
.end method

.method public static final execute(Ljava/lang/Runnable;I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/c/b;->c()Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/b$a;->a(I)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const-string p1, "TAG_MEDIUM_POOL"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/b$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    sget-object p1, Lcom/hunantv/imgo/util/ThreadManager;->sCurrentTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/c/b$a;->b(I)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b$a;->a()Lcom/hunantv/imgo/c/b;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b;->a()V

    return-void
.end method

.method public static final executeStatistics(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/hunantv/imgo/c/b;->c()Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    const-string v1, "TAG_STATISTICS_POOL"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/b$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b$a;->a()Lcom/hunantv/imgo/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b;->a()V

    return-void
.end method

.method public static final geStatisticsThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_STATISTICS_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalImageExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_LONG_LOCAL_IMAGE"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getLongExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_LONG_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_MEDIUM_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_LONG_NETWORK"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getNetWorkImageExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_LONG_NETWORK_IMAGE"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getP2PLogExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_P2PLOG_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final getShortExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "TAG_SHORT_POOL"

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/f;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final post(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/util/ThreadManager;->HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static final post(Ljava/lang/Runnable;I)V
    .locals 3

    .line 2
    sget-object v0, Lcom/hunantv/imgo/util/ThreadManager;->HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static printAllStackInfo()V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    const-string v7, "\tat "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ThreadManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final submit(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/hunantv/imgo/c/b;->c()Lcom/hunantv/imgo/c/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/Runnable;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const-string v0, "TAG_MEDIUM_POOL"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->b(I)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    sget-object v0, Lcom/hunantv/imgo/util/ThreadManager;->sCurrentTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b$a;->a()Lcom/hunantv/imgo/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/b;->a()V

    return-void
.end method
