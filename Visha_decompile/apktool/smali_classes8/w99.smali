.class public Lw99;
.super Li53$b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lt43;Lw43;Lw43;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li53$b;-><init>(Lt43;Lw43;Lw43;)V

    return-void
.end method

.method public constructor <init>(Lt43;Lw43;Lw43;[Lw43;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Li53$b;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-void
.end method


# virtual methods
.method public E()Li53;
    .locals 8

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    iget-object v1, p0, Li53;->b:Lw43;

    invoke-virtual {v1}, Lw43;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Li53;->c:Lw43;

    iget-object p0, p0, Li53;->d:[Lw43;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lw43;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v4, p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lw43;->o()Lw43;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw43;->j(Lw43;)Lw43;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Lw43;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance p0, Lw99;

    invoke-virtual {v0}, Lt43;->n()Lw43;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lw99;-><init>(Lt43;Lw43;Lw43;)V

    return-object p0

    :cond_4
    invoke-virtual {v5}, Lw43;->o()Lw43;

    move-result-object v6

    if-eqz v3, :cond_5

    move-object v7, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v7

    :goto_2
    invoke-virtual {v2, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v1

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lw43;->o()Lw43;

    move-result-object p0

    :goto_3
    invoke-virtual {v1, v5}, Lw43;->a(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2, v4}, Lw43;->a(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v6}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v7}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    new-instance v1, Lw99;

    filled-new-array {v7}, [Lw43;

    move-result-object v2

    invoke-direct {v1, v0, v6, p0, v2}, Lw99;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v1
.end method

.method public F(Li53;)Li53;
    .locals 7

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw99;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    iget-object v1, p0, Li53;->b:Lw43;

    invoke-virtual {v1}, Lw43;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Li53;->n()Lw43;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Li53;->r(I)Lw43;

    move-result-object v4

    invoke-virtual {v2}, Lw43;->i()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lw43;->h()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Li53;->c:Lw43;

    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v3

    invoke-virtual {p1}, Li53;->o()Lw43;

    move-result-object v3

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v1

    invoke-virtual {v4}, Lw43;->o()Lw43;

    move-result-object v5

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v6

    invoke-virtual {v4, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v5, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v3}, Lw43;->b()Lw43;

    move-result-object v3

    invoke-virtual {v3, v6}, Lw43;->j(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v4, v5}, Lw43;->a(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v4, p0, v1, v6}, Lw43;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v2, v6}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v4}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {v4}, Lw43;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lw43;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Li53;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lw43;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p0, Lw99;

    invoke-virtual {v0}, Lt43;->n()Lw43;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lw99;-><init>(Lt43;Lw43;Lw43;)V

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object p1

    invoke-virtual {p1, v2}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {v1, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2, v6}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v1, v4}, Lw43;->a(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v1

    invoke-virtual {v1, p0, v3, v2}, Lw43;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object p0

    new-instance v1, Lw99;

    filled-new-array {v2}, [Lw43;

    move-result-object v2

    invoke-direct {v1, v0, p1, p0, v2}, Lw99;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lw99;->E()Li53;

    move-result-object p0

    invoke-virtual {p0, p1}, Li53;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public a(Li53;)Li53;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Li53;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Li53;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Li53;->i()Lt43;

    move-result-object v3

    iget-object v4, v0, Li53;->b:Lw43;

    check-cast v4, Lu99;

    invoke-virtual/range {p1 .. p1}, Li53;->n()Lw43;

    move-result-object v5

    check-cast v5, Lu99;

    invoke-virtual {v4}, Lu99;->i()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lu99;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lt43;->s()Li53;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1, v0}, Li53;->a(Li53;)Li53;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v6, v0, Li53;->c:Lw43;

    check-cast v6, Lu99;

    iget-object v7, v0, Li53;->d:[Lw43;

    aget-object v7, v7, v2

    check-cast v7, Lu99;

    invoke-virtual/range {p1 .. p1}, Li53;->o()Lw43;

    move-result-object v8

    check-cast v8, Lu99;

    invoke-virtual {v1, v2}, Li53;->r(I)Lw43;

    move-result-object v1

    check-cast v1, Lu99;

    invoke-static {}, Luy6;->c()[J

    move-result-object v9

    invoke-static {}, Luy6;->c()[J

    move-result-object v10

    invoke-static {}, Luy6;->c()[J

    move-result-object v11

    invoke-static {}, Luy6;->c()[J

    move-result-object v12

    invoke-virtual {v7}, Lu99;->h()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    iget-object v13, v7, Lu99;->g:[J

    invoke-static {v13}, Lt99;->s([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    iget-object v15, v5, Lu99;->g:[J

    iget-object v14, v8, Lu99;->g:[J

    goto :goto_1

    :cond_5
    iget-object v14, v5, Lu99;->g:[J

    invoke-static {v14, v13, v10}, Lt99;->q([J[J[J)V

    iget-object v14, v8, Lu99;->g:[J

    invoke-static {v14, v13, v12}, Lt99;->q([J[J[J)V

    move-object v15, v10

    move-object v14, v12

    :goto_1
    invoke-virtual {v1}, Lu99;->h()Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lu99;->g:[J

    invoke-static {v1}, Lt99;->s([J)[J

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    iget-object v4, v4, Lu99;->g:[J

    iget-object v2, v6, Lu99;->g:[J

    goto :goto_3

    :cond_7
    iget-object v2, v4, Lu99;->g:[J

    invoke-static {v2, v1, v9}, Lt99;->q([J[J[J)V

    iget-object v2, v6, Lu99;->g:[J

    invoke-static {v2, v1, v11}, Lt99;->q([J[J[J)V

    move-object v4, v9

    move-object v2, v11

    :goto_3
    invoke-static {v2, v14, v11}, Lt99;->b([J[J[J)V

    invoke-static {v4, v15, v12}, Lt99;->b([J[J[J)V

    invoke-static {v12}, Luy6;->g([J)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v11}, Luy6;->g([J)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lw99;->E()Li53;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {v3}, Lt43;->s()Li53;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v5}, Lu99;->i()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Li53;->y()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->p()Lw43;

    move-result-object v1

    check-cast v1, Lu99;

    invoke-virtual {v0}, Li53;->q()Lw43;

    move-result-object v0

    invoke-virtual {v0, v8}, Lw43;->a(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw43;->d(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v2}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {v4, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v4, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v4

    check-cast v4, Lu99;

    invoke-virtual {v4}, Lu99;->i()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v0, Lw99;

    invoke-virtual {v3}, Lt43;->n()Lw43;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lw99;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0

    :cond_a
    invoke-virtual {v1, v4}, Lu99;->a(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1, v4}, Lw43;->a(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw43;->d(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    check-cast v0, Lu99;

    sget-object v1, Ls43;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v1

    check-cast v1, Lu99;

    goto :goto_4

    :cond_b
    invoke-static {v12, v12}, Lt99;->w([J[J)V

    invoke-static {v11}, Lt99;->s([J)[J

    move-result-object v0

    invoke-static {v4, v0, v9}, Lt99;->q([J[J[J)V

    invoke-static {v15, v0, v10}, Lt99;->q([J[J[J)V

    new-instance v4, Lu99;

    invoke-direct {v4, v9}, Lu99;-><init>([J)V

    iget-object v2, v4, Lu99;->g:[J

    invoke-static {v9, v10, v2}, Lt99;->o([J[J[J)V

    invoke-virtual {v4}, Lu99;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lw99;

    invoke-virtual {v3}, Lt43;->n()Lw43;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lw99;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0

    :cond_c
    new-instance v2, Lu99;

    invoke-direct {v2, v11}, Lu99;-><init>([J)V

    iget-object v5, v2, Lu99;->g:[J

    invoke-static {v12, v0, v5}, Lt99;->q([J[J[J)V

    if-eqz v1, :cond_d

    iget-object v0, v2, Lu99;->g:[J

    invoke-static {v0, v1, v0}, Lt99;->q([J[J[J)V

    :cond_d
    invoke-static {}, Luy6;->d()[J

    move-result-object v0

    invoke-static {v10, v12, v12}, Lt99;->b([J[J[J)V

    invoke-static {v12, v0}, Lt99;->x([J[J)V

    iget-object v1, v6, Lu99;->g:[J

    iget-object v5, v7, Lu99;->g:[J

    invoke-static {v1, v5, v12}, Lt99;->b([J[J[J)V

    iget-object v1, v2, Lu99;->g:[J

    invoke-static {v12, v1, v0}, Lt99;->p([J[J[J)V

    new-instance v1, Lu99;

    invoke-direct {v1, v12}, Lu99;-><init>([J)V

    iget-object v5, v1, Lu99;->g:[J

    invoke-static {v0, v5}, Lt99;->t([J[J)V

    if-eqz v13, :cond_e

    iget-object v0, v2, Lu99;->g:[J

    invoke-static {v0, v13, v0}, Lt99;->q([J[J[J)V

    :cond_e
    move-object v0, v1

    move-object v1, v2

    :goto_4
    new-instance v2, Lw99;

    const/4 v5, 0x1

    new-array v5, v5, [Lw43;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-direct {v2, v3, v4, v0, v5}, Lw99;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v2
.end method

.method public d()Li53;
    .locals 3

    new-instance v0, Lw99;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lw99;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public h()Z
    .locals 3

    invoke-virtual {p0}, Li53;->n()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Li53;->o()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->s()Z

    move-result p0

    invoke-virtual {v0}, Lw43;->s()Z

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public q()Lw43;
    .locals 3

    iget-object v0, p0, Li53;->b:Lw43;

    iget-object v1, p0, Li53;->c:Lw43;

    invoke-virtual {p0}, Li53;->t()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    iget-object p0, p0, Li53;->d:[Lw43;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lw43;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lw43;->d(Lw43;)Lw43;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public x()Li53;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Li53;->b:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Li53;->c:Lw43;

    iget-object v2, p0, Li53;->d:[Lw43;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lw99;

    iget-object p0, p0, Li53;->a:Lt43;

    invoke-virtual {v1, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object v1

    filled-new-array {v2}, [Lw43;

    move-result-object v2

    invoke-direct {v3, p0, v0, v1, v2}, Lw99;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v3
.end method
