.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/c;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
    }
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/e;

.field public final c:Lkotlinx/coroutines/c;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lqo5;

.field public final g:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/c;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    instance-of v0, p1, Lkotlinx/coroutines/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lh12;->a()Lkotlinx/coroutines/e;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/e;

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:Lkotlinx/coroutines/c;

    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I

    iput-object p3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Ljava/lang/String;

    new-instance p1, Lqo5;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lqo5;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lqo5;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/internal/LimitedDispatcher;)Lkotlinx/coroutines/c;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:Lkotlinx/coroutines/c;

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/internal/LimitedDispatcher;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->E()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final E()Ljava/lang/Runnable;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lqo5;

    invoke-virtual {v0}, Lqo5;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lqo5;

    invoke-virtual {v1}, Lqo5;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final F()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lqo5;

    invoke-virtual {p1, p2}, Lqo5;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->E()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:Lkotlinx/coroutines/c;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lqo5;

    invoke-virtual {p1, p2}, Lqo5;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lkotlinx/coroutines/internal/LimitedDispatcher;->k()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->E()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:Lkotlinx/coroutines/c;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/c;->dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/e;

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/e;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;

    move-result-object p0

    return-object p0
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 1

    invoke-static {p1}, Lbl5;->a(I)V

    iget v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lbl5;->b(Lkotlinx/coroutines/c;Ljava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/c;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public scheduleResumeAfterDelay(JLcr0;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->b:Lkotlinx/coroutines/e;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/e;->scheduleResumeAfterDelay(JLcr0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->c:Lkotlinx/coroutines/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".limitedParallelism("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
