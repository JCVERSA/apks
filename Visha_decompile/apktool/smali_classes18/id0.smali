.class public abstract Lid0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lfm8;


# instance fields
.field public final b:Lpd7;

.field public c:Lrc2;

.field public d:Lfm8;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lpd7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid0;->b:Lpd7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lid0;->c:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    invoke-virtual {p0, p1}, Lid0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lid0;->d:Lfm8;

    invoke-interface {p0}, Lom9;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 2

    iget-object v0, p0, Lid0;->d:Lfm8;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Lsm8;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_0

    iput p1, p0, Lid0;->f:I

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lid0;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lid0;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lid0;->d:Lfm8;

    invoke-interface {p0}, Lom9;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lid0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid0;->e:Z

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lid0;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid0;->e:Z

    iget-object p0, p0, Lid0;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lid0;->c:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lid0;->c:Lrc2;

    instance-of v0, p1, Lfm8;

    if-eqz v0, :cond_0

    check-cast p1, Lfm8;

    iput-object p1, p0, Lid0;->d:Lfm8;

    :cond_0
    invoke-virtual {p0}, Lid0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lid0;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    invoke-virtual {p0}, Lid0;->a()V

    :cond_1
    return-void
.end method
