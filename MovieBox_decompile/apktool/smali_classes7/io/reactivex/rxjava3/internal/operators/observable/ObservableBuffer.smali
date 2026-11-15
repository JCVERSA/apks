.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$BufferSkipObserver;,
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;
    }
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:Lyx/k;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;IILyx/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->b:I

    .line 5
    .line 6
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->c:I

    .line 7
    .line 8
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->d:Lyx/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 5

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->c:I

    .line 2
    .line 3
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->b:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;

    .line 8
    .line 9
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->d:Lyx/k;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;-><init>(Lio/reactivex/rxjava3/core/o;ILyx/k;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$a;->a()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    .line 27
    .line 28
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$BufferSkipObserver;

    .line 29
    .line 30
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->b:I

    .line 31
    .line 32
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->c:I

    .line 33
    .line 34
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer;->d:Lyx/k;

    .line 35
    .line 36
    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBuffer$BufferSkipObserver;-><init>(Lio/reactivex/rxjava3/core/o;IILyx/k;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
