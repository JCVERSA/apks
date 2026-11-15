.class public abstract Lhm8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZZLpd7;ZLom9;Lrc2;Lhd7;)Z
    .locals 2

    invoke-interface {p6}, Lhd7;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lom9;->clear()V

    invoke-interface {p5}, Lrc2;->dispose()V

    return v1

    :cond_0
    if-eqz p0, :cond_7

    if-eqz p3, :cond_3

    if-eqz p1, :cond_7

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lrc2;->dispose()V

    :cond_1
    invoke-interface {p6}, Lhd7;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p2, p0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lpd7;->onComplete()V

    :goto_0
    return v1

    :cond_3
    invoke-interface {p6}, Lhd7;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p4}, Lom9;->clear()V

    if-eqz p5, :cond_4

    invoke-interface {p5}, Lrc2;->dispose()V

    :cond_4
    invoke-interface {p2, p0}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_5
    if-eqz p1, :cond_7

    if-eqz p5, :cond_6

    invoke-interface {p5}, Lrc2;->dispose()V

    :cond_6
    invoke-interface {p2}, Lpd7;->onComplete()V

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static b(ZZLd2a;ZLom9;Lgm8;)Z
    .locals 2

    invoke-interface {p5}, Lgm8;->cancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lom9;->clear()V

    return v1

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p5}, Lgm8;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ld2a;->onComplete()V

    :goto_0
    return v1

    :cond_2
    invoke-interface {p5}, Lgm8;->error()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p4}, Lom9;->clear()V

    invoke-interface {p2, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p2}, Ld2a;->onComplete()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)Lom9;
    .locals 1

    if-gez p0, :cond_0

    new-instance v0, Lmv9;

    neg-int p0, p0

    invoke-direct {v0, p0}, Lmv9;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

.method public static d(Lnm9;Lpd7;ZLrc2;Lhd7;)V
    .locals 11

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    invoke-interface {p4}, Lhd7;->done()Z

    move-result v2

    invoke-interface {p0}, Lom9;->isEmpty()Z

    move-result v3

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lhm8;->a(ZZLpd7;ZLom9;Lrc2;Lhd7;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-interface {p4}, Lhd7;->done()Z

    move-result v3

    invoke-interface {p0}, Lnm9;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v10, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v10, v4

    :goto_1
    move v4, v10

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Lhm8;->a(ZZLpd7;ZLom9;Lrc2;Lhd7;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_4

    neg-int v1, v1

    invoke-interface {p4, v1}, Lhd7;->leave(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_4
    invoke-interface {p4, p1, v2}, Lhd7;->accept(Lpd7;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Lnm9;Ld2a;ZLrc2;Lgm8;)V
    .locals 10

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Lgm8;->done()Z

    move-result v2

    invoke-interface {p0}, Lnm9;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v9, v3

    :goto_1
    move v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lhm8;->b(ZZLd2a;ZLom9;Lgm8;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lrc2;->dispose()V

    :cond_2
    return-void

    :cond_3
    if-eqz v9, :cond_4

    neg-int v1, v1

    invoke-interface {p4, v1}, Lgm8;->leave(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_4
    invoke-interface {p4}, Lgm8;->requested()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    invoke-interface {p4, p1, v8}, Lgm8;->accept(Ld2a;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-interface {p4, v2, v3}, Lgm8;->produced(J)J

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lom9;->clear()V

    if-eqz p3, :cond_6

    invoke-interface {p3}, Lrc2;->dispose()V

    :cond_6
    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit value due to lack of requests."

    invoke-direct {p0, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Lf2a;I)V
    .locals 2

    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    :goto_0
    invoke-interface {p0, v0, v1}, Lf2a;->request(J)V

    return-void
.end method
