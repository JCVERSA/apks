.class public final Lnd7;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnd7$a;
    }
.end annotation


# instance fields
.field public final a:Lld7;

.field public final b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lld7;I)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lnd7;->a:Lld7;

    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->b(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, Lnd7;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnd7;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lnd7;->a:Lld7;

    new-instance v1, Lnd7$a;

    invoke-direct {v1, p1, v0}, Lnd7$a;-><init>(Lin9;Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lin9;)V

    return-void
.end method
