.class public Lhg0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public c:Z


# direct methods
.method public constructor <init>(Lpd7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhg0$a;->b:Lpd7;

    return-void
.end method


# virtual methods
.method public a(Lgu8;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lgu8;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lhg0$a;->b:Lpd7;

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lhg0$a;->c:Z

    new-instance v1, Lretrofit2/adapter/rxjava2/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/HttpException;-><init>(Lgu8;)V

    :try_start_0
    iget-object p0, p0, Lhg0$a;->b:Lpd7;

    invoke-interface {p0, v1}, Lpd7;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p0, v2, v0

    invoke-direct {p1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lhg0$a;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lhg0$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhg0$a;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lhg0$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgu8;

    invoke-virtual {p0, p1}, Lhg0$a;->a(Lgu8;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iget-object p0, p0, Lhg0$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onSubscribe(Lrc2;)V

    return-void
.end method
