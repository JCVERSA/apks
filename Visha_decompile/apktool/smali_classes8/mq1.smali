.class public Lmq1;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lg1;

.field public c:Lg1;

.field public d:Lg1;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lg1;

    invoke-direct {v0, p1}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmq1;->b:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lmq1;->c:Lg1;

    if-eqz p3, :cond_0

    new-instance p1, Lg1;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lg1;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lmq1;->d:Lg1;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lmq1;->b:Lg1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lmq1;->c:Lg1;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1;

    :goto_0
    iput-object p1, p0, Lmq1;->d:Lg1;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static n(Ljava/lang/Object;)Lmq1;
    .locals 1

    instance-of v0, p0, Lmq1;

    if-eqz v0, :cond_0

    check-cast p0, Lmq1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmq1;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lmq1;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lmq1;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lmq1;->c:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    invoke-virtual {p0}, Lmq1;->o()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lmq1;->d:Lg1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lmq1;->c:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lmq1;->d:Lg1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lmq1;->b:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
