.class final Lio/reactivex/rxjava3/internal/operators/observable/m$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/o;

.field final b:Lyx/h;

.field final c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;Lyx/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 5
    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->b:Lyx/h;

    .line 7
    .line 8
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 9
    .line 10
    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    .line 10
    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 12
    .line 13
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->d:Z

    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->b:Lyx/h;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lyx/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lio/reactivex/rxjava3/core/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    .line 33
    .line 34
    const-string v1, "Observable is null"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 57
    .line 58
    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    new-array v4, v4, [Ljava/lang/Throwable;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    aput-object p1, v4, v5

    .line 65
    .line 66
    aput-object v1, v4, v0

    .line 67
    .line 68
    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v3}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/m$a;->c:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
