.class public final Lio/reactivex/internal/operators/observable/b;
.super Lmc7;
.source "SourceFile"

# interfaces
.implements Lm19;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/b;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lpd7;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/b;->b:Ljava/lang/Object;

    return-object p0
.end method
