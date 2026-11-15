.class public abstract Lvb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvb$b;
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb$a;

    invoke-direct {v0}, Lvb$a;-><init>()V

    invoke-static {v0}, Lvw8;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lvb;->a:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static a()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lvb;->a:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lvw8;->e(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
