.class public Ls79;
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
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->c:Lw43;

    check-cast v2, Lr79;

    invoke-virtual {v2}, Lr79;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Li53;->b:Lw43;

    check-cast v3, Lr79;

    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v0

    check-cast p0, Lr79;

    const/16 v4, 0x18

    invoke-static {v4}, Lvy6;->l(I)[I

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Lvy6;->l(I)[I

    move-result-object v6

    invoke-static {v5}, Lvy6;->l(I)[I

    move-result-object v7

    invoke-static {v5}, Lvy6;->l(I)[I

    move-result-object v8

    iget-object v9, v2, Lr79;->g:[I

    invoke-static {v9, v8, v4}, Lq79;->p([I[I[I)V

    invoke-static {v5}, Lvy6;->l(I)[I

    move-result-object v9

    invoke-static {v8, v9, v4}, Lq79;->p([I[I[I)V

    invoke-virtual {p0}, Lr79;->h()Z

    move-result v10

    iget-object v11, p0, Lr79;->g:[I

    if-nez v10, :cond_2

    invoke-static {v11, v7, v4}, Lq79;->p([I[I[I)V

    move-object v11, v7

    :cond_2
    iget-object v12, v3, Lr79;->g:[I

    invoke-static {v12, v11, v6}, Lq79;->s([I[I[I)V

    iget-object v12, v3, Lr79;->g:[I

    invoke-static {v12, v11, v7}, Lq79;->a([I[I[I)V

    invoke-static {v7, v6, v7, v4}, Lq79;->i([I[I[I[I)V

    invoke-static {v5, v7, v7, v7}, Lvy6;->c(I[I[I[I)I

    move-result v11

    invoke-static {v11, v7}, Lq79;->n(I[I)V

    iget-object v3, v3, Lr79;->g:[I

    invoke-static {v8, v3, v8, v4}, Lq79;->i([I[I[I[I)V

    const/4 v3, 0x2

    invoke-static {v5, v8, v3, v0}, Lvy6;->L(I[III)I

    move-result v3

    invoke-static {v3, v8}, Lq79;->n(I[I)V

    const/4 v3, 0x3

    invoke-static {v5, v9, v3, v0, v6}, Lvy6;->M(I[III[I)I

    move-result v3

    invoke-static {v3, v6}, Lq79;->n(I[I)V

    new-instance v3, Lr79;

    invoke-direct {v3, v9}, Lr79;-><init>([I)V

    iget-object v5, v3, Lr79;->g:[I

    invoke-static {v7, v5, v4}, Lq79;->p([I[I[I)V

    iget-object v5, v3, Lr79;->g:[I

    invoke-static {v5, v8, v5}, Lq79;->s([I[I[I)V

    iget-object v5, v3, Lr79;->g:[I

    invoke-static {v5, v8, v5}, Lq79;->s([I[I[I)V

    new-instance v5, Lr79;

    invoke-direct {v5, v8}, Lr79;-><init>([I)V

    iget-object v9, v3, Lr79;->g:[I

    iget-object v11, v5, Lr79;->g:[I

    invoke-static {v8, v9, v11}, Lq79;->s([I[I[I)V

    iget-object v8, v5, Lr79;->g:[I

    invoke-static {v8, v7, v8, v4}, Lq79;->i([I[I[I[I)V

    iget-object v8, v5, Lr79;->g:[I

    invoke-static {v8, v6, v8}, Lq79;->s([I[I[I)V

    new-instance v6, Lr79;

    invoke-direct {v6, v7}, Lr79;-><init>([I)V

    iget-object v2, v2, Lr79;->g:[I

    iget-object v7, v6, Lr79;->g:[I

    invoke-static {v2, v7}, Lq79;->t([I[I)V

    if-nez v10, :cond_3

    iget-object v2, v6, Lr79;->g:[I

    iget-object p0, p0, Lr79;->g:[I

    invoke-static {v2, p0, v2, v4}, Lq79;->i([I[I[I[I)V

    :cond_3
    new-instance p0, Ls79;

    const/4 v2, 0x1

    new-array v2, v2, [Lw43;

    aput-object v6, v2, v0

    invoke-direct {p0, v1, v3, v5, v2}, Ls79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object p0
.end method

.method public F(Li53;)Li53;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Ls79;->G()Li53;

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

    invoke-virtual {p0}, Ls79;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Ls79;->E()Li53;

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
    invoke-virtual {p0}, Ls79;->E()Li53;

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

    invoke-virtual/range {p0 .. p0}, Ls79;->E()Li53;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Li53;->i()Lt43;

    move-result-object v3

    iget-object v4, v0, Li53;->b:Lw43;

    check-cast v4, Lr79;

    iget-object v5, v0, Li53;->c:Lw43;

    check-cast v5, Lr79;

    invoke-virtual/range {p1 .. p1}, Li53;->p()Lw43;

    move-result-object v6

    check-cast v6, Lr79;

    invoke-virtual/range {p1 .. p1}, Li53;->q()Lw43;

    move-result-object v7

    check-cast v7, Lr79;

    iget-object v8, v0, Li53;->d:[Lw43;

    aget-object v8, v8, v2

    check-cast v8, Lr79;

    invoke-virtual {v1, v2}, Li53;->r(I)Lw43;

    move-result-object v1

    check-cast v1, Lr79;

    const/16 v9, 0x18

    invoke-static {v9}, Lvy6;->l(I)[I

    move-result-object v10

    invoke-static {v9}, Lvy6;->l(I)[I

    move-result-object v11

    invoke-static {v9}, Lvy6;->l(I)[I

    move-result-object v9

    const/16 v12, 0xc

    invoke-static {v12}, Lvy6;->l(I)[I

    move-result-object v13

    invoke-static {v12}, Lvy6;->l(I)[I

    move-result-object v14

    invoke-virtual {v8}, Lr79;->h()Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v6, v6, Lr79;->g:[I

    iget-object v7, v7, Lr79;->g:[I

    goto :goto_0

    :cond_3
    iget-object v2, v8, Lr79;->g:[I

    invoke-static {v2, v13, v10}, Lq79;->p([I[I[I)V

    iget-object v2, v6, Lr79;->g:[I

    invoke-static {v13, v2, v9, v10}, Lq79;->i([I[I[I[I)V

    iget-object v2, v8, Lr79;->g:[I

    invoke-static {v13, v2, v13, v10}, Lq79;->i([I[I[I[I)V

    iget-object v2, v7, Lr79;->g:[I

    invoke-static {v13, v2, v13, v10}, Lq79;->i([I[I[I[I)V

    move-object v6, v9

    move-object v7, v13

    :goto_0
    invoke-virtual {v1}, Lr79;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v4, v4, Lr79;->g:[I

    iget-object v5, v5, Lr79;->g:[I

    goto :goto_1

    :cond_4
    iget-object v12, v1, Lr79;->g:[I

    invoke-static {v12, v14, v10}, Lq79;->p([I[I[I)V

    iget-object v4, v4, Lr79;->g:[I

    invoke-static {v14, v4, v11, v10}, Lq79;->i([I[I[I[I)V

    iget-object v4, v1, Lr79;->g:[I

    invoke-static {v14, v4, v14, v10}, Lq79;->i([I[I[I[I)V

    iget-object v4, v5, Lr79;->g:[I

    invoke-static {v14, v4, v14, v10}, Lq79;->i([I[I[I[I)V

    move-object v4, v11

    move-object v5, v14

    const/16 v12, 0xc

    :goto_1
    invoke-static {v12}, Lvy6;->l(I)[I

    move-result-object v0

    invoke-static {v4, v6, v0}, Lq79;->s([I[I[I)V

    invoke-static {v12}, Lvy6;->l(I)[I

    move-result-object v6

    invoke-static {v5, v7, v6}, Lq79;->s([I[I[I)V

    invoke-static {v12, v0}, Lvy6;->A(I[I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v12, v6}, Lvy6;->A(I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Ls79;->E()Li53;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v3}, Lt43;->s()Li53;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v0, v13, v10}, Lq79;->p([I[I[I)V

    invoke-static {v12}, Lvy6;->l(I)[I

    move-result-object v7

    invoke-static {v13, v0, v7, v10}, Lq79;->i([I[I[I[I)V

    invoke-static {v13, v4, v13, v10}, Lq79;->i([I[I[I[I)V

    invoke-static {v7, v7}, Lq79;->j([I[I)V

    invoke-static {v5, v7, v11}, Lry6;->a([I[I[I)V

    invoke-static {v12, v13, v13, v7}, Lvy6;->c(I[I[I[I)I

    move-result v4

    invoke-static {v4, v7}, Lq79;->n(I[I)V

    new-instance v4, Lr79;

    invoke-direct {v4, v14}, Lr79;-><init>([I)V

    iget-object v5, v4, Lr79;->g:[I

    invoke-static {v6, v5, v10}, Lq79;->p([I[I[I)V

    iget-object v5, v4, Lr79;->g:[I

    invoke-static {v5, v7, v5}, Lq79;->s([I[I[I)V

    new-instance v5, Lr79;

    invoke-direct {v5, v7}, Lr79;-><init>([I)V

    iget-object v7, v4, Lr79;->g:[I

    iget-object v12, v5, Lr79;->g:[I

    invoke-static {v13, v7, v12}, Lq79;->s([I[I[I)V

    iget-object v7, v5, Lr79;->g:[I

    invoke-static {v7, v6, v9}, Lry6;->a([I[I[I)V

    invoke-static {v11, v9, v11}, Lq79;->b([I[I[I)V

    iget-object v6, v5, Lr79;->g:[I

    invoke-static {v11, v6}, Lq79;->m([I[I)V

    new-instance v6, Lr79;

    invoke-direct {v6, v0}, Lr79;-><init>([I)V

    if-nez v15, :cond_7

    iget-object v0, v6, Lr79;->g:[I

    iget-object v7, v8, Lr79;->g:[I

    invoke-static {v0, v7, v0, v10}, Lq79;->i([I[I[I[I)V

    :cond_7
    if-nez v2, :cond_8

    iget-object v0, v6, Lr79;->g:[I

    iget-object v1, v1, Lr79;->g:[I

    invoke-static {v0, v1, v0, v10}, Lq79;->i([I[I[I[I)V

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Lw43;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    new-instance v1, Ls79;

    invoke-direct {v1, v3, v4, v5, v0}, Ls79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v1
.end method

.method public d()Li53;
    .locals 3

    new-instance v0, Ls79;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Ls79;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public x()Li53;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ls79;

    iget-object v1, p0, Li53;->a:Lt43;

    iget-object v2, p0, Li53;->b:Lw43;

    iget-object v3, p0, Li53;->c:Lw43;

    invoke-virtual {v3}, Lw43;->m()Lw43;

    move-result-object v3

    iget-object p0, p0, Li53;->d:[Lw43;

    invoke-direct {v0, v1, v2, v3, p0}, Ls79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method
