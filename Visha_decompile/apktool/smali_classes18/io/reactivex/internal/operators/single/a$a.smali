.class public final Lio/reactivex/internal/operators/single/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lin9;

.field public final c:Lt74;


# direct methods
.method public constructor <init>(Lin9;Lt74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/a$a;->b:Lin9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/a$a;->c:Lt74;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/a$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/a$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSubscribe(Lrc2;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/a$a;->c:Lt74;

    invoke-interface {v0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/a$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/a$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
