.class public abstract Li53$b;
.super Li53;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lt43;Lw43;Lw43;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li53;-><init>(Lt43;Lw43;Lw43;)V

    return-void
.end method

.method public constructor <init>(Lt43;Lw43;Lw43;[Lw43;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Li53;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 7

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    iget-object v1, p0, Li53;->b:Lw43;

    invoke-virtual {v0}, Lt43;->m()Lw43;

    move-result-object v2

    invoke-virtual {v0}, Lt43;->n()Lw43;

    move-result-object v3

    invoke-virtual {v0}, Lt43;->p()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Li53;->d:[Lw43;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lw43;->h()Z

    move-result v4

    invoke-virtual {v1}, Lw43;->i()Z

    move-result v5

    iget-object p0, p0, Li53;->c:Lw43;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object p0

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v0, v3}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {v4}, Lw43;->o()Lw43;

    move-result-object v5

    invoke-virtual {p0, v0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v4}, Lw43;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v1, v3, v5}, Lw43;->p(Lw43;Lw43;)Lw43;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object v4, p0, Li53;->c:Lw43;

    invoke-virtual {v4, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v6

    invoke-virtual {v6, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v4

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lw43;->h()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v4, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v2, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v3, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public B()Z
    .locals 5

    iget-object v0, p0, Li53;->a:Lt43;

    invoke-virtual {v0}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ls43;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->f()Lw43;

    move-result-object p0

    check-cast p0, Lw43$a;

    invoke-virtual {p0}, Lw43$a;->w()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v1, Ls43;->e:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object v0

    invoke-virtual {v0}, Li53;->f()Lw43;

    move-result-object v1

    iget-object p0, p0, Li53;->a:Lt43;

    move-object v4, p0

    check-cast v4, Lt43$b;

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object p0

    invoke-virtual {v1, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v4, p0}, Lt43$b;->E(Lw43;)Lw43;

    move-result-object p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Li53;->g()Lw43;

    move-result-object v0

    invoke-virtual {v1, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    check-cast p0, Lw43$a;

    invoke-virtual {p0}, Lw43$a;->w()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    invoke-super {p0}, Li53;->B()Z

    move-result p0

    return p0
.end method

.method public C(Li53;)Li53;
    .locals 1

    invoke-virtual {p1}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Li53;->x()Li53;

    move-result-object p1

    invoke-virtual {p0, p1}, Li53;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method
