.class public final Lpc7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:Lzf1;

.field public final d:Lzf1;

.field public final e:Ld5;

.field public final f:Ld5;

.field public g:Lrc2;

.field public h:Z


# direct methods
.method public constructor <init>(Lpd7;Lzf1;Lzf1;Ld5;Ld5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc7$a;->b:Lpd7;

    iput-object p2, p0, Lpc7$a;->c:Lzf1;

    iput-object p3, p0, Lpc7$a;->d:Lzf1;

    iput-object p4, p0, Lpc7$a;->e:Ld5;

    iput-object p5, p0, Lpc7$a;->f:Ld5;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lpc7$a;->g:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lpc7$a;->g:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lpc7$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpc7$a;->e:Ld5;

    invoke-interface {v0}, Ld5;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpc7$a;->h:Z

    iget-object v0, p0, Lpc7$a;->b:Lpd7;

    invoke-interface {v0}, Lpd7;->onComplete()V

    :try_start_1
    iget-object p0, p0, Lpc7$a;->f:Ld5;

    invoke-interface {p0}, Ld5;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lpc7$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lpc7$a;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpc7$a;->h:Z

    :try_start_0
    iget-object v0, p0, Lpc7$a;->d:Lzf1;

    invoke-interface {v0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lpc7$a;->b:Lpd7;

    invoke-interface {v0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object p0, p0, Lpc7$a;->f:Ld5;

    invoke-interface {p0}, Ld5;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lpc7$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpc7$a;->c:Lzf1;

    invoke-interface {v0, p1}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lpc7$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lpc7$a;->g:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    invoke-virtual {p0, p1}, Lpc7$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lpc7$a;->g:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lpc7$a;->g:Lrc2;

    iget-object p1, p0, Lpc7$a;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
