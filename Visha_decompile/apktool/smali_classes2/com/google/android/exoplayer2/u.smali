.class public final Lcom/google/android/exoplayer2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/u$a;,
        Lcom/google/android/exoplayer2/u$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/u$b;

.field public final b:Lcom/google/android/exoplayer2/u$a;

.field public final c:Ley0;

.field public final d:Lcom/google/android/exoplayer2/a0;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Landroid/os/Looper;

.field public h:I

.field public i:J

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/u$a;Lcom/google/android/exoplayer2/u$b;Lcom/google/android/exoplayer2/a0;ILey0;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->b:Lcom/google/android/exoplayer2/u$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/u$b;

    iput-object p3, p0, Lcom/google/android/exoplayer2/u;->d:Lcom/google/android/exoplayer2/a0;

    iput-object p6, p0, Lcom/google/android/exoplayer2/u;->g:Landroid/os/Looper;

    iput-object p5, p0, Lcom/google/android/exoplayer2/u;->c:Ley0;

    iput p4, p0, Lcom/google/android/exoplayer2/u;->h:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/u;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/u;->j:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->k:Z

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->c:Ley0;

    invoke-interface {v0}, Ley0;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/u;->m:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/u;->c:Ley0;

    invoke-interface {v2}, Ley0;->onThreadBlocked()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/u;->c:Ley0;

    invoke-interface {p1}, Ley0;->elapsedRealtime()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/u;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/u;->j:Z

    return p0
.end method

.method public c()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/u;->g:Landroid/os/Looper;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/u;->h:I

    return p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/u;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/u;->i:J

    return-wide v0
.end method

.method public g()Lcom/google/android/exoplayer2/u$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/u$b;

    return-object p0
.end method

.method public h()Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/u;->d:Lcom/google/android/exoplayer2/a0;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/u;->e:I

    return p0
.end method

.method public declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized k(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->l:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/u;->l:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/u;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l()Lcom/google/android/exoplayer2/u;
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lzi;->g(Z)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/u;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->j:Z

    invoke-static {v0}, Lzi;->a(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/u;->k:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->b:Lcom/google/android/exoplayer2/u$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/u$a;->a(Lcom/google/android/exoplayer2/u;)V

    return-object p0
.end method

.method public m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/u;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public n(I)Lcom/google/android/exoplayer2/u;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/u;->e:I

    return-object p0
.end method
