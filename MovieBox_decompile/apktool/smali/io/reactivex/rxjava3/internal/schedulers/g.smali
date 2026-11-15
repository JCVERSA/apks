.class public abstract Lio/reactivex/rxjava3/internal/schedulers/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/g$a;
    }
.end annotation


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "rx3.purge-enabled"

    .line 8
    .line 9
    invoke-static {v1, v2, v1, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/g;->b(ZLjava/lang/String;ZZLyx/h;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Z

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 5
    .line 6
    .line 7
    sget-boolean p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Z

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method static b(ZLjava/lang/String;ZZLyx/h;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p4, p1}, Lyx/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const-string p1, "true"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return p2

    .line 24
    :cond_1
    return p3
.end method
