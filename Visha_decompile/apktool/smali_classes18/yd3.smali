.class public abstract Lyd3;
.super Lkotlinx/coroutines/c;
.source "SourceFile"


# instance fields
.field private shared:Z

.field private unconfinedQueue:Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg;"
        }
    .end annotation
.end field

.field private useCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    return-void
.end method

.method public static synthetic decrementUseCount$default(Lyd3;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lyd3;->decrementUseCount(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic incrementUseCount$default(Lyd3;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lyd3;->incrementUseCount(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Z)J
    .locals 0

    if-eqz p1, :cond_0

    const-wide p0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x1

    :goto_0
    return-wide p0
.end method

.method public final decrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lyd3;->useCount:J

    invoke-virtual {p0, p1}, Lyd3;->a(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lyd3;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lyd3;->shared:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lyd3;->shutdown()V

    :cond_1
    return-void
.end method

.method public final dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lyd3;->unconfinedQueue:Lhg;

    if-nez v0, :cond_0

    new-instance v0, Lhg;

    invoke-direct {v0}, Lhg;-><init>()V

    iput-object v0, p0, Lyd3;->unconfinedQueue:Lhg;

    :cond_0
    invoke-virtual {v0, p1}, Lhg;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public getNextTime()J
    .locals 2

    iget-object p0, p0, Lyd3;->unconfinedQueue:Lhg;

    const-wide v0, 0x7fffffffffffffffL

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lhg;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final incrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lyd3;->useCount:J

    invoke-virtual {p0, p1}, Lyd3;->a(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyd3;->useCount:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyd3;->shared:Z

    :cond_0
    return-void
.end method

.method public final isActive()Z
    .locals 4

    iget-wide v0, p0, Lyd3;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUnconfinedLoopActive()Z
    .locals 5

    iget-wide v0, p0, Lyd3;->useCount:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lyd3;->a(Z)J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isUnconfinedQueueEmpty()Z
    .locals 0

    iget-object p0, p0, Lyd3;->unconfinedQueue:Lhg;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhg;->isEmpty()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 0

    invoke-static {p1}, Lbl5;->a(I)V

    invoke-static {p0, p2}, Lbl5;->b(Lkotlinx/coroutines/c;Ljava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public abstract processNextEvent()J
.end method

.method public final processUnconfinedEvent()Z
    .locals 1

    iget-object p0, p0, Lyd3;->unconfinedQueue:Lhg;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lhg;->q()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldBeProcessedFromContext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shutdown()V
.end method
