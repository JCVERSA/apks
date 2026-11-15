.class public Luq1;
.super La1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyq1;)V
    .locals 0

    invoke-direct {p0, p1}, La1;-><init>(Ls1;)V

    return-void
.end method


# virtual methods
.method public v()Lp1;
    .locals 0

    return-object p0
.end method

.method public w()Ls1;
    .locals 4

    new-instance v0, Ly0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, La1;->b:Ll1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, La1;->c:Lg1;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object v1, p0, La1;->d:Lp1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lp1;->v()Lp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_2
    new-instance v1, Lcr1;

    iget v2, p0, La1;->e:I

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, La1;->f:Lp1;

    invoke-direct {v1, v3, v2, p0}, Lcr1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Lyq1;

    invoke-direct {p0, v0}, Lyq1;-><init>(Ly0;)V

    return-object p0
.end method
