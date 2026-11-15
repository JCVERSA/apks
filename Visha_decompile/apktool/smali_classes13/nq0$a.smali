.class public final Lnq0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc2;
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljq0;

.field public final c:Lpd7;

.field public volatile d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljq0;Lpd7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnq0$a;->e:Z

    iput-object p1, p0, Lnq0$a;->b:Ljq0;

    iput-object p2, p0, Lnq0$a;->c:Lpd7;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnq0$a;->d:Z

    iget-object p0, p0, Lnq0$a;->b:Ljq0;

    invoke-interface {p0}, Ljq0;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lnq0$a;->d:Z

    return p0
.end method

.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p1}, Ljq0;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnq0$a;->c:Lpd7;

    invoke-interface {p0, p2}, Lpd7;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p2, p0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    iget-boolean p1, p0, Lnq0$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lnq0$a;->c:Lpd7;

    invoke-interface {p1, p2}, Lpd7;->onNext(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lnq0$a;->d:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnq0$a;->e:Z

    iget-object p1, p0, Lnq0$a;->c:Lpd7;

    invoke-interface {p1}, Lpd7;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    iget-boolean p2, p0, Lnq0$a;->e:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lnq0$a;->d:Z

    if-nez p2, :cond_2

    :try_start_1
    iget-object p0, p0, Lnq0$a;->c:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance p2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, p0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p2, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {p2}, Lyw8;->s(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
