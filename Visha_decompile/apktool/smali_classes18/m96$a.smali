.class public final Lm96$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk96;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm96;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lin9;

.field public final c:Ljava/lang/Object;

.field public d:Lrc2;


# direct methods
.method public constructor <init>(Lin9;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm96$a;->b:Lin9;

    iput-object p2, p0, Lm96$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lm96$a;->d:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lm96$a;->d:Lrc2;

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lm96$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lm96$a;->d:Lrc2;

    iget-object v0, p0, Lm96$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm96$a;->b:Lin9;

    invoke-interface {p0, v0}, Lin9;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm96$a;->b:Lin9;

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "The MaybeSource is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lin9;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lm96$a;->d:Lrc2;

    iget-object p0, p0, Lm96$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lm96$a;->d:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lm96$a;->d:Lrc2;

    iget-object p1, p0, Lm96$a;->b:Lin9;

    invoke-interface {p1, p0}, Lin9;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lm96$a;->d:Lrc2;

    iget-object p0, p0, Lm96$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
