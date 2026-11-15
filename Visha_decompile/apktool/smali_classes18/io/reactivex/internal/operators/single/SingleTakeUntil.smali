.class public final Lio/reactivex/internal/operators/single/SingleTakeUntil;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;,
        Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Ljk8;


# direct methods
.method public constructor <init>(Lmn9;Ljk8;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->a:Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->b:Ljk8;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;-><init>(Lin9;)V

    invoke-interface {p1, v0}, Lin9;->onSubscribe(Lrc2;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->b:Ljk8;

    iget-object v1, v0, Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver;->other:Lio/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber;

    invoke-interface {p1, v1}, Ljk8;->subscribe(Ld2a;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleTakeUntil;->a:Lmn9;

    invoke-interface {p0, v0}, Lmn9;->a(Lin9;)V

    return-void
.end method
