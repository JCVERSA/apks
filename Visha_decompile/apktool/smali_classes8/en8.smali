.class public Len8;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field public i:Ljava/math/BigInteger;

.field public j:Ljava/math/BigInteger;

.field public k:Ls1;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Len8;->k:Ls1;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->b:Ljava/math/BigInteger;

    iput-object p1, p0, Len8;->c:Ljava/math/BigInteger;

    iput-object p2, p0, Len8;->d:Ljava/math/BigInteger;

    iput-object p3, p0, Len8;->e:Ljava/math/BigInteger;

    iput-object p4, p0, Len8;->f:Ljava/math/BigInteger;

    iput-object p5, p0, Len8;->g:Ljava/math/BigInteger;

    iput-object p6, p0, Len8;->h:Ljava/math/BigInteger;

    iput-object p7, p0, Len8;->i:Ljava/math/BigInteger;

    iput-object p8, p0, Len8;->j:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Len8;->k:Ls1;

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->F()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->e:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->f:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->g:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->h:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->i:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Len8;->j:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1;

    iput-object p1, p0, Len8;->k:Ls1;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for RSA private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Ljava/lang/Object;)Len8;
    .locals 1

    instance-of v0, p0, Len8;

    if-eqz v0, :cond_0

    check-cast p0, Len8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Len8;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Len8;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    iget-object v2, p0, Len8;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->q()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->r()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->s()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->n()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->o()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Len8;->m()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Len8;->k:Ls1;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public n()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->i:Ljava/math/BigInteger;

    return-object p0
.end method

.method public q()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->c:Ljava/math/BigInteger;

    return-object p0
.end method

.method public r()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->f:Ljava/math/BigInteger;

    return-object p0
.end method

.method public s()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->g:Ljava/math/BigInteger;

    return-object p0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Len8;->d:Ljava/math/BigInteger;

    return-object p0
.end method
