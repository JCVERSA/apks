.class public Lw43$c;
.super Lw43$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public g:I

.field public h:I

.field public i:[I

.field public j:Lyq5;


# direct methods
.method public constructor <init>(I[ILyq5;)V
    .locals 1

    invoke-direct {p0}, Lw43$a;-><init>()V

    iput p1, p0, Lw43$c;->h:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lw43$c;->g:I

    iput-object p2, p0, Lw43$c;->i:[I

    iput-object p3, p0, Lw43$c;->j:Lyq5;

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 2

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {v0}, Lyq5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq5;

    check-cast p1, Lw43$c;

    iget-object p1, p1, Lw43$c;->j:Lyq5;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyq5;->g(Lyq5;I)V

    new-instance p1, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object p0, p0, Lw43$c;->i:[I

    invoke-direct {p1, v1, p0, v0}, Lw43$c;-><init>(I[ILyq5;)V

    return-object p1
.end method

.method public b()Lw43;
    .locals 3

    new-instance v0, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->e()Lyq5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lw43$c;-><init>(I[ILyq5;)V

    return-object v0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->l()I

    move-result p0

    return p0
.end method

.method public d(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p1}, Lw43;->g()Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw43$c;->j(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw43$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget v3, p1, Lw43$c;->h:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lw43$c;->g:I

    iget v3, p1, Lw43$c;->g:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lw43$c;->i:[I

    iget-object v3, p1, Lw43$c;->i:[I

    invoke-static {v1, v3}, Lci;->d([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    iget-object p1, p1, Lw43$c;->j:Lyq5;

    invoke-virtual {p0, p1}, Lyq5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lw43$c;->h:I

    return p0
.end method

.method public g()Lw43;
    .locals 3

    new-instance v0, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0, v1, v2}, Lyq5;->v(I[I)Lyq5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lw43$c;-><init>(I[ILyq5;)V

    return-object v0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->t()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {v0}, Lyq5;->hashCode()I

    move-result v0

    iget v1, p0, Lw43$c;->h:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lw43$c;->i:[I

    invoke-static {p0}, Lci;->y([I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->u()Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 3

    new-instance v0, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    check-cast p1, Lw43$c;

    iget-object p1, p1, Lw43$c;->j:Lyq5;

    invoke-virtual {p0, p1, v1, v2}, Lyq5;->w(Lyq5;I[I)Lyq5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lw43$c;-><init>(I[ILyq5;)V

    return-object v0
.end method

.method public k(Lw43;Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lw43$c;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public l(Lw43;Lw43;Lw43;)Lw43;
    .locals 4

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    check-cast p1, Lw43$c;

    iget-object p1, p1, Lw43$c;->j:Lyq5;

    check-cast p2, Lw43$c;

    iget-object p2, p2, Lw43$c;->j:Lyq5;

    check-cast p3, Lw43$c;

    iget-object p3, p3, Lw43$c;->j:Lyq5;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    invoke-virtual {v0, p1, v1, v2}, Lyq5;->z(Lyq5;I[I)Lyq5;

    move-result-object v1

    iget v2, p0, Lw43$c;->h:I

    iget-object v3, p0, Lw43$c;->i:[I

    invoke-virtual {p2, p3, v2, v3}, Lyq5;->z(Lyq5;I[I)Lyq5;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lyq5;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lyq5;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lyq5;->g(Lyq5;I)V

    iget p1, p0, Lw43$c;->h:I

    iget-object p2, p0, Lw43$c;->i:[I

    invoke-virtual {v1, p1, p2}, Lyq5;->B(I[I)V

    new-instance p1, Lw43$c;

    iget p2, p0, Lw43$c;->h:I

    iget-object p0, p0, Lw43$c;->i:[I

    invoke-direct {p1, p2, p0, v1}, Lw43$c;-><init>(I[ILyq5;)V

    return-object p1
.end method

.method public m()Lw43;
    .locals 0

    return-object p0
.end method

.method public n()Lw43;
    .locals 1

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {v0}, Lyq5;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {v0}, Lyq5;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lw43$c;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lw43$c;->q(I)Lw43;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o()Lw43;
    .locals 3

    new-instance v0, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0, v1, v2}, Lyq5;->x(I[I)Lyq5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lw43$c;-><init>(I[ILyq5;)V

    return-object v0
.end method

.method public p(Lw43;Lw43;)Lw43;
    .locals 4

    iget-object v0, p0, Lw43$c;->j:Lyq5;

    check-cast p1, Lw43$c;

    iget-object p1, p1, Lw43$c;->j:Lyq5;

    check-cast p2, Lw43$c;

    iget-object p2, p2, Lw43$c;->j:Lyq5;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    invoke-virtual {v0, v1, v2}, Lyq5;->M(I[I)Lyq5;

    move-result-object v1

    iget v2, p0, Lw43$c;->h:I

    iget-object v3, p0, Lw43$c;->i:[I

    invoke-virtual {p1, p2, v2, v3}, Lyq5;->z(Lyq5;I[I)Lyq5;

    move-result-object p1

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Lyq5;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lyq5;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lyq5;->g(Lyq5;I)V

    iget p1, p0, Lw43$c;->h:I

    iget-object p2, p0, Lw43$c;->i:[I

    invoke-virtual {v1, p1, p2}, Lyq5;->B(I[I)V

    new-instance p1, Lw43$c;

    iget p2, p0, Lw43$c;->h:I

    iget-object p0, p0, Lw43$c;->i:[I

    invoke-direct {p1, p2, p0, v1}, Lw43$c;-><init>(I[ILyq5;)V

    return-object p1
.end method

.method public q(I)Lw43;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lw43$c;

    iget v1, p0, Lw43$c;->h:I

    iget-object v2, p0, Lw43$c;->i:[I

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0, p1, v1, v2}, Lyq5;->y(II[I)Lyq5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lw43$c;-><init>(I[ILyq5;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1}, Lw43$c;->a(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 0

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->P()Z

    move-result p0

    return p0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lw43$c;->j:Lyq5;

    invoke-virtual {p0}, Lyq5;->Q()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
