.class public Lu4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# instance fields
.field public final a:Lo2a;

.field public final b:Lmm1;

.field public final c:Lqw7;

.field public final d:Lcom/google/android/exoplayer2/k;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public g:Lqk3;

.field public h:Lfva;

.field public i:I

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Lo2a;Lcom/google/android/exoplayer2/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4a;->a:Lo2a;

    new-instance p1, Lmm1;

    invoke-direct {p1}, Lmm1;-><init>()V

    iput-object p1, p0, Lu4a;->b:Lmm1;

    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lu4a;->c:Lqw7;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    const-string/jumbo v0, "text/x-exoplayer-cues"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iput-object p1, p0, Lu4a;->d:Lcom/google/android/exoplayer2/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu4a;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu4a;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lu4a;->j:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lu4a;->k:J

    return-void
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 7

    iget v0, p0, Lu4a;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iput-object p1, p0, Lu4a;->g:Lqk3;

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lu4a;->h:Lfva;

    iget-object p1, p0, Lu4a;->g:Lqk3;

    invoke-interface {p1}, Lqk3;->endTracks()V

    iget-object p1, p0, Lu4a;->g:Lqk3;

    new-instance v0, Ljz4;

    const-wide/16 v3, 0x0

    new-array v5, v2, [J

    aput-wide v3, v5, v1

    new-array v6, v2, [J

    aput-wide v3, v6, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v5, v6, v3, v4}, Ljz4;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lqk3;->d(Lja9;)V

    iget-object p1, p0, Lu4a;->h:Lfva;

    iget-object v0, p0, Lu4a;->d:Lcom/google/android/exoplayer2/k;

    invoke-interface {p1, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iput v2, p0, Lu4a;->j:I

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 7

    iget p2, p0, Lu4a;->j:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p2}, Lzi;->g(Z)V

    iget p2, p0, Lu4a;->j:I

    const/4 v2, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lu4a;->c:Lqw7;

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x400

    :goto_1
    invoke-virtual {p2, v0}, Lqw7;->K(I)V

    iput v1, p0, Lu4a;->i:I

    iput v2, p0, Lu4a;->j:I

    :cond_2
    iget p2, p0, Lu4a;->j:I

    const/4 v0, 0x4

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lu4a;->e(Lpk3;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lu4a;->d()V

    invoke-virtual {p0}, Lu4a;->g()V

    iput v0, p0, Lu4a;->j:I

    :cond_3
    iget p2, p0, Lu4a;->j:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    invoke-virtual {p0, p1}, Lu4a;->f(Lpk3;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lu4a;->g()V

    iput v0, p0, Lu4a;->j:I

    :cond_4
    iget p0, p0, Lu4a;->j:I

    if-ne p0, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    return v1
.end method

.method public c(Lpk3;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lu4a;->a:Lo2a;

    invoke-interface {v0}, Liu1;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4a;

    :goto_0
    const-wide/16 v1, 0x5

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lu4a;->a:Lo2a;

    invoke-interface {v0}, Liu1;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4a;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget v3, p0, Lu4a;->i:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lu4a;->c:Lqw7;

    invoke-virtual {v4}, Lqw7;->d()[B

    move-result-object v4

    iget v5, p0, Lu4a;->i:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    iget v4, p0, Lu4a;->i:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lu4a;->a:Lo2a;

    invoke-interface {v3, v0}, Liu1;->queueInputBuffer(Ljava/lang/Object;)V

    iget-object v0, p0, Lu4a;->a:Lo2a;

    invoke-interface {v0}, Liu1;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5a;

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lu4a;->a:Lo2a;

    invoke-interface {v0}, Liu1;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5a;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lk5a;->getEventTimeCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    invoke-virtual {v0, v6}, Lk5a;->getEventTime(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk5a;->getCues(J)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lu4a;->b:Lmm1;

    invoke-virtual {v2, v1}, Lmm1;->a(Ljava/util/List;)[B

    move-result-object v1

    iget-object v2, p0, Lu4a;->e:Ljava/util/List;

    invoke-virtual {v0, v6}, Lk5a;->getEventTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lu4a;->f:Ljava/util/List;

    new-instance v3, Lqw7;

    invoke-direct {v3, v1}, Lqw7;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lku1;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    const-string v0, "SubtitleDecoder failed."

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public final e(Lpk3;)Z
    .locals 6

    iget-object v0, p0, Lu4a;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->b()I

    move-result v0

    iget v1, p0, Lu4a;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu4a;->c:Lqw7;

    add-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lqw7;->c(I)V

    :cond_0
    iget-object v0, p0, Lu4a;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget v1, p0, Lu4a;->i:I

    iget-object v2, p0, Lu4a;->c:Lqw7;

    invoke-virtual {v2}, Lqw7;->b()I

    move-result v2

    iget v3, p0, Lu4a;->i:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lpk3;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lu4a;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lu4a;->i:I

    :cond_1
    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget p0, p0, Lu4a;->i:I

    int-to-long p0, p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    :cond_2
    if-ne v0, v1, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lpk3;)Z
    .locals 4

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x400

    :goto_0
    invoke-interface {p1, p0}, Lpk3;->skip(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final g()V
    .locals 11

    iget-object v0, p0, Lu4a;->h:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lu4a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lu4a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-wide v0, p0, Lu4a;->k:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lu4a;->e:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v0, v3, v3}, Lblb;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lu4a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lu4a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqw7;

    invoke-virtual {v1, v2}, Lqw7;->O(I)V

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v3

    array-length v8, v3

    iget-object v3, p0, Lu4a;->h:Lfva;

    invoke-interface {v3, v1, v8}, Lfva;->d(Lqw7;I)V

    iget-object v4, p0, Lu4a;->h:Lfva;

    iget-object v1, p0, Lu4a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lfva;->e(JIIILfva$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    iget v0, p0, Lu4a;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lu4a;->a:Lo2a;

    invoke-interface {v0}, Liu1;->release()V

    iput v1, p0, Lu4a;->j:I

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget p1, p0, Lu4a;->j:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lzi;->g(Z)V

    iput-wide p3, p0, Lu4a;->k:J

    iget p1, p0, Lu4a;->j:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Lu4a;->j:I

    :cond_1
    iget p1, p0, Lu4a;->j:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lu4a;->j:I

    :cond_2
    return-void
.end method
