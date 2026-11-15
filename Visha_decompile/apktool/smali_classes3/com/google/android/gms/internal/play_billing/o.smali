.class public abstract Lcom/google/android/gms/internal/play_billing/o;
.super Ltcg;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lofg;
    .locals 1

    new-instance v0, Lodg;

    invoke-direct {v0, p0}, Lodg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lofg;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lofg;
    .locals 0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x6f54

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/p;->y(Lofg;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lofg;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lofg;Lo8g;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzde;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>(Lofg;Lo8g;)V

    invoke-interface {p0, v0, p2}, Lofg;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
