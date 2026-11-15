.class public final Lg96$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin9;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg96;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lk96;

.field public final c:Lie8;

.field public d:Lrc2;


# direct methods
.method public constructor <init>(Lk96;Lie8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg96$a;->b:Lk96;

    iput-object p2, p0, Lg96$a;->c:Lie8;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lg96$a;->d:Lrc2;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lg96$a;->d:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lg96$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lg96$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lg96$a;->d:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lg96$a;->d:Lrc2;

    iget-object p1, p0, Lg96$a;->b:Lk96;

    invoke-interface {p1, p0}, Lk96;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg96$a;->c:Lie8;

    invoke-interface {v0, p1}, Lie8;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg96$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg96$a;->b:Lk96;

    invoke-interface {p0}, Lk96;->onComplete()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lg96$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
