.class public final Lio/reactivex/internal/operators/single/SingleTimeout;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Lio/reactivex/Scheduler;

.field public final e:Lmn9;


# direct methods
.method public constructor <init>(Lmn9;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lmn9;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->a:Lmn9;

    iput-wide p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->d:Lio/reactivex/Scheduler;

    iput-object p6, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->e:Lmn9;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 7

    new-instance v6, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->e:Lmn9;

    iget-wide v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;-><init>(Lin9;Lmn9;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {p1, v6}, Lin9;->onSubscribe(Lrc2;)V

    iget-object p1, v6, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver;->task:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->d:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/Scheduler;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lrc2;)Z

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->a:Lmn9;

    invoke-interface {p0, v6}, Lmn9;->a(Lin9;)V

    return-void
.end method
