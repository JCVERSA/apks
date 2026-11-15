.class public Lk53;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ls1;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ls0;Lx0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lge0;->a(ILjava/math/BigInteger;)[B

    move-result-object p1

    new-instance p2, Ly0;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ly0;-><init>(I)V

    new-instance v0, Lg1;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lg1;-><init>(J)V

    invoke-virtual {p2, v0}, Ly0;->a(Lx0;)V

    new-instance v0, Lwp1;

    invoke-direct {v0, p1}, Lwp1;-><init>([B)V

    invoke-virtual {p2, v0}, Ly0;->a(Lx0;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    new-instance v0, Ldq1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {p2, v0}, Ly0;->a(Lx0;)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p4, Ldq1;

    invoke-direct {p4, p1, p1, p3}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {p2, p4}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p1, Laq1;

    invoke-direct {p1, p2}, Laq1;-><init>(Ly0;)V

    iput-object p1, p0, Lk53;->b:Ls1;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lx0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lk53;-><init>(ILjava/math/BigInteger;Ls0;Lx0;)V

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lk53;->b:Ls1;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lk53;
    .locals 1

    instance-of v0, p0, Lk53;

    if-eqz v0, :cond_0

    check-cast p0, Lk53;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk53;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lk53;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lk53;->b:Ls1;

    return-object p0
.end method

.method public n()Ljava/math/BigInteger;
    .locals 2

    iget-object p0, p0, Lk53;->b:Ls1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ls1;->A(I)Lx0;

    move-result-object p0

    check-cast p0, Lm1;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public final o(II)Lj1;
    .locals 2

    iget-object p0, p0, Lk53;->b:Ls1;

    invoke-virtual {p0}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0;

    instance-of v1, v0, Ly1;

    if-eqz v1, :cond_0

    check-cast v0, Ly1;

    invoke-virtual {v0, p1}, Ly1;->L(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {v0}, Ly1;->E()Lj1;

    move-result-object p0

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p2}, Ly1;->C(ZI)Lp1;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Ls0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lk53;->o(II)Lj1;

    move-result-object p0

    check-cast p0, Ls0;

    return-object p0
.end method
