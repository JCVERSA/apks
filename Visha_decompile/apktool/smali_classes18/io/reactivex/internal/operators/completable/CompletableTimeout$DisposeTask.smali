.class final Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisposeTask"
.end annotation


# instance fields
.field final downstream:Lqb1;

.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final set:Lgd1;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableTimeout;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lgd1;Lqb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lgd1;

    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->downstream:Lqb1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lgd1;

    invoke-virtual {p0}, Lgd1;->d()V

    const/4 p0, 0x0

    throw p0
.end method
