.class abstract Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ley/a;->d()Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 6
    .line 7
    return-void
.end method
