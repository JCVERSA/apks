.class public final Lbn9;
.super Lxm9;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lbn9;->a:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    invoke-static {}, Lio/reactivex/disposables/a;->b()Lrc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lin9;->onSubscribe(Lrc2;)V

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lbn9;->a:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "The callable returned a null value"

    invoke-static {p0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lin9;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Lin9;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
