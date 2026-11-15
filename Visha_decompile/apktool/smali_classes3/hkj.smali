.class public final Lhkj;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public final d:Landroidx/collection/CircularIntArray;

.field public final e:Landroidx/collection/CircularIntArray;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/util/ArrayDeque;

.field public h:Landroid/media/MediaFormat;

.field public i:Landroid/media/MediaFormat;

.field public j:Landroid/media/MediaCodec$CodecException;

.field public k:Landroid/media/MediaCodec$CryptoException;

.field public l:J

.field public m:Z

.field public n:Ljava/lang/IllegalStateException;

.field public o:Lqkj;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    iput-object p1, p0, Lhkj;->b:Landroid/os/HandlerThread;

    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lhkj;->d:Landroidx/collection/CircularIntArray;

    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lhkj;->e:Landroidx/collection/CircularIntArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lhkj;->f:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lhkj;->g:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic d(Lhkj;)V
    .locals 5

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lhkj;->m:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lhkj;->l:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lhkj;->l:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v1, p0, Lhkj;->n:Ljava/lang/IllegalStateException;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_2
    invoke-virtual {p0}, Lhkj;->j()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lhkj;->k()V

    invoke-virtual {p0}, Lhkj;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lhkj;->d:Landroidx/collection/CircularIntArray;

    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 8

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lhkj;->k()V

    invoke-virtual {p0}, Lhkj;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lhkj;->e:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lhkj;->h:Landroid/media/MediaFormat;

    invoke-static {v2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lhkj;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lhkj;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Lhkj;->h:Landroid/media/MediaFormat;

    move v1, p1

    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lhkj;->h:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lhkj;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lhkj;->l:J

    iget-object v1, p0, Lhkj;->c:Landroid/os/Handler;

    sget v2, Lkfh;->a:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(Lhkj;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Landroid/media/MediaCodec;)V
    .locals 2

    iget-object v0, p0, Lhkj;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, Lhkj;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v1, p0, Lhkj;->c:Landroid/os/Handler;

    return-void
.end method

.method public final g(Lqkj;)V
    .locals 1

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lhkj;->o:Lqkj;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lhkj;->m:Z

    iget-object v1, p0, Lhkj;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {p0}, Lhkj;->j()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lhkj;->e:Landroidx/collection/CircularIntArray;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p0, p0, Lhkj;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lhkj;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Lhkj;->i:Landroid/media/MediaFormat;

    :cond_0
    iget-object v1, p0, Lhkj;->d:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->clear()V

    iget-object v1, p0, Lhkj;->e:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->clear()V

    iget-object p0, p0, Lhkj;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lhkj;->n:Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhkj;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhkj;->k:Landroid/media/MediaCodec$CryptoException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lhkj;->k:Landroid/media/MediaCodec$CryptoException;

    throw v0

    :cond_1
    iput-object v1, p0, Lhkj;->j:Landroid/media/MediaCodec$CodecException;

    throw v0

    :cond_2
    iput-object v1, p0, Lhkj;->n:Ljava/lang/IllegalStateException;

    throw v0
.end method

.method public final l()Z
    .locals 4

    iget-wide v0, p0, Lhkj;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lhkj;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    iget-object p1, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lhkj;->k:Landroid/media/MediaCodec$CryptoException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lhkj;->j:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    iget-object p1, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhkj;->d:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p0, p0, Lhkj;->o:Lqkj;

    if-eqz p0, :cond_0

    check-cast p0, Lclj;

    iget-object p0, p0, Lclj;->a:Lflj;

    invoke-static {p0}, Lflj;->I0(Lflj;)Lw9j;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lflj;->I0(Lflj;)Lw9j;

    move-result-object p0

    invoke-interface {p0}, Lw9j;->zza()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object p1, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhkj;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lhkj;->i(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lhkj;->i:Landroid/media/MediaFormat;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lhkj;->e:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p2, p0, Lhkj;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lhkj;->o:Lqkj;

    if-eqz p0, :cond_1

    check-cast p0, Lclj;

    iget-object p0, p0, Lclj;->a:Lflj;

    invoke-static {p0}, Lflj;->I0(Lflj;)Lw9j;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lflj;->I0(Lflj;)Lw9j;

    move-result-object p0

    invoke-interface {p0}, Lw9j;->zza()V

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p1, p0, Lhkj;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, p2}, Lhkj;->i(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lhkj;->i:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
