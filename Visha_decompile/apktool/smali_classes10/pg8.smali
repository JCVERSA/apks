.class public abstract Lpg8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ldj;Lt1;)Log8;
    .locals 10

    instance-of v0, p0, Lrk8;

    if-eqz v0, :cond_0

    check-cast p0, Lrk8;

    invoke-virtual {p0}, Lrk8;->c()I

    move-result v0

    invoke-static {v0}, Lslb;->x(I)Loa;

    move-result-object v0

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Lrk8;->b()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lyy8;

    if-eqz v0, :cond_1

    check-cast p0, Lyy8;

    new-instance p1, Loa;

    sget-object v0, Lav7;->r:Ll1;

    new-instance v1, Lny8;

    invoke-virtual {p0}, Loy8;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lslb;->F(Ljava/lang/String;)Loa;

    move-result-object v2

    invoke-direct {v1, v2}, Lny8;-><init>(Loa;)V

    invoke-direct {p1, v0, v1}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v0, Log8;

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Lyy8;->c()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-direct {v0, p1, v1}, Log8;-><init>(Loa;Lx0;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lzw6;

    if-eqz v0, :cond_3

    check-cast p0, Lzw6;

    new-instance p1, Loa;

    sget-object v0, Lav7;->v:Ll1;

    invoke-direct {p1, v0}, Loa;-><init>(Ll1;)V

    invoke-virtual {p0}, Lzw6;->b()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lcv7;->o(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Log8;

    new-instance v1, Lwp1;

    invoke-direct {v1, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, p1, v1}, Log8;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lji5;

    if-eqz v0, :cond_4

    check-cast p0, Lji5;

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object v0

    invoke-virtual {v0}, Lzc1;->b()[B

    move-result-object v0

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v1

    invoke-virtual {p0}, Lji5;->n()Lki5;

    move-result-object p0

    invoke-virtual {v1, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object p0

    invoke-virtual {p0}, Lzc1;->b()[B

    move-result-object p0

    new-instance v1, Loa;

    sget-object v2, Lyu7;->H3:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Log8;

    new-instance v3, Lwp1;

    invoke-direct {v3, v0}, Lwp1;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lcm4;

    if-eqz v0, :cond_5

    check-cast p0, Lcm4;

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v0

    invoke-virtual {p0}, Lcm4;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object v0

    invoke-virtual {v0}, Lzc1;->b()[B

    move-result-object v0

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v1

    invoke-virtual {p0}, Lcm4;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lzc1;->i(I)Lzc1;

    move-result-object v1

    invoke-virtual {p0}, Lcm4;->h()Ldm4;

    move-result-object p0

    invoke-virtual {p0}, Ldm4;->d()Lki5;

    move-result-object p0

    invoke-virtual {v1, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object p0

    invoke-virtual {p0}, Lzc1;->b()[B

    move-result-object p0

    new-instance v1, Loa;

    sget-object v2, Lyu7;->H3:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Log8;

    new-instance v3, Lwp1;

    invoke-direct {v3, v0}, Lwp1;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v2

    :cond_5
    instance-of v0, p0, Lwy8;

    if-eqz v0, :cond_6

    check-cast p0, Lwy8;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lty8;->b()Lvy8;

    move-result-object v1

    invoke-static {v1}, Lslb;->H(Lvy8;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Lwy8;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    invoke-virtual {p0}, Lwy8;->c()[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v1

    :cond_6
    instance-of v0, p0, Lg18;

    if-eqz v0, :cond_7

    check-cast p0, Lg18;

    invoke-virtual {p0}, Lg18;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Ld18;->b()Lf18;

    move-result-object p0

    invoke-static {p0}, Lslb;->v(Lf18;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_7
    instance-of v0, p0, Lbp0;

    if-eqz v0, :cond_8

    check-cast p0, Lbp0;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lxo0;->b()Lzo0;

    move-result-object v1

    invoke-static {v1}, Lslb;->p(Lzo0;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v9, Lcp0;

    invoke-virtual {p0}, Lbp0;->h()[B

    move-result-object v1

    invoke-direct {v9, v1}, Lcp0;-><init>([B)V

    new-instance v1, Lap0;

    invoke-virtual {p0}, Lbp0;->e()[B

    move-result-object v4

    invoke-virtual {p0}, Lbp0;->d()[B

    move-result-object v5

    invoke-virtual {p0}, Lbp0;->f()[B

    move-result-object v6

    invoke-virtual {p0}, Lbp0;->c()[B

    move-result-object v7

    invoke-virtual {p0}, Lbp0;->g()[B

    move-result-object v8

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lap0;-><init>(I[B[B[B[B[BLcp0;)V

    new-instance p0, Log8;

    invoke-direct {p0, v0, v1, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g;

    if-eqz v0, :cond_9

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/g;

    new-instance v0, Loa;

    sget-object v1, Lav7;->w:Ll1;

    new-instance v2, Lzqc;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()Ljrc;

    move-result-object v3

    invoke-virtual {v3}, Ljrc;->b()I

    move-result v3

    invoke-virtual {p0}, Lyqc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lslb;->J(Ljava/lang/String;)Loa;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lzqc;-><init>(ILoa;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Log8;

    invoke-static {p0}, Lpg8;->b(Lorg/bouncycastle/pqc/crypto/xmss/g;)Lkrc;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_9
    instance-of v0, p0, Lfrc;

    if-eqz v0, :cond_a

    check-cast p0, Lfrc;

    new-instance v0, Loa;

    sget-object v1, Lav7;->F:Ll1;

    new-instance v2, Lcrc;

    invoke-virtual {p0}, Lfrc;->e()Ldrc;

    move-result-object v3

    invoke-virtual {v3}, Ldrc;->a()I

    move-result v3

    invoke-virtual {p0}, Lfrc;->e()Ldrc;

    move-result-object v4

    invoke-virtual {v4}, Ldrc;->b()I

    move-result v4

    invoke-virtual {p0}, Lbrc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lslb;->J(Ljava/lang/String;)Loa;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcrc;-><init>(IILoa;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Log8;

    invoke-static {p0}, Lpg8;->c(Lfrc;)Lerc;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_a
    instance-of v0, p0, Lp96;

    if-eqz v0, :cond_b

    check-cast p0, Lp96;

    new-instance p1, Lo96;

    invoke-virtual {p0}, Lp96;->g()I

    move-result v1

    invoke-virtual {p0}, Lp96;->f()I

    move-result v2

    invoke-virtual {p0}, Lp96;->c()Lx94;

    move-result-object v3

    invoke-virtual {p0}, Lp96;->d()Ltc8;

    move-result-object v4

    invoke-virtual {p0}, Lp96;->h()Lu08;

    move-result-object v5

    invoke-virtual {p0}, Ln96;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lslb;->i(Ljava/lang/String;)Loa;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lo96;-><init>(IILx94;Ltc8;Lu08;Loa;)V

    new-instance p0, Loa;

    sget-object v0, Lav7;->n:Ll1;

    invoke-direct {p0, v0}, Loa;-><init>(Ll1;)V

    new-instance v0, Log8;

    invoke-direct {v0, p0, p1}, Log8;-><init>(Loa;Lx0;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lx64;

    if-eqz v0, :cond_c

    check-cast p0, Lx64;

    invoke-virtual {p0}, Lx64;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lt64;->b()Lw64;

    move-result-object p0

    invoke-static {p0}, Lslb;->g(Lw64;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_c
    instance-of v0, p0, Llx8;

    if-eqz v0, :cond_d

    check-cast p0, Llx8;

    invoke-virtual {p0}, Llx8;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lix8;->b()Lkx8;

    move-result-object p0

    invoke-static {p0}, Lslb;->B(Lkx8;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_d
    instance-of v0, p0, Lwx6;

    if-eqz v0, :cond_e

    check-cast p0, Lwx6;

    invoke-virtual {p0}, Lwx6;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lnx6;->b()Lvx6;

    move-result-object p0

    invoke-static {p0}, Lslb;->r(Lvx6;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_e
    instance-of v0, p0, Lwo3;

    if-eqz v0, :cond_f

    check-cast p0, Lwo3;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lso3;->b()Luo3;

    move-result-object v1

    invoke-static {v1}, Lslb;->e(Luo3;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v7, Lxo3;

    invoke-virtual {p0}, Lwo3;->d()[B

    move-result-object v1

    invoke-direct {v7, v1}, Lxo3;-><init>([B)V

    new-instance v1, Lvo3;

    invoke-virtual {p0}, Lwo3;->f()[B

    move-result-object v4

    invoke-virtual {p0}, Lwo3;->c()[B

    move-result-object v5

    invoke-virtual {p0}, Lwo3;->e()[B

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lvo3;-><init>(I[B[B[BLxo3;)V

    new-instance p0, Log8;

    invoke-direct {p0, v0, v1, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Lsh5;

    if-eqz v0, :cond_10

    check-cast p0, Lsh5;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lph5;->b()Lrh5;

    move-result-object v1

    invoke-static {v1}, Lslb;->n(Lrh5;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Lsh5;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_10
    instance-of v0, p0, Lrx6;

    if-eqz v0, :cond_11

    check-cast p0, Lrx6;

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Lrx6;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Lrx6;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Lrx6;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Lrx6;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Loa;

    invoke-virtual {p0}, Lox6;->b()Lqx6;

    move-result-object p0

    invoke-static {p0}, Lslb;->t(Lqx6;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Laq1;

    invoke-direct {v2, v0}, Laq1;-><init>(Ly0;)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_11
    instance-of v0, p0, Liy8;

    if-eqz v0, :cond_12

    check-cast p0, Liy8;

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Liy8;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Liy8;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Liy8;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Liy8;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    invoke-virtual {p0}, Liy8;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Loa;

    invoke-virtual {p0}, Lfy8;->b()Lhy8;

    move-result-object p0

    invoke-static {p0}, Lslb;->D(Lhy8;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Log8;

    new-instance v2, Laq1;

    invoke-direct {v2, v0}, Laq1;-><init>(Ly0;)V

    invoke-direct {p0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object p0

    :cond_12
    instance-of v0, p0, Lbc2;

    if-eqz v0, :cond_13

    check-cast p0, Lbc2;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lyb2;->b()Lac2;

    move-result-object v1

    invoke-static {v1}, Lslb;->c(Lac2;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    invoke-virtual {p0}, Lbc2;->c()Lcc2;

    move-result-object v1

    new-instance v2, Log8;

    new-instance v3, Lwp1;

    invoke-virtual {p0}, Lbc2;->getEncoded()[B

    move-result-object p0

    invoke-direct {v3, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v1}, Lcc2;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, v0, v3, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v2

    :cond_13
    instance-of v0, p0, Lw40;

    if-eqz v0, :cond_14

    check-cast p0, Lw40;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lt40;->b()Lv40;

    move-result-object v1

    invoke-static {v1}, Lslb;->a(Lv40;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    invoke-virtual {p0}, Lw40;->getEncoded()[B

    move-result-object p0

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_14
    instance-of v0, p0, Lll4;

    if-eqz v0, :cond_15

    check-cast p0, Lll4;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lil4;->b()Lkl4;

    move-result-object v1

    invoke-static {v1}, Lslb;->l(Lkl4;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    invoke-virtual {p0}, Lll4;->getEncoded()[B

    move-result-object p0

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_15
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;

    if-eqz v0, :cond_16

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/c;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lmn8;->b()Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object v1

    invoke-static {v1}, Lslb;->z(Lorg/bouncycastle/pqc/crypto/rainbow/b;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/c;->getEncoded()[B

    move-result-object p0

    new-instance v1, Log8;

    new-instance v2, Lwp1;

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v1

    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lorg/bouncycastle/pqc/crypto/xmss/g;)Lkrc;
    .locals 14

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()Ljrc;

    move-result-object v1

    invoke-virtual {v1}, Ljrc;->h()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()Ljrc;

    move-result-object p0

    invoke-virtual {p0}, Ljrc;->b()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lnrc;->a([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lnrc;->l(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v3, v1}, Lnrc;->g([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lnrc;->g([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lnrc;->g([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lnrc;->g([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Lnrc;->g([BII)[B

    move-result-object v12

    :try_start_0
    const-class v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v12, v0}, Lnrc;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    sub-int/2addr p0, v2

    if-eq v1, p0, :cond_0

    new-instance p0, Lkrc;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v13

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lkrc;-><init>(I[B[B[B[B[BI)V

    return-object p0

    :cond_0
    new-instance p0, Lkrc;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lkrc;-><init>(I[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lfrc;)Lerc;
    .locals 14

    invoke-virtual {p0}, Lfrc;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lfrc;->e()Ldrc;

    move-result-object v1

    invoke-virtual {v1}, Ldrc;->f()I

    move-result v1

    invoke-virtual {p0}, Lfrc;->e()Ldrc;

    move-result-object p0

    invoke-virtual {p0}, Ldrc;->a()I

    move-result p0

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lnrc;->a([BII)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v5, v3

    invoke-static {p0, v5, v6}, Lnrc;->l(IJ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2, v1}, Lnrc;->g([BII)[B

    move-result-object v7

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lnrc;->g([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lnrc;->g([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Lnrc;->g([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lnrc;->g([BII)[B

    move-result-object v11

    :try_start_0
    const-class v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v11, v0}, Lnrc;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    shl-long v12, v3, p0

    sub-long/2addr v12, v3

    cmp-long p0, v1, v12

    if-eqz p0, :cond_0

    new-instance p0, Lerc;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v12

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lerc;-><init>(J[B[B[B[B[BJ)V

    return-object p0

    :cond_0
    new-instance p0, Lerc;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lerc;-><init>(J[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDSStateMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
