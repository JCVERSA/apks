.class public Lv73;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lg1;

.field public c:Lg1;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lg1;

    invoke-direct {v0, p1}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lv73;->b:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lv73;->c:Lg1;

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

    check-cast v0, Lg1;

    iput-object v0, p0, Lv73;->b:Lg1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1;

    iput-object p1, p0, Lv73;->c:Lg1;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lv73;
    .locals 1

    instance-of v0, p0, Lv73;

    if-eqz v0, :cond_0

    check-cast p0, Lv73;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lv73;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lv73;-><init>(Ls1;)V

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

    iget-object v1, p0, Lv73;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lv73;->c:Lg1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lv73;->c:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lv73;->b:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
