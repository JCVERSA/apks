.class public final Lc96;
.super Lb96;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Lc96;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public j(Lk96;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lc96;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The maybeSupplier returned a null MaybeSource"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll96;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Ll96;->a(Lk96;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lk96;)V

    return-void
.end method
