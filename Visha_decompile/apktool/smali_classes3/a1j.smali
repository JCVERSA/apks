.class public abstract La1j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9j;
.implements Laaj;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lp7j;

.field public d:Lbaj;

.field public e:I

.field public f:Ltfj;

.field public g:Ltbg;

.field public h:I

.field public i:Lyoj;

.field public j:[Lerj;

.field public k:J

.field public l:J

.field public m:J

.field public n:Z

.field public o:Z

.field public p:Lw4f;

.field public q:Lbnj;

.field public r:Lz9j;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La1j;->a:Ljava/lang/Object;

    iput p1, p0, La1j;->b:I

    new-instance p1, Lp7j;

    invoke-direct {p1}, Lp7j;-><init>()V

    iput-object p1, p0, La1j;->c:Lp7j;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, La1j;->m:J

    sget-object p1, Lw4f;->a:Lw4f;

    iput-object p1, p0, La1j;->p:Lw4f;

    return-void
.end method


# virtual methods
.method public final A(J)I
    .locals 3

    iget-object v0, p0, La1j;->i:Lyoj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, La1j;->k:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lyoj;->a(J)I

    move-result p0

    return p0
.end method

.method public final B()J
    .locals 2

    iget-wide v0, p0, La1j;->l:J

    return-wide v0
.end method

.method public final C()Lw4f;
    .locals 0

    iget-object p0, p0, La1j;->p:Lw4f;

    return-object p0
.end method

.method public final D()Ltbg;
    .locals 0

    iget-object p0, p0, La1j;->g:Ltbg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final E()Lp7j;
    .locals 1

    iget-object p0, p0, La1j;->c:Lp7j;

    const/4 v0, 0x0

    iput-object v0, p0, Lp7j;->b:Lpjj;

    iput-object v0, p0, Lp7j;->a:Lerj;

    return-object p0
.end method

.method public final F()Lbaj;
    .locals 0

    iget-object p0, p0, La1j;->d:Lbaj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final G()Ltfj;
    .locals 0

    iget-object p0, p0, La1j;->f:Ltfj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public abstract H()V
.end method

.method public abstract I(ZZ)V
.end method

.method public abstract J(JZ)V
.end method

.method public final b([Lerj;Lyoj;JJLbnj;)V
    .locals 7

    iget-boolean v0, p0, La1j;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-object p2, p0, La1j;->i:Lyoj;

    iput-object p7, p0, La1j;->q:Lbnj;

    iget-wide v0, p0, La1j;->m:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, La1j;->m:J

    :cond_0
    iput-object p1, p0, La1j;->j:[Lerj;

    iput-wide p5, p0, La1j;->k:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, La1j;->u([Lerj;JJLbnj;)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La1j;->x(JZ)V

    return-void
.end method

.method public abstract e(ILjava/lang/Object;)V
.end method

.method public final i(Lw4f;)V
    .locals 1

    iget-object v0, p0, La1j;->p:Lw4f;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, La1j;->p:Lw4f;

    :cond_0
    return-void
.end method

.method public final j(Lz9j;)V
    .locals 1

    iget-object v0, p0, La1j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, La1j;->r:Lz9j;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(Lbaj;[Lerj;Lyoj;JZZJJLbnj;)V
    .locals 10

    move-object v8, p0

    move/from16 v9, p6

    iget v0, v8, La1j;->h:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    move-object v0, p1

    iput-object v0, v8, La1j;->d:Lbaj;

    move-object/from16 v7, p12

    iput-object v7, v8, La1j;->q:Lbnj;

    iput v1, v8, La1j;->h:I

    move/from16 v0, p7

    invoke-virtual {p0, v9, v0}, La1j;->I(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v7}, La1j;->b([Lerj;Lyoj;JJLbnj;)V

    move-wide/from16 v0, p8

    invoke-virtual {p0, v0, v1, v9}, La1j;->x(JZ)V

    return-void
.end method

.method public final l()I
    .locals 0

    iget p0, p0, La1j;->h:I

    return p0
.end method

.method public final n(ILtfj;Ltbg;)V
    .locals 0

    iput p1, p0, La1j;->e:I

    iput-object p2, p0, La1j;->f:Ltfj;

    iput-object p3, p0, La1j;->g:Ltbg;

    return-void
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, La1j;->m:J

    return-wide v0
.end method

.method public abstract p()V
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, La1j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La1j;->r:Lz9j;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lz9j;->a(Lx9j;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract r()V
.end method

.method public abstract s()V
.end method

.method public abstract t()V
.end method

.method public abstract u([Lerj;JJLbnj;)V
.end method

.method public final v()Z
    .locals 1

    invoke-virtual {p0}, La1j;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, La1j;->n:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, La1j;->i:Lyoj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lyoj;->zze()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final w()[Lerj;
    .locals 0

    iget-object p0, p0, La1j;->j:[Lerj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final x(JZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La1j;->n:Z

    iput-wide p1, p0, La1j;->l:J

    iput-wide p1, p0, La1j;->m:J

    invoke-virtual {p0, p1, p2, p3}, La1j;->J(JZ)V

    return-void
.end method

.method public final y(Lp7j;Lxzi;I)I
    .locals 5

    iget-object v0, p0, La1j;->i:Lyoj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lyoj;->b(Lp7j;Lxzi;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lezi;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, La1j;->m:J

    iget-boolean p0, p0, La1j;->n:Z

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    iget-wide v0, p2, Lxzi;->f:J

    iget-wide v2, p0, La1j;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lxzi;->f:J

    iget-wide p1, p0, La1j;->m:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, La1j;->m:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lp7j;->a:Lerj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lerj;->t:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lerj;->b()Lgpj;

    move-result-object p3

    iget-wide v3, p0, La1j;->k:J

    add-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lgpj;->I(J)Lgpj;

    invoke-virtual {p3}, Lgpj;->K()Lerj;

    move-result-object p0

    iput-object p0, p1, Lp7j;->a:Lerj;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method public final z(Ljava/lang/Throwable;Lerj;ZI)Lcom/google/android/gms/internal/ads/zzii;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, La1j;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, La1j;->o:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Laaj;->g(Lerj;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, La1j;->o:Z

    :cond_0
    :goto_0
    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, La1j;->o:Z

    throw p1

    :catch_0
    iput-boolean v1, p0, La1j;->o:Z

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Lx9j;->zzU()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, La1j;->e:I

    iget-object v7, p0, La1j;->q:Lbnj;

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzii;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILerj;ILbnj;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    return-object p0
.end method

.method public final zzG()V
    .locals 1

    iget v0, p0, La1j;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    invoke-virtual {p0}, La1j;->p()V

    return-void
.end method

.method public final zzI()V
    .locals 2

    iget v0, p0, La1j;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, La1j;->c:Lp7j;

    const/4 v1, 0x0

    iput-object v1, v0, Lp7j;->b:Lpjj;

    iput-object v1, v0, Lp7j;->a:Lerj;

    invoke-virtual {p0}, La1j;->r()V

    return-void
.end method

.method public final zzK()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La1j;->n:Z

    return-void
.end method

.method public final zzO()V
    .locals 2

    iget v0, p0, La1j;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln7g;->f(Z)V

    const/4 v0, 0x2

    iput v0, p0, La1j;->h:I

    invoke-virtual {p0}, La1j;->s()V

    return-void
.end method

.method public final zzP()V
    .locals 3

    iget v0, p0, La1j;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iput v2, p0, La1j;->h:I

    invoke-virtual {p0}, La1j;->t()V

    return-void
.end method

.method public final zzQ()Z
    .locals 4

    iget-wide v0, p0, La1j;->m:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzR()Z
    .locals 0

    iget-boolean p0, p0, La1j;->n:Z

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, La1j;->b:I

    return p0
.end method

.method public zzl()Lb8j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzm()Laaj;
    .locals 0

    return-object p0
.end method

.method public final zzp()Lyoj;
    .locals 0

    iget-object p0, p0, La1j;->i:Lyoj;

    return-object p0
.end method

.method public final zzq()V
    .locals 2

    iget-object v0, p0, La1j;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, La1j;->r:Lz9j;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzr()V
    .locals 3

    iget v0, p0, La1j;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ln7g;->f(Z)V

    iget-object v0, p0, La1j;->c:Lp7j;

    const/4 v2, 0x0

    iput-object v2, v0, Lp7j;->b:Lpjj;

    iput-object v2, v0, Lp7j;->a:Lerj;

    iput v1, p0, La1j;->h:I

    iput-object v2, p0, La1j;->i:Lyoj;

    iput-object v2, p0, La1j;->j:[Lerj;

    iput-boolean v1, p0, La1j;->n:Z

    invoke-virtual {p0}, La1j;->H()V

    iput-object v2, p0, La1j;->q:Lbnj;

    return-void
.end method

.method public synthetic zzt()V
    .locals 0

    return-void
.end method

.method public final zzw()V
    .locals 0

    iget-object p0, p0, La1j;->i:Lyoj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lyoj;->zzd()V

    return-void
.end method
