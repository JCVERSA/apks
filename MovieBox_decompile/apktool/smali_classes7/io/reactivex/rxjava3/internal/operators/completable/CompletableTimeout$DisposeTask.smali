.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisposeTask"
.end annotation


# instance fields
.field final downstream:Lio/reactivex/rxjava3/core/b;

.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final set:Lio/reactivex/rxjava3/disposables/a;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/disposables/a;Lio/reactivex/rxjava3/core/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lio/reactivex/rxjava3/disposables/a;

    .line 7
    .line 8
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;->downstream:Lio/reactivex/rxjava3/core/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lio/reactivex/rxjava3/disposables/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/a;->d()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    throw v0
.end method
