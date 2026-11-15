.class public final Lio/reactivex/internal/operators/completable/CompletableCreate;
.super Lhb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;
    }
.end annotation


# instance fields
.field public final a:Lrb1;


# direct methods
.method public constructor <init>(Lrb1;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate;->a:Lrb1;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;-><init>(Lqb1;)V

    invoke-interface {p1, v0}, Lqb1;->onSubscribe(Lrc2;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableCreate;->a:Lrb1;

    invoke-interface {p0, v0}, Lrb1;->a(Llb1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
