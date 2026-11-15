.class public final Lcom/google/android/exoplayer2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a0$b;

.field public final b:Lcom/google/android/exoplayer2/a0$d;

.field public final c:Lkb;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lwk6;

.field public i:Lwk6;

.field public j:Lwk6;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Lkb;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->c:Lkb;

    iput-object p2, p0, Lcom/google/android/exoplayer2/p;->d:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    new-instance p1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 7

    invoke-virtual {p0, p1, p7}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget v0, p7, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {p0, v0, p6}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    :goto_0
    iget-wide v3, p7, Lcom/google/android/exoplayer2/a0$b;->e:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const/4 v1, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p7}, Lcom/google/android/exoplayer2/a0$b;->f()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p7}, Lcom/google/android/exoplayer2/a0$b;->r()I

    move-result p1

    invoke-virtual {p7, p1}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p7, v5, v6}, Lcom/google/android/exoplayer2/a0$b;->h(J)I

    move-result p1

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, v0, 0x1

    iget v3, p6, Lcom/google/android/exoplayer2/a0$d;->q:I

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p7, v0}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    iget-object v0, p7, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p7}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/a0$b;->h(J)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/a0$b;->g(J)I

    move-result p0

    new-instance p1, Lcom/google/android/exoplayer2/source/i$b;

    invoke-direct {p1, v2, p4, p5, p0}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    :cond_1
    invoke-virtual {p7, v3}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v4

    new-instance p0, Lcom/google/android/exoplayer2/source/i$b;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/p;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p;->w(Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/i$b;
    .locals 10

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/p;->C(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget v3, v3, Lcom/google/android/exoplayer2/a0$d;->p:I

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v3, v6}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a0$b;->f()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    or-int/2addr v2, v6

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v7, v3, Lcom/google/android/exoplayer2/a0$b;->e:J

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/a0$b;->h(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-object p2, p2, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/a0$b;->e:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, p2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/p;->A(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p0

    return-object p0
.end method

.method public final C(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->l:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/a0$b;->d:I

    if-ne v1, v0, :cond_0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/p;->m:J

    return-wide p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lwk6;->b:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v1, Lwk6;->f:Lyk6;

    iget-object p0, p0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide p0, p0, Lxk6;->d:J

    return-wide p0

    :cond_1
    invoke-virtual {v1}, Lwk6;->j()Lwk6;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Lwk6;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/a0$b;->d:I

    if-ne v3, v0, :cond_3

    iget-object p0, v1, Lwk6;->f:Lyk6;

    iget-object p0, p0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide p0, p0, Lxk6;->d:J

    return-wide p0

    :cond_3
    invoke-virtual {v1}, Lwk6;->j()Lwk6;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/p;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/p;->e:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    if-nez p1, :cond_5

    iput-object p2, p0, Lcom/google/android/exoplayer2/p;->l:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/android/exoplayer2/p;->m:J

    :cond_5
    return-wide v0
.end method

.method public D()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lwk6;->f:Lyk6;

    iget-boolean v1, v1, Lyk6;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lwk6;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-wide v0, v0, Lyk6;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/p;->k:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

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

.method public final E(Lcom/google/android/exoplayer2/a0;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lwk6;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget v6, p0, Lcom/google/android/exoplayer2/p;->f:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/p;->g:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/a0;->h(ILcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0$d;IZ)I

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lwk6;->f:Lyk6;

    iget-boolean v2, v2, Lyk6;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lwk6;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    move-result v2

    iget-object v3, v0, Lwk6;->f:Lyk6;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/p;->r(Lcom/google/android/exoplayer2/a0;Lyk6;)Lyk6;

    move-result-object p0

    iput-object p0, v0, Lwk6;->f:Lyk6;

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public F(Lcom/google/android/exoplayer2/a0;JJ)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v3, v0, Lwk6;->f:Lyk6;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/p;->r(Lcom/google/android/exoplayer2/a0;Lyk6;)Lyk6;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/p;->i(Lcom/google/android/exoplayer2/a0;Lwk6;J)Lyk6;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/exoplayer2/p;->e(Lyk6;Lyk6;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    move-object v1, v4

    :goto_1
    iget-wide v4, v3, Lyk6;->c:J

    invoke-virtual {v1, v4, v5}, Lyk6;->a(J)Lyk6;

    move-result-object v4

    iput-object v4, v0, Lwk6;->f:Lyk6;

    iget-wide v3, v3, Lyk6;->e:J

    iget-wide v5, v1, Lyk6;->e:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/p;->d(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lwk6;->A()V

    iget-wide p1, v1, Lyk6;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, p2}, Lwk6;->z(J)J

    move-result-wide p1

    :goto_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_5

    iget-object p3, v0, Lwk6;->f:Lyk6;

    iget-boolean p3, p3, Lyk6;->f:Z

    if-nez p3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_4

    cmp-long p1, p4, p1

    if-ltz p1, :cond_5

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p;->z(Lwk6;)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    return v2

    :cond_7
    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public G(Lcom/google/android/exoplayer2/a0;I)Z
    .locals 0

    iput p2, p0, Lcom/google/android/exoplayer2/p;->f:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p;->E(Lcom/google/android/exoplayer2/a0;)Z

    move-result p0

    return p0
.end method

.method public H(Lcom/google/android/exoplayer2/a0;Z)Z
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/p;->g:Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p;->E(Lcom/google/android/exoplayer2/a0;)Z

    move-result p0

    return p0
.end method

.method public b()Lwk6;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    invoke-virtual {v0}, Lwk6;->t()V

    iget v0, p0, Lcom/google/android/exoplayer2/p;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/p;->k:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    iget-object v1, v0, Lwk6;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/p;->l:Ljava/lang/Object;

    iget-object v0, v0, Lwk6;->f:Lyk6;

    iget-object v0, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v0, v0, Lxk6;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/p;->m:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->x()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    return-object p0
.end method

.method public c()Lwk6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->x()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    return-object p0
.end method

.method public final d(JJ)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    cmp-long p0, p1, p3

    if-nez p0, :cond_0

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

.method public final e(Lyk6;Lyk6;)Z
    .locals 4

    iget-wide v0, p1, Lyk6;->b:J

    iget-wide v2, p2, Lyk6;->b:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    iget-object p0, p1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p1, p2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, p1}, Lxk6;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/p;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk6;

    iget-object v1, v0, Lwk6;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/p;->l:Ljava/lang/Object;

    iget-object v1, v0, Lwk6;->f:Lyk6;

    iget-object v1, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v1, v1, Lxk6;->d:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/p;->m:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwk6;->t()V

    invoke-virtual {v0}, Lwk6;->j()Lwk6;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/p;->k:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->x()V

    return-void
.end method

.method public g([Lks8;Lrva;Lcb;Lcom/google/android/exoplayer2/q;Lyk6;Lsva;)Lwk6;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-nez v1, :cond_0

    const-wide v1, 0xe8d4a51000L

    move-object/from16 v10, p5

    :goto_0
    move-wide v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lwk6;->l()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    iget-object v3, v3, Lwk6;->f:Lyk6;

    iget-wide v3, v3, Lyk6;->e:J

    add-long/2addr v1, v3

    move-object/from16 v10, p5

    iget-wide v3, v10, Lyk6;->b:J

    sub-long/2addr v1, v3

    goto :goto_0

    :goto_1
    new-instance v1, Lwk6;

    move-object v3, v1

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lwk6;-><init>([Lks8;JLrva;Lcb;Lcom/google/android/exoplayer2/q;Lyk6;Lsva;)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lwk6;->w(Lwk6;)V

    goto :goto_2

    :cond_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    iput-object v1, v0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    :goto_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/p;->l:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    iget v2, v0, Lcom/google/android/exoplayer2/p;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/p;->k:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->x()V

    return-object v1
.end method

.method public final h(Lb88;)Lyk6;
    .locals 7

    iget-object v1, p1, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    iget-object v2, p1, Lb88;->b:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v3, p1, Lb88;->c:J

    iget-wide v5, p1, Lb88;->r:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/p;->k(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;JJ)Lyk6;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/google/android/exoplayer2/a0;Lwk6;J)Lyk6;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lwk6;->f:Lyk6;

    invoke-virtual/range {p2 .. p2}, Lwk6;->l()J

    move-result-wide v1

    iget-wide v3, v11, Lyk6;->e:J

    add-long/2addr v1, v3

    sub-long v7, v1, p3

    iget-boolean v1, v11, Lyk6;->g:Z

    const/4 v13, -0x1

    const/4 v14, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v11, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, v1, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-object v4, v0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget v1, v0, Lcom/google/android/exoplayer2/p;->f:I

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/p;->g:Z

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a0;->h(ILcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0$d;IZ)I

    move-result v1

    if-ne v1, v13, :cond_0

    return-object v17

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9, v1, v2, v14}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v2

    iget v4, v2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v11, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v5, v3, Lxk6;->d:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v9, v4, v3}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/a0$d;->p:I

    if-ne v3, v1, :cond_3

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/a0;->o(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v17

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lwk6;->j()Lwk6;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lwk6;->b:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lwk6;->f:Lyk6;

    iget-object v1, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v3, v1, Lxk6;->d:J

    :goto_0
    move-wide v12, v5

    move-wide/from16 v17, v15

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-wide v3, v0, Lcom/google/android/exoplayer2/p;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, v0, Lcom/google/android/exoplayer2/p;->e:J

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x0

    move-wide/from16 v17, v12

    :goto_1
    iget-object v7, v0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget-object v8, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/p;->A(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJLcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v2

    cmp-long v1, v17, v15

    if-eqz v1, :cond_6

    iget-wide v3, v11, Lyk6;->c:J

    cmp-long v1, v3, v15

    if-eqz v1, :cond_6

    iget-object v1, v11, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v1, v1, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9, v1, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0$b;->f()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0$b;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v2}, Lxk6;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v14, :cond_5

    iget-wide v3, v11, Lyk6;->c:J

    move-wide v5, v12

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_6

    iget-wide v3, v11, Lyk6;->c:J

    move-wide v5, v3

    :goto_3
    move-wide/from16 v3, v17

    goto :goto_4

    :cond_6
    move-wide v5, v12

    goto :goto_3

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/p;->k(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;JJ)Lyk6;

    move-result-object v0

    return-object v0

    :cond_7
    move v1, v13

    const-wide/16 v12, 0x0

    iget-object v10, v11, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, v10, Lxk6;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v10}, Lxk6;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v3, v10, Lxk6;->b:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/a0$b;->d(I)I

    move-result v2

    if-ne v2, v1, :cond_8

    return-object v17

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v4, v10, Lxk6;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/a0$b;->o(II)I

    move-result v4

    if-ge v4, v2, :cond_9

    iget-object v2, v10, Lxk6;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lyk6;->c:J

    iget-wide v7, v10, Lxk6;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->l(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;IIJJ)Lyk6;

    move-result-object v0

    return-object v0

    :cond_9
    iget-wide v1, v11, Lyk6;->c:J

    cmp-long v3, v1, v15

    if-nez v3, :cond_b

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget-object v3, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v4, v3, Lcom/google/android/exoplayer2/a0$b;->d:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/a0;->o(Lcom/google/android/exoplayer2/a0$d;Lcom/google/android/exoplayer2/a0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v17

    :cond_a
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_b
    iget-object v3, v10, Lxk6;->a:Ljava/lang/Object;

    iget v4, v10, Lxk6;->b:I

    invoke-virtual {v0, v9, v3, v4}, Lcom/google/android/exoplayer2/p;->n(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v5, v10, Lxk6;->a:Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v6, v11, Lyk6;->c:J

    iget-wide v10, v10, Lxk6;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->m(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJJ)Lyk6;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v2, v10, Lxk6;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v4

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v2, v10, Lxk6;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v2, v10, Lxk6;->e:I

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/a0$b;->k(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    move v12, v14

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v2, v10, Lxk6;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0$b;->d(I)I

    move-result v1

    if-eq v4, v1, :cond_f

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    iget-object v2, v10, Lxk6;->a:Ljava/lang/Object;

    iget v3, v10, Lxk6;->e:I

    iget-wide v5, v11, Lyk6;->e:J

    iget-wide v7, v10, Lxk6;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->l(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;IIJJ)Lyk6;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_6
    iget-object v1, v10, Lxk6;->a:Ljava/lang/Object;

    iget v2, v10, Lxk6;->e:I

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/android/exoplayer2/p;->n(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v2, v10, Lxk6;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lyk6;->e:J

    iget-wide v7, v10, Lxk6;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->m(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJJ)Lyk6;

    move-result-object v0

    return-object v0
.end method

.method public j()Lwk6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    return-object p0
.end method

.method public final k(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;JJ)Lyk6;
    .locals 11

    move-object v0, p2

    iget-object v1, v0, Lxk6;->a:Ljava/lang/Object;

    move-object v2, p0

    iget-object v3, v2, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    move-object v4, p1

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p2}, Lxk6;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lxk6;->a:Ljava/lang/Object;

    iget v5, v0, Lxk6;->b:I

    iget v6, v0, Lxk6;->c:I

    iget-wide v9, v0, Lxk6;->d:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/p;->l(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;IIJJ)Lyk6;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Lxk6;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lxk6;->d:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/exoplayer2/p;->m(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJJ)Lyk6;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;IIJJ)Lyk6;
    .locals 17

    move-object/from16 v0, p0

    new-instance v7, Lcom/google/android/exoplayer2/source/i$b;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lxk6;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget v2, v7, Lxk6;->b:I

    iget v3, v7, Lxk6;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a0$b;->e(II)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a0$b;->n(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0$b;->j()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v1, v7, Lxk6;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long v0, v8, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    new-instance v14, Lyk6;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, v7

    move-wide/from16 v4, p5

    move-wide v6, v15

    invoke-direct/range {v0 .. v13}, Lyk6;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V

    return-object v14
.end method

.method public final m(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;JJJ)Lyk6;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/a0$b;->g(J)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    iget-object v9, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/a0$b;->f()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/a0$b;->r()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/a0$b;->i(I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v12, v11, Lcom/google/android/exoplayer2/a0$b;->e:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_1

    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/a0$b;->s(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v6

    move v5, v8

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    new-instance v11, Lcom/google/android/exoplayer2/source/i$b;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/p;->s(Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v2

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/p;->u(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v22

    invoke-virtual {v0, v1, v11, v2}, Lcom/google/android/exoplayer2/p;->t(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Z)Z

    move-result v23

    if-eq v5, v8, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v20, v6

    goto :goto_1

    :cond_2
    move/from16 v20, v7

    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/a0$b;->i(I)J

    move-result-wide v14

    :goto_2
    move-wide/from16 v16, v14

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/a0$b;->e:J

    goto :goto_2

    :cond_4
    move-wide/from16 v16, v12

    :goto_3
    cmp-long v1, v16, v12

    if-eqz v1, :cond_6

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v1, v16, v14

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v16

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/a0$b;->e:J

    move-wide/from16 v18, v0

    :goto_5
    cmp-long v0, v18, v12

    if-eqz v0, :cond_9

    cmp-long v0, v3, v18

    if-ltz v0, :cond_9

    if-nez v23, :cond_8

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    move v6, v7

    :cond_8
    :goto_6
    int-to-long v0, v6

    sub-long v0, v18, v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v12, v0

    goto :goto_7

    :cond_9
    move-wide v12, v3

    :goto_7
    new-instance v0, Lyk6;

    move-object v10, v0

    move-wide/from16 v14, p5

    move/from16 v21, v2

    invoke-direct/range {v10 .. v23}, Lyk6;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V

    return-object v0
.end method

.method public final n(Lcom/google/android/exoplayer2/a0;Ljava/lang/Object;I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object p1, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/a0$b;->i(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/a0$b;->e:J

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a0$b;->l(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public o(JLb88;)Lyk6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/p;->h(Lb88;)Lyk6;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lb88;->a:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/google/android/exoplayer2/p;->i(Lcom/google/android/exoplayer2/a0;Lwk6;J)Lyk6;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public p()Lwk6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    return-object p0
.end method

.method public q()Lwk6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    return-object p0
.end method

.method public r(Lcom/google/android/exoplayer2/a0;Lyk6;)Lyk6;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/p;->s(Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v11

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/p;->u(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v12

    invoke-virtual {v0, v1, v3, v11}, Lcom/google/android/exoplayer2/p;->t(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Z)Z

    move-result v13

    iget-object v4, v2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v4, v4, Lxk6;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    if-nez v1, :cond_1

    iget v1, v3, Lxk6;->e:I

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/a0$b;->i(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v4

    :goto_1
    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v4, v3, Lxk6;->b:I

    iget v5, v3, Lxk6;->c:I

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/a0$b;->e(II)J

    move-result-wide v4

    :goto_2
    move-wide v9, v4

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v4

    if-eqz v1, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v7, v4

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0$b;->m()J

    move-result-wide v4

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget v1, v3, Lxk6;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v0

    :goto_5
    move v14, v0

    goto :goto_6

    :cond_5
    iget v1, v3, Lxk6;->e:I

    if-eq v1, v6, :cond_6

    iget-object v0, v0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0$b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    new-instance v15, Lyk6;

    iget-wide v4, v2, Lyk6;->b:J

    iget-wide v1, v2, Lyk6;->c:J

    move-object v0, v15

    move-wide/from16 v16, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide/from16 v4, v16

    move-wide v6, v7

    move-wide v8, v9

    move v10, v14

    invoke-direct/range {v0 .. v13}, Lyk6;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V

    return-object v15
.end method

.method public final s(Lcom/google/android/exoplayer2/source/i$b;)Z
    .locals 0

    invoke-virtual {p1}, Lxk6;->b()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Lxk6;->e:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;Z)Z
    .locals 6

    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/a0$d;->j:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    iget v4, p0, Lcom/google/android/exoplayer2/p;->f:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/p;->g:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/a0;->v(ILcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0$d;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/p;->s(Lcom/google/android/exoplayer2/source/i$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lxk6;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/a0$d;->q:I

    if-ne p0, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public v(Lcom/google/android/exoplayer2/source/h;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lwk6;->a:Lcom/google/android/exoplayer2/source/h;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic w(Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/i$b;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->c:Lkb;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lkb;->q(Ljava/util/List;Lcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public final x()V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lwk6;->f:Lyk6;

    iget-object v2, v2, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v1}, Lwk6;->j()Lwk6;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lwk6;->f:Lyk6;

    iget-object v1, v1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->d:Landroid/os/Handler;

    new-instance v3, Lzk6;

    invoke-direct {v3, p0, v0, v1}, Lzk6;-><init>(Lcom/google/android/exoplayer2/p;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/i$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lwk6;->s(J)V

    :cond_0
    return-void
.end method

.method public z(Lwk6;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lzi;->g(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    :goto_1
    invoke-virtual {p1}, Lwk6;->j()Lwk6;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lwk6;->j()Lwk6;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->h:Lwk6;

    iput-object v0, p0, Lcom/google/android/exoplayer2/p;->i:Lwk6;

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lwk6;->t()V

    iget v2, p0, Lcom/google/android/exoplayer2/p;->k:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/p;->k:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/p;->j:Lwk6;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lwk6;->w(Lwk6;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p;->x()V

    return v0
.end method
