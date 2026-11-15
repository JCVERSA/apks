.class public final Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;
.super Lcom/google/common/util/concurrent/e$a;
.source "SourceFile"

# interfaces
.implements Ljm5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lim5;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/e$a;-><init>(Lim5;)V

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    invoke-super {p0, p1}, Ly44;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;->l(Ljava/util/concurrent/Delayed;)I

    move-result p0

    return p0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public l(Ljava/util/concurrent/Delayed;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$a;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
