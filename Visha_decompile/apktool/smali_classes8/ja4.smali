.class public Lja4;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Lg1;

.field public d:Lg1;

.field public e:Lg1;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    iput p1, p0, Lja4;->b:I

    new-instance p1, Lg1;

    invoke-direct {p1, p2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lja4;->c:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p3}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lja4;->d:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p4}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lja4;->e:Lg1;

    return-void
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    iget v2, p0, Lja4;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lja4;->c:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lja4;->d:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lja4;->e:Lg1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lja4;->e:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public n()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lja4;->c:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lja4;->d:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
