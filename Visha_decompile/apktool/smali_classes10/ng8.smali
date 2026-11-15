.class public abstract Lng8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lcv7;->h([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Log8;)Ldj;
    .locals 18

    if-eqz p0, :cond_25

    invoke-virtual/range {p0 .. p0}, Log8;->p()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->m()Ll1;

    move-result-object v1

    sget-object v2, Lav7;->W:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v1

    invoke-static {v1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v1

    new-instance v2, Lrk8;

    invoke-static {v0}, Lslb;->y(Loa;)I

    move-result v0

    invoke-virtual {v1}, Lm1;->z()[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lrk8;-><init>(I[B)V

    return-object v2

    :cond_0
    sget-object v2, Lav7;->r:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lyy8;

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v2

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lny8;->m(Ljava/lang/Object;)Lny8;

    move-result-object v0

    invoke-static {v0}, Lslb;->G(Lny8;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lyy8;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v2, Lav7;->v:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lzw6;

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v1

    invoke-static {v1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v1

    invoke-virtual {v1}, Lm1;->z()[B

    move-result-object v1

    invoke-static {v1}, Lng8;->a([B)[S

    move-result-object v1

    invoke-direct {v0, v1}, Lzw6;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v2, Lyu7;->H3:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Log8;->r()Ls0;

    move-result-object v1

    invoke-static {v0, v4}, Lcv7;->a([BI)I

    move-result v2

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ls0;->A()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lci;->q([BII)[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lci;->q([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lji5;->j([B[B)Lji5;

    move-result-object v0

    return-object v0

    :cond_3
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lci;->q([BII)[B

    move-result-object v0

    invoke-static {v0}, Lji5;->i(Ljava/lang/Object;)Lji5;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ls0;->A()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lci;->q([BII)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcm4;->e([B[B)Lcm4;

    move-result-object v0

    return-object v0

    :cond_5
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lci;->q([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcm4;->d(Ljava/lang/Object;)Lcm4;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v2, Lb40;->a0:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lb40;->L0:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object v2, Lb40;->Y0:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->w(Ll1;)Lf18;

    move-result-object v1

    new-instance v2, Lg18;

    invoke-direct {v2, v1, v0}, Lg18;-><init>(Lf18;[B)V

    return-object v2

    :cond_8
    sget-object v2, Lb40;->N1:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lap0;->q(Ljava/lang/Object;)Lap0;

    move-result-object v0

    invoke-static {v1}, Lslb;->q(Ll1;)Lzo0;

    move-result-object v3

    new-instance v1, Lbp0;

    invoke-virtual {v0}, Lap0;->o()[B

    move-result-object v4

    invoke-virtual {v0}, Lap0;->n()[B

    move-result-object v5

    invoke-virtual {v0}, Lap0;->p()[B

    move-result-object v6

    invoke-virtual {v0}, Lap0;->m()[B

    move-result-object v7

    invoke-virtual {v0}, Lap0;->r()[B

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lbp0;-><init>(Lzo0;[B[B[B[B[B)V

    return-object v1

    :cond_9
    sget-object v2, Lb40;->Y1:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->h(Ll1;)Lw64;

    move-result-object v1

    new-instance v2, Lx64;

    invoke-direct {v2, v1, v0}, Lx64;-><init>(Lw64;[B)V

    return-object v2

    :cond_a
    sget-object v2, Lb40;->f2:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->C(Ll1;)Lkx8;

    move-result-object v1

    new-instance v2, Llx8;

    invoke-direct {v2, v1, v0}, Llx8;-><init>(Lkx8;[B)V

    return-object v2

    :cond_b
    sget-object v2, Lb40;->H2:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->s(Ll1;)Lvx6;

    move-result-object v1

    new-instance v2, Lwx6;

    invoke-direct {v2, v1, v0}, Lwx6;-><init>(Lvx6;[B)V

    return-object v2

    :cond_c
    sget-object v2, Lb40;->O2:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-static {v1}, Lslb;->o(Ll1;)Lrh5;

    move-result-object v1

    new-instance v2, Lsh5;

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lsh5;-><init>(Lrh5;[B)V

    return-object v2

    :cond_d
    sget-object v2, Lb40;->W2:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-static {v1}, Lslb;->u(Ll1;)Lqx6;

    move-result-object v9

    new-instance v1, Lrx6;

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v10

    invoke-virtual {v0, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v13

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lrx6;-><init>(Lqx6;[B[B[B[B)V

    return-object v1

    :cond_e
    sget-object v2, Lb40;->d3:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-static {v1}, Lslb;->E(Ll1;)Lhy8;

    move-result-object v9

    new-instance v1, Liy8;

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v10

    invoke-virtual {v0, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v2

    invoke-virtual {v2}, Lm1;->z()[B

    move-result-object v13

    invoke-virtual {v0, v5}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v14

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Liy8;-><init>(Lhy8;[B[B[B[B[B)V

    return-object v1

    :cond_f
    sget-object v2, Lb40;->u1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lb40;->v1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lb40;->w1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_5

    :cond_10
    sget-object v2, Lb40;->r1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lb40;->s1:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_4

    :cond_11
    sget-object v2, Lb40;->k3:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->b(Ll1;)Lv40;

    move-result-object v1

    invoke-virtual {v1}, Lv40;->b()I

    move-result v2

    invoke-static {v0, v4, v2}, Lci;->q([BII)[B

    move-result-object v2

    invoke-virtual {v1}, Lv40;->b()I

    move-result v3

    invoke-virtual {v1}, Lv40;->b()I

    move-result v4

    mul-int/2addr v4, v7

    invoke-static {v0, v3, v4}, Lci;->q([BII)[B

    move-result-object v3

    invoke-virtual {v1}, Lv40;->b()I

    move-result v4

    mul-int/2addr v4, v7

    array-length v5, v0

    invoke-static {v0, v4, v5}, Lci;->q([BII)[B

    move-result-object v0

    new-instance v4, Lw40;

    invoke-direct {v4, v1, v2, v3, v0}, Lw40;-><init>(Lv40;[B[B[B)V

    return-object v4

    :cond_12
    sget-object v2, Lb40;->o3:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->m(Ll1;)Lkl4;

    move-result-object v1

    new-instance v2, Lll4;

    invoke-direct {v2, v1, v0}, Lll4;-><init>(Lkl4;[B)V

    return-object v2

    :cond_13
    sget-object v2, Lb40;->A1:Ll1;

    invoke-virtual {v1, v2}, Ll1;->G(Ll1;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v1}, Lslb;->A(Ll1;)Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/c;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/c;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B)V

    return-object v2

    :cond_14
    sget-object v2, Lav7;->w:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    const-string v3, "ClassNotFoundException processing BDS state: "

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lzqc;->n(Ljava/lang/Object;)Lzqc;

    move-result-object v0

    invoke-virtual {v0}, Lzqc;->o()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->m()Ll1;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v2

    invoke-static {v2}, Lkrc;->o(Ljava/lang/Object;)Lkrc;

    move-result-object v2

    :try_start_0
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    new-instance v5, Ljrc;

    invoke-virtual {v0}, Lzqc;->m()I

    move-result v0

    invoke-static {v1}, Lslb;->j(Ll1;)Lsb2;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljrc;-><init>(ILsb2;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>(Ljrc;)V

    invoke-virtual {v2}, Lkrc;->n()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v2}, Lkrc;->t()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->q([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v2}, Lkrc;->s()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v2}, Lkrc;->q()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v2}, Lkrc;->r()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o([B)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    invoke-virtual {v2}, Lkrc;->u()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2}, Lkrc;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->m(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_15
    :goto_0
    invoke-virtual {v2}, Lkrc;->m()[B

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lkrc;->m()[B

    move-result-object v2

    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v2, v4}, Lnrc;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withWOTSDigest(Ll1;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->k(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    :cond_16
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->j()Lorg/bouncycastle/pqc/crypto/xmss/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    sget-object v2, Lav7;->F:Ll1;

    invoke-virtual {v1, v2}, Lp1;->s(Lp1;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Loa;->p()Lx0;

    move-result-object v0

    invoke-static {v0}, Lcrc;->n(Ljava/lang/Object;)Lcrc;

    move-result-object v0

    invoke-virtual {v0}, Lcrc;->p()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->m()Ll1;

    move-result-object v1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v2

    invoke-static {v2}, Lerc;->o(Ljava/lang/Object;)Lerc;

    move-result-object v2

    new-instance v4, Lfrc$b;

    new-instance v5, Ldrc;

    invoke-virtual {v0}, Lcrc;->m()I

    move-result v6

    invoke-virtual {v0}, Lcrc;->o()I

    move-result v0

    invoke-static {v1}, Lslb;->j(Ll1;)Lsb2;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Ldrc;-><init>(IILsb2;)V

    invoke-direct {v4, v5}, Lfrc$b;-><init>(Ldrc;)V

    invoke-virtual {v2}, Lerc;->n()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lfrc$b;->m(J)Lfrc$b;

    move-result-object v0

    invoke-virtual {v2}, Lerc;->t()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lfrc$b;->r([B)Lfrc$b;

    move-result-object v0

    invoke-virtual {v2}, Lerc;->s()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lfrc$b;->q([B)Lfrc$b;

    move-result-object v0

    invoke-virtual {v2}, Lerc;->q()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lfrc$b;->o([B)Lfrc$b;

    move-result-object v0

    invoke-virtual {v2}, Lerc;->r()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lfrc$b;->p([B)Lfrc$b;

    move-result-object v0

    invoke-virtual {v2}, Lerc;->u()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2}, Lerc;->p()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lfrc$b;->n(J)Lfrc$b;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_18
    :goto_2
    invoke-virtual {v2}, Lerc;->m()[B

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v2}, Lerc;->m()[B

    move-result-object v2

    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v2, v4}, Lnrc;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Ll1;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrc$b;->l(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lfrc$b;

    :cond_19
    invoke-virtual {v0}, Lfrc$b;->k()Lfrc;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :goto_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    sget-object v0, Lav7;->n:Ll1;

    invoke-virtual {v1, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lo96;->p(Ljava/lang/Object;)Lo96;

    move-result-object v0

    new-instance v8, Lp96;

    invoke-virtual {v0}, Lo96;->r()I

    move-result v2

    invoke-virtual {v0}, Lo96;->q()I

    move-result v3

    invoke-virtual {v0}, Lo96;->n()Lx94;

    move-result-object v4

    invoke-virtual {v0}, Lo96;->o()Ltc8;

    move-result-object v5

    invoke-virtual {v0}, Lo96;->s()Lu08;

    move-result-object v6

    invoke-virtual {v0}, Lo96;->m()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->m()Ll1;

    move-result-object v0

    invoke-static {v0}, Lslb;->k(Ll1;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lp96;-><init>(IILx94;Ltc8;Lu08;Ljava/lang/String;)V

    return-object v8

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in private key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Lvo3;->o(Ljava/lang/Object;)Lvo3;

    move-result-object v0

    invoke-static {v1}, Lslb;->f(Ll1;)Luo3;

    move-result-object v3

    new-instance v1, Lwo3;

    invoke-virtual {v0}, Lvo3;->q()[B

    move-result-object v4

    invoke-virtual {v0}, Lvo3;->n()[B

    move-result-object v5

    invoke-virtual {v0}, Lvo3;->m()[B

    move-result-object v6

    invoke-virtual {v0}, Lvo3;->p()Lxo3;

    move-result-object v0

    invoke-virtual {v0}, Lxo3;->m()[B

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lwo3;-><init>(Luo3;[B[B[B[B)V

    return-object v1

    :cond_1d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v1}, Lslb;->d(Ll1;)Lac2;

    move-result-object v9

    instance-of v1, v0, Ls1;

    if-eqz v1, :cond_20

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    invoke-virtual {v1}, Lg1;->F()I

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Log8;->r()Ls0;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Log8;->r()Ls0;

    move-result-object v1

    invoke-static {v9, v1}, Lik8$d;->b(Lac2;Ls0;)Lcc2;

    move-result-object v1

    new-instance v17, Lbc2;

    invoke-virtual {v0, v3}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v10

    invoke-virtual {v0, v7}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v11

    invoke-virtual {v0, v6}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v12

    invoke-virtual {v0, v5}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v13

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v14

    invoke-virtual {v0, v2}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v0

    invoke-virtual {v0}, Ls0;->A()[B

    move-result-object v15

    invoke-virtual {v1}, Lcc2;->d()[B

    move-result-object v16

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lbc2;-><init>(Lac2;[B[B[B[B[B[B[B)V

    return-object v17

    :cond_1e
    new-instance v1, Lbc2;

    invoke-virtual {v0, v3}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v10

    invoke-virtual {v0, v7}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v11

    invoke-virtual {v0, v6}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v12

    invoke-virtual {v0, v5}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v13

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    invoke-virtual {v3}, Ls0;->A()[B

    move-result-object v14

    invoke-virtual {v0, v2}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v0

    invoke-virtual {v0}, Ls0;->A()[B

    move-result-object v15

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lbc2;-><init>(Lac2;[B[B[B[B[B[B[B)V

    return-object v1

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown private key version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    instance-of v1, v0, Lwp1;

    if-eqz v1, :cond_22

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Log8;->r()Ls0;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Log8;->r()Ls0;

    move-result-object v1

    invoke-static {v9, v1}, Lik8$d;->b(Lac2;Ls0;)Lcc2;

    move-result-object v1

    new-instance v2, Lbc2;

    invoke-direct {v2, v9, v0, v1}, Lbc2;-><init>(Lac2;[BLcc2;)V

    return-object v2

    :cond_21
    new-instance v1, Lbc2;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v0, v2}, Lbc2;-><init>(Lac2;[BLcc2;)V

    return-object v1

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_6
    invoke-static {v1}, Lslb;->I(Ll1;)Lvy8;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Log8;->u()Lx0;

    move-result-object v0

    instance-of v1, v0, Ls1;

    if-eqz v1, :cond_24

    invoke-static {v0}, Lpy8;->m(Ljava/lang/Object;)Lpy8;

    move-result-object v0

    invoke-virtual {v0}, Lpy8;->n()Lqy8;

    move-result-object v1

    new-instance v8, Lwy8;

    invoke-virtual {v0}, Lpy8;->p()[B

    move-result-object v4

    invoke-virtual {v0}, Lpy8;->o()[B

    move-result-object v5

    invoke-virtual {v1}, Lqy8;->o()[B

    move-result-object v6

    invoke-virtual {v1}, Lqy8;->n()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lwy8;-><init>(Lvy8;[B[B[B[B)V

    return-object v8

    :cond_24
    new-instance v1, Lwy8;

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lwy8;-><init>(Lvy8;[B)V

    return-object v1

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
