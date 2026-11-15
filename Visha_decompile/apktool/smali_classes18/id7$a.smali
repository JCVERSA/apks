.class public final Lid7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lk96;

.field public c:Lrc2;

.field public d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public constructor <init>(Lk96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid7$a;->b:Lk96;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lid7$a;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lid7$a;->c:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lid7$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid7$a;->e:Z

    iget-object v0, p0, Lid7$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lid7$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lid7$a;->b:Lk96;

    invoke-interface {p0}, Lk96;->onComplete()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lid7$a;->b:Lk96;

    invoke-interface {p0, v0}, Lk96;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lid7$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid7$a;->e:Z

    iget-object p0, p0, Lid7$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lid7$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lid7$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lid7$a;->e:Z

    iget-object p1, p0, Lid7$a;->c:Lrc2;

    invoke-interface {p1}, Lrc2;->dispose()V

    iget-object p0, p0, Lid7$a;->b:Lk96;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence contains more than one element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lk96;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lid7$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lid7$a;->c:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lid7$a;->c:Lrc2;

    iget-object p1, p0, Lid7$a;->b:Lk96;

    invoke-interface {p1, p0}, Lk96;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
