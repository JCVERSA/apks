.class public final Ltr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Lqw7;

.field public final b:Lur6$a;

.field public final c:Ljava/lang/String;

.field public d:Lfva;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ltr6;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ltr6;->f:I

    .line 4
    new-instance v1, Lqw7;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lqw7;-><init>(I)V

    iput-object v1, p0, Ltr6;->a:Lqw7;

    .line 5
    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lur6$a;

    invoke-direct {v0}, Lur6$a;-><init>()V

    iput-object v0, p0, Ltr6;->b:Lur6$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Ltr6;->l:J

    .line 8
    iput-object p1, p0, Ltr6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 2

    iget-object v0, p0, Ltr6;->d:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Ltr6;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ltr6;->e(Lqw7;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Ltr6;->f(Lqw7;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ltr6;->d(Lqw7;)V

    goto :goto_0

    :cond_3
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

    iput-object v0, p0, Ltr6;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Ltr6;->d:Lfva;

    return-void
.end method

.method public final d(Lqw7;)V
    .locals 8

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v1

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-byte v3, v0, v1

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    iget-boolean v5, p0, Ltr6;->i:Z

    if-eqz v5, :cond_1

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1

    move v3, v7

    goto :goto_2

    :cond_1
    move v3, v6

    :goto_2
    iput-boolean v4, p0, Ltr6;->i:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    iput-boolean v6, p0, Ltr6;->i:Z

    iget-object p1, p0, Ltr6;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    iput p1, p0, Ltr6;->g:I

    iput v7, p0, Ltr6;->f:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    return-void
.end method

.method public final e(Lqw7;)V
    .locals 7

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Ltr6;->k:I

    iget v2, p0, Ltr6;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ltr6;->d:Lfva;

    invoke-interface {v1, p1, v0}, Lfva;->d(Lqw7;I)V

    iget p1, p0, Ltr6;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Ltr6;->g:I

    iget v4, p0, Ltr6;->k:I

    if-ge p1, v4, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Ltr6;->l:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_1

    iget-object v0, p0, Ltr6;->d:Lfva;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lfva;->e(JIIILfva$a;)V

    iget-wide v0, p0, Ltr6;->l:J

    iget-wide v2, p0, Ltr6;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltr6;->l:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Ltr6;->g:I

    iput p1, p0, Ltr6;->f:I

    return-void
.end method

.method public final f(Lqw7;)V
    .locals 7

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Ltr6;->g:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ltr6;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v1

    iget v3, p0, Ltr6;->g:I

    invoke-virtual {p1, v1, v3, v0}, Lqw7;->j([BII)V

    iget p1, p0, Ltr6;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Ltr6;->g:I

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ltr6;->a:Lqw7;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    iget-object p1, p0, Ltr6;->b:Lur6$a;

    iget-object v1, p0, Ltr6;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->n()I

    move-result v1

    invoke-virtual {p1, v1}, Lur6$a;->a(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Ltr6;->g:I

    iput v1, p0, Ltr6;->f:I

    return-void

    :cond_1
    iget-object p1, p0, Ltr6;->b:Lur6$a;

    iget v3, p1, Lur6$a;->c:I

    iput v3, p0, Ltr6;->k:I

    iget-boolean v3, p0, Ltr6;->h:Z

    if-nez v3, :cond_2

    iget v3, p1, Lur6$a;->g:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget p1, p1, Lur6$a;->d:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Ltr6;->j:J

    new-instance p1, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v3, p0, Ltr6;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object v3, p0, Ltr6;->b:Lur6$a;

    iget-object v3, v3, Lur6$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    const/16 v3, 0x1000

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object v3, p0, Ltr6;->b:Lur6$a;

    iget v3, v3, Lur6$a;->e:I

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object v3, p0, Ltr6;->b:Lur6$a;

    iget v3, v3, Lur6$a;->d:I

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object v3, p0, Ltr6;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iget-object v3, p0, Ltr6;->d:Lfva;

    invoke-interface {v3, p1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iput-boolean v1, p0, Ltr6;->h:Z

    :cond_2
    iget-object p1, p0, Ltr6;->a:Lqw7;

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    iget-object p1, p0, Ltr6;->d:Lfva;

    iget-object v0, p0, Ltr6;->a:Lqw7;

    invoke-interface {p1, v0, v2}, Lfva;->d(Lqw7;I)V

    const/4 p1, 0x2

    iput p1, p0, Ltr6;->f:I

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Ltr6;->l:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ltr6;->f:I

    iput v0, p0, Ltr6;->g:I

    iput-boolean v0, p0, Ltr6;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ltr6;->l:J

    return-void
.end method
