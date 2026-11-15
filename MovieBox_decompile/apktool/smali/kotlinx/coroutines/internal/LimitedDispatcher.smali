.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/i0;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
    }
.end annotation


# static fields
.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/t0;

.field private final b:Lkotlinx/coroutines/i0;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lkotlinx/coroutines/internal/l;

.field private final f:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 2
    .line 3
    const-string v1, "runningWorkers$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/i0;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lkotlinx/coroutines/t0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lkotlinx/coroutines/t0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/t0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    .line 20
    .line 21
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    .line 22
    .line 23
    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    .line 24
    .line 25
    iput-object p3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p1, Lkotlinx/coroutines/internal/l;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/l;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method

.method public static final synthetic p(Lkotlinx/coroutines/internal/LimitedDispatcher;)Lkotlinx/coroutines/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lkotlinx/coroutines/internal/LimitedDispatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final synthetic r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method private final s()Ljava/lang/Runnable;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    .line 22
    .line 23
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/l;->c()I

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0

    .line 43
    throw v1

    .line 44
    :cond_1
    return-object v0
.end method

.method private final t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    .line 15
    .line 16
    if-ge p1, p2, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->t()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    .line 37
    .line 38
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/i0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Lkotlinx/coroutines/internal/l;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->r()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    .line 15
    .line 16
    if-ge p1, p2, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->t()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->s()Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    .line 37
    .line 38
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/i0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/t0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/internal/i;->a(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/i0;Ljava/lang/String;)Lkotlinx/coroutines/i0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/i0;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->a:Lkotlinx/coroutines/t0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/t0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ".limitedParallelism("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x29

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method
