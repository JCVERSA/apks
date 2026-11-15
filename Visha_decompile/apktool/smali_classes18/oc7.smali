.class public final Loc7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc7$a;
    }
.end annotation


# instance fields
.field public final c:Lt74;

.field public final d:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lld7;Lt74;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Loc7;->c:Lt74;

    iput-object p3, p0, Loc7;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Loc7;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ln3;->b:Lld7;

    new-instance v2, Loc7$a;

    iget-object p0, p0, Loc7;->c:Lt74;

    invoke-direct {v2, p1, p0, v0}, Loc7$a;-><init>(Lpd7;Lt74;Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lld7;->subscribe(Lpd7;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lpd7;)V

    return-void
.end method
