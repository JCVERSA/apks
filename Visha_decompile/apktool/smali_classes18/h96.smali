.class public final Lh96;
.super Lb96;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Lh96;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh96;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j(Lk96;)V
    .locals 2

    invoke-static {}, Lio/reactivex/disposables/a;->b()Lrc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lk96;->onSubscribe(Lrc2;)V

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object p0, p0, Lh96;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    invoke-interface {p1}, Lk96;->onComplete()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lk96;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lk96;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
