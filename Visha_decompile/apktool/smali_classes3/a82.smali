.class public La82;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La82$c;,
        La82$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(La82$c;)V
    .locals 1

    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    new-instance v0, La82$a;

    invoke-direct {v0, p0}, La82$a;-><init>(La82;)V

    invoke-interface {p1, v0}, La82$c;->a(La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, La82;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic a(La82;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(La82;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public afterDone()V
    .locals 1

    iget-object v0, p0, La82;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->wasInterrupted()Z

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, La82;->e(Ljava/util/concurrent/Delayed;)I

    move-result p0

    return p0
.end method

.method public e(Ljava/util/concurrent/Delayed;)I
    .locals 0

    iget-object p0, p0, La82;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 0

    iget-object p0, p0, La82;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method
