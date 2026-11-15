.class public Lenb;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ls0;

.field public c:Lg1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v0

    iput-object v0, p0, Lenb;->b:Ls0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    iput-object p1, p0, Lenb;->c:Lg1;

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

.method public constructor <init>([BI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lnp1;

    invoke-direct {v0, p1}, Lnp1;-><init>([B)V

    iput-object v0, p0, Lenb;->b:Ls0;

    new-instance p1, Lg1;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lg1;-><init>(J)V

    iput-object p1, p0, Lenb;->c:Lg1;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'seed\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;)Lenb;
    .locals 1

    instance-of v0, p0, Lenb;

    if-eqz v0, :cond_0

    check-cast p0, Lenb;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lenb;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lenb;-><init>(Ls1;)V

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

    iget-object v1, p0, Lenb;->b:Ls0;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lenb;->c:Lg1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lenb;->c:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public o()[B
    .locals 0

    iget-object p0, p0, Lenb;->b:Ls0;

    invoke-virtual {p0}, Ls0;->x()[B

    move-result-object p0

    return-object p0
.end method
