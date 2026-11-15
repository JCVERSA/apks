.class public final Lzd1$a;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lrl5;

.field public final c:Lgd1;

.field public final d:Lrl5;

.field public final e:Lzd1$c;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lzd1$c;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    iput-object p1, p0, Lzd1$a;->e:Lzd1$c;

    new-instance p1, Lrl5;

    invoke-direct {p1}, Lrl5;-><init>()V

    iput-object p1, p0, Lzd1$a;->b:Lrl5;

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lzd1$a;->c:Lgd1;

    new-instance v1, Lrl5;

    invoke-direct {v1}, Lrl5;-><init>()V

    iput-object v1, p0, Lzd1$a;->d:Lrl5;

    invoke-virtual {v1, p1}, Lrl5;->b(Lrc2;)Z

    invoke-virtual {v1, v0}, Lrl5;->b(Lrc2;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lzd1$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzd1$a;->f:Z

    iget-object p0, p0, Lzd1$a;->d:Lrl5;

    invoke-virtual {p0}, Lrl5;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lzd1$a;->f:Z

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;)Lrc2;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lzd1$a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lzd1$a;->e:Lzd1$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lzd1$a;->b:Lrl5;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lsc2;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;
    .locals 6

    .line 4
    iget-boolean v0, p0, Lzd1$a;->f:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lzd1$a;->e:Lzd1$c;

    iget-object v5, p0, Lzd1$a;->c:Lgd1;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lsc2;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method
