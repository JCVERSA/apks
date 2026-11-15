.class public abstract Lt1a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ldj;)Ls1a;
    .locals 6

    instance-of v0, p0, Lsk8;

    if-eqz v0, :cond_0

    check-cast p0, Lsk8;

    invoke-virtual {p0}, Lsk8;->c()I

    move-result v0

    invoke-static {v0}, Lslb;->x(I)Loa;

    move-result-object v0

    new-instance v1, Ls1a;

    invoke-virtual {p0}, Lsk8;->b()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ls1a;-><init>(Loa;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lzy8;

    if-eqz v0, :cond_1

    check-cast p0, Lzy8;

    new-instance v0, Loa;

    sget-object v1, Lav7;->r:Ll1;

    new-instance v2, Lny8;

    invoke-virtual {p0}, Loy8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lslb;->F(Ljava/lang/String;)Loa;

    move-result-object v3

    invoke-direct {v2, v3}, Lny8;-><init>(Loa;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Ls1a;

    invoke-virtual {p0}, Lzy8;->c()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ls1a;-><init>(Loa;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lax6;

    if-eqz v0, :cond_2

    check-cast p0, Lax6;

    new-instance v0, Loa;

    sget-object v1, Lav7;->v:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    invoke-virtual {p0}, Lax6;->b()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ls1a;-><init>(Loa;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lki5;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Lki5;

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object p0

    invoke-virtual {p0}, Lzc1;->b()[B

    move-result-object p0

    new-instance v0, Loa;

    sget-object v1, Lyu7;->H3:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Ldm4;

    if-eqz v0, :cond_4

    check-cast p0, Ldm4;

    invoke-static {}, Lzc1;->f()Lzc1;

    move-result-object v0

    invoke-virtual {p0}, Ldm4;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lzc1;->i(I)Lzc1;

    move-result-object v0

    invoke-virtual {p0}, Ldm4;->d()Lki5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzc1;->c(Ly93;)Lzc1;

    move-result-object p0

    invoke-virtual {p0}, Lzc1;->b()[B

    move-result-object p0

    new-instance v0, Loa;

    sget-object v1, Lyu7;->H3:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    invoke-direct {v1, v0, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lxy8;

    if-eqz v0, :cond_5

    check-cast p0, Lxy8;

    invoke-virtual {p0}, Lxy8;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lty8;->b()Lvy8;

    move-result-object p0

    invoke-static {p0}, Lslb;->H(Lvy8;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    invoke-direct {p0, v1, v0}, Ls1a;-><init>(Loa;[B)V

    return-object p0

    :cond_5
    instance-of v0, p0, Ldp0;

    if-eqz v0, :cond_6

    check-cast p0, Ldp0;

    invoke-virtual {p0}, Ldp0;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lxo0;->b()Lzo0;

    move-result-object p0

    invoke-static {p0}, Lslb;->p(Lzo0;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    invoke-direct {p0, v1, v0}, Ls1a;-><init>(Loa;[B)V

    return-object p0

    :cond_6
    instance-of v0, p0, Lmrc;

    if-eqz v0, :cond_8

    check-cast p0, Lmrc;

    invoke-virtual {p0}, Lmrc;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lmrc;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lmrc;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_7

    new-instance p0, Loa;

    sget-object v0, Ll55;->a:Ll1;

    invoke-direct {p0, v0}, Loa;-><init>(Ll1;)V

    new-instance v0, Ls1a;

    new-instance v1, Lwp1;

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v0

    :cond_7
    new-instance v2, Loa;

    sget-object v3, Lav7;->w:Ll1;

    new-instance v4, Lzqc;

    invoke-virtual {p0}, Lmrc;->c()Ljrc;

    move-result-object v5

    invoke-virtual {v5}, Ljrc;->b()I

    move-result v5

    invoke-virtual {p0}, Lyqc;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lslb;->J(Ljava/lang/String;)Loa;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lzqc;-><init>(ILoa;)V

    invoke-direct {v2, v3, v4}, Loa;-><init>(Ll1;Lx0;)V

    new-instance p0, Ls1a;

    new-instance v3, Llrc;

    invoke-direct {v3, v0, v1}, Llrc;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_8
    instance-of v0, p0, Lhrc;

    if-eqz v0, :cond_a

    check-cast p0, Lhrc;

    invoke-virtual {p0}, Lhrc;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lhrc;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lhrc;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    if-le v3, v0, :cond_9

    new-instance p0, Loa;

    sget-object v0, Ll55;->b:Ll1;

    invoke-direct {p0, v0}, Loa;-><init>(Ll1;)V

    new-instance v0, Ls1a;

    new-instance v1, Lwp1;

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v0

    :cond_9
    new-instance v0, Loa;

    sget-object v1, Lav7;->F:Ll1;

    new-instance v2, Lcrc;

    invoke-virtual {p0}, Lhrc;->c()Ldrc;

    move-result-object v3

    invoke-virtual {v3}, Ldrc;->a()I

    move-result v3

    invoke-virtual {p0}, Lhrc;->c()Ldrc;

    move-result-object v4

    invoke-virtual {v4}, Ldrc;->b()I

    move-result v4

    invoke-virtual {p0}, Lbrc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lslb;->J(Ljava/lang/String;)Loa;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcrc;-><init>(IILoa;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v1, Ls1a;

    new-instance v2, Lgrc;

    invoke-virtual {p0}, Lhrc;->d()[B

    move-result-object v3

    invoke-virtual {p0}, Lhrc;->e()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lgrc;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v1

    :cond_a
    instance-of v0, p0, Lr96;

    if-eqz v0, :cond_b

    check-cast p0, Lr96;

    new-instance v0, Lq96;

    invoke-virtual {p0}, Lr96;->e()I

    move-result v1

    invoke-virtual {p0}, Lr96;->f()I

    move-result v2

    invoke-virtual {p0}, Lr96;->c()Lu94;

    move-result-object v3

    invoke-virtual {p0}, Ln96;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lslb;->i(Ljava/lang/String;)Loa;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lq96;-><init>(IILu94;Loa;)V

    new-instance p0, Loa;

    sget-object v1, Lav7;->n:Ll1;

    invoke-direct {p0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    invoke-direct {v1, p0, v0}, Ls1a;-><init>(Loa;Lx0;)V

    return-object v1

    :cond_b
    instance-of v0, p0, Ly64;

    if-eqz v0, :cond_c

    check-cast p0, Ly64;

    invoke-virtual {p0}, Ly64;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lt64;->b()Lw64;

    move-result-object p0

    invoke-static {p0}, Lslb;->g(Lw64;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_c
    instance-of v0, p0, Lmx8;

    if-eqz v0, :cond_d

    check-cast p0, Lmx8;

    invoke-virtual {p0}, Lmx8;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lix8;->b()Lkx8;

    move-result-object p0

    invoke-static {p0}, Lslb;->B(Lkx8;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Laq1;

    new-instance v3, Lwp1;

    invoke-direct {v3, v0}, Lwp1;-><init>([B)V

    invoke-direct {v2, v3}, Laq1;-><init>(Lx0;)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_d
    instance-of v0, p0, Lh18;

    if-eqz v0, :cond_e

    check-cast p0, Lh18;

    invoke-virtual {p0}, Lh18;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Ld18;->b()Lf18;

    move-result-object p0

    invoke-static {p0}, Lslb;->v(Lf18;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_e
    instance-of v0, p0, Lxx6;

    if-eqz v0, :cond_f

    check-cast p0, Lxx6;

    invoke-virtual {p0}, Lxx6;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lnx6;->b()Lvx6;

    move-result-object p0

    invoke-static {p0}, Lslb;->r(Lvx6;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_f
    instance-of v0, p0, Lyo3;

    if-eqz v0, :cond_10

    check-cast p0, Lyo3;

    invoke-virtual {p0}, Lyo3;->c()[B

    move-result-object v0

    new-instance v2, Loa;

    invoke-virtual {p0}, Lso3;->b()Luo3;

    move-result-object v3

    invoke-static {v3}, Lslb;->e(Luo3;)Ll1;

    move-result-object v3

    invoke-direct {v2, v3}, Loa;-><init>(Ll1;)V

    array-length v3, v0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    invoke-virtual {p0}, Lso3;->b()Luo3;

    move-result-object p0

    invoke-virtual {p0}, Luo3;->a()I

    move-result p0

    int-to-byte p0, p0

    const/4 v4, 0x0

    aput-byte p0, v3, v4

    array-length p0, v0

    invoke-static {v0, v4, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ls1a;

    invoke-direct {p0, v2, v3}, Ls1a;-><init>(Loa;[B)V

    return-object p0

    :cond_10
    instance-of v0, p0, Luh5;

    if-eqz v0, :cond_11

    check-cast p0, Luh5;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lph5;->b()Lrh5;

    move-result-object v1

    invoke-static {v1}, Lslb;->n(Lrh5;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    invoke-virtual {p0}, Luh5;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ls1a;-><init>(Loa;[B)V

    return-object v1

    :cond_11
    instance-of v0, p0, Lsx6;

    if-eqz v0, :cond_12

    check-cast p0, Lsx6;

    invoke-virtual {p0}, Lsx6;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lox6;->b()Lqx6;

    move-result-object p0

    invoke-static {p0}, Lslb;->t(Lqx6;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_12
    instance-of v0, p0, Ljy8;

    if-eqz v0, :cond_13

    check-cast p0, Ljy8;

    invoke-virtual {p0}, Ljy8;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lfy8;->b()Lhy8;

    move-result-object p0

    invoke-static {p0}, Lslb;->D(Lhy8;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_13
    instance-of v0, p0, Lcc2;

    if-eqz v0, :cond_14

    check-cast p0, Lcc2;

    new-instance v0, Loa;

    invoke-virtual {p0}, Lyb2;->b()Lac2;

    move-result-object v1

    invoke-static {v1}, Lslb;->c(Lac2;)Ll1;

    move-result-object v1

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    new-instance v1, Ls1a;

    invoke-virtual {p0}, Lcc2;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ls1a;-><init>(Loa;[B)V

    return-object v1

    :cond_14
    instance-of v0, p0, Lx40;

    if-eqz v0, :cond_15

    check-cast p0, Lx40;

    invoke-virtual {p0}, Lx40;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lt40;->b()Lv40;

    move-result-object p0

    invoke-static {p0}, Lslb;->a(Lv40;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    invoke-direct {p0, v1, v0}, Ls1a;-><init>(Loa;[B)V

    return-object p0

    :cond_15
    instance-of v0, p0, Lml4;

    if-eqz v0, :cond_16

    check-cast p0, Lml4;

    invoke-virtual {p0}, Lml4;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lil4;->b()Lkl4;

    move-result-object p0

    invoke-static {p0}, Lslb;->l(Lkl4;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    invoke-direct {p0, v1, v0}, Ls1a;-><init>(Loa;[B)V

    return-object p0

    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/d;

    if-eqz v0, :cond_17

    check-cast p0, Lorg/bouncycastle/pqc/crypto/rainbow/d;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/d;->getEncoded()[B

    move-result-object v0

    new-instance v1, Loa;

    invoke-virtual {p0}, Lmn8;->b()Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object p0

    invoke-static {p0}, Lslb;->z(Lorg/bouncycastle/pqc/crypto/rainbow/b;)Ll1;

    move-result-object p0

    invoke-direct {v1, p0}, Loa;-><init>(Ll1;)V

    new-instance p0, Ls1a;

    new-instance v2, Lwp1;

    invoke-direct {v2, v0}, Lwp1;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    return-object p0

    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
