.class public final Lio/reactivex/internal/operators/observable/ObservableDoFinally;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;
    }
.end annotation


# instance fields
.field public final c:Ld5;


# direct methods
.method public constructor <init>(Lld7;Ld5;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally;->c:Ld5;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 2

    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally;->c:Ld5;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;-><init>(Lpd7;Ld5;)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
