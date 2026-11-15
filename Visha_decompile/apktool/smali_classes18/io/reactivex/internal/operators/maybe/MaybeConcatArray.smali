.class public final Lio/reactivex/internal/operators/maybe/MaybeConcatArray;
.super Lr14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;
    }
.end annotation


# instance fields
.field public final c:[Ll96;


# direct methods
.method public constructor <init>([Ll96;)V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;->c:[Ll96;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;->c:[Ll96;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;-><init>(Ld2a;[Ll96;)V

    invoke-interface {p1, v0}, Ld2a;->onSubscribe(Lf2a;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method
