.class public final Lda/p;
.super Lcom/google/android/exoplayer2/h;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:I

.field private B:J

.field private final n:Landroid/os/Handler;

.field private final o:Lda/o;

.field private final p:Lda/k;

.field private final q:Lcom/google/android/exoplayer2/q1;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/google/android/exoplayer2/p1;

.field private w:Lda/j;

.field private x:Lda/m;

.field private y:Lda/n;

.field private z:Lda/n;


# direct methods
.method public constructor <init>(Lda/o;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lda/k;->a:Lda/k;

    invoke-direct {p0, p1, p2, v0}, Lda/p;-><init>(Lda/o;Landroid/os/Looper;Lda/k;)V

    return-void
.end method

.method public constructor <init>(Lda/o;Landroid/os/Looper;Lda/k;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lda/o;

    iput-object p1, p0, Lda/p;->o:Lda/o;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/p0;->v(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lda/p;->n:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lda/p;->p:Lda/k;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/q1;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/q1;-><init>()V

    iput-object p1, p0, Lda/p;->q:Lcom/google/android/exoplayer2/q1;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lda/p;->B:J

    return-void
.end method

.method private A()J
    .locals 4

    .line 1
    iget v0, p0, Lda/p;->A:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, Lda/p;->y:Lda/n;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lda/p;->A:I

    .line 18
    .line 19
    iget-object v1, p0, Lda/p;->y:Lda/n;

    .line 20
    .line 21
    invoke-virtual {v1}, Lda/n;->getEventTimeCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lda/p;->y:Lda/n;

    .line 29
    .line 30
    iget v1, p0, Lda/p;->A:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lda/n;->getEventTime(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    :goto_0
    return-wide v2
.end method

.method private B(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Subtitle decoding failed. streamFormat="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lda/p;->v:Lcom/google/android/exoplayer2/p1;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TextRenderer"

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lda/p;->z()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lda/p;->G()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lda/p;->t:Z

    .line 3
    .line 4
    iget-object v0, p0, Lda/p;->p:Lda/k;

    .line 5
    .line 6
    iget-object v1, p0, Lda/p;->v:Lcom/google/android/exoplayer2/p1;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/exoplayer2/p1;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lda/k;->b(Lcom/google/android/exoplayer2/p1;)Lda/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lda/p;->w:Lda/j;

    .line 19
    .line 20
    return-void
.end method

.method private D(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lda/p;->o:Lda/o;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lda/o;->onCues(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/p;->o:Lda/o;

    .line 7
    .line 8
    new-instance v1, Lda/f;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lda/f;-><init>(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lda/o;->onCues(Lda/f;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private E()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lda/p;->x:Lda/m;

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lda/p;->A:I

    .line 6
    .line 7
    iget-object v1, p0, Lda/p;->y:Lda/n;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->l()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lda/p;->y:Lda/n;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lda/p;->z:Lda/n;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->l()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lda/p;->z:Lda/n;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private F()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/p;->E()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lda/p;->w:Lda/j;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lda/j;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lda/p;->w:Lda/j;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lda/p;->u:I

    .line 20
    .line 21
    return-void
.end method

.method private G()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/p;->F()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lda/p;->C()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private I(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lda/p;->n:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lda/p;->D(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lda/p;->I(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public H(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->isCurrentStreamFinal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Lda/p;->B:J

    .line 9
    .line 10
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/p1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lda/p;->p:Lda/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lda/k;->a(Lcom/google/android/exoplayer2/p1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p1, p1, Lcom/google/android/exoplayer2/p1;->E:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/z2;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/z2;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/z2;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TextRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lda/p;->D(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lda/p;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lda/p;->v:Lcom/google/android/exoplayer2/p1;

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lda/p;->B:J

    .line 10
    .line 11
    invoke-direct {p0}, Lda/p;->z()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lda/p;->F()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected r(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/p;->z()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lda/p;->r:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lda/p;->s:Z

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Lda/p;->B:J

    .line 15
    .line 16
    iget p1, p0, Lda/p;->u:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lda/p;->G()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lda/p;->E()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lda/p;->w:Lda/j;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lda/j;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/d;->flush()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->isCurrentStreamFinal()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 p4, 0x1

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Lda/p;->B:J

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long p3, v0, v2

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    cmp-long p3, p1, v0

    .line 20
    .line 21
    if-ltz p3, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lda/p;->E()V

    .line 24
    .line 25
    .line 26
    iput-boolean p4, p0, Lda/p;->s:Z

    .line 27
    .line 28
    :cond_0
    iget-boolean p3, p0, Lda/p;->s:Z

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p3, p0, Lda/p;->z:Lda/n;

    .line 34
    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    iget-object p3, p0, Lda/p;->w:Lda/j;

    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Lda/j;

    .line 44
    .line 45
    invoke-interface {p3, p1, p2}, Lda/j;->setPositionUs(J)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object p3, p0, Lda/p;->w:Lda/j;

    .line 49
    .line 50
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Lda/j;

    .line 55
    .line 56
    invoke-interface {p3}, Lcom/google/android/exoplayer2/decoder/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Lda/n;

    .line 61
    .line 62
    iput-object p3, p0, Lda/p;->z:Lda/n;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-direct {p0, p1}, Lda/p;->B(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->getState()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    const/4 v0, 0x2

    .line 75
    if-eq p3, v0, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    iget-object p3, p0, Lda/p;->y:Lda/n;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz p3, :cond_4

    .line 82
    .line 83
    invoke-direct {p0}, Lda/p;->A()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    move p3, v1

    .line 88
    :goto_1
    cmp-long v2, v2, p1

    .line 89
    .line 90
    if-gtz v2, :cond_5

    .line 91
    .line 92
    iget p3, p0, Lda/p;->A:I

    .line 93
    .line 94
    add-int/2addr p3, p4

    .line 95
    iput p3, p0, Lda/p;->A:I

    .line 96
    .line 97
    invoke-direct {p0}, Lda/p;->A()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    move p3, p4

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move p3, v1

    .line 104
    :cond_5
    iget-object v2, p0, Lda/p;->z:Lda/n;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_7

    .line 114
    .line 115
    if-nez p3, :cond_9

    .line 116
    .line 117
    invoke-direct {p0}, Lda/p;->A()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    const-wide v6, 0x7fffffffffffffffL

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmp-long v2, v4, v6

    .line 127
    .line 128
    if-nez v2, :cond_9

    .line 129
    .line 130
    iget v2, p0, Lda/p;->u:I

    .line 131
    .line 132
    if-ne v2, v0, :cond_6

    .line 133
    .line 134
    invoke-direct {p0}, Lda/p;->G()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    invoke-direct {p0}, Lda/p;->E()V

    .line 139
    .line 140
    .line 141
    iput-boolean p4, p0, Lda/p;->s:Z

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    iget-wide v4, v2, Lcom/google/android/exoplayer2/decoder/f;->b:J

    .line 145
    .line 146
    cmp-long v4, v4, p1

    .line 147
    .line 148
    if-gtz v4, :cond_9

    .line 149
    .line 150
    iget-object p3, p0, Lda/p;->y:Lda/n;

    .line 151
    .line 152
    if-eqz p3, :cond_8

    .line 153
    .line 154
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/f;->l()V

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-virtual {v2, p1, p2}, Lda/n;->getNextEventTimeIndex(J)I

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    iput p3, p0, Lda/p;->A:I

    .line 162
    .line 163
    iput-object v2, p0, Lda/p;->y:Lda/n;

    .line 164
    .line 165
    iput-object v3, p0, Lda/p;->z:Lda/n;

    .line 166
    .line 167
    move p3, p4

    .line 168
    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 169
    .line 170
    iget-object p3, p0, Lda/p;->y:Lda/n;

    .line 171
    .line 172
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object p3, p0, Lda/p;->y:Lda/n;

    .line 176
    .line 177
    invoke-virtual {p3, p1, p2}, Lda/n;->getCues(J)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Lda/p;->I(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    iget p1, p0, Lda/p;->u:I

    .line 185
    .line 186
    if-ne p1, v0, :cond_b

    .line 187
    .line 188
    return-void

    .line 189
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lda/p;->r:Z

    .line 190
    .line 191
    if-nez p1, :cond_12

    .line 192
    .line 193
    iget-object p1, p0, Lda/p;->x:Lda/m;

    .line 194
    .line 195
    if-nez p1, :cond_d

    .line 196
    .line 197
    iget-object p1, p0, Lda/p;->w:Lda/j;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lda/j;

    .line 204
    .line 205
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lda/m;

    .line 210
    .line 211
    if-nez p1, :cond_c

    .line 212
    .line 213
    return-void

    .line 214
    :cond_c
    iput-object p1, p0, Lda/p;->x:Lda/m;

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :catch_1
    move-exception p1

    .line 218
    goto :goto_6

    .line 219
    :cond_d
    :goto_4
    iget p2, p0, Lda/p;->u:I

    .line 220
    .line 221
    if-ne p2, p4, :cond_e

    .line 222
    .line 223
    const/4 p2, 0x4

    .line 224
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lda/p;->w:Lda/j;

    .line 228
    .line 229
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    check-cast p2, Lda/j;

    .line 234
    .line 235
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iput-object v3, p0, Lda/p;->x:Lda/m;

    .line 239
    .line 240
    iput v0, p0, Lda/p;->u:I

    .line 241
    .line 242
    return-void

    .line 243
    :cond_e
    iget-object p2, p0, Lda/p;->q:Lcom/google/android/exoplayer2/q1;

    .line 244
    .line 245
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/h;->w(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    const/4 p3, -0x4

    .line 250
    if-ne p2, p3, :cond_11

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_f

    .line 257
    .line 258
    iput-boolean p4, p0, Lda/p;->r:Z

    .line 259
    .line 260
    iput-boolean v1, p0, Lda/p;->t:Z

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_f
    iget-object p2, p0, Lda/p;->q:Lcom/google/android/exoplayer2/q1;

    .line 264
    .line 265
    iget-object p2, p2, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 266
    .line 267
    if-nez p2, :cond_10

    .line 268
    .line 269
    return-void

    .line 270
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/p1;->p:J

    .line 271
    .line 272
    iput-wide p2, p1, Lda/m;->i:J

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    .line 275
    .line 276
    .line 277
    iget-boolean p2, p0, Lda/p;->t:Z

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->j()Z

    .line 280
    .line 281
    .line 282
    move-result p3

    .line 283
    xor-int/2addr p3, p4

    .line 284
    and-int/2addr p2, p3

    .line 285
    iput-boolean p2, p0, Lda/p;->t:Z

    .line 286
    .line 287
    :goto_5
    iget-boolean p2, p0, Lda/p;->t:Z

    .line 288
    .line 289
    if-nez p2, :cond_b

    .line 290
    .line 291
    iget-object p2, p0, Lda/p;->w:Lda/j;

    .line 292
    .line 293
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    check-cast p2, Lda/j;

    .line 298
    .line 299
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    iput-object v3, p0, Lda/p;->x:Lda/m;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_11
    const/4 p1, -0x3

    .line 306
    if-ne p2, p1, :cond_b

    .line 307
    .line 308
    return-void

    .line 309
    :goto_6
    invoke-direct {p0, p1}, Lda/p;->B(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    .line 310
    .line 311
    .line 312
    :cond_12
    return-void
.end method

.method protected v([Lcom/google/android/exoplayer2/p1;JJ)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p1, p1, p2

    .line 3
    .line 4
    iput-object p1, p0, Lda/p;->v:Lcom/google/android/exoplayer2/p1;

    .line 5
    .line 6
    iget-object p1, p0, Lda/p;->w:Lda/j;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lda/p;->u:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lda/p;->C()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
