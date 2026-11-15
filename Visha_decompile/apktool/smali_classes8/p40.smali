.class public Lp40;
.super Ly1;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIILx0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ly1;-><init>(IIILx0;)V

    return-void
.end method

.method public constructor <init>(ZILx0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ly1;-><init>(ZILx0;)V

    return-void
.end method


# virtual methods
.method public P(Lp1;)Ls1;
    .locals 0

    new-instance p0, Ll40;

    invoke-direct {p0, p1}, Ll40;-><init>(Lx0;)V

    return-object p0
.end method

.method public n(Lo1;Z)V
    .locals 4

    iget-object v0, p0, Ly1;->e:Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Ly1;->c:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lp1;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    or-int/lit8 p2, p2, 0x20

    :cond_1
    iget p0, p0, Ly1;->d:I

    invoke-virtual {p1, v2, p2, p0}, Lo1;->t(ZII)V

    :cond_2
    const/4 p0, 0x0

    if-eqz v1, :cond_3

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lo1;->i(I)V

    invoke-virtual {v0, p1, v2}, Lp1;->n(Lo1;Z)V

    invoke-virtual {p1, p0}, Lo1;->i(I)V

    invoke-virtual {p1, p0}, Lo1;->i(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p0}, Lp1;->n(Lo1;Z)V

    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0}, Lp1;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public q(Z)I
    .locals 2

    iget-object v0, p0, Ly1;->e:Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v1

    invoke-virtual {v0, v1}, Lp1;->q(Z)I

    move-result v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Ly1;->d:I

    invoke-static {p0}, Lo1;->h(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
