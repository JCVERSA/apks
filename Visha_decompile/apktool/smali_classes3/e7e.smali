.class public final Le7e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld7e;

.field public final b:Li7e;

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:F

.field public k:Ltbg;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld7e;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le7e;->a:Ld7e;

    new-instance p2, Li7e;

    invoke-direct {p2, p1}, Li7e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le7e;->b:Li7e;

    const/4 p1, 0x0

    iput p1, p0, Le7e;->d:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Le7e;->e:J

    iput-wide p1, p0, Le7e;->g:J

    iput-wide p1, p0, Le7e;->h:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Le7e;->j:F

    sget-object p1, Ltbg;->a:Ltbg;

    iput-object p1, p0, Le7e;->k:Ltbg;

    return-void
.end method


# virtual methods
.method public final a(JJJJZZLv6e;)I
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, p3

    move-object/from16 v10, p11

    invoke-static/range {p11 .. p11}, Lv6e;->g(Lv6e;)V

    iget-wide v6, v0, Le7e;->e:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    iput-wide v4, v0, Le7e;->e:J

    :cond_0
    iget-wide v6, v0, Le7e;->g:J

    cmp-long v3, v6, v1

    if-eqz v3, :cond_1

    iget-object v3, v0, Le7e;->b:Li7e;

    invoke-virtual {v3, v1, v2}, Li7e;->d(J)V

    iput-wide v1, v0, Le7e;->g:J

    :cond_1
    sub-long/2addr v1, v4

    iget v3, v0, Le7e;->j:F

    float-to-double v6, v3

    iget-boolean v3, v0, Le7e;->c:Z

    long-to-double v1, v1

    div-double/2addr v1, v6

    double-to-long v1, v1

    if-eqz v3, :cond_2

    iget-object v3, v0, Le7e;->k:Ltbg;

    invoke-interface {v3}, Ltbg;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkfh;->N(J)J

    move-result-wide v6

    sub-long v6, v6, p5

    sub-long/2addr v1, v6

    :cond_2
    invoke-static {v10, v1, v2}, Lv6e;->e(Lv6e;J)V

    const/4 v11, 0x3

    if-eqz p9, :cond_4

    if-eqz p10, :cond_3

    goto :goto_0

    :cond_3
    return v11

    :cond_4
    :goto_0
    iget-boolean v1, v0, Le7e;->l:Z

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-nez v1, :cond_7

    iput-boolean v14, v0, Le7e;->m:Z

    iget-object v1, v0, Le7e;->a:Ld7e;

    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v2

    const/4 v9, 0x1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p10

    invoke-interface/range {v1 .. v9}, Ld7e;->a(JJJZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    return v12

    :cond_5
    iget-boolean v0, v0, Le7e;->c:Z

    if-eqz v0, :cond_6

    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    return v11

    :cond_6
    return v13

    :cond_7
    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v1

    iget-wide v6, v0, Le7e;->h:J

    cmp-long v3, v6, v8

    const-wide/16 v15, -0x7530

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    iget-boolean v3, v0, Le7e;->i:Z

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    iget v3, v0, Le7e;->d:I

    if-eqz v3, :cond_b

    if-eq v3, v14, :cond_c

    if-eq v3, v7, :cond_a

    if-ne v3, v11, :cond_9

    iget-object v3, v0, Le7e;->k:Ltbg;

    invoke-interface {v3}, Ltbg;->zzb()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lkfh;->N(J)J

    move-result-wide v17

    iget-wide v13, v0, Le7e;->f:J

    sub-long v17, v17, v13

    iget-boolean v3, v0, Le7e;->c:Z

    if-eqz v3, :cond_d

    cmp-long v1, v1, v15

    if-gez v1, :cond_d

    const-wide/32 v1, 0x186a0

    cmp-long v1, v17, v1

    if-lez v1, :cond_d

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    cmp-long v1, v4, p7

    if-ltz v1, :cond_d

    goto :goto_1

    :cond_b
    iget-boolean v1, v0, Le7e;->c:Z

    if-eqz v1, :cond_d

    :cond_c
    :goto_1
    return v6

    :cond_d
    :goto_2
    iget-boolean v1, v0, Le7e;->c:Z

    if-eqz v1, :cond_e

    iget-wide v1, v0, Le7e;->e:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_f

    :cond_e
    const/4 v0, 0x5

    goto :goto_4

    :cond_f
    iget-object v1, v0, Le7e;->k:Ltbg;

    invoke-interface {v1}, Ltbg;->zzc()J

    move-result-wide v1

    iget-object v3, v0, Le7e;->b:Li7e;

    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v13

    const-wide/16 v17, 0x3e8

    mul-long v13, v13, v17

    add-long/2addr v13, v1

    invoke-virtual {v3, v13, v14}, Li7e;->a(J)J

    move-result-wide v13

    invoke-static {v10, v13, v14}, Lv6e;->f(Lv6e;J)V

    invoke-static/range {p11 .. p11}, Lv6e;->b(Lv6e;)J

    move-result-wide v13

    sub-long/2addr v13, v1

    div-long v13, v13, v17

    invoke-static {v10, v13, v14}, Lv6e;->e(Lv6e;J)V

    iget-wide v1, v0, Le7e;->h:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Le7e;->i:Z

    if-nez v1, :cond_10

    const/4 v9, 0x1

    goto :goto_3

    :cond_10
    move v9, v6

    :goto_3
    iget-object v0, v0, Le7e;->a:Ld7e;

    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move v13, v7

    move/from16 v7, p10

    move v8, v9

    invoke-interface/range {v0 .. v8}, Ld7e;->a(JJJZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    return v12

    :cond_11
    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v0

    cmp-long v0, v0, v15

    if-gez v0, :cond_13

    if-nez p10, :cond_13

    if-eqz v9, :cond_12

    return v11

    :cond_12
    return v13

    :cond_13
    invoke-static/range {p11 .. p11}, Lv6e;->a(Lv6e;)J

    move-result-wide v0

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x5

    return v0

    :cond_14
    const/4 v0, 0x1

    :goto_4
    return v0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Le7e;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Le7e;->d:I

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iput-boolean p1, p0, Le7e;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Le7e;->h:J

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Le7e;->c:Z

    iget-object v0, p0, Le7e;->k:Ltbg;

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Le7e;->f:J

    iget-object p0, p0, Le7e;->b:Li7e;

    invoke-virtual {p0}, Li7e;->g()V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Le7e;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Le7e;->h:J

    iget-object p0, p0, Le7e;->b:Li7e;

    invoke-virtual {p0}, Li7e;->h()V

    return-void
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Le7e;->o(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Le7e;->d:I

    return-void

    :cond_1
    iput v0, p0, Le7e;->d:I

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Le7e;->b:Li7e;

    invoke-virtual {v0}, Li7e;->f()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Le7e;->g:J

    iput-wide v0, p0, Le7e;->e:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Le7e;->o(I)V

    iput-wide v0, p0, Le7e;->h:J

    return-void
.end method

.method public final h(I)V
    .locals 0

    iget-object p0, p0, Le7e;->b:Li7e;

    invoke-virtual {p0, p1}, Li7e;->j(I)V

    return-void
.end method

.method public final i(Ltbg;)V
    .locals 0

    iput-object p1, p0, Le7e;->k:Ltbg;

    return-void
.end method

.method public final j(F)V
    .locals 0

    iget-object p0, p0, Le7e;->b:Li7e;

    invoke-virtual {p0, p1}, Li7e;->c(F)V

    return-void
.end method

.method public final k(Landroid/view/Surface;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Le7e;->l:Z

    iput-boolean v0, p0, Le7e;->m:Z

    iget-object v0, p0, Le7e;->b:Li7e;

    invoke-virtual {v0, p1}, Li7e;->i(Landroid/view/Surface;)V

    invoke-virtual {p0, v1}, Le7e;->o(I)V

    return-void
.end method

.method public final l(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget v0, p0, Le7e;->j:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Le7e;->j:F

    iget-object p0, p0, Le7e;->b:Li7e;

    invoke-virtual {p0, p1}, Li7e;->e(F)V

    return-void
.end method

.method public final m(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget p1, p0, Le7e;->d:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    iget-boolean p1, p0, Le7e;->l:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Le7e;->m:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Le7e;->h:J

    return v0

    :cond_1
    :goto_0
    iget-wide v3, p0, Le7e;->h:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Le7e;->k:Ltbg;

    invoke-interface {p1}, Ltbg;->zzb()J

    move-result-wide v4

    iget-wide v6, p0, Le7e;->h:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v0

    :cond_3
    iput-wide v1, p0, Le7e;->h:J

    return v3
.end method

.method public final n()Z
    .locals 4

    iget v0, p0, Le7e;->d:I

    const/4 v1, 0x3

    iput v1, p0, Le7e;->d:I

    iget-object v2, p0, Le7e;->k:Ltbg;

    invoke-interface {v2}, Ltbg;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkfh;->N(J)J

    move-result-wide v2

    iput-wide v2, p0, Le7e;->f:J

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(I)V
    .locals 1

    iget v0, p0, Le7e;->d:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Le7e;->d:I

    return-void
.end method
