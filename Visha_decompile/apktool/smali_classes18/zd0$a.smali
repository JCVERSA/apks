.class public final Lzd0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc2;
.implements Lqf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:Lzd0;

.field public d:Z

.field public e:Z

.field public f:Lqf;

.field public g:Z

.field public volatile h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lpd7;Lzd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzd0$a;->b:Lpd7;

    iput-object p2, p0, Lzd0$a;->c:Lzd0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lzd0$a;->d:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lzd0$a;->c:Lzd0;

    iget-object v1, v0, Lzd0;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v2, v0, Lzd0;->h:J

    iput-wide v2, p0, Lzd0$a;->i:J

    iget-object v0, v0, Lzd0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lzd0$a;->e:Z

    iput-boolean v1, p0, Lzd0$a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lzd0$a;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lzd0$a;->b()V

    :cond_5
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzd0$a;->f:Lqf;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzd0$a;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lzd0$a;->f:Lqf;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lqf;->c(Lqf$a;)V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/Object;J)V
    .locals 2

    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lzd0$a;->g:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lzd0$a;->i:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean p2, p0, Lzd0$a;->e:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lzd0$a;->f:Lqf;

    if-nez p2, :cond_3

    new-instance p2, Lqf;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lqf;-><init>(I)V

    iput-object p2, p0, Lzd0$a;->f:Lqf;

    :cond_3
    invoke-virtual {p2, p1}, Lqf;->b(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lzd0$a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lzd0$a;->g:Z

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lzd0$a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzd0$a;->h:Z

    iget-object v0, p0, Lzd0$a;->c:Lzd0;

    invoke-virtual {v0, p0}, Lzd0;->r0(Lzd0$a;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lzd0$a;->h:Z

    return p0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lzd0$a;->h:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lzd0$a;->b:Lpd7;

    invoke-static {p1, p0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lpd7;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
