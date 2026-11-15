.class public Lxm1;
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
    .locals 2

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    iget-object v1, p0, Li53;->c:Lw43;

    invoke-virtual {v1}, Lw43;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxm1;->J(Z)Lxm1;

    move-result-object p0

    return-object p0
.end method

.method public F(Li53;)Li53;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lxm1;->I()Li53;

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

    invoke-virtual {p0}, Lxm1;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxm1;->J(Z)Lxm1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxm1;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public G(Lwm1;[I)Lwm1;
    .locals 1

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object p0

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object p0

    check-cast p0, Lwm1;

    invoke-virtual {p1}, Lwm1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lwm1;

    invoke-direct {v0}, Lwm1;-><init>()V

    if-nez p2, :cond_1

    iget-object p2, v0, Lwm1;->g:[I

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p1, p2}, Lvm1;->n([I[I)V

    :cond_1
    iget-object p1, v0, Lwm1;->g:[I

    invoke-static {p2, p1}, Lvm1;->n([I[I)V

    iget-object p1, v0, Lwm1;->g:[I

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p1, p0, p1}, Lvm1;->g([I[I[I)V

    return-object v0
.end method

.method public H()Lwm1;
    .locals 4

    iget-object v0, p0, Li53;->d:[Lw43;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    check-cast v2, Lwm1;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lwm1;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lxm1;->G(Lwm1;[I)Lwm1;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    return-object v2
.end method

.method public I()Li53;
    .locals 1

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Li53;->c:Lw43;

    invoke-virtual {v0}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxm1;->J(Z)Lxm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxm1;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public J(Z)Lxm1;
    .locals 11

    iget-object v0, p0, Li53;->b:Lw43;

    check-cast v0, Lwm1;

    iget-object v1, p0, Li53;->c:Lw43;

    check-cast v1, Lwm1;

    iget-object v2, p0, Li53;->d:[Lw43;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lwm1;

    invoke-virtual {p0}, Lxm1;->H()Lwm1;

    move-result-object v4

    invoke-static {}, Lpy6;->i()[I

    move-result-object v5

    iget-object v6, v0, Lwm1;->g:[I

    invoke-static {v6, v5}, Lvm1;->n([I[I)V

    invoke-static {v5, v5, v5}, Lpy6;->b([I[I[I)I

    move-result v6

    iget-object v7, v4, Lwm1;->g:[I

    invoke-static {v7, v5}, Lpy6;->d([I[I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v5}, Lvm1;->m(I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v6

    iget-object v7, v1, Lwm1;->g:[I

    invoke-static {v7, v6}, Lvm1;->s([I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v7

    iget-object v1, v1, Lwm1;->g:[I

    invoke-static {v6, v1, v7}, Lvm1;->g([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v1

    iget-object v0, v0, Lwm1;->g:[I

    invoke-static {v7, v0, v1}, Lvm1;->g([I[I[I)V

    invoke-static {v1, v1}, Lvm1;->s([I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    invoke-static {v7, v0}, Lvm1;->n([I[I)V

    invoke-static {v0, v0}, Lvm1;->s([I[I)V

    new-instance v8, Lwm1;

    invoke-direct {v8, v7}, Lwm1;-><init>([I)V

    iget-object v7, v8, Lwm1;->g:[I

    invoke-static {v5, v7}, Lvm1;->n([I[I)V

    iget-object v7, v8, Lwm1;->g:[I

    invoke-static {v7, v1, v7}, Lvm1;->r([I[I[I)V

    iget-object v7, v8, Lwm1;->g:[I

    invoke-static {v7, v1, v7}, Lvm1;->r([I[I[I)V

    new-instance v7, Lwm1;

    invoke-direct {v7, v1}, Lwm1;-><init>([I)V

    iget-object v9, v8, Lwm1;->g:[I

    iget-object v10, v7, Lwm1;->g:[I

    invoke-static {v1, v9, v10}, Lvm1;->r([I[I[I)V

    iget-object v1, v7, Lwm1;->g:[I

    invoke-static {v1, v5, v1}, Lvm1;->g([I[I[I)V

    iget-object v1, v7, Lwm1;->g:[I

    invoke-static {v1, v0, v1}, Lvm1;->r([I[I[I)V

    new-instance v1, Lwm1;

    invoke-direct {v1, v6}, Lwm1;-><init>([I)V

    iget-object v5, v2, Lwm1;->g:[I

    invoke-static {v5}, Lpy6;->t([I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lwm1;->g:[I

    iget-object v2, v2, Lwm1;->g:[I

    invoke-static {v5, v2, v5}, Lvm1;->g([I[I[I)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lwm1;

    invoke-direct {p1, v0}, Lwm1;-><init>([I)V

    iget-object v0, p1, Lwm1;->g:[I

    iget-object v2, v4, Lwm1;->g:[I

    invoke-static {v0, v2, v0}, Lvm1;->g([I[I[I)V

    iget-object v0, p1, Lwm1;->g:[I

    invoke-static {v0, v0}, Lvm1;->s([I[I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lxm1;

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Lw43;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {v0, p0, v8, v7, v2}, Lxm1;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
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

    invoke-virtual {p0}, Lxm1;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->b:Lw43;

    check-cast v2, Lwm1;

    iget-object v3, p0, Li53;->c:Lw43;

    check-cast v3, Lwm1;

    iget-object v4, p0, Li53;->d:[Lw43;

    aget-object v4, v4, v0

    check-cast v4, Lwm1;

    invoke-virtual {p1}, Li53;->p()Lw43;

    move-result-object v5

    check-cast v5, Lwm1;

    invoke-virtual {p1}, Li53;->q()Lw43;

    move-result-object v6

    check-cast v6, Lwm1;

    invoke-virtual {p1, v0}, Li53;->r(I)Lw43;

    move-result-object p1

    check-cast p1, Lwm1;

    invoke-static {}, Lpy6;->k()[I

    move-result-object v7

    invoke-static {}, Lpy6;->i()[I

    move-result-object v8

    invoke-static {}, Lpy6;->i()[I

    move-result-object v9

    invoke-static {}, Lpy6;->i()[I

    move-result-object v10

    invoke-virtual {v4}, Lwm1;->h()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v5, v5, Lwm1;->g:[I

    iget-object v6, v6, Lwm1;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v4, Lwm1;->g:[I

    invoke-static {v12, v9}, Lvm1;->n([I[I)V

    iget-object v5, v5, Lwm1;->g:[I

    invoke-static {v9, v5, v8}, Lvm1;->g([I[I[I)V

    iget-object v5, v4, Lwm1;->g:[I

    invoke-static {v9, v5, v9}, Lvm1;->g([I[I[I)V

    iget-object v5, v6, Lwm1;->g:[I

    invoke-static {v9, v5, v9}, Lvm1;->g([I[I[I)V

    move-object v5, v8

    move-object v6, v9

    :goto_0
    invoke-virtual {p1}, Lwm1;->h()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lwm1;->g:[I

    iget-object v3, v3, Lwm1;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lwm1;->g:[I

    invoke-static {v13, v10}, Lvm1;->n([I[I)V

    iget-object v2, v2, Lwm1;->g:[I

    invoke-static {v10, v2, v7}, Lvm1;->g([I[I[I)V

    iget-object v2, p1, Lwm1;->g:[I

    invoke-static {v10, v2, v10}, Lvm1;->g([I[I[I)V

    iget-object v2, v3, Lwm1;->g:[I

    invoke-static {v10, v2, v10}, Lvm1;->g([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lpy6;->i()[I

    move-result-object v13

    invoke-static {v2, v5, v13}, Lvm1;->r([I[I[I)V

    invoke-static {v3, v6, v8}, Lvm1;->r([I[I[I)V

    invoke-static {v13}, Lpy6;->v([I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v8}, Lpy6;->v([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lxm1;->E()Li53;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lpy6;->i()[I

    move-result-object v5

    invoke-static {v13, v5}, Lvm1;->n([I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v6

    invoke-static {v5, v13, v6}, Lvm1;->g([I[I[I)V

    invoke-static {v5, v2, v9}, Lvm1;->g([I[I[I)V

    invoke-static {v6, v6}, Lvm1;->i([I[I)V

    invoke-static {v3, v6, v7}, Lpy6;->y([I[I[I)V

    invoke-static {v9, v9, v6}, Lpy6;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v6}, Lvm1;->m(I[I)V

    new-instance v2, Lwm1;

    invoke-direct {v2, v10}, Lwm1;-><init>([I)V

    iget-object v3, v2, Lwm1;->g:[I

    invoke-static {v8, v3}, Lvm1;->n([I[I)V

    iget-object v3, v2, Lwm1;->g:[I

    invoke-static {v3, v6, v3}, Lvm1;->r([I[I[I)V

    new-instance v3, Lwm1;

    invoke-direct {v3, v6}, Lwm1;-><init>([I)V

    iget-object v6, v2, Lwm1;->g:[I

    iget-object v10, v3, Lwm1;->g:[I

    invoke-static {v9, v6, v10}, Lvm1;->r([I[I[I)V

    iget-object v6, v3, Lwm1;->g:[I

    invoke-static {v6, v8, v7}, Lvm1;->h([I[I[I)V

    iget-object v6, v3, Lwm1;->g:[I

    invoke-static {v7, v6}, Lvm1;->l([I[I)V

    new-instance v6, Lwm1;

    invoke-direct {v6, v13}, Lwm1;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v7, v6, Lwm1;->g:[I

    iget-object v4, v4, Lwm1;->g:[I

    invoke-static {v7, v4, v7}, Lvm1;->g([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v4, v6, Lwm1;->g:[I

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {v4, p1, v4}, Lvm1;->g([I[I[I)V

    :cond_8
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0, v6, v5}, Lxm1;->G(Lwm1;[I)Lwm1;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Lw43;

    aput-object v6, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    new-instance p0, Lxm1;

    invoke-direct {p0, v1, v2, v3, p1}, Lxm1;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object p0
.end method

.method public d()Li53;
    .locals 3

    new-instance v0, Lxm1;

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lxm1;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public r(I)Lw43;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lxm1;->H()Lwm1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Li53;->r(I)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public x()Li53;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lxm1;

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    iget-object v2, p0, Li53;->b:Lw43;

    iget-object v3, p0, Li53;->c:Lw43;

    invoke-virtual {v3}, Lw43;->m()Lw43;

    move-result-object v3

    iget-object p0, p0, Li53;->d:[Lw43;

    invoke-direct {v0, v1, v2, v3, p0}, Lxm1;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method
