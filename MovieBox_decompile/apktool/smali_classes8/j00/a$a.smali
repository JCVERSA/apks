.class Lj00/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj00/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/core/o;

.field private b:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/j0;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lretrofit2/j0;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 9
    .line 10
    invoke-virtual {p1}, Lretrofit2/j0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v0, p0, Lj00/a$a;->b:Z

    .line 19
    .line 20
    new-instance v1, Lretrofit2/adapter/rxjava3/HttpException;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava3/HttpException;-><init>(Lretrofit2/j0;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v1, v3, v4

    .line 42
    .line 43
    aput-object p1, v3, v0

    .line 44
    .line 45
    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj00/a$a;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 6
    .line 7
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/o;->onComplete()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj00/a$a;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 12
    .line 13
    const-string v1, "This should never happen! Report as a bug with the full stacktrace."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/j0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj00/a$a;->a(Lretrofit2/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj00/a$a;->a:Lio/reactivex/rxjava3/core/o;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
