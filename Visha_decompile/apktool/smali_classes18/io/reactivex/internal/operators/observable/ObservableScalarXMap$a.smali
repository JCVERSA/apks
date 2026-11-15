.class public final Lio/reactivex/internal/operators/observable/ObservableScalarXMap$a;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableScalarXMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lt74;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lt74;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$a;->c:Lt74;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$a;->c:Lt74;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$a;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lld7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    :try_start_1
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lpd7;)V

    return-void

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lpd7;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lpd7;)V

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lld7;->subscribe(Lpd7;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lpd7;)V

    return-void
.end method
