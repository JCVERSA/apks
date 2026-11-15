.class public Luqc;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lwqc;


# instance fields
.field public b:Ll1;

.field public c:Lp1;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Luqc;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    sget-object v0, Lwqc;->e5:Ll1;

    iput-object v0, p0, Luqc;->b:Ll1;

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v2, Lg1;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lg1;-><init>(J)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lwqc;->g5:Ll1;

    invoke-virtual {v0, p1}, Ly0;->a(Lx0;)V

    new-instance p1, Lg1;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lg1;-><init>(J)V

    invoke-virtual {v0, p1}, Ly0;->a(Lx0;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lwqc;->h5:Ll1;

    invoke-virtual {v0, p1}, Ly0;->a(Lx0;)V

    new-instance p1, Ly0;

    invoke-direct {p1, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {p1, v1}, Ly0;->a(Lx0;)V

    new-instance p2, Lg1;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lg1;-><init>(J)V

    invoke-virtual {p1, p2}, Ly0;->a(Lx0;)V

    new-instance p2, Lg1;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lg1;-><init>(J)V

    invoke-virtual {p1, p2}, Ly0;->a(Lx0;)V

    new-instance p2, Laq1;

    invoke-direct {p2, p1}, Laq1;-><init>(Ly0;)V

    invoke-virtual {v0, p2}, Ly0;->a(Lx0;)V

    :goto_0
    new-instance p1, Laq1;

    invoke-direct {p1, v0}, Laq1;-><init>(Ly0;)V

    iput-object p1, p0, Luqc;->c:Lp1;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lj1;-><init>()V

    sget-object v0, Lwqc;->d5:Ll1;

    iput-object v0, p0, Luqc;->b:Ll1;

    new-instance v0, Lg1;

    invoke-direct {v0, p1}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Luqc;->c:Lp1;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    iput-object v0, p0, Luqc;->b:Ll1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    iput-object p1, p0, Luqc;->c:Lp1;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Luqc;
    .locals 1

    instance-of v0, p0, Luqc;

    if-eqz v0, :cond_0

    check-cast p0, Luqc;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luqc;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Luqc;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Luqc;->b:Ll1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Luqc;->c:Lp1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ll1;
    .locals 0

    iget-object p0, p0, Luqc;->b:Ll1;

    return-object p0
.end method

.method public o()Lp1;
    .locals 0

    iget-object p0, p0, Luqc;->c:Lp1;

    return-object p0
.end method
