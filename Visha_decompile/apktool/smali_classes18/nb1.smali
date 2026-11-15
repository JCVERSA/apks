.class public final Lnb1;
.super Lhb1;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lnb1;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 1

    invoke-static {}, Lio/reactivex/disposables/a;->b()Lrc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqb1;->onSubscribe(Lrc2;)V

    :try_start_0
    iget-object p0, p0, Lnb1;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lqb1;->onComplete()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lqb1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
