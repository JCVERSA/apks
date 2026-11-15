.class public final Lxc7;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc7$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lxc7;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lxc7;->b:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lpd7;)V

    return-void

    :cond_0
    new-instance v0, Lxc7$a;

    invoke-direct {v0, p1, p0}, Lxc7$a;-><init>(Lpd7;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    iget-boolean p0, v0, Lxc7$a;->e:Z

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lxc7$a;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lpd7;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lpd7;)V

    return-void
.end method
