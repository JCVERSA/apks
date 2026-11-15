.class public final Lxoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrae;


# instance fields
.field public A:Z

.field public B:Lpjj;

.field public final a:Lroj;

.field public final b:Ltoj;

.field public final c:Ldpj;

.field public final d:Lojj;

.field public final e:Ljjj;

.field public f:Lvoj;

.field public g:Lerj;

.field public h:I

.field public i:[J

.field public j:[J

.field public k:[I

.field public l:[I

.field public m:[J

.field public n:[Lqae;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lerj;

.field public z:Z


# direct methods
.method public constructor <init>(Lnrj;Lojj;Ljjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxoj;->d:Lojj;

    iput-object p3, p0, Lxoj;->e:Ljjj;

    new-instance p2, Lroj;

    invoke-direct {p2, p1}, Lroj;-><init>(Lnrj;)V

    iput-object p2, p0, Lxoj;->a:Lroj;

    new-instance p1, Ltoj;

    invoke-direct {p1}, Ltoj;-><init>()V

    iput-object p1, p0, Lxoj;->b:Ltoj;

    const/16 p1, 0x3e8

    iput p1, p0, Lxoj;->h:I

    new-array p2, p1, [J

    iput-object p2, p0, Lxoj;->i:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lxoj;->j:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lxoj;->m:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lxoj;->l:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lxoj;->k:[I

    new-array p1, p1, [Lqae;

    iput-object p1, p0, Lxoj;->n:[Lqae;

    new-instance p1, Ldpj;

    new-instance p2, Lsoj;

    invoke-direct {p2}, Lsoj;-><init>()V

    invoke-direct {p1, p2}, Ldpj;-><init>(Lqfg;)V

    iput-object p1, p0, Lxoj;->c:Ldpj;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lxoj;->s:J

    iput-wide p1, p0, Lxoj;->t:J

    iput-wide p1, p0, Lxoj;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxoj;->x:Z

    iput-boolean p1, p0, Lxoj;->w:Z

    iput-boolean p1, p0, Lxoj;->z:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lxoj;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized B()Lerj;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lxoj;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lxoj;->y:Lerj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final C(JZZ)V
    .locals 1

    iget-object p3, p0, Lxoj;->a:Lroj;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p4}, Lxoj;->l(JZZ)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lroj;->c(J)V

    return-void
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lxoj;->a:Lroj;

    invoke-virtual {p0}, Lxoj;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lroj;->c(J)V

    return-void
.end method

.method public final E()V
    .locals 0

    iget-object p0, p0, Lxoj;->B:Lpjj;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lpjj;->a()Lcom/google/android/gms/internal/ads/zzrr;

    move-result-object p0

    throw p0
.end method

.method public final F()V
    .locals 0

    invoke-virtual {p0}, Lxoj;->D()V

    invoke-virtual {p0}, Lxoj;->q()V

    return-void
.end method

.method public final G()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxoj;->H(Z)V

    invoke-virtual {p0}, Lxoj;->q()V

    return-void
.end method

.method public final H(Z)V
    .locals 4

    iget-object v0, p0, Lxoj;->a:Lroj;

    invoke-virtual {v0}, Lroj;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lxoj;->o:I

    iput v0, p0, Lxoj;->p:I

    iput v0, p0, Lxoj;->q:I

    iput v0, p0, Lxoj;->r:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lxoj;->w:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lxoj;->s:J

    iput-wide v2, p0, Lxoj;->t:J

    iput-wide v2, p0, Lxoj;->u:J

    iput-boolean v0, p0, Lxoj;->v:Z

    iget-object v0, p0, Lxoj;->c:Ldpj;

    invoke-virtual {v0}, Ldpj;->d()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lxoj;->y:Lerj;

    iput-boolean v1, p0, Lxoj;->x:Z

    iput-boolean v1, p0, Lxoj;->z:Z

    :cond_0
    return-void
.end method

.method public final I(J)V
    .locals 0

    iput-wide p1, p0, Lxoj;->s:J

    return-void
.end method

.method public final J(Lvoj;)V
    .locals 0

    iput-object p1, p0, Lxoj;->f:Lvoj;

    return-void
.end method

.method public final declared-synchronized K(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lxoj;->r:I

    add-int/2addr v1, p1

    iget v2, p0, Lxoj;->o:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget v0, p0, Lxoj;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lxoj;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized L()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lxoj;->v:Z
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

.method public final declared-synchronized M(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxoj;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lxoj;->v:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lxoj;->y:Lerj;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lxoj;->g:Lerj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lxoj;->c:Ldpj;

    iget v0, p0, Lxoj;->p:I

    iget v2, p0, Lxoj;->r:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ldpj;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luoj;

    iget-object p1, p1, Luoj;->a:Lerj;

    iget-object v0, p0, Lxoj;->g:Lerj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget p1, p0, Lxoj;->r:I

    invoke-virtual {p0, p1}, Lxoj;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lxoj;->t(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized N(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxoj;->r()V

    iget v0, p0, Lxoj;->p:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lxoj;->o:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lxoj;->s:J

    sub-int/2addr p1, v0

    iput p1, p0, Lxoj;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic a(Lk8j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lpae;->a(Lrae;Lk8j;IZ)I

    move-result p0

    return p0
.end method

.method public final b(Lu4h;II)V
    .locals 0

    iget-object p0, p0, Lxoj;->a:Lroj;

    invoke-virtual {p0, p1, p2}, Lroj;->h(Lu4h;I)V

    return-void
.end method

.method public final synthetic c(J)V
    .locals 0

    return-void
.end method

.method public final synthetic d(Lu4h;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lpae;->b(Lrae;Lu4h;I)V

    return-void
.end method

.method public final e(Lk8j;IZI)I
    .locals 0

    iget-object p0, p0, Lxoj;->a:Lroj;

    invoke-virtual {p0, p1, p2, p3}, Lroj;->a(Lk8j;IZ)I

    move-result p0

    return p0
.end method

.method public final f(Lerj;)V
    .locals 1

    invoke-virtual {p0, p1}, Lxoj;->u(Lerj;)Z

    move-result v0

    iget-object p0, p0, Lxoj;->f:Lvoj;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lvoj;->l(Lerj;)V

    :cond_0
    return-void
.end method

.method public final g(JIIILqae;)V
    .locals 8

    iget-boolean v0, p0, Lxoj;->w:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxoj;->w:Z

    :cond_1
    iget-boolean v0, p0, Lxoj;->z:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lxoj;->s:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lxoj;->A:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lxoj;->y:Lerj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    const-string v2, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxoj;->A:Z

    :cond_2
    or-int/lit8 p3, p3, 0x1

    :cond_3
    move v3, p3

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :goto_1
    iget-object p3, p0, Lxoj;->a:Lroj;

    int-to-long v0, p4

    invoke-virtual {p3}, Lroj;->b()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v0, p5

    sub-long/2addr v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lxoj;->o(JIJILqae;)V

    return-void
.end method

.method public final declared-synchronized h(JZ)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lxoj;->r()V

    iget v0, p0, Lxoj;->r:I

    invoke-virtual {p0, v0}, Lxoj;->j(I)I

    move-result v2

    invoke-virtual {p0}, Lxoj;->s()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lxoj;->m:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_7

    iget-wide v3, p0, Lxoj;->u:J

    cmp-long v1, p1, v3

    const/4 v8, 0x1

    if-lez v1, :cond_0

    if-eqz p3, :cond_7

    move p3, v8

    :cond_0
    iget-boolean v1, p0, Lxoj;->z:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lxoj;->o:I

    sub-int/2addr v1, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lxoj;->m:[J

    aget-wide v3, v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lxoj;->h:I

    if-ne v2, v3, :cond_1

    move v2, v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v9

    goto :goto_1

    :cond_5
    iget p3, p0, Lxoj;->o:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lxoj;->i(IIJZ)I

    move-result v1

    :goto_1
    if-ne v1, v9, :cond_6

    goto :goto_2

    :cond_6
    iput-wide p1, p0, Lxoj;->s:J

    iget p1, p0, Lxoj;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lxoj;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    :cond_7
    :goto_2
    monitor-exit p0

    return v7

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(IIJZ)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Lxoj;->m:[J

    aget-wide v3, v3, p1

    cmp-long v3, v3, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v4, p0, Lxoj;->l:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lxoj;->h:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final j(I)I
    .locals 1

    iget v0, p0, Lxoj;->q:I

    add-int/2addr v0, p1

    iget p0, p0, Lxoj;->h:I

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized k(Lp7j;Lxzi;ZZLtoj;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lxzi;->e:Z

    invoke-virtual {p0}, Lxoj;->s()Z

    move-result v0

    const/4 v1, -0x4

    const/4 v2, -0x3

    const/4 v3, -0x5

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lxoj;->v:Z

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lxoj;->y:Lerj;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lxoj;->g:Lerj;

    if-eq p2, p3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Lxoj;->p(Lerj;Lp7j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    :try_start_1
    invoke-virtual {p2, p1}, Lezi;->c(I)V

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p2, Lxzi;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lxoj;->c:Ldpj;

    iget v4, p0, Lxoj;->p:I

    iget v5, p0, Lxoj;->r:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ldpj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luoj;

    iget-object v0, v0, Luoj;->a:Lerj;

    if-nez p3, :cond_9

    iget-object p3, p0, Lxoj;->g:Lerj;

    if-eq v0, p3, :cond_5

    goto :goto_2

    :cond_5
    iget p1, p0, Lxoj;->r:I

    invoke-virtual {p0, p1}, Lxoj;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lxoj;->t(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lxzi;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lxoj;->l:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lezi;->c(I)V

    iget p3, p0, Lxoj;->r:I

    iget v0, p0, Lxoj;->o:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_7

    iget-boolean p3, p0, Lxoj;->v:Z

    if-eqz p3, :cond_8

    :cond_7
    const/high16 p3, 0x20000000

    invoke-virtual {p2, p3}, Lezi;->a(I)V

    :cond_8
    iget-object p3, p0, Lxoj;->m:[J

    aget-wide p3, p3, p1

    iput-wide p3, p2, Lxzi;->f:J

    iget-object p2, p0, Lxoj;->k:[I

    aget p2, p2, p1

    iput p2, p5, Ltoj;->a:I

    iget-object p2, p0, Lxoj;->j:[J

    aget-wide p2, p2, p1

    iput-wide p2, p5, Ltoj;->b:J

    iget-object p2, p0, Lxoj;->n:[Lqae;

    aget-object p1, p2, p1

    iput-object p1, p5, Ltoj;->c:Lqae;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_9
    :goto_2
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lxoj;->p(Lerj;Lp7j;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized l(JZZ)J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget p3, p0, Lxoj;->o:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lxoj;->m:[J

    iget v2, p0, Lxoj;->q:I

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lxoj;->r:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v3, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lxoj;->i(IIJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lxoj;->n(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_2
    :goto_1
    monitor-exit p0

    const-wide/16 p0, -0x1

    return-wide p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized m()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lxoj;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lxoj;->n(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final n(I)J
    .locals 10

    iget-wide v0, p0, Lxoj;->t:J

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lxoj;->j(I)I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lxoj;->m:[J

    aget-wide v8, v8, v6

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v8, p0, Lxoj;->l:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lxoj;->h:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lxoj;->t:J

    iget v0, p0, Lxoj;->o:I

    sub-int/2addr v0, p1

    iput v0, p0, Lxoj;->o:I

    iget v0, p0, Lxoj;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lxoj;->p:I

    iget v1, p0, Lxoj;->q:I

    add-int/2addr v1, p1

    iput v1, p0, Lxoj;->q:I

    iget v3, p0, Lxoj;->h:I

    if-lt v1, v3, :cond_4

    sub-int/2addr v1, v3

    iput v1, p0, Lxoj;->q:I

    :cond_4
    iget v1, p0, Lxoj;->r:I

    sub-int/2addr v1, p1

    iput v1, p0, Lxoj;->r:I

    if-gez v1, :cond_5

    iput v2, p0, Lxoj;->r:I

    :cond_5
    iget-object p1, p0, Lxoj;->c:Ldpj;

    invoke-virtual {p1, v0}, Ldpj;->e(I)V

    iget p1, p0, Lxoj;->o:I

    if-nez p1, :cond_7

    iget p1, p0, Lxoj;->q:I

    if-nez p1, :cond_6

    iget p1, p0, Lxoj;->h:I

    :cond_6
    add-int/2addr p1, v5

    iget-object v0, p0, Lxoj;->j:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Lxoj;->k:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_7
    iget-object p1, p0, Lxoj;->j:[J

    iget p0, p0, Lxoj;->q:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final declared-synchronized o(JIJILqae;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lxoj;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lxoj;->j(I)I

    move-result v0

    iget-object v3, p0, Lxoj;->j:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lxoj;->k:[I

    aget v0, v5, v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v3, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lxoj;->v:Z

    iget-wide v3, p0, Lxoj;->u:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lxoj;->u:J

    iget v0, p0, Lxoj;->o:I

    invoke-virtual {p0, v0}, Lxoj;->j(I)I

    move-result v0

    iget-object v3, p0, Lxoj;->m:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lxoj;->j:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lxoj;->k:[I

    aput p6, p1, v0

    iget-object p1, p0, Lxoj;->l:[I

    aput p3, p1, v0

    iget-object p1, p0, Lxoj;->n:[Lqae;

    aput-object p7, p1, v0

    iget-object p1, p0, Lxoj;->i:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, v0

    iget-object p1, p0, Lxoj;->c:Ldpj;

    invoke-virtual {p1}, Ldpj;->f()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ldpj;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luoj;

    iget-object p2, p2, Luoj;->a:Lerj;

    iget-object p3, p0, Lxoj;->y:Lerj;

    invoke-virtual {p2, p3}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lxoj;->y:Lerj;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p4, p0, Lxoj;->d:Lojj;

    iget-object p5, p0, Lxoj;->e:Ljjj;

    invoke-interface {p4, p5, p2}, Lojj;->b(Ljjj;Lerj;)Lnjj;

    move-result-object p4

    iget p5, p0, Lxoj;->p:I

    iget p6, p0, Lxoj;->o:I

    add-int/2addr p5, p6

    new-instance p6, Luoj;

    invoke-direct {p6, p2, p4, p3}, Luoj;-><init>(Lerj;Lnjj;Lwoj;)V

    invoke-virtual {p1, p5, p6}, Ldpj;->c(ILjava/lang/Object;)V

    :cond_4
    iget p1, p0, Lxoj;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lxoj;->o:I

    iget p2, p0, Lxoj;->h:I

    if-ne p1, p2, :cond_5

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array p7, p1, [I

    new-array v0, p1, [Lqae;

    iget v1, p0, Lxoj;->q:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lxoj;->j:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxoj;->m:[J

    iget v3, p0, Lxoj;->q:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxoj;->l:[I

    iget v3, p0, Lxoj;->q:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxoj;->k:[I

    iget v3, p0, Lxoj;->q:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxoj;->n:[Lqae;

    iget v3, p0, Lxoj;->q:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxoj;->i:[J

    iget v3, p0, Lxoj;->q:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lxoj;->q:I

    iget-object v3, p0, Lxoj;->j:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lxoj;->m:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lxoj;->l:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lxoj;->k:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lxoj;->n:[Lqae;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lxoj;->i:[J

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lxoj;->j:[J

    iput-object p5, p0, Lxoj;->m:[J

    iput-object p6, p0, Lxoj;->l:[I

    iput-object p7, p0, Lxoj;->k:[I

    iput-object v0, p0, Lxoj;->n:[Lqae;

    iput-object p3, p0, Lxoj;->i:[J

    iput v2, p0, Lxoj;->q:I

    iput p1, p0, Lxoj;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    throw p3

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p(Lerj;Lp7j;)V
    .locals 5

    iget-object v0, p0, Lxoj;->g:Lerj;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    :goto_0
    iput-object p1, p0, Lxoj;->g:Lerj;

    iget-object v2, p1, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v3, p0, Lxoj;->d:Lojj;

    invoke-interface {v3, p1}, Lojj;->a(Lerj;)I

    move-result v4

    invoke-virtual {p1, v4}, Lerj;->c(I)Lerj;

    move-result-object v4

    iput-object v4, p2, Lp7j;->a:Lerj;

    iget-object v4, p0, Lxoj;->B:Lpjj;

    iput-object v4, p2, Lp7j;->b:Lpjj;

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lxoj;->e:Ljjj;

    invoke-interface {v3, v0, p1}, Lojj;->c(Ljjj;Lerj;)Lpjj;

    move-result-object p1

    iput-object p1, p0, Lxoj;->B:Lpjj;

    iput-object p1, p2, Lp7j;->b:Lpjj;

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lxoj;->B:Lpjj;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lxoj;->B:Lpjj;

    iput-object v0, p0, Lxoj;->g:Lerj;

    :cond_0
    return-void
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lxoj;->r:I

    iget-object v0, p0, Lxoj;->a:Lroj;

    invoke-virtual {v0}, Lroj;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lxoj;->r:I

    iget p0, p0, Lxoj;->o:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(I)Z
    .locals 1

    iget-object v0, p0, Lxoj;->B:Lpjj;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lxoj;->l:[I

    aget p0, p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final declared-synchronized u(Lerj;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lxoj;->x:Z

    iget-object v1, p0, Lxoj;->y:Lerj;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lxoj;->c:Ldpj;

    invoke-virtual {v1}, Ldpj;->f()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ldpj;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luoj;

    iget-object v2, v2, Luoj;->a:Lerj;

    invoke-virtual {v2, p1}, Lerj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ldpj;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luoj;

    iget-object p1, p1, Luoj;->a:Lerj;

    iput-object p1, p0, Lxoj;->y:Lerj;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lxoj;->y:Lerj;

    :goto_0
    iget-boolean p1, p0, Lxoj;->z:Z

    iget-object v1, p0, Lxoj;->y:Lerj;

    iget-object v2, v1, Lerj;->o:Ljava/lang/String;

    iget-object v1, v1, Lerj;->k:Ljava/lang/String;

    invoke-static {v2, v1}, Lbue;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lxoj;->z:Z

    iput-boolean v0, p0, Lxoj;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final v()I
    .locals 0

    iget p0, p0, Lxoj;->p:I

    return p0
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lxoj;->p:I

    iget p0, p0, Lxoj;->r:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized x(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lxoj;->r:I

    invoke-virtual {p0, v0}, Lxoj;->j(I)I

    move-result v2

    invoke-virtual {p0}, Lxoj;->s()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lxoj;->m:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lxoj;->u:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lxoj;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lxoj;->o:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lxoj;->i(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_3

    return v7

    :cond_3
    return p1

    :cond_4
    :goto_1
    monitor-exit p0

    return v7

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lxoj;->p:I

    iget p0, p0, Lxoj;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final z(Lp7j;Lxzi;IZ)I
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    iget-object v0, p0, Lxoj;->b:Ltoj;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lxoj;->k(Lp7j;Lxzi;ZZLtoj;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_5

    invoke-virtual {p2}, Lezi;->f()Z

    move-result p1

    if-nez p1, :cond_1

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lxoj;->a:Lroj;

    invoke-virtual {p0, p2, v0}, Lroj;->d(Lxzi;Ltoj;)V

    :cond_1
    :goto_1
    move p1, p4

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lxoj;->a:Lroj;

    invoke-virtual {p1, p2, v0}, Lroj;->e(Lxzi;Ltoj;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    iget p1, p0, Lxoj;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lxoj;->r:I

    return p4

    :cond_5
    :goto_3
    return p1
.end method
