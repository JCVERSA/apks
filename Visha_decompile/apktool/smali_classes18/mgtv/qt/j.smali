.class public abstract Lmgtv/qt/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lmgtv/qt/j;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmgtv/qt/j;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .locals 3

    sget-object v0, Lmgtv/qt/j;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    new-instance v0, Lmgtv/qt/y;

    invoke-direct {v0, p1, p2, p0}, Lmgtv/qt/y;-><init>(JLjava/lang/Runnable;)V

    move-object p0, v0

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
