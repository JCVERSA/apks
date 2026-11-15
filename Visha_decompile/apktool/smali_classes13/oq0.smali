.class public final Loq0;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loq0$a;
    }
.end annotation


# instance fields
.field public final b:Ljq0;


# direct methods
.method public constructor <init>(Ljq0;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Loq0;->b:Ljq0;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 3

    iget-object p0, p0, Loq0;->b:Ljq0;

    invoke-interface {p0}, Ljq0;->clone()Ljq0;

    move-result-object p0

    new-instance v0, Loq0$a;

    invoke-direct {v0, p0}, Loq0$a;-><init>(Ljq0;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    invoke-virtual {v0}, Loq0$a;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    invoke-virtual {v0}, Loq0$a;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Lpd7;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Loq0$a;->isDisposed()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    :try_start_1
    invoke-interface {p1}, Lpd7;->onComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 v1, 0x1

    :goto_1
    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Loq0$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_2
    invoke-interface {p1, p0}, Lpd7;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p0, p1}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
