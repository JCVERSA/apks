.class public final Lio/reactivex/internal/operators/observable/ObservablePublish;
.super Laf1;
.source "SourceFile"

# interfaces
.implements Lgd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublish$b;,
        Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;,
        Lio/reactivex/internal/operators/observable/ObservablePublish$a;
    }
.end annotation


# instance fields
.field public final b:Lld7;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Lld7;


# direct methods
.method public constructor <init>(Lld7;Lld7;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Laf1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->d:Lld7;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Lld7;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static q0(Lld7;)Laf1;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublish$b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublish;

    invoke-direct {v2, v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish;-><init>(Lld7;Lld7;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, Lyw8;->l(Laf1;)Laf1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lld7;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Lld7;

    return-object p0
.end method

.method public c0(Lpd7;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->d:Lld7;

    invoke-interface {p0, p1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method

.method public n0(Lzf1;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublish$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    :try_start_0
    invoke-interface {p1, v0}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Lld7;

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
