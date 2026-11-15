.class public final Lio/reactivex/internal/operators/single/SingleCreate;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleCreate$Emitter;
    }
.end annotation


# instance fields
.field public final a:Ljn9;


# direct methods
.method public constructor <init>(Ljn9;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCreate;->a:Ljn9;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;-><init>(Lin9;)V

    invoke-interface {p1, v0}, Lin9;->onSubscribe(Lrc2;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleCreate;->a:Ljn9;

    invoke-interface {p0, v0}, Ljn9;->subscribe(Lzm9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
