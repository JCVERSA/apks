.class public final Lm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Lpw7;

.field public final b:Lqw7;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lfva;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lcom/google/android/exoplayer2/k;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lm4;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lpw7;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lpw7;-><init>([B)V

    iput-object v0, p0, Lm4;->a:Lpw7;

    .line 4
    new-instance v1, Lqw7;

    iget-object v0, v0, Lpw7;->a:[B

    invoke-direct {v1, v0}, Lqw7;-><init>([B)V

    iput-object v1, p0, Lm4;->b:Lqw7;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm4;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lm4;->l:J

    .line 7
    iput-object p1, p0, Lm4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 10

    iget-object v0, p0, Lm4;->e:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lm4;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v2, p0, Lm4;->k:I

    iget v3, p0, Lm4;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lm4;->e:Lfva;

    invoke-interface {v2, p1, v0}, Lfva;->d(Lqw7;I)V

    iget v2, p0, Lm4;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lm4;->g:I

    iget v7, p0, Lm4;->k:I

    if-ne v2, v7, :cond_0

    iget-wide v4, p0, Lm4;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lm4;->e:Lfva;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lfva;->e(JIIILfva$a;)V

    iget-wide v2, p0, Lm4;->l:J

    iget-wide v4, p0, Lm4;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lm4;->l:J

    :cond_2
    iput v1, p0, Lm4;->f:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lm4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {p0, p1, v0, v3}, Lm4;->d(Lqw7;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm4;->e()V

    iget-object v0, p0, Lm4;->b:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    iget-object v0, p0, Lm4;->e:Lfva;

    iget-object v1, p0, Lm4;->b:Lqw7;

    invoke-interface {v0, v1, v3}, Lfva;->d(Lqw7;I)V

    iput v2, p0, Lm4;->f:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lm4;->f(Lqw7;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lm4;->f:I

    iget-object v0, p0, Lm4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    iget-object v0, p0, Lm4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    iput v2, p0, Lm4;->g:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 1

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm4;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lm4;->e:Lfva;

    return-void
.end method

.method public final d(Lqw7;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lm4;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lm4;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lqw7;->j([BII)V

    iget p1, p0, Lm4;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lm4;->g:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lm4;->a:Lpw7;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpw7;->p(I)V

    iget-object v0, p0, Lm4;->a:Lpw7;

    invoke-static {v0}, Ln4;->e(Lpw7;)Ln4$b;

    move-result-object v0

    iget-object v1, p0, Lm4;->j:Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    iget v2, v0, Ln4$b;->d:I

    iget v3, v1, Lcom/google/android/exoplayer2/k;->z:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Ln4$b;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/k;->A:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Ln4$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v2, p0, Lm4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, v0, Ln4$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget v2, v0, Ln4$b;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget v2, v0, Ln4$b;->c:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lm4;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v1

    iput-object v1, p0, Lm4;->j:Lcom/google/android/exoplayer2/k;

    iget-object v2, p0, Lm4;->e:Lfva;

    invoke-interface {v2, v1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_1
    iget v1, v0, Ln4$b;->e:I

    iput v1, p0, Lm4;->k:I

    iget v0, v0, Ln4$b;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lm4;->j:Lcom/google/android/exoplayer2/k;

    iget v2, v2, Lcom/google/android/exoplayer2/k;->A:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lm4;->i:J

    return-void
.end method

.method public final f(Lqw7;)Z
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lm4;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lm4;->h:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Lm4;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lm4;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lm4;->l:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lm4;->f:I

    iput v0, p0, Lm4;->g:I

    iput-boolean v0, p0, Lm4;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lm4;->l:J

    return-void
.end method
