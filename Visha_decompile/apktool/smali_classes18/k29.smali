.class public abstract Lk29;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk29$b;,
        Lk29$h;,
        Lk29$f;,
        Lk29$c;,
        Lk29$e;,
        Lk29$d;,
        Lk29$a;,
        Lk29$g;
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/Scheduler;

.field public static final b:Lio/reactivex/Scheduler;

.field public static final c:Lio/reactivex/Scheduler;

.field public static final d:Lio/reactivex/Scheduler;

.field public static final e:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk29$h;

    invoke-direct {v0}, Lk29$h;-><init>()V

    invoke-static {v0}, Lyw8;->h(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lk29;->a:Lio/reactivex/Scheduler;

    new-instance v0, Lk29$b;

    invoke-direct {v0}, Lk29$b;-><init>()V

    invoke-static {v0}, Lyw8;->e(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lk29;->b:Lio/reactivex/Scheduler;

    new-instance v0, Lk29$c;

    invoke-direct {v0}, Lk29$c;-><init>()V

    invoke-static {v0}, Lyw8;->f(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lk29;->c:Lio/reactivex/Scheduler;

    invoke-static {}, Lio/reactivex/internal/schedulers/TrampolineScheduler;->f()Lio/reactivex/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lk29;->d:Lio/reactivex/Scheduler;

    new-instance v0, Lk29$f;

    invoke-direct {v0}, Lk29$f;-><init>()V

    invoke-static {v0}, Lyw8;->g(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lk29;->e:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static a()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lk29;->b:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lyw8;->r(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;
    .locals 2

    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static c()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lk29;->c:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lyw8;->t(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lk29;->e:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lyw8;->u(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lk29;->a:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lyw8;->w(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
