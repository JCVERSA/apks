.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable;
.super Lio/reactivex/rxjava3/core/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/i;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable;->b:Lio/reactivex/rxjava3/core/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected g(Li00/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable;->b:Lio/reactivex/rxjava3/core/i;

    .line 2
    .line 3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;-><init>(Li00/c;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/i;->a(Lio/reactivex/rxjava3/core/h;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
