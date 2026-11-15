.class public Lmr1;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    invoke-virtual {v1}, Lg1;->D()I

    move-result v1

    iput v1, p0, Lmr1;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Lg1;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    check-cast p1, Lg1;

    invoke-virtual {p1}, Lg1;->D()I

    move-result p1

    iput p1, p0, Lmr1;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Ls1;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->D()I

    move-result v0

    iput v0, p0, Lmr1;->c:I

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->D()I

    move-result v0

    iput v0, p0, Lmr1;->d:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    invoke-virtual {p1}, Lg1;->D()I

    move-result p1

    iput p1, p0, Lmr1;->e:I

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object parse error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;)Lmr1;
    .locals 1

    instance-of v0, p0, Lmr1;

    if-eqz v0, :cond_0

    check-cast p0, Lmr1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmr1;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lmr1;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    new-instance v1, Lg1;

    iget v2, p0, Lmr1;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget v1, p0, Lmr1;->d:I

    if-nez v1, :cond_0

    new-instance v1, Lg1;

    iget p0, p0, Lmr1;->c:I

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ly0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ly0;-><init>(I)V

    new-instance v2, Lg1;

    iget v3, p0, Lmr1;->c:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lg1;-><init>(J)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lg1;

    iget v3, p0, Lmr1;->d:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lg1;-><init>(J)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lg1;

    iget p0, p0, Lmr1;->e:I

    int-to-long v3, p0

    invoke-direct {v2, v3, v4}, Lg1;-><init>(J)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v1}, Laq1;-><init>(Ly0;)V

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :goto_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lmr1;->c:I

    return p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lmr1;->d:I

    return p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lmr1;->e:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lmr1;->b:I

    return p0
.end method
