.class public Lnr1;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Lmr1;

.field public d:Lg1;

.field public e:Lm1;

.field public f:Lg1;

.field public g:Lm1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnr1;->b:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v1, v1, Ly1;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Ly1;

    invoke-virtual {v0}, Ly1;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ly1;->J()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ly1;->b()Lp1;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnr1;->b:Ljava/math/BigInteger;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object parse error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lmr1;->m(Ljava/lang/Object;)Lmr1;

    move-result-object v1

    iput-object v1, p0, Lnr1;->c:Lmr1;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    iput-object v1, p0, Lnr1;->d:Lg1;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v1

    iput-object v1, p0, Lnr1;->e:Lm1;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    iput-object v1, p0, Lnr1;->f:Lg1;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p1

    iput-object p1, p0, Lnr1;->g:Lm1;

    return-void
.end method

.method public static q(Ljava/lang/Object;)Lnr1;
    .locals 1

    instance-of v0, p0, Lnr1;

    if-eqz v0, :cond_0

    check-cast p0, Lnr1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lnr1;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lnr1;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lnr1;->b:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldq1;

    new-instance v2, Lg1;

    iget-object v3, p0, Lnr1;->b:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lg1;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lnr1;->c:Lmr1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnr1;->d:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnr1;->e:Lm1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnr1;->f:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lnr1;->g:Lm1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lnr1;->d:Lg1;

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lnr1;->e:Lm1;

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public o()Lmr1;
    .locals 0

    iget-object p0, p0, Lnr1;->c:Lmr1;

    return-object p0
.end method

.method public p()[B
    .locals 0

    iget-object p0, p0, Lnr1;->g:Lm1;

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lnr1;->f:Lg1;

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
