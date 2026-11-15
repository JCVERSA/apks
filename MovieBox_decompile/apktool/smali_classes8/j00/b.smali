.class final Lj00/b;
.super Lio/reactivex/rxjava3/core/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj00/b$a;
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/d;


# direct methods
.method constructor <init>(Lretrofit2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/b;->a:Lretrofit2/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj00/b;->a:Lretrofit2/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lretrofit2/d;->clone()Lretrofit2/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lj00/b$a;

    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lj00/b$a;-><init>(Lretrofit2/d;Lio/reactivex/rxjava3/core/o;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lj00/b$a;->isDisposed()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lretrofit2/d;->f(Lretrofit2/f;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
