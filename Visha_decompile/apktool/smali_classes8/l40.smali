.class public Ll40;
.super Ls1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ls1;-><init>(Lx0;)V

    return-void
.end method

.method public constructor <init>(Ly0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ls1;-><init>(Ly0;)V

    return-void
.end method


# virtual methods
.method public C()Ls0;
    .locals 1

    new-instance v0, Lg40;

    invoke-virtual {p0}, Ls1;->w()[Ls0;

    move-result-object p0

    invoke-direct {v0, p0}, Lg40;-><init>([Ls0;)V

    return-object v0
.end method

.method public D()La1;
    .locals 0

    invoke-virtual {p0}, Ls1;->v()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-virtual {p0}, Ls1;->D()La1;

    move-result-object p0

    return-object p0
.end method

.method public E()Lm1;
    .locals 1

    new-instance v0, Lj40;

    invoke-virtual {p0}, Ls1;->x()[Lm1;

    move-result-object p0

    invoke-direct {v0, p0}, Lj40;-><init>([Lm1;)V

    return-object v0
.end method

.method public F()Lt1;
    .locals 2

    new-instance v0, Ln40;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ls1;->G()[Lx0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ln40;-><init>(Z[Lx0;)V

    return-object v0
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x30

    iget-object p0, p0, Ls1;->b:[Lx0;

    invoke-virtual {p1, p2, v0, p0}, Lo1;->r(ZI[Lx0;)V

    return-void
.end method

.method public q(Z)I
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Ls1;->b:[Lx0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ls1;->b:[Lx0;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lx0;->j()Lp1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lp1;->q(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method
