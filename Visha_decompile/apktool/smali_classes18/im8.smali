.class public abstract Lim8;
.super Lnm8;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lhd7;


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Lpd7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpd7;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lnm9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnm9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpd7;Lnm9;)V
    .locals 0

    invoke-direct {p0}, Lnm8;-><init>()V

    iput-object p1, p0, Lim8;->downstream:Lpd7;

    iput-object p2, p0, Lim8;->queue:Lnm9;

    return-void
.end method


# virtual methods
.method public accept(Lpd7;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd7;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final cancelled()Z
    .locals 0

    iget-boolean p0, p0, Lim8;->cancelled:Z

    return p0
.end method

.method public final done()Z
    .locals 0

    iget-boolean p0, p0, Lim8;->done:Z

    return p0
.end method

.method public final enter()Z
    .locals 0

    iget-object p0, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lim8;->error:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final fastEnter()Z
    .locals 2

    iget-object v0, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final fastPathEmit(Ljava/lang/Object;ZLrc2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lrc2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lim8;->downstream:Lpd7;

    iget-object v1, p0, Lim8;->queue:Lnm9;

    iget-object v2, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lim8;->accept(Lpd7;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lim8;->leave(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lim8;->enter()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lhm8;->d(Lnm9;Lpd7;ZLrc2;Lhd7;)V

    return-void
.end method

.method public final fastPathOrderedEmit(Ljava/lang/Object;ZLrc2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lrc2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lim8;->downstream:Lpd7;

    iget-object v1, p0, Lim8;->queue:Lnm9;

    iget-object v2, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lom9;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lim8;->accept(Lpd7;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lim8;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lim8;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lhm8;->d(Lnm9;Lpd7;ZLrc2;Lhd7;)V

    return-void
.end method

.method public final leave(I)I
    .locals 0

    iget-object p0, p0, Lrm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method
