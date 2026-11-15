.class public final Lkotlinx/coroutines/android/HandlerContext;
.super Lsn4;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lsn4;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lkotlinx/coroutines/android/HandlerContext;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 6
    :goto_0
    iput-object p3, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Lkotlinx/coroutines/android/HandlerContext;

    return-void
.end method

.method public static synthetic E(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/android/HandlerContext;->I(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic F(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerContext;->J(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final J(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final G(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ln95;->c(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public H()Lkotlinx/coroutines/android/HandlerContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Lkotlinx/coroutines/android/HandlerContext;

    return-object p0
.end method

.method public bridge synthetic b()Lrx5;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/android/HandlerContext;->H()Lkotlinx/coroutines/android/HandlerContext;

    move-result-object p0

    return-object p0
.end method

.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerContext;->G(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/android/HandlerContext;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v0, p1, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    iget-boolean p0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Lwn8;->h(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lqn4;

    invoke-direct {p1, p0, p3}, Lqn4;-><init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p4, p3}, Lkotlinx/coroutines/android/HandlerContext;->G(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    sget-object p0, Lk17;->b:Lk17;

    return-object p0
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/d;)Z
    .locals 0

    iget-boolean p1, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public scheduleResumeAfterDelay(JLcr0;)V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;

    invoke-direct {v0, p3, p0}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;-><init>(Lcr0;Lkotlinx/coroutines/android/HandlerContext;)V

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lwn8;->h(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lrn4;

    invoke-direct {p1, p0, v0}, Lrn4;-><init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lcr0;->invokeOnCancellation(Le74;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/android/HandlerContext;->G(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lrx5;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean p0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method
