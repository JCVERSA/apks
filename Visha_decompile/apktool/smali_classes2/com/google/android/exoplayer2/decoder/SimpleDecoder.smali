.class public abstract Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liu1;


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field public final f:[Lku1;

.field public g:I

.field public h:I

.field public i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field public j:Lcom/google/android/exoplayer2/decoder/DecoderException;

.field public k:Z

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lku1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lku1;

    array-length p2, p2

    iput p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lku1;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d()Lku1;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder$1;-><init>(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/decoder/SimpleDecoder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->p()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.end method

.method public abstract d()Lku1;
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i()Lku1;

    move-result-object p0

    return-object p0
.end method

.method public abstract e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
.end method

.method public abstract f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lku1;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lku1;

    invoke-virtual {v1}, Lku1;->l()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lku1;

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lwk0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lwk0;->a(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lwk0;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v0}, Lwk0;->a(I)V

    :cond_3
    invoke-virtual {v1}, Lwk0;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x8000000

    invoke-virtual {v3, v0}, Lwk0;->a(I)V

    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lku1;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

    monitor-exit v4

    return v2

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lku1;->l()V

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lwk0;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    invoke-virtual {v3}, Lku1;->l()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iput v0, v3, Lku1;->d:I

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    monitor-exit v4

    return v5

    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final h()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lzi;->g(Z)V

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()Lku1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lku1;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j:Lcom/google/android/exoplayer2/decoder/DecoderException;

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public final l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lzi;->a(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->i:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method public n(Lku1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->o(Lku1;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->j()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final o(Lku1;)V
    .locals 3

    invoke-virtual {p1}, Lwk0;->b()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->f:[Lku1;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final p()V
    .locals 1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final q(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->g:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->e:[Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->l:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->a:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
