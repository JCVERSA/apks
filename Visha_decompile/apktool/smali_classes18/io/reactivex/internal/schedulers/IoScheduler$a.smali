.class public final Lio/reactivex/internal/schedulers/IoScheduler$a;
.super Lio/reactivex/internal/schedulers/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$a;->d:J

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$a;->d:J

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$a;->d:J

    return-void
.end method
