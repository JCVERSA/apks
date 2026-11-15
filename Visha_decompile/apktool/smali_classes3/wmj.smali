.class public final Lwmj;
.super Lopj;
.source "SourceFile"


# instance fields
.field public final l:Z

.field public final m:Le4f;

.field public final n:Ly2f;

.field public o:Lumj;

.field public p:Ltmj;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lknj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lopj;-><init>(Lknj;)V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lknj;->zzv()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lwmj;->l:Z

    new-instance p2, Le4f;

    invoke-direct {p2}, Le4f;-><init>()V

    iput-object p2, p0, Lwmj;->m:Le4f;

    new-instance p2, Ly2f;

    invoke-direct {p2}, Ly2f;-><init>()V

    iput-object p2, p0, Lwmj;->n:Ly2f;

    invoke-interface {p1}, Lknj;->zzM()Lw4f;

    invoke-interface {p1}, Lknj;->zzJ()Lcme;

    move-result-object p1

    invoke-static {p1}, Lumj;->q(Lcme;)Lumj;

    move-result-object p1

    iput-object p1, p0, Lwmj;->o:Lumj;

    return-void
.end method


# virtual methods
.method public final C(Lbnj;)Lbnj;
    .locals 2

    iget-object v0, p0, Lwmj;->o:Lumj;

    invoke-static {v0}, Lumj;->s(Lumj;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lbnj;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwmj;->o:Lumj;

    invoke-static {p0}, Lumj;->s(Lumj;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v1, Lumj;->e:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v1}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object p0

    return-object p0
.end method

.method public final D(Lw4f;)V
    .locals 11

    iget-boolean v0, p0, Lwmj;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwmj;->o:Lumj;

    invoke-virtual {v0, p1}, Lumj;->p(Lw4f;)Lumj;

    move-result-object p1

    iput-object p1, p0, Lwmj;->o:Lumj;

    iget-object p1, p0, Lwmj;->p:Ltmj;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ltmj;->i()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lwmj;->I(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lw4f;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lwmj;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwmj;->o:Lumj;

    invoke-virtual {v0, p1}, Lumj;->p(Lw4f;)Lumj;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Le4f;->o:Ljava/lang/Object;

    sget-object v2, Lumj;->e:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lumj;->r(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)Lumj;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lwmj;->o:Lumj;

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lwmj;->m:Le4f;

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Lw4f;->e(ILe4f;J)Le4f;

    iget-object v8, v3, Le4f;->a:Ljava/lang/Object;

    iget-object v2, p0, Lwmj;->p:Ltmj;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ltmj;->j()J

    move-result-wide v6

    iget-object v9, p0, Lwmj;->o:Lumj;

    iget-object v10, p0, Lwmj;->n:Ly2f;

    iget-object v2, v2, Ltmj;->b:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v9, v2, v10}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget-object v2, p0, Lwmj;->o:Lumj;

    invoke-virtual {v2, v0, v3, v4, v5}, Lw4f;->e(ILe4f;J)Le4f;

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    iget-object v4, p0, Lwmj;->n:Ly2f;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lw4f;->l(Le4f;Ly2f;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, p0, Lwmj;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lwmj;->o:Lumj;

    invoke-virtual {v0, p1}, Lumj;->p(Lw4f;)Lumj;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p1, v8, v2}, Lumj;->r(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)Lumj;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lwmj;->o:Lumj;

    iget-object p1, p0, Lwmj;->p:Ltmj;

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3, v4}, Lwmj;->I(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Ltmj;->b:Lbnj;

    iget-object v0, p1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lwmj;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object v1

    :cond_5
    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lwmj;->s:Z

    iput-boolean p1, p0, Lwmj;->r:Z

    iget-object p1, p0, Lwmj;->o:Lumj;

    invoke-virtual {p0, p1}, Lulj;->u(Lw4f;)V

    if-eqz v1, :cond_6

    iget-object p0, p0, Lwmj;->p:Ltmj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ltmj;->k(Lbnj;)V

    :cond_6
    return-void
.end method

.method public final E()V
    .locals 2

    iget-boolean v0, p0, Lwmj;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwmj;->q:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lopj;->k:Lknj;

    invoke-virtual {p0, v0, v1}, Ljmj;->y(Ljava/lang/Object;Lknj;)V

    :cond_0
    return-void
.end method

.method public final F()Lw4f;
    .locals 0

    iget-object p0, p0, Lwmj;->o:Lumj;

    return-object p0
.end method

.method public final G(Lbnj;Lnrj;J)Ltmj;
    .locals 1

    new-instance v0, Ltmj;

    invoke-direct {v0, p1, p2, p3, p4}, Ltmj;-><init>(Lbnj;Lnrj;J)V

    iget-object p2, p0, Lopj;->k:Lknj;

    invoke-virtual {v0, p2}, Ltmj;->o(Lknj;)V

    iget-boolean p2, p0, Lwmj;->r:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lwmj;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltmj;->k(Lbnj;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lwmj;->p:Ltmj;

    iget-boolean p1, p0, Lwmj;->q:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwmj;->q:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lopj;->k:Lknj;

    invoke-virtual {p0, p1, p2}, Ljmj;->y(Ljava/lang/Object;Lknj;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final H(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwmj;->o:Lumj;

    invoke-static {v0}, Lumj;->s(Lumj;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lumj;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwmj;->o:Lumj;

    invoke-static {p0}, Lumj;->s(Lumj;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final I(J)Z
    .locals 5

    iget-object v0, p0, Lwmj;->p:Ltmj;

    iget-object v1, p0, Lwmj;->o:Lumj;

    iget-object v2, v0, Ltmj;->b:Lbnj;

    iget-object v2, v2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lpmj;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lwmj;->o:Lumj;

    iget-object p0, p0, Lwmj;->n:Ly2f;

    invoke-virtual {v2, v1, p0, v3}, Lw4f;->d(ILy2f;Z)Ly2f;

    iget-wide v1, p0, Ly2f;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    const-wide/16 p0, -0x1

    add-long/2addr v1, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Ltmj;->l(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic b(Lbnj;Lnrj;J)Lzmj;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lwmj;->G(Lbnj;Lnrj;J)Ltmj;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lzmj;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ltmj;

    invoke-virtual {v0}, Ltmj;->n()V

    iget-object v0, p0, Lwmj;->p:Ltmj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lwmj;->p:Ltmj;

    :cond_0
    return-void
.end method

.method public final i(Lcme;)V
    .locals 3

    iget-boolean v0, p0, Lwmj;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwmj;->o:Lumj;

    new-instance v1, Llpj;

    iget-object v2, p0, Lwmj;->o:Lumj;

    iget-object v2, v2, Lpmj;->b:Lw4f;

    invoke-direct {v1, v2, p1}, Llpj;-><init>(Lw4f;Lcme;)V

    invoke-virtual {v0, v1}, Lumj;->p(Lw4f;)Lumj;

    move-result-object v0

    iput-object v0, p0, Lwmj;->o:Lumj;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lumj;->q(Lcme;)Lumj;

    move-result-object v0

    iput-object v0, p0, Lwmj;->o:Lumj;

    :goto_0
    iget-object p0, p0, Lopj;->k:Lknj;

    invoke-interface {p0, p1}, Lknj;->i(Lcme;)V

    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwmj;->r:Z

    iput-boolean v0, p0, Lwmj;->q:Z

    invoke-super {p0}, Ljmj;->v()V

    return-void
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
