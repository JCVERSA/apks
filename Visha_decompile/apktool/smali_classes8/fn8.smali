.class public Lfn8;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lfn8;->b:Ljava/math/BigInteger;

    iput-object p2, p0, Lfn8;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfn8;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    invoke-virtual {p1}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lfn8;->c:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls1;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;)Lfn8;
    .locals 1

    instance-of v0, p0, Lfn8;

    if-eqz v0, :cond_0

    check-cast p0, Lfn8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lfn8;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lfn8;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Lfn8;->n()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    invoke-virtual {p0}, Lfn8;->o()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lg1;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lfn8;->b:Ljava/math/BigInteger;

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lfn8;->c:Ljava/math/BigInteger;

    return-object p0
.end method
