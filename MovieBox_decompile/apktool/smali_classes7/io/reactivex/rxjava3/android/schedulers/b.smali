.class public abstract Lio/reactivex/rxjava3/android/schedulers/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/android/schedulers/b$a;
    }
.end annotation


# static fields
.field private static final a:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/android/schedulers/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lwx/a;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lio/reactivex/rxjava3/android/schedulers/b;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/b;->b()Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic b()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/b$a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/android/schedulers/b;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    invoke-static {v0}, Lwx/a;->e(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
