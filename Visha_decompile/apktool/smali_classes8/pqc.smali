.class public Lpqc;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lwqc;


# instance fields
.field public b:Lt43;

.field public c:[B

.field public d:Ll1;


# direct methods
.method public constructor <init>(Lt43;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpqc;->d:Ll1;

    iput-object p1, p0, Lpqc;->b:Lt43;

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lpqc;->c:[B

    invoke-virtual {p0}, Lpqc;->o()V

    return-void
.end method

.method public constructor <init>(Luqc;Ljava/math/BigInteger;Ljava/math/BigInteger;Ls1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 2
    invoke-direct/range {p0 .. p0}, Lj1;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lpqc;->d:Ll1;

    invoke-virtual/range {p1 .. p1}, Luqc;->m()Ll1;

    move-result-object v2

    iput-object v2, v0, Lpqc;->d:Ll1;

    sget-object v3, Lwqc;->d5:Ll1;

    invoke-virtual {v2, v3}, Lp1;->s(Lp1;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Luqc;->o()Lp1;

    move-result-object v2

    check-cast v2, Lg1;

    invoke-virtual {v2}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lt43$f;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, v0, Lpqc;->b:Lt43;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lpqc;->d:Ll1;

    sget-object v6, Lwqc;->e5:Ll1;

    invoke-virtual {v2, v6}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Luqc;->o()Lp1;

    move-result-object v2

    invoke-static {v2}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v2

    invoke-virtual {v2, v4}, Ls1;->A(I)Lx0;

    move-result-object v6

    check-cast v6, Lg1;

    invoke-virtual {v6}, Lg1;->F()I

    move-result v8

    invoke-virtual {v2, v5}, Ls1;->A(I)Lx0;

    move-result-object v6

    check-cast v6, Ll1;

    sget-object v7, Lwqc;->g5:Ll1;

    invoke-virtual {v6, v7}, Lp1;->s(Lp1;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v2

    invoke-virtual {v2}, Lg1;->F()I

    move-result v2

    move v9, v2

    move v10, v4

    move v11, v10

    goto :goto_1

    :cond_1
    sget-object v7, Lwqc;->h5:Ll1;

    invoke-virtual {v6, v7}, Lp1;->s(Lp1;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v2

    invoke-virtual {v2, v4}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v6

    invoke-virtual {v6}, Lg1;->F()I

    move-result v6

    invoke-virtual {v2, v5}, Ls1;->A(I)Lx0;

    move-result-object v7

    invoke-static {v7}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v7

    invoke-virtual {v7}, Lg1;->F()I

    move-result v7

    invoke-virtual {v2, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v2

    invoke-virtual {v2}, Lg1;->F()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_1
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lt43$e;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Ls1;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v3}, Ls1;->A(I)Lx0;

    move-result-object v1

    check-cast v1, Lnp1;

    invoke-virtual {v1}, Ls0;->x()[B

    move-result-object v1

    iput-object v1, v0, Lpqc;->c:[B

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of EC basis is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lpqc;->d:Ll1;

    sget-object v2, Lwqc;->d5:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ltqc;

    iget-object v2, p0, Lpqc;->b:Lt43;

    invoke-virtual {v2}, Lt43;->m()Lw43;

    move-result-object v2

    invoke-direct {v1, v2}, Ltqc;-><init>(Lw43;)V

    invoke-virtual {v1}, Ltqc;->j()Lp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Ltqc;

    iget-object v2, p0, Lpqc;->b:Lt43;

    invoke-virtual {v2}, Lt43;->n()Lw43;

    move-result-object v2

    invoke-direct {v1, v2}, Ltqc;-><init>(Lw43;)V

    :goto_0
    invoke-virtual {v1}, Ltqc;->j()Lp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lpqc;->d:Ll1;

    sget-object v2, Lwqc;->e5:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ltqc;

    iget-object v2, p0, Lpqc;->b:Lt43;

    invoke-virtual {v2}, Lt43;->m()Lw43;

    move-result-object v2

    invoke-direct {v1, v2}, Ltqc;-><init>(Lw43;)V

    invoke-virtual {v1}, Ltqc;->j()Lp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Ltqc;

    iget-object v2, p0, Lpqc;->b:Lt43;

    invoke-virtual {v2}, Lt43;->n()Lw43;

    move-result-object v2

    invoke-direct {v1, v2}, Ltqc;-><init>(Lw43;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lpqc;->c:[B

    if-eqz v1, :cond_2

    new-instance v1, Lnp1;

    iget-object p0, p0, Lpqc;->c:[B

    invoke-direct {v1, p0}, Lnp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_2
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Lt43;
    .locals 0

    iget-object p0, p0, Lpqc;->b:Lt43;

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lpqc;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lpqc;->b:Lt43;

    invoke-static {v0}, Lr43;->e(Lt43;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lwqc;->d5:Ll1;

    :goto_0
    iput-object v0, p0, Lpqc;->d:Ll1;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpqc;->b:Lt43;

    invoke-static {v0}, Lr43;->c(Lt43;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lwqc;->e5:Ll1;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type of ECCurve is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
