.class public abstract Lqg8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lqg8;->a:Ljava/util/Set;

    sget-object v1, Lwl1;->x:Ll1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lqg8;->a:Ljava/util/Set;

    sget-object v1, Lwl1;->y:Ll1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lqg8;->a:Ljava/util/Set;

    sget-object v1, Lwl1;->z:Ll1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lqg8;->a:Ljava/util/Set;

    sget-object v1, Lwl1;->A:Ll1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lqg8;->a:Ljava/util/Set;

    sget-object v1, Lwl1;->B:Ll1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ldj;Lt1;)Log8;
    .locals 14

    instance-of v0, p0, Lcn8;

    if-eqz v0, :cond_0

    check-cast p0, Ldn8;

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v2, Lyu7;->F1:Ll1;

    sget-object v3, Lup1;->c:Lup1;

    invoke-direct {v1, v2, v3}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v2, Len8;

    invoke-virtual {p0}, Lcn8;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ldn8;->j()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lcn8;->b()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Ldn8;->i()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Ldn8;->k()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0}, Ldn8;->g()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0}, Ldn8;->h()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p0}, Ldn8;->l()Ljava/math/BigInteger;

    move-result-object v12

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Len8;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ll53;

    if-eqz v0, :cond_3

    check-cast p0, Ll53;

    invoke-virtual {p0}, Lz43;->b()Lu43;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v2, Loqc;

    sget-object v3, Lup1;->c:Lup1;

    invoke-direct {v2, v3}, Loqc;-><init>(Lh1;)V

    invoke-virtual {p0}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lg53;

    if-eqz v2, :cond_2

    new-instance v2, Loqc;

    move-object v3, v0

    check-cast v3, Lg53;

    invoke-virtual {v3}, Lg53;->i()Ll1;

    move-result-object v3

    invoke-direct {v2, v3}, Loqc;-><init>(Ll1;)V

    invoke-virtual {v0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v2, Lqqc;

    invoke-virtual {v0}, Lu43;->a()Lt43;

    move-result-object v5

    new-instance v6, Lsqc;

    invoke-virtual {v0}, Lu43;->b()Li53;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Lsqc;-><init>(Li53;Z)V

    invoke-virtual {v0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lu43;->c()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lu43;->e()[B

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lqqc;-><init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Loqc;

    invoke-direct {v3, v2}, Loqc;-><init>(Lqqc;)V

    invoke-virtual {v0}, Lu43;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_1
    new-instance v4, Lfx3;

    invoke-direct {v4}, Lfx3;-><init>()V

    invoke-virtual {v0}, Lu43;->b()Li53;

    move-result-object v0

    invoke-virtual {p0}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lv2;->b(Li53;Ljava/math/BigInteger;)Li53;

    move-result-object v0

    new-instance v4, Lnp1;

    invoke-virtual {v0, v1}, Li53;->l(Z)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lnp1;-><init>([B)V

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v5, Lwqc;->m5:Ll1;

    invoke-direct {v1, v5, v2}, Loa;-><init>(Ll1;Lx0;)V

    new-instance v5, Lk53;

    invoke-virtual {p0}, Ll53;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v5, v3, p0, v4, v2}, Lk53;-><init>(ILjava/math/BigInteger;Ls0;Lx0;)V

    invoke-direct {v0, v1, v5, p1}, Log8;-><init>(Loa;Lx0;Lt1;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Laqc;

    if-eqz v0, :cond_4

    check-cast p0, Laqc;

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v2, Lg63;->c:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Laqc;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    invoke-virtual {p0}, Laqc;->b()Lbqc;

    move-result-object p0

    invoke-virtual {p0}, Lbqc;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lwpc;

    if-eqz v0, :cond_5

    check-cast p0, Lwpc;

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v2, Lg63;->b:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Lwpc;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    invoke-virtual {p0}, Lwpc;->b()Lxpc;

    move-result-object p0

    invoke-virtual {p0}, Lxpc;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v0

    :cond_5
    instance-of v0, p0, Le63;

    if-eqz v0, :cond_6

    check-cast p0, Le63;

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v2, Lg63;->e:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Le63;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    invoke-virtual {p0}, Le63;->b()Lf63;

    move-result-object p0

    invoke-virtual {p0}, Lf63;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v0

    :cond_6
    instance-of v0, p0, Lb63;

    if-eqz v0, :cond_7

    check-cast p0, Lb63;

    new-instance v0, Log8;

    new-instance v1, Loa;

    sget-object v2, Lg63;->d:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Lwp1;

    invoke-virtual {p0}, Lb63;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lwp1;-><init>([B)V

    invoke-virtual {p0}, Lb63;->b()Lc63;

    move-result-object p0

    invoke-virtual {p0}, Lc63;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-object v0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
