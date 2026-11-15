.class public final Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;
.super Lhb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMapCompletable$FlatMapCompletableObserver;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Lt74;


# direct methods
.method public constructor <init>(Lmn9;Lt74;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;->a:Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;->b:Lt74;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable$FlatMapCompletableObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;->b:Lt74;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable$FlatMapCompletableObserver;-><init>(Lqb1;Lt74;)V

    invoke-interface {p1, v0}, Lqb1;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;->a:Lmn9;

    invoke-interface {p0, v0}, Lmn9;->a(Lin9;)V

    return-void
.end method
