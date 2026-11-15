.class public final Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;
    }
.end annotation


# instance fields
.field public final c:Lt74;

.field public final d:Z


# direct methods
.method public constructor <init>(Lld7;Lt74;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->c:Lt74;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->d:Z

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 3

    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->c:Lt74;

    iget-boolean p0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;->d:Z

    invoke-direct {v1, p1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver;-><init>(Lpd7;Lt74;Z)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
