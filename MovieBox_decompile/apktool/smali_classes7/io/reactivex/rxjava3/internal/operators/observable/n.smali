.class public final Lio/reactivex/rxjava3/internal/operators/observable/n;
.super Lio/reactivex/rxjava3/core/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/n$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/m;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n;->a:Lio/reactivex/rxjava3/core/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/rxjava3/core/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n;->a:Lio/reactivex/rxjava3/core/m;

    .line 2
    .line 3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/n$a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n$a;-><init>(Lio/reactivex/rxjava3/core/h;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
