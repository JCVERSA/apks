.class public Lu69;
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
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->c:Lw43;

    check-cast v2, Lt69;

    invoke-virtual {v2}, Lt69;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Li53;->b:Lw43;

    check-cast v3, Lt69;

    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v0

    check-cast p0, Lt69;

    invoke-static {}, Lny6;->h()[I

    move-result-object v4

    iget-object v5, v2, Lt69;->g:[I

    invoke-static {v5, v4}, Ls69;->m([I[I)V

    invoke-static {}, Lny6;->h()[I

    move-result-object v5

    invoke-static {v4, v5}, Ls69;->m([I[I)V

    invoke-static {}, Lny6;->h()[I

    move-result-object v6

    iget-object v7, v3, Lt69;->g:[I

    invoke-static {v7, v6}, Ls69;->m([I[I)V

    invoke-static {v6, v6, v6}, Lny6;->b([I[I[I)I

    move-result v7

    invoke-static {v7, v6}, Ls69;->l(I[I)V

    iget-object v3, v3, Lt69;->g:[I

    invoke-static {v4, v3, v4}, Ls69;->f([I[I[I)V

    const/4 v3, 0x2

    const/4 v7, 0x6

    invoke-static {v7, v4, v3, v0}, Lvy6;->L(I[III)I

    move-result v3

    invoke-static {v3, v4}, Ls69;->l(I[I)V

    invoke-static {}, Lny6;->h()[I

    move-result-object v3

    const/4 v8, 0x3

    invoke-static {v7, v5, v8, v0, v3}, Lvy6;->M(I[III[I)I

    move-result v7

    invoke-static {v7, v3}, Ls69;->l(I[I)V

    new-instance v7, Lt69;

    invoke-direct {v7, v5}, Lt69;-><init>([I)V

    iget-object v5, v7, Lt69;->g:[I

    invoke-static {v6, v5}, Ls69;->m([I[I)V

    iget-object v5, v7, Lt69;->g:[I

    invoke-static {v5, v4, v5}, Ls69;->o([I[I[I)V

    iget-object v5, v7, Lt69;->g:[I

    invoke-static {v5, v4, v5}, Ls69;->o([I[I[I)V

    new-instance v5, Lt69;

    invoke-direct {v5, v4}, Lt69;-><init>([I)V

    iget-object v8, v7, Lt69;->g:[I

    iget-object v9, v5, Lt69;->g:[I

    invoke-static {v4, v8, v9}, Ls69;->o([I[I[I)V

    iget-object v4, v5, Lt69;->g:[I

    invoke-static {v4, v6, v4}, Ls69;->f([I[I[I)V

    iget-object v4, v5, Lt69;->g:[I

    invoke-static {v4, v3, v4}, Ls69;->o([I[I[I)V

    new-instance v3, Lt69;

    invoke-direct {v3, v6}, Lt69;-><init>([I)V

    iget-object v2, v2, Lt69;->g:[I

    iget-object v4, v3, Lt69;->g:[I

    invoke-static {v2, v4}, Ls69;->p([I[I)V

    invoke-virtual {p0}, Lt69;->h()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lt69;->g:[I

    iget-object p0, p0, Lt69;->g:[I

    invoke-static {v2, p0, v2}, Ls69;->f([I[I[I)V

    :cond_2
    new-instance p0, Lu69;

    const/4 v2, 0x1

    new-array v2, v2, [Lw43;

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v7, v5, v2}, Lu69;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object p0
.end method

.method public F(Li53;)Li53;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lu69;->G()Li53;

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

    invoke-virtual {p0}, Lu69;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lu69;->E()Li53;

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
    invoke-virtual {p0}, Lu69;->E()Li53;

    move-result-object v0

    invoke-virtual {v0, p0}, Li53;->a(Li53;)Li53;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Li53;)Li53;
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lu69;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->b:Lw43;

    check-cast v2, Lt69;

    iget-object v3, p0, Li53;->c:Lw43;

    check-cast v3, Lt69;

    invoke-virtual {p1}, Li53;->p()Lw43;

    move-result-object v4

    check-cast v4, Lt69;

    invoke-virtual {p1}, Li53;->q()Lw43;

    move-result-object v5

    check-cast v5, Lt69;

    iget-object v6, p0, Li53;->d:[Lw43;

    aget-object v6, v6, v0

    check-cast v6, Lt69;

    invoke-virtual {p1, v0}, Li53;->r(I)Lw43;

    move-result-object p1

    check-cast p1, Lt69;

    invoke-static {}, Lny6;->j()[I

    move-result-object v7

    invoke-static {}, Lny6;->h()[I

    move-result-object v8

    invoke-static {}, Lny6;->h()[I

    move-result-object v9

    invoke-static {}, Lny6;->h()[I

    move-result-object v10

    invoke-virtual {v6}, Lt69;->h()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, v4, Lt69;->g:[I

    iget-object v5, v5, Lt69;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v6, Lt69;->g:[I

    invoke-static {v12, v9}, Ls69;->m([I[I)V

    iget-object v4, v4, Lt69;->g:[I

    invoke-static {v9, v4, v8}, Ls69;->f([I[I[I)V

    iget-object v4, v6, Lt69;->g:[I

    invoke-static {v9, v4, v9}, Ls69;->f([I[I[I)V

    iget-object v4, v5, Lt69;->g:[I

    invoke-static {v9, v4, v9}, Ls69;->f([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    :goto_0
    invoke-virtual {p1}, Lt69;->h()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lt69;->g:[I

    iget-object v3, v3, Lt69;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lt69;->g:[I

    invoke-static {v13, v10}, Ls69;->m([I[I)V

    iget-object v2, v2, Lt69;->g:[I

    invoke-static {v10, v2, v7}, Ls69;->f([I[I[I)V

    iget-object v2, p1, Lt69;->g:[I

    invoke-static {v10, v2, v10}, Ls69;->f([I[I[I)V

    iget-object v2, v3, Lt69;->g:[I

    invoke-static {v10, v2, v10}, Ls69;->f([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lny6;->h()[I

    move-result-object v13

    invoke-static {v2, v4, v13}, Ls69;->o([I[I[I)V

    invoke-static {v3, v5, v8}, Ls69;->o([I[I[I)V

    invoke-static {v13}, Lny6;->u([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lny6;->u([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lu69;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v13, v9}, Ls69;->m([I[I)V

    invoke-static {}, Lny6;->h()[I

    move-result-object p0

    invoke-static {v9, v13, p0}, Ls69;->f([I[I[I)V

    invoke-static {v9, v2, v9}, Ls69;->f([I[I[I)V

    invoke-static {p0, p0}, Ls69;->h([I[I)V

    invoke-static {v3, p0, v7}, Lny6;->x([I[I[I)V

    invoke-static {v9, v9, p0}, Lny6;->b([I[I[I)I

    move-result v2

    invoke-static {v2, p0}, Ls69;->l(I[I)V

    new-instance v2, Lt69;

    invoke-direct {v2, v10}, Lt69;-><init>([I)V

    iget-object v3, v2, Lt69;->g:[I

    invoke-static {v8, v3}, Ls69;->m([I[I)V

    iget-object v3, v2, Lt69;->g:[I

    invoke-static {v3, p0, v3}, Ls69;->o([I[I[I)V

    new-instance v3, Lt69;

    invoke-direct {v3, p0}, Lt69;-><init>([I)V

    iget-object p0, v2, Lt69;->g:[I

    iget-object v4, v3, Lt69;->g:[I

    invoke-static {v9, p0, v4}, Ls69;->o([I[I[I)V

    iget-object p0, v3, Lt69;->g:[I

    invoke-static {p0, v8, v7}, Ls69;->g([I[I[I)V

    iget-object p0, v3, Lt69;->g:[I

    invoke-static {v7, p0}, Ls69;->k([I[I)V

    new-instance p0, Lt69;

    invoke-direct {p0, v13}, Lt69;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v4, p0, Lt69;->g:[I

    iget-object v5, v6, Lt69;->g:[I

    invoke-static {v4, v5, v4}, Ls69;->f([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v4, p0, Lt69;->g:[I

    iget-object p1, p1, Lt69;->g:[I

    invoke-static {v4, p1, v4}, Ls69;->f([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lw43;

    aput-object p0, p1, v0

    new-instance p0, Lu69;

    invoke-direct {p0, v1, v2, v3, p1}, Lu69;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object p0
.end method

.method public d()Li53;
    .locals 3

    new-instance v0, Lu69;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lu69;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public x()Li53;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lu69;

    iget-object v1, p0, Li53;->a:Lt43;

    iget-object v2, p0, Li53;->b:Lw43;

    iget-object v3, p0, Li53;->c:Lw43;

    invoke-virtual {v3}, Lw43;->m()Lw43;

    move-result-object v3

    iget-object p0, p0, Li53;->d:[Lw43;

    invoke-direct {v0, v1, v2, v3, p0}, Lu69;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method
