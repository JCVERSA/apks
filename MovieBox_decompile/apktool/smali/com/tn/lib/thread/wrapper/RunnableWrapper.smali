.class public final Lcom/tn/lib/thread/wrapper/RunnableWrapper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000b\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "Ljava/lang/Runnable;",
        "Lpg/d;",
        "localConfigs",
        "<init>",
        "(Lpg/d;)V",
        "runnable",
        "setRunnable",
        "(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "Ljava/util/concurrent/Callable;",
        "callable",
        "setCallable",
        "(Ljava/util/concurrent/Callable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;",
        "",
        "run",
        "()V",
        "",
        "threadName",
        "Ljava/lang/String;",
        "Ljava/lang/Runnable;",
        "Lqg/i;",
        "dispatcher",
        "Lqg/i;",
        "Ljava/util/concurrent/Callable;",
        "thread_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation
.end field

.field private dispatcher:Lqg/i;

.field private runnable:Ljava/lang/Runnable;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpg/d;)V
    .locals 3

    .line 1
    const-string v0, "localConfigs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lpg/d;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lqg/i;

    .line 16
    .line 17
    invoke-virtual {p1}, Lpg/d;->d()Log/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lpg/d;->c()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lpg/d;->a()Log/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, v1, v2, p1}, Lqg/i;-><init>(Log/b;Ljava/util/concurrent/Executor;Log/a;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lpg/f;->a:Lpg/f$a;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2, v3}, Lpg/f$a;->b(Ljava/lang/Thread;Ljava/lang/String;Log/b;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lqg/i;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->callable:Ljava/util/concurrent/Callable;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lqg/i;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v2, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Lqg/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->dispatcher:Lqg/i;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->threadName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lqg/i;->onCompleted(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method

.method public final setCallable(Ljava/util/concurrent/Callable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lcom/tn/lib/thread/wrapper/RunnableWrapper;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->callable:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRunnable(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->runnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-object p0
.end method
