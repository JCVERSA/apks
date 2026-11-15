.class public abstract Ley/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley/a$b;,
        Ley/a$h;,
        Ley/a$f;,
        Ley/a$c;,
        Ley/a$e;,
        Ley/a$d;,
        Ley/a$a;,
        Ley/a$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/Scheduler;

.field static final b:Lio/reactivex/rxjava3/core/Scheduler;

.field static final c:Lio/reactivex/rxjava3/core/Scheduler;

.field static final d:Lio/reactivex/rxjava3/core/Scheduler;

.field static final e:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ley/a$h;

    .line 2
    .line 3
    invoke-direct {v0}, Ley/a$h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldy/a;->i(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ley/a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    new-instance v0, Ley/a$b;

    .line 13
    .line 14
    invoke-direct {v0}, Ley/a$b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ldy/a;->f(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Ley/a;->b:Lio/reactivex/rxjava3/core/Scheduler;

    .line 22
    .line 23
    new-instance v0, Ley/a$c;

    .line 24
    .line 25
    invoke-direct {v0}, Ley/a$c;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ldy/a;->g(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ley/a;->c:Lio/reactivex/rxjava3/core/Scheduler;

    .line 33
    .line 34
    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;->g()Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ley/a;->d:Lio/reactivex/rxjava3/core/Scheduler;

    .line 39
    .line 40
    new-instance v0, Ley/a$f;

    .line 41
    .line 42
    invoke-direct {v0}, Ley/a$f;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ldy/a;->h(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Ley/a;->e:Lio/reactivex/rxjava3/core/Scheduler;

    .line 50
    .line 51
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0}, Ley/a;->b(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldy/a;->e(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Ley/a;->c:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    invoke-static {v0}, Ldy/a;->s(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static d()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Ley/a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    invoke-static {v0}, Ldy/a;->u(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
