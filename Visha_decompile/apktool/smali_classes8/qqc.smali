.class public Lqqc;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lwqc;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public b:Luqc;

.field public c:Lt43;

.field public d:Lsqc;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lqqc;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v1, v1, Lg1;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg1;->B(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lqqc;->e:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lqqc;->f:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Lpqc;

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Luqc;->n(Ljava/lang/Object;)Luqc;

    move-result-object v1

    iget-object v2, p0, Lqqc;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lqqc;->f:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ls1;->A(I)Lx0;

    move-result-object v4

    invoke-static {v4}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lpqc;-><init>(Luqc;Ljava/math/BigInteger;Ljava/math/BigInteger;Ls1;)V

    invoke-virtual {v0}, Lpqc;->m()Lt43;

    move-result-object v1

    iput-object v1, p0, Lqqc;->c:Lt43;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    instance-of v1, p1, Lsqc;

    if-eqz v1, :cond_1

    check-cast p1, Lsqc;

    iput-object p1, p0, Lqqc;->d:Lsqc;

    goto :goto_0

    :cond_1
    new-instance v1, Lsqc;

    iget-object v2, p0, Lqqc;->c:Lt43;

    check-cast p1, Lm1;

    invoke-direct {v1, v2, p1}, Lsqc;-><init>(Lt43;Lm1;)V

    iput-object v1, p0, Lqqc;->d:Lsqc;

    :goto_0
    invoke-virtual {v0}, Lpqc;->n()[B

    move-result-object p1

    iput-object p1, p0, Lqqc;->g:[B

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad version in X9ECParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lt43;Lsqc;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lqqc;->c:Lt43;

    iput-object p2, p0, Lqqc;->d:Lsqc;

    iput-object p3, p0, Lqqc;->e:Ljava/math/BigInteger;

    iput-object p4, p0, Lqqc;->f:Ljava/math/BigInteger;

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p2

    iput-object p2, p0, Lqqc;->g:[B

    invoke-static {p1}, Lr43;->e(Lt43;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Luqc;

    invoke-virtual {p1}, Lt43;->q()Lvv3;

    move-result-object p1

    invoke-interface {p1}, Lvv3;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Luqc;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Lqqc;->b:Luqc;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lr43;->c(Lt43;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lt43;->q()Lvv3;

    move-result-object p1

    check-cast p1, Lsc8;

    invoke-interface {p1}, Lsc8;->c()Lrc8;

    move-result-object p1

    invoke-interface {p1}, Lrc8;->a()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Luqc;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Luqc;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Luqc;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Luqc;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only trinomial and pentomial curves are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'curve\' is of an unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Ljava/lang/Object;)Lqqc;
    .locals 1

    instance-of v0, p0, Lqqc;

    if-eqz v0, :cond_0

    check-cast p0, Lqqc;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqqc;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lqqc;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    sget-object v2, Lqqc;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lqqc;->b:Luqc;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lpqc;

    iget-object v2, p0, Lqqc;->c:Lt43;

    iget-object v3, p0, Lqqc;->g:[B

    invoke-direct {v1, v2, v3}, Lpqc;-><init>(Lt43;[B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lqqc;->d:Lsqc;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    iget-object v2, p0, Lqqc;->e:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lqqc;->f:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lg1;

    iget-object p0, p0, Lqqc;->f:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Lt43;
    .locals 0

    iget-object p0, p0, Lqqc;->c:Lt43;

    return-object p0
.end method

.method public n()Li53;
    .locals 0

    iget-object p0, p0, Lqqc;->d:Lsqc;

    invoke-virtual {p0}, Lsqc;->m()Li53;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lqqc;->f:Ljava/math/BigInteger;

    return-object p0
.end method

.method public q()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lqqc;->e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public r()[B
    .locals 0

    iget-object p0, p0, Lqqc;->g:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
