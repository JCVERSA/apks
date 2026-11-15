.class public final Lri5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lqw7;

.field public final c:Lpw7;

.field public d:Lfva;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/exoplayer2/k;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri5;->a:Ljava/lang/String;

    new-instance p1, Lqw7;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lri5;->b:Lqw7;

    new-instance v0, Lpw7;

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lpw7;-><init>([B)V

    iput-object v0, p0, Lri5;->c:Lpw7;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lri5;->k:J

    return-void
.end method

.method public static d(Lpw7;)J
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lpw7;->h(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lpw7;->h(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 6

    iget-object v0, p0, Lri5;->d:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Lri5;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lri5;->i:I

    iget v2, p0, Lri5;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lri5;->c:Lpw7;

    iget-object v1, v1, Lpw7;->a:[B

    iget v2, p0, Lri5;->h:I

    invoke-virtual {p1, v1, v2, v0}, Lqw7;->j([BII)V

    iget v1, p0, Lri5;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lri5;->h:I

    iget v0, p0, Lri5;->i:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lri5;->c:Lpw7;

    invoke-virtual {v0, v4}, Lpw7;->p(I)V

    iget-object v0, p0, Lri5;->c:Lpw7;

    invoke-virtual {p0, v0}, Lri5;->e(Lpw7;)V

    iput v4, p0, Lri5;->g:I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    iget v0, p0, Lri5;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lri5;->i:I

    iget-object v2, p0, Lri5;->b:Lqw7;

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_3

    iget v0, p0, Lri5;->i:I

    invoke-virtual {p0, v0}, Lri5;->k(I)V

    :cond_3
    iput v4, p0, Lri5;->h:I

    iput v1, p0, Lri5;->g:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    iput v0, p0, Lri5;->j:I

    iput v3, p0, Lri5;->g:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    iput v4, p0, Lri5;->g:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lri5;->g:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 2

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lri5;->d:Lfva;

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lri5;->e:Ljava/lang/String;

    return-void
.end method

.method public final e(Lpw7;)V
    .locals 2

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lri5;->l:Z

    invoke-virtual {p0, p1}, Lri5;->j(Lpw7;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lri5;->l:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lri5;->m:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lri5;->n:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lri5;->h(Lpw7;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lri5;->i(Lpw7;I)V

    iget-boolean v0, p0, Lri5;->p:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lri5;->q:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lpw7;->r(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final f(Lpw7;)I
    .locals 3

    invoke-virtual {p1}, Lpw7;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Li2;->d(Lpw7;Z)Li2$b;

    move-result-object v1

    iget-object v2, v1, Li2$b;->c:Ljava/lang/String;

    iput-object v2, p0, Lri5;->u:Ljava/lang/String;

    iget v2, v1, Li2$b;->a:I

    iput v2, p0, Lri5;->r:I

    iget v1, v1, Li2$b;->b:I

    iput v1, p0, Lri5;->t:I

    invoke-virtual {p1}, Lpw7;->b()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final g(Lpw7;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lpw7;->h(I)I

    move-result v1

    iput v1, p0, Lri5;->o:I

    if-eqz v1, :cond_4

    const/4 p0, 0x1

    if-eq v1, p0, :cond_3

    const/4 v2, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lpw7;->r(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lpw7;->r(I)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x9

    invoke-virtual {p1, p0}, Lpw7;->r(I)V

    goto :goto_1

    :cond_4
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lpw7;->r(I)V

    :goto_1
    return-void
.end method

.method public final h(Lpw7;)I
    .locals 2

    iget p0, p0, Lri5;->o:I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lpw7;->h(I)I

    move-result v0

    add-int/2addr p0, v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    return p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final i(Lpw7;I)V
    .locals 8

    invoke-virtual {p1}, Lpw7;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    iget-object p1, p0, Lri5;->b:Lqw7;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lri5;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lpw7;->i([BII)V

    iget-object p1, p0, Lri5;->b:Lqw7;

    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    :goto_0
    iget-object p1, p0, Lri5;->d:Lfva;

    iget-object v0, p0, Lri5;->b:Lqw7;

    invoke-interface {p1, v0, p2}, Lfva;->d(Lqw7;I)V

    iget-wide v2, p0, Lri5;->k:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lri5;->d:Lfva;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lfva;->e(JIIILfva$a;)V

    iget-wide p1, p0, Lri5;->k:J

    iget-wide v0, p0, Lri5;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lri5;->k:J

    :cond_1
    return-void
.end method

.method public final j(Lpw7;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpw7;->h(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, v0}, Lpw7;->h(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, p0, Lri5;->m:I

    const/4 v4, 0x0

    if-nez v3, :cond_9

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lri5;->d(Lpw7;)J

    :cond_1
    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lpw7;->h(I)I

    move-result v3

    iput v3, p0, Lri5;->n:I

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lpw7;->h(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lpw7;->h(I)I

    move-result v5

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    const/16 v3, 0x8

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lpw7;->e()I

    move-result v4

    invoke-virtual {p0, p1}, Lri5;->f(Lpw7;)I

    move-result v5

    invoke-virtual {p1, v4}, Lpw7;->p(I)V

    add-int/lit8 v4, v5, 0x7

    div-int/2addr v4, v3

    new-array v4, v4, [B

    invoke-virtual {p1, v4, v2, v5}, Lpw7;->i([BII)V

    new-instance v2, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v5, p0, Lri5;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    iget-object v5, p0, Lri5;->u:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    iget v5, p0, Lri5;->t:I

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    iget v5, p0, Lri5;->r:I

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    iget-object v4, p0, Lri5;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v2

    iget-object v4, p0, Lri5;->f:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v2, p0, Lri5;->f:Lcom/google/android/exoplayer2/k;

    iget v4, v2, Lcom/google/android/exoplayer2/k;->A:I

    int-to-long v4, v4

    const-wide/32 v6, 0x3d090000

    div-long/2addr v6, v4

    iput-wide v6, p0, Lri5;->s:J

    iget-object v4, p0, Lri5;->d:Lfva;

    invoke-interface {v4, v2}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lri5;->d(Lpw7;)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {p0, p1}, Lri5;->f(Lpw7;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lpw7;->r(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lri5;->g(Lpw7;)V

    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v2

    iput-boolean v2, p0, Lri5;->p:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lri5;->q:J

    if-eqz v2, :cond_5

    if-ne v1, v0, :cond_4

    invoke-static {p1}, Lri5;->d(Lpw7;)J

    move-result-wide v0

    iput-wide v0, p0, Lri5;->q:J

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lpw7;->g()Z

    move-result v0

    iget-wide v1, p0, Lri5;->q:J

    shl-long/2addr v1, v3

    invoke-virtual {p1, v3}, Lpw7;->h(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lri5;->q:J

    if-nez v0, :cond_4

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lpw7;->g()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, v3}, Lpw7;->r(I)V

    :cond_6
    return-void

    :cond_7
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lri5;->b:Lqw7;

    invoke-virtual {v0, p1}, Lqw7;->K(I)V

    iget-object p1, p0, Lri5;->c:Lpw7;

    iget-object p0, p0, Lri5;->b:Lqw7;

    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lpw7;->n([B)V

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lri5;->k:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lri5;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lri5;->k:J

    iput-boolean v0, p0, Lri5;->l:Z

    return-void
.end method
