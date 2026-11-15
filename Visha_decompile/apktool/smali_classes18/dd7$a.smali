.class public final Ldd7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:Lt74;

.field public d:Lrc2;


# direct methods
.method public constructor <init>(Lpd7;Lt74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd7$a;->b:Lpd7;

    iput-object p2, p0, Ldd7$a;->c:Lt74;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Ldd7$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Ldd7$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldd7$a;->c:Lt74;

    invoke-interface {v0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The supplied value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p0, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p0, v0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p1, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p1, v0}, Lpd7;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object p0, p0, Ldd7$a;->b:Lpd7;

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Ldd7$a;->d:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldd7$a;->d:Lrc2;

    iget-object p1, p0, Ldd7$a;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
