.class public final Lcaj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx9j;

.field public final b:I

.field public final c:Lx9j;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lx9j;Lx9j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaj;->a:Lx9j;

    iput p3, p0, Lcaj;->b:I

    iput-object p2, p0, Lcaj;->c:Lx9j;

    const/4 p1, 0x0

    iput p1, p0, Lcaj;->d:I

    iput-boolean p1, p0, Lcaj;->e:Z

    iput-boolean p1, p0, Lcaj;->f:Z

    return-void
.end method

.method public static r(Lx9j;)Z
    .locals 0

    invoke-interface {p0}, Lx9j;->l()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static t(Ltqj;)[Lerj;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lxqj;->zzd()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v1, [Lerj;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Lxqj;->zze(I)Lerj;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static final u(Lx9j;)V
    .locals 2

    invoke-interface {p0}, Lx9j;->l()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lx9j;->zzP()V

    :cond_0
    return-void
.end method

.method public static final v(Lx9j;J)V
    .locals 0

    invoke-interface {p0}, Lx9j;->zzK()V

    return-void
.end method


# virtual methods
.method public final A(Lj2j;)V
    .locals 5

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-virtual {p0, v0, p1}, Lcaj;->l(Lx9j;Lj2j;)V

    iget-object v0, p0, Lcaj;->c:Lx9j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcaj;->d:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcaj;->l(Lx9j;Lj2j;)V

    invoke-virtual {p0, v1}, Lcaj;->n(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcaj;->o(Z)V

    :cond_1
    iput v1, p0, Lcaj;->d:I

    return-void
.end method

.method public final B(Lj2j;)V
    .locals 6

    invoke-virtual {p0}, Lcaj;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcaj;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v4

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcaj;->a:Lx9j;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcaj;->c:Lx9j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0, v5, p1}, Lcaj;->l(Lx9j;Lj2j;)V

    invoke-virtual {p0, v4}, Lcaj;->n(Z)V

    if-ne v0, v2, :cond_4

    move v1, v3

    :cond_4
    iput v1, p0, Lcaj;->d:I

    return-void
.end method

.method public final C(Lbaj;Ltqj;Lyoj;JZZJJLbnj;Lj2j;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p13

    invoke-static/range {p2 .. p2}, Lcaj;->t(Ltqj;)[Lerj;

    move-result-object v4

    iget v2, v0, Lcaj;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcaj;->f:Z

    iget-object v0, v0, Lcaj;->c:Lx9j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lx9j;->k(Lbaj;[Lerj;Lyoj;JZZJJLbnj;)V

    invoke-virtual {v1, v0}, Lj2j;->c(Lx9j;)V

    return-void

    :cond_1
    :goto_0
    iput-boolean v3, v0, Lcaj;->e:Z

    iget-object v0, v0, Lcaj;->a:Lx9j;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lx9j;->k(Lbaj;[Lerj;Lyoj;JZZJJLbnj;)V

    invoke-virtual {v1, v0}, Lj2j;->c(Lx9j;)V

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lx9j;->zzt()V

    return-void

    :cond_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lx9j;->zzt()V

    :cond_1
    return-void
.end method

.method public final E(ILjava/lang/Object;Ld8j;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xb

    invoke-interface {p0, p1, p2}, Ls9j;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public final F(Lyoj;Lj2j;JZ)V
    .locals 9

    iget-object v1, p0, Lcaj;->a:Lx9j;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcaj;->m(Lx9j;Lyoj;Lj2j;JZ)V

    iget-object v3, p0, Lcaj;->c:Lx9j;

    if-eqz v3, :cond_0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcaj;->m(Lx9j;Lyoj;Lj2j;JZ)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 4

    iget v0, p0, Lcaj;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcaj;->d:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcaj;->o(Z)V

    iget v0, p0, Lcaj;->d:I

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iput v2, p0, Lcaj;->d:I

    return-void
.end method

.method public final H(Larj;Larj;J)V
    .locals 6

    iget v0, p0, Lcaj;->b:I

    invoke-virtual {p1, v0}, Larj;->b(I)Z

    move-result v1

    invoke-virtual {p2, v0}, Larj;->b(I)Z

    move-result v2

    iget-object v3, p0, Lcaj;->c:Lx9j;

    if-eqz v3, :cond_0

    iget v4, p0, Lcaj;->d:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcaj;->a:Lx9j;

    invoke-static {v4}, Lcaj;->r(Lx9j;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcaj;->a:Lx9j;

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v3}, Lx9j;->zzR()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcaj;->x()I

    iget-object p1, p1, Larj;->b:[Lbaj;

    aget-object p1, p1, v0

    iget-object p2, p2, Larj;->b:[Lbaj;

    aget-object p2, p2, v0

    if-eqz v2, :cond_2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcaj;->f()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {v3, p3, p4}, Lcaj;->v(Lx9j;J)V

    :cond_3
    return-void
.end method

.method public final I(Ld8j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lx9j;->zzw()V

    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-interface {v0}, Lx9j;->zzG()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcaj;->e:Z

    iget-object v1, p0, Lcaj;->c:Lx9j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lx9j;->zzG()V

    iput-boolean v0, p0, Lcaj;->f:Z

    :cond_0
    return-void
.end method

.method public final K(JJ)V
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lx9j;->m(JJ)V

    :cond_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lx9j;->m(JJ)V

    :cond_1
    return-void
.end method

.method public final L()V
    .locals 1

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcaj;->n(Z)V

    :cond_0
    iget-object v0, p0, Lcaj;->c:Lx9j;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcaj;->n(Z)V

    :cond_1
    return-void
.end method

.method public final M(Ld8j;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lx9j;->c(J)V

    :cond_0
    return-void
.end method

.method public final N(J)V
    .locals 3

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcaj;->d:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {v0, p1, p2}, Lcaj;->v(Lx9j;J)V

    :cond_0
    iget-object v0, p0, Lcaj;->c:Lx9j;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcaj;->d:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    invoke-static {v0, p1, p2}, Lcaj;->v(Lx9j;J)V

    :cond_1
    return-void
.end method

.method public final O(Ld8j;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Lcaj;->v(Lx9j;J)V

    return-void
.end method

.method public final P(FF)V
    .locals 1

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-interface {v0, p1, p2}, Lx9j;->d(FF)V

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lx9j;->d(FF)V

    :cond_0
    return-void
.end method

.method public final Q(Lw4f;)V
    .locals 1

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-interface {v0, p1}, Lx9j;->i(Lw4f;)V

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lx9j;->i(Lw4f;)V

    :cond_0
    return-void
.end method

.method public final R(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcaj;->x()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcaj;->d:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcaj;->a:Lx9j;

    invoke-interface {p0, v2, p1}, Ls9j;->e(ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v2, p1}, Ls9j;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public final S(F)V
    .locals 2

    invoke-virtual {p0}, Lcaj;->x()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Ls9j;->e(ILjava/lang/Object;)V

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1, p1}, Ls9j;->e(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final T()V
    .locals 4

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-interface {v0}, Lx9j;->l()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcaj;->d:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lx9j;->zzO()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcaj;->c:Lx9j;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lx9j;->l()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget p0, p0, Lcaj;->d:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    invoke-interface {v0}, Lx9j;->zzO()V

    :cond_2
    return-void
.end method

.method public final U()V
    .locals 2

    invoke-virtual {p0}, Lcaj;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcaj;->c:Lx9j;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcaj;->d:I

    return-void
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcaj;->u(Lx9j;)V

    :cond_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcaj;->u(Lx9j;)V

    :cond_1
    return-void
.end method

.method public final a(Ld8j;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lx9j;->zzQ()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lx9j;->zzX()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lx9j;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ld8j;)Z
    .locals 1

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-virtual {p0, p1, v0}, Lcaj;->p(Ld8j;Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p0, p1, v0}, Lcaj;->p(Ld8j;Lx9j;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ld8j;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lx9j;->zzQ()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lx9j;->f()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lx9j;->f()Z

    move-result p0

    and-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcaj;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcaj;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Ld8j;)Z
    .locals 4

    invoke-virtual {p0}, Lcaj;->q()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object v0

    iget-object v3, p0, Lcaj;->a:Lx9j;

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcaj;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p1

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-ne p1, p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final h(Ld8j;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcaj;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcaj;->a:Lx9j;

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final j(Lx9j;Ld8j;Larj;Lj2j;)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcaj;->r(Lx9j;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcaj;->a:Lx9j;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcaj;->q()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_1
    iget-object v5, v0, Lcaj;->c:Lx9j;

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcaj;->s()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_2
    invoke-interface {p1}, Lx9j;->zzp()Lyoj;

    move-result-object v5

    iget-object v8, v2, Ld8j;->c:[Lyoj;

    iget v9, v0, Lcaj;->b:I

    aget-object v10, v8, v9

    invoke-virtual {p3, v9}, Larj;->b(I)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eq v5, v10, :cond_3

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    :goto_1
    invoke-interface {p1}, Lx9j;->zzR()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v0, v3, Larj;->c:[Ltqj;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcaj;->t(Ltqj;)[Lerj;

    move-result-object v3

    aget-object v4, v8, v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ld8j;->f()J

    move-result-wide v5

    invoke-virtual {p2}, Ld8j;->e()J

    move-result-wide v7

    iget-object v0, v2, Ld8j;->g:Lf8j;

    iget-object v9, v0, Lf8j;->a:Lbnj;

    move-object v0, p1

    move-object v1, v3

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v7

    move-object v7, v9

    invoke-interface/range {v0 .. v7}, Lx9j;->b([Lerj;Lyoj;JJLbnj;)V

    const/4 v0, 0x3

    return v0

    :cond_5
    invoke-interface {p1}, Lx9j;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v2, p4

    invoke-virtual {p0, p1, v2}, Lcaj;->l(Lx9j;Lj2j;)V

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcaj;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    xor-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lcaj;->n(Z)V

    :cond_7
    return v4

    :cond_8
    return v6

    :cond_9
    return v4
.end method

.method public final k(Ld8j;)Lx9j;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v1, p0, Lcaj;->b:I

    iget-object p1, p1, Ld8j;->c:[Lyoj;

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcaj;->a:Lx9j;

    invoke-interface {v2}, Lx9j;->zzp()Lyoj;

    move-result-object v3

    aget-object p1, p1, v1

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lx9j;->zzp()Lyoj;

    move-result-object v1

    if-ne v1, p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final l(Lx9j;Lj2j;)V
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcaj;->c:Lx9j;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-static {p1}, Lcaj;->r(Lx9j;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Lj2j;->b(Lx9j;)V

    invoke-static {p1}, Lcaj;->u(Lx9j;)V

    invoke-interface {p1}, Lx9j;->zzr()V

    return-void
.end method

.method public final m(Lx9j;Lyoj;Lj2j;JZ)V
    .locals 1

    invoke-static {p1}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lx9j;->zzp()Lyoj;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcaj;->l(Lx9j;Lj2j;)V

    return-void

    :cond_0
    if-eqz p6, :cond_1

    invoke-interface {p1, p4, p5}, Lx9j;->c(J)V

    :cond_1
    return-void
.end method

.method public final n(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcaj;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcaj;->a:Lx9j;

    invoke-interface {p1}, Lx9j;->zzI()V

    iput-boolean v0, p0, Lcaj;->e:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcaj;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lx9j;->zzI()V

    iput-boolean v0, p0, Lcaj;->f:Z

    :cond_1
    return-void
.end method

.method public final o(Z)V
    .locals 1

    const/16 v0, 0x11

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcaj;->a:Lx9j;

    invoke-interface {p1, v0, p0}, Ls9j;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcaj;->a:Lx9j;

    iget-object p0, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, p0}, Ls9j;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public final p(Ld8j;Lx9j;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Ld8j;->c:[Lyoj;

    iget p0, p0, Lcaj;->b:I

    aget-object v1, v1, p0

    invoke-interface {p2}, Lx9j;->zzp()Lyoj;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lx9j;->zzp()Lyoj;

    move-result-object v2

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lx9j;->zzQ()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ld8j;->g()Ld8j;

    iget-object v1, p1, Ld8j;->g:Lf8j;

    iget-boolean v1, v1, Lf8j;->g:Z

    :cond_1
    invoke-virtual {p1}, Ld8j;->g()Ld8j;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Ld8j;->c:[Lyoj;

    aget-object p0, p1, p0

    invoke-interface {p2}, Lx9j;->zzp()Lyoj;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public final q()Z
    .locals 1

    iget p0, p0, Lcaj;->d:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final s()Z
    .locals 1

    iget p0, p0, Lcaj;->d:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()I
    .locals 2

    iget-object v0, p0, Lcaj;->c:Lx9j;

    iget-object p0, p0, Lcaj;->a:Lx9j;

    invoke-static {p0}, Lcaj;->r(Lx9j;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcaj;->r(Lx9j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr p0, v1

    return p0
.end method

.method public final x()I
    .locals 0

    iget-object p0, p0, Lcaj;->a:Lx9j;

    invoke-interface {p0}, Lx9j;->zzb()I

    move-result p0

    return p0
.end method

.method public final y(Ld8j;Larj;Lj2j;)I
    .locals 2

    iget-object v0, p0, Lcaj;->a:Lx9j;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcaj;->j(Lx9j;Ld8j;Larj;Lj2j;)I

    move-result v0

    iget-object v1, p0, Lcaj;->c:Lx9j;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcaj;->j(Lx9j;Ld8j;Larj;Lj2j;)I

    move-result p0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public final z(Ld8j;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcaj;->k(Ld8j;)Lx9j;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lx9j;

    invoke-interface {p0}, Lx9j;->o()J

    move-result-wide p0

    return-wide p0
.end method
