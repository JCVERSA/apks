.class public Lk79;
.super Li53$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lt43;Lw43;Lw43;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li53$c;-><init>(Lt43;Lw43;Lw43;)V

    return-void
.end method

.method public constructor <init>(Lt43;Lw43;Lw43;[Lw43;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Li53$c;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-void
.end method


# virtual methods
.method public E()Li53;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->c:Lw43;

    check-cast v2, Lj79;

    invoke-virtual {v2}, Lj79;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Li53;->b:Lw43;

    check-cast v3, Lj79;

    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v0

    check-cast p0, Lj79;

    invoke-static {}, Lpy6;->k()[I

    move-result-object v4

    invoke-static {}, Lpy6;->i()[I

    move-result-object v5

    iget-object v6, v2, Lj79;->g:[I

    invoke-static {v6, v5, v4}, Li79;->o([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v6

    invoke-static {v5, v6, v4}, Li79;->o([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v7

    iget-object v8, v3, Lj79;->g:[I

    invoke-static {v8, v7, v4}, Li79;->o([I[I[I)V

    invoke-static {v7, v7, v7}, Lpy6;->b([I[I[I)I

    move-result v8

    invoke-static {v8, v7}, Li79;->m(I[I)V

    iget-object v3, v3, Lj79;->g:[I

    invoke-static {v5, v3, v5, v4}, Li79;->g([I[I[I[I)V

    const/4 v3, 0x2

    const/16 v8, 0x8

    invoke-static {v8, v5, v3, v0}, Lvy6;->L(I[III)I

    move-result v3

    invoke-static {v3, v5}, Li79;->m(I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v3

    const/4 v9, 0x3

    invoke-static {v8, v6, v9, v0, v3}, Lvy6;->M(I[III[I)I

    move-result v8

    invoke-static {v8, v3}, Li79;->m(I[I)V

    new-instance v8, Lj79;

    invoke-direct {v8, v6}, Lj79;-><init>([I)V

    iget-object v6, v8, Lj79;->g:[I

    invoke-static {v7, v6, v4}, Li79;->o([I[I[I)V

    iget-object v6, v8, Lj79;->g:[I

    invoke-static {v6, v5, v6}, Li79;->q([I[I[I)V

    iget-object v6, v8, Lj79;->g:[I

    invoke-static {v6, v5, v6}, Li79;->q([I[I[I)V

    new-instance v6, Lj79;

    invoke-direct {v6, v5}, Lj79;-><init>([I)V

    iget-object v9, v8, Lj79;->g:[I

    iget-object v10, v6, Lj79;->g:[I

    invoke-static {v5, v9, v10}, Li79;->q([I[I[I)V

    iget-object v5, v6, Lj79;->g:[I

    invoke-static {v5, v7, v5, v4}, Li79;->g([I[I[I[I)V

    iget-object v5, v6, Lj79;->g:[I

    invoke-static {v5, v3, v5}, Li79;->q([I[I[I)V

    new-instance v3, Lj79;

    invoke-direct {v3, v7}, Lj79;-><init>([I)V

    iget-object v2, v2, Lj79;->g:[I

    iget-object v5, v3, Lj79;->g:[I

    invoke-static {v2, v5}, Li79;->r([I[I)V

    invoke-virtual {p0}, Lj79;->h()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lj79;->g:[I

    iget-object p0, p0, Lj79;->g:[I

    invoke-static {v2, p0, v2, v4}, Li79;->g([I[I[I[I)V

    :cond_2
    new-instance p0, Lk79;

    const/4 v2, 0x1

    new-array v2, v2, [Lw43;

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v8, v6, v2}, Lk79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object p0
.end method

.method public F(Li53;)Li53;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lk79;->G()Li53;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lk79;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lk79;->E()Li53;

    move-result-object p0

    invoke-virtual {p0, p1}, Li53;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public G()Li53;
    .locals 1

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk79;->E()Li53;

    move-result-object v0

    invoke-virtual {v0, p0}, Li53;->a(Li53;)Li53;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Li53;)Li53;
    .locals 16

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
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lk79;->E()Li53;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Li53;->i()Lt43;

    move-result-object v3

    iget-object v4, v0, Li53;->b:Lw43;

    check-cast v4, Lj79;

    iget-object v5, v0, Li53;->c:Lw43;

    check-cast v5, Lj79;

    invoke-virtual/range {p1 .. p1}, Li53;->p()Lw43;

    move-result-object v6

    check-cast v6, Lj79;

    invoke-virtual/range {p1 .. p1}, Li53;->q()Lw43;

    move-result-object v7

    check-cast v7, Lj79;

    iget-object v8, v0, Li53;->d:[Lw43;

    aget-object v8, v8, v2

    check-cast v8, Lj79;

    invoke-virtual {v1, v2}, Li53;->r(I)Lw43;

    move-result-object v1

    check-cast v1, Lj79;

    invoke-static {}, Lpy6;->k()[I

    move-result-object v9

    invoke-static {}, Lpy6;->k()[I

    move-result-object v10

    invoke-static {}, Lpy6;->i()[I

    move-result-object v11

    invoke-static {}, Lpy6;->i()[I

    move-result-object v12

    invoke-static {}, Lpy6;->i()[I

    move-result-object v13

    invoke-virtual {v8}, Lj79;->h()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v6, v6, Lj79;->g:[I

    iget-object v7, v7, Lj79;->g:[I

    goto :goto_0

    :cond_3
    iget-object v15, v8, Lj79;->g:[I

    invoke-static {v15, v12, v9}, Li79;->o([I[I[I)V

    iget-object v6, v6, Lj79;->g:[I

    invoke-static {v12, v6, v11, v9}, Li79;->g([I[I[I[I)V

    iget-object v6, v8, Lj79;->g:[I

    invoke-static {v12, v6, v12, v9}, Li79;->g([I[I[I[I)V

    iget-object v6, v7, Lj79;->g:[I

    invoke-static {v12, v6, v12, v9}, Li79;->g([I[I[I[I)V

    move-object v6, v11

    move-object v7, v12

    :goto_0
    invoke-virtual {v1}, Lj79;->h()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v4, v4, Lj79;->g:[I

    iget-object v5, v5, Lj79;->g:[I

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lj79;->g:[I

    invoke-static {v2, v13, v9}, Li79;->o([I[I[I)V

    iget-object v2, v4, Lj79;->g:[I

    invoke-static {v13, v2, v10, v9}, Li79;->g([I[I[I[I)V

    iget-object v2, v1, Lj79;->g:[I

    invoke-static {v13, v2, v13, v9}, Li79;->g([I[I[I[I)V

    iget-object v2, v5, Lj79;->g:[I

    invoke-static {v13, v2, v13, v9}, Li79;->g([I[I[I[I)V

    move-object v4, v10

    move-object v5, v13

    :goto_1
    invoke-static {}, Lpy6;->i()[I

    move-result-object v2

    invoke-static {v4, v6, v2}, Li79;->q([I[I[I)V

    invoke-static {v5, v7, v11}, Li79;->q([I[I[I)V

    invoke-static {v2}, Lpy6;->v([I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v11}, Lpy6;->v([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lk79;->E()Li53;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v3}, Lt43;->s()Li53;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v2, v12, v9}, Li79;->o([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    invoke-static {v12, v2, v0, v9}, Li79;->g([I[I[I[I)V

    invoke-static {v12, v4, v12, v9}, Li79;->g([I[I[I[I)V

    invoke-static {v0, v0}, Li79;->i([I[I)V

    invoke-static {v5, v0, v10}, Lpy6;->y([I[I[I)V

    invoke-static {v12, v12, v0}, Lpy6;->b([I[I[I)I

    move-result v4

    invoke-static {v4, v0}, Li79;->m(I[I)V

    new-instance v4, Lj79;

    invoke-direct {v4, v13}, Lj79;-><init>([I)V

    iget-object v5, v4, Lj79;->g:[I

    invoke-static {v11, v5, v9}, Li79;->o([I[I[I)V

    iget-object v5, v4, Lj79;->g:[I

    invoke-static {v5, v0, v5}, Li79;->q([I[I[I)V

    new-instance v5, Lj79;

    invoke-direct {v5, v0}, Lj79;-><init>([I)V

    iget-object v0, v4, Lj79;->g:[I

    iget-object v6, v5, Lj79;->g:[I

    invoke-static {v12, v0, v6}, Li79;->q([I[I[I)V

    iget-object v0, v5, Lj79;->g:[I

    invoke-static {v0, v11, v10}, Li79;->h([I[I[I)V

    iget-object v0, v5, Lj79;->g:[I

    invoke-static {v10, v0}, Li79;->l([I[I)V

    new-instance v0, Lj79;

    invoke-direct {v0, v2}, Lj79;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v2, v0, Lj79;->g:[I

    iget-object v6, v8, Lj79;->g:[I

    invoke-static {v2, v6, v2, v9}, Li79;->g([I[I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v2, v0, Lj79;->g:[I

    iget-object v1, v1, Lj79;->g:[I

    invoke-static {v2, v1, v2, v9}, Li79;->g([I[I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lw43;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lk79;

    invoke-direct {v0, v3, v4, v5, v1}, Lk79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method

.method public d()Li53;
    .locals 3

    new-instance v0, Lk79;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lk79;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public x()Li53;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lk79;

    iget-object v1, p0, Li53;->a:Lt43;

    iget-object v2, p0, Li53;->b:Lw43;

    iget-object v3, p0, Li53;->c:Lw43;

    invoke-virtual {v3}, Lw43;->m()Lw43;

    move-result-object v3

    iget-object p0, p0, Li53;->d:[Lw43;

    invoke-direct {v0, v1, v2, v3, p0}, Lk79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method
