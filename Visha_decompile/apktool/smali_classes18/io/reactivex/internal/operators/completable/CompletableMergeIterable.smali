.class public final Lio/reactivex/internal/operators/completable/CompletableMergeIterable;
.super Lhb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 4

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    invoke-interface {p1, v0}, Lqb1;->onSubscribe(Lrc2;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;->a:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "The source iterator returned is null"

    invoke-static {p0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;

    invoke-direct {v2, p1, v0, v1}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;-><init>(Lqb1;Lgd1;Ljava/util/concurrent/atomic/AtomicInteger;)V

    :goto_0
    invoke-virtual {v0}, Lgd1;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onComplete()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lgd1;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "The iterator returned a null CompletableSource"

    invoke-static {p1, v3}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lgd1;->isDisposed()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-interface {p1, v2}, Lsb1;->a(Lqb1;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lgd1;->dispose()V

    invoke-virtual {v2, p0}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lgd1;->dispose()V

    invoke-virtual {v2, p0}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1, p0}, Lqb1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
