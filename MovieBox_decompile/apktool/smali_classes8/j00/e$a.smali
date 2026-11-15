.class Lj00/e$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj00/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/core/o;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 2
    .line 3
    invoke-static {p1}, Lj00/d;->b(Lretrofit2/j0;)Lj00/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 2
    .line 3
    invoke-static {p1}, Lj00/d;->a(Ljava/lang/Throwable;)Lj00/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 11
    .line 12
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    iget-object v0, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object p1, v2, v3

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object v0, v2, p1

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/j0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj00/e$a;->a(Lretrofit2/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj00/e$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
