.class public abstract Lcom/google/common/util/concurrent/d;
.super Lkk4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkk4;-><init>()V

    return-void
.end method

.method public static from(Lcom/google/common/util/concurrent/d;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/d;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method

.method public static from(Lim5;)Lcom/google/common/util/concurrent/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lim5;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/util/concurrent/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/util/concurrent/d;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lx44;

    invoke-direct {v0, p0}, Lx44;-><init>(Lim5;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final addCallback(Lj94;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj94;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->a(Lim5;Lj94;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final catching(Ljava/lang/Class;Lo74;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lo74;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->b(Lim5;Ljava/lang/Class;Lo74;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method

.method public final catchingAsync(Ljava/lang/Class;Lgj;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lgj;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->c(Lim5;Ljava/lang/Class;Lgj;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method

.method public final transform(Lo74;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo74;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->i(Lim5;Lo74;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method

.method public final transformAsync(Lgj;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgj;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->j(Lim5;Lgj;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method

.method public final withTimeout(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/d;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/Futures;->l(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/d;

    return-object p0
.end method
