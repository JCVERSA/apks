.class public final Llha;
.super Lcom/google/android/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:Lk5a;

.field public B:I

.field public C:J

.field public final o:Landroid/os/Handler;

.field public final p:Lkha;

.field public final q:Lp2a;

.field public final r:Lo44;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Lcom/google/android/exoplayer2/k;

.field public x:Lo2a;

.field public y:Ly4a;

.field public z:Lk5a;


# direct methods
.method public constructor <init>(Lkha;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lp2a;->a:Lp2a;

    invoke-direct {p0, p1, p2, v0}, Llha;-><init>(Lkha;Landroid/os/Looper;Lp2a;)V

    return-void
.end method

.method public constructor <init>(Lkha;Landroid/os/Looper;Lp2a;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/d;-><init>(I)V

    .line 3
    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkha;

    iput-object p1, p0, Llha;->p:Lkha;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lblb;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Llha;->o:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Llha;->q:Lp2a;

    .line 6
    new-instance p1, Lo44;

    invoke-direct {p1}, Lo44;-><init>()V

    iput-object p1, p0, Llha;->r:Lo44;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Llha;->C:J

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Llha;->u:Z

    iget-object v0, p0, Llha;->q:Lp2a;

    iget-object v1, p0, Llha;->w:Lcom/google/android/exoplayer2/k;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/k;

    invoke-interface {v0, v1}, Lp2a;->b(Lcom/google/android/exoplayer2/k;)Lo2a;

    move-result-object v0

    iput-object v0, p0, Llha;->x:Lo2a;

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Llha;->p:Lkha;

    invoke-interface {v0, p1}, Lkha;->onCues(Ljava/util/List;)V

    iget-object p0, p0, Llha;->p:Lkha;

    new-instance v0, Lqm1;

    invoke-direct {v0, p1}, Lqm1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lkha;->onCues(Lqm1;)V

    return-void
.end method

.method public final C()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Llha;->y:Ly4a;

    const/4 v1, -0x1

    iput v1, p0, Llha;->B:I

    iget-object v1, p0, Llha;->z:Lk5a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lku1;->l()V

    iput-object v0, p0, Llha;->z:Lk5a;

    :cond_0
    iget-object v1, p0, Llha;->A:Lk5a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lku1;->l()V

    iput-object v0, p0, Llha;->A:Lk5a;

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 1

    invoke-virtual {p0}, Llha;->C()V

    iget-object v0, p0, Llha;->x:Lo2a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2a;

    invoke-interface {v0}, Liu1;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Llha;->x:Lo2a;

    const/4 v0, 0x0

    iput v0, p0, Llha;->v:I

    return-void
.end method

.method public final E()V
    .locals 0

    invoke-virtual {p0}, Llha;->D()V

    invoke-virtual {p0}, Llha;->A()V

    return-void
.end method

.method public F(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    iput-wide p1, p0, Llha;->C:J

    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Llha;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Llha;->B(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/k;)I
    .locals 0

    iget-object p0, p0, Llha;->q:Lp2a;

    invoke-interface {p0, p1}, Lp2a;->a(Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/google/android/exoplayer2/k;->F:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {p0}, Lqp6;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-static {p0}, Lks8;->create(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Lks8;->create(I)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llha;->B(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public isEnded()Z
    .locals 0

    iget-boolean p0, p0, Llha;->t:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Llha;->w:Lcom/google/android/exoplayer2/k;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Llha;->C:J

    invoke-virtual {p0}, Llha;->x()V

    invoke-virtual {p0}, Llha;->D()V

    return-void
.end method

.method public p(JZ)V
    .locals 0

    invoke-virtual {p0}, Llha;->x()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llha;->s:Z

    iput-boolean p1, p0, Llha;->t:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Llha;->C:J

    iget p1, p0, Llha;->v:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llha;->E()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llha;->C()V

    iget-object p0, p0, Llha;->x:Lo2a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo2a;

    invoke-interface {p0}, Liu1;->flush()V

    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->isCurrentStreamFinal()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Llha;->C:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Llha;->C()V

    iput-boolean p4, p0, Llha;->t:Z

    :cond_0
    iget-boolean p3, p0, Llha;->t:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Llha;->A:Lk5a;

    if-nez p3, :cond_2

    iget-object p3, p0, Llha;->x:Lo2a;

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo2a;

    invoke-interface {p3, p1, p2}, Lo2a;->setPositionUs(J)V

    :try_start_0
    iget-object p3, p0, Llha;->x:Lo2a;

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo2a;

    invoke-interface {p3}, Liu1;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk5a;

    iput-object p3, p0, Llha;->A:Lk5a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Llha;->z(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->getState()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Llha;->z:Lk5a;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Llha;->y()J

    move-result-wide v2

    move p3, v1

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    iget p3, p0, Llha;->B:I

    add-int/2addr p3, p4

    iput p3, p0, Llha;->B:I

    invoke-virtual {p0}, Llha;->y()J

    move-result-wide v2

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v1

    :cond_5
    iget-object v2, p0, Llha;->A:Lk5a;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lwk0;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    invoke-virtual {p0}, Llha;->y()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    iget v2, p0, Llha;->v:I

    if-ne v2, v0, :cond_6

    invoke-virtual {p0}, Llha;->E()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Llha;->C()V

    iput-boolean p4, p0, Llha;->t:Z

    goto :goto_2

    :cond_7
    iget-wide v4, v2, Lku1;->c:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9

    iget-object p3, p0, Llha;->z:Lk5a;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lku1;->l()V

    :cond_8
    invoke-virtual {v2, p1, p2}, Lk5a;->getNextEventTimeIndex(J)I

    move-result p3

    iput p3, p0, Llha;->B:I

    iput-object v2, p0, Llha;->z:Lk5a;

    iput-object v3, p0, Llha;->A:Lk5a;

    move p3, p4

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    iget-object p3, p0, Llha;->z:Lk5a;

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Llha;->z:Lk5a;

    invoke-virtual {p3, p1, p2}, Lk5a;->getCues(J)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Llha;->G(Ljava/util/List;)V

    :cond_a
    iget p1, p0, Llha;->v:I

    if-ne p1, v0, :cond_b

    return-void

    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Llha;->s:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Llha;->y:Ly4a;

    if-nez p1, :cond_d

    iget-object p1, p0, Llha;->x:Lo2a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2a;

    invoke-interface {p1}, Liu1;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly4a;

    if-nez p1, :cond_c

    return-void

    :cond_c
    iput-object p1, p0, Llha;->y:Ly4a;

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_d
    :goto_4
    iget p2, p0, Llha;->v:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lwk0;->k(I)V

    iget-object p2, p0, Llha;->x:Lo2a;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2a;

    invoke-interface {p2, p1}, Liu1;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v3, p0, Llha;->y:Ly4a;

    iput v0, p0, Llha;->v:I

    return-void

    :cond_e
    iget-object p2, p0, Llha;->r:Lo44;

    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/d;->u(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_11

    invoke-virtual {p1}, Lwk0;->h()Z

    move-result p2

    if-eqz p2, :cond_f

    iput-boolean p4, p0, Llha;->s:Z

    iput-boolean v1, p0, Llha;->u:Z

    goto :goto_5

    :cond_f
    iget-object p2, p0, Llha;->r:Lo44;

    iget-object p2, p2, Lo44;->b:Lcom/google/android/exoplayer2/k;

    if-nez p2, :cond_10

    return-void

    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/k;->q:J

    iput-wide p2, p1, Ly4a;->j:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-boolean p2, p0, Llha;->u:Z

    invoke-virtual {p1}, Lwk0;->j()Z

    move-result p3

    xor-int/2addr p3, p4

    and-int/2addr p2, p3

    iput-boolean p2, p0, Llha;->u:Z

    :goto_5
    iget-boolean p2, p0, Llha;->u:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Llha;->x:Lo2a;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2a;

    invoke-interface {p2, p1}, Liu1;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v3, p0, Llha;->y:Ly4a;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_11
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :goto_6
    invoke-virtual {p0, p1}, Llha;->z(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    :cond_12
    return-void
.end method

.method public t([Lcom/google/android/exoplayer2/k;JJ)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Llha;->w:Lcom/google/android/exoplayer2/k;

    iget-object p1, p0, Llha;->x:Lo2a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Llha;->v:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llha;->A()V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Llha;->G(Ljava/util/List;)V

    return-void
.end method

.method public final y()J
    .locals 4

    iget v0, p0, Llha;->B:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Llha;->z:Lk5a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Llha;->B:I

    iget-object v1, p0, Llha;->z:Lk5a;

    invoke-virtual {v1}, Lk5a;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llha;->z:Lk5a;

    iget p0, p0, Llha;->B:I

    invoke-virtual {v0, p0}, Lk5a;->getEventTime(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public final z(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llha;->w:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Llha;->x()V

    invoke-virtual {p0}, Llha;->E()V

    return-void
.end method
