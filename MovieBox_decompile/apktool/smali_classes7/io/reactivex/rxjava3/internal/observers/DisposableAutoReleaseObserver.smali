.class public final Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;
.super Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;",
        "Lio/reactivex/rxjava3/core/o;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bda1fe6f9c496d6L


# instance fields
.field final onNext:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/disposables/d;Lyx/f;Lyx/f;Lyx/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/disposables/d;",
            "Lyx/f;",
            "Lyx/f;",
            "Lyx/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;-><init>(Lio/reactivex/rxjava3/disposables/d;Lyx/f;Lyx/a;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;->onNext:Lyx/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/DisposableAutoReleaseObserver;->onNext:Lyx/f;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lio/reactivex/rxjava3/disposables/c;

    .line 24
    .line 25
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/AbstractDisposableAutoRelease;->onError(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method
