.class public final Lvbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lu4h;

.field public final b:Lu4h;

.field public final c:Lu4h;

.field public final d:Lu4h;

.field public final e:Lwbe;

.field public f:Lf9e;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lube;

.field public p:Lybe;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lvbe;->a:Lu4h;

    new-instance v0, Lu4h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lvbe;->b:Lu4h;

    new-instance v0, Lu4h;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lvbe;->c:Lu4h;

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lvbe;->d:Lu4h;

    new-instance v0, Lwbe;

    invoke-direct {v0}, Lwbe;-><init>()V

    iput-object v0, p0, Lvbe;->e:Lwbe;

    const/4 v0, 0x1

    iput v0, p0, Lvbe;->g:I

    return-void
.end method

.method private final c()V
    .locals 6

    iget-boolean v0, p0, Lvbe;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvbe;->f:Lf9e;

    new-instance v1, Ljae;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljae;-><init>(JJ)V

    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvbe;->n:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ld9e;)Lu4h;
    .locals 4

    iget-object v0, p0, Lvbe;->d:Lu4h;

    iget v1, p0, Lvbe;->l:I

    invoke-virtual {v0}, Lu4h;->v()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lu4h;->v()I

    move-result v1

    add-int/2addr v1, v1

    iget v2, p0, Lvbe;->l:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lu4h;->j([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lu4h;->l(I)V

    :goto_0
    iget v1, p0, Lvbe;->l:I

    invoke-virtual {v0, v1}, Lu4h;->k(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v1

    iget p0, p0, Lvbe;->l:I

    invoke-interface {p1, v1, v3, p0}, Ld9e;->h([BII)V

    return-object v0
.end method

.method public final b(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lvbe;->g:I

    iput-boolean p2, p0, Lvbe;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lvbe;->g:I

    :goto_0
    iput p2, p0, Lvbe;->j:I

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvbe;->f:Lf9e;

    invoke-static {v2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v2, v0, Lvbe;->g:I

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_e

    const/4 v10, 0x3

    if-eq v2, v6, :cond_d

    if-eq v2, v10, :cond_b

    if-ne v2, v7, :cond_a

    iget-boolean v2, v0, Lvbe;->h:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lvbe;->i:J

    iget-wide v14, v0, Lvbe;->m:J

    add-long/2addr v2, v14

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lvbe;->e:Lwbe;

    invoke-virtual {v2}, Lwbe;->d()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-wide v2, v0, Lvbe;->m:J

    :goto_1
    iget v14, v0, Lvbe;->k:I

    if-ne v14, v5, :cond_4

    iget-object v14, v0, Lvbe;->o:Lube;

    if-eqz v14, :cond_5

    invoke-direct/range {p0 .. p0}, Lvbe;->c()V

    iget-object v4, v0, Lvbe;->o:Lube;

    invoke-virtual/range {p0 .. p1}, Lvbe;->a(Ld9e;)Lu4h;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lxbe;->c(Lu4h;J)Z

    move-result v2

    :cond_3
    :goto_2
    move v3, v9

    goto :goto_3

    :cond_4
    move v5, v14

    :cond_5
    if-ne v5, v4, :cond_6

    iget-object v4, v0, Lvbe;->p:Lybe;

    if-eqz v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lvbe;->c()V

    iget-object v4, v0, Lvbe;->p:Lybe;

    invoke-virtual/range {p0 .. p1}, Lvbe;->a(Ld9e;)Lu4h;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lxbe;->c(Lu4h;J)Z

    move-result v2

    goto :goto_2

    :cond_6
    const/16 v4, 0x12

    if-ne v5, v4, :cond_7

    iget-boolean v4, v0, Lvbe;->n:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lvbe;->e:Lwbe;

    invoke-virtual/range {p0 .. p1}, Lvbe;->a(Ld9e;)Lu4h;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lxbe;->c(Lu4h;J)Z

    move-result v2

    invoke-virtual {v4}, Lwbe;->d()J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-eqz v3, :cond_3

    iget-object v3, v0, Lvbe;->f:Lf9e;

    new-instance v5, Lt9e;

    invoke-virtual {v4}, Lwbe;->e()[J

    move-result-object v10

    invoke-virtual {v4}, Lwbe;->f()[J

    move-result-object v4

    invoke-direct {v5, v10, v4, v14, v15}, Lt9e;-><init>([J[JJ)V

    invoke-interface {v3, v5}, Lf9e;->i(Lkae;)V

    iput-boolean v9, v0, Lvbe;->n:Z

    goto :goto_2

    :cond_7
    iget v2, v0, Lvbe;->l:I

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    move v2, v8

    move v3, v2

    :goto_3
    iget-boolean v4, v0, Lvbe;->h:Z

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v9, v0, Lvbe;->h:Z

    iget-object v2, v0, Lvbe;->e:Lwbe;

    invoke-virtual {v2}, Lwbe;->d()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_8

    iget-wide v4, v0, Lvbe;->m:J

    neg-long v10, v4

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lvbe;->i:J

    :cond_9
    iput v7, v0, Lvbe;->j:I

    iput v6, v0, Lvbe;->g:I

    if-eqz v3, :cond_0

    return v8

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    iget-object v2, v0, Lvbe;->c:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-interface {v1, v4, v8, v5, v9}, Ld9e;->d([BIIZ)Z

    move-result v4

    if-nez v4, :cond_c

    return v3

    :cond_c
    invoke-virtual {v2, v8}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v3

    iput v3, v0, Lvbe;->k:I

    invoke-virtual {v2}, Lu4h;->I()I

    move-result v3

    iput v3, v0, Lvbe;->l:I

    invoke-virtual {v2}, Lu4h;->I()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lvbe;->m:J

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    iget-wide v4, v0, Lvbe;->m:J

    int-to-long v8, v3

    or-long v3, v8, v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Lvbe;->m:J

    invoke-virtual {v2, v10}, Lu4h;->m(I)V

    iput v7, v0, Lvbe;->g:I

    goto/16 :goto_0

    :cond_d
    iget v2, v0, Lvbe;->j:I

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iput v8, v0, Lvbe;->j:I

    iput v10, v0, Lvbe;->g:I

    goto/16 :goto_0

    :cond_e
    iget-object v2, v0, Lvbe;->b:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v10

    invoke-interface {v1, v10, v8, v4, v9}, Ld9e;->d([BIIZ)Z

    move-result v10

    if-nez v10, :cond_f

    return v3

    :cond_f
    invoke-virtual {v2, v8}, Lu4h;->l(I)V

    invoke-virtual {v2, v7}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->G()I

    move-result v3

    and-int/lit8 v7, v3, 0x4

    and-int/2addr v3, v9

    if-eqz v7, :cond_10

    iget-object v7, v0, Lvbe;->o:Lube;

    if-nez v7, :cond_10

    new-instance v7, Lube;

    iget-object v8, v0, Lvbe;->f:Lf9e;

    invoke-interface {v8, v5, v9}, Lf9e;->j(II)Lrae;

    move-result-object v5

    invoke-direct {v7, v5}, Lube;-><init>(Lrae;)V

    iput-object v7, v0, Lvbe;->o:Lube;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v3, v0, Lvbe;->p:Lybe;

    if-nez v3, :cond_11

    new-instance v3, Lybe;

    iget-object v5, v0, Lvbe;->f:Lf9e;

    invoke-interface {v5, v4, v6}, Lf9e;->j(II)Lrae;

    move-result-object v4

    invoke-direct {v3, v4}, Lybe;-><init>(Lrae;)V

    iput-object v3, v0, Lvbe;->p:Lybe;

    :cond_11
    iget-object v3, v0, Lvbe;->f:Lf9e;

    invoke-interface {v3}, Lf9e;->zzG()V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lvbe;->j:I

    iput v6, v0, Lvbe;->g:I

    goto/16 :goto_0
.end method

.method public final e(Ld9e;)Z
    .locals 4

    iget-object p0, p0, Lvbe;->a:Lu4h;

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lm8e;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v3}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->I()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v3, v2, v3}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v3}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->K()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v3, v2, v3}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v3}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    invoke-interface {p1}, Ld9e;->zzj()V

    check-cast p1, Lm8e;

    invoke-virtual {p1, v0, v3}, Lm8e;->k(IZ)Z

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p1, v0, v3, v2, v3}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v3}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->A()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method public final f(Lf9e;)V
    .locals 0

    iput-object p1, p0, Lvbe;->f:Lf9e;

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
