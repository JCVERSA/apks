.class public abstract Li53$c;
.super Li53;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
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

    iget-object v0, p0, Li53;->b:Lw43;

    iget-object v1, p0, Li53;->c:Lw43;

    iget-object v2, p0, Li53;->a:Lt43;

    invoke-virtual {v2}, Lt43;->m()Lw43;

    move-result-object v2

    iget-object v3, p0, Li53;->a:Lt43;

    invoke-virtual {v3}, Lt43;->n()Lw43;

    move-result-object v3

    invoke-virtual {v1}, Lw43;->o()Lw43;

    move-result-object v1

    invoke-virtual {p0}, Li53;->j()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Lw43;->h()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v2, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v3, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object p0, p0, Li53;->d:[Lw43;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Lw43;->h()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v5

    invoke-virtual {v1, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object v1

    invoke-virtual {v2, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v2

    invoke-virtual {v3, v5}, Lw43;->j(Lw43;)Lw43;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lw43;->o()Lw43;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public h()Z
    .locals 0

    invoke-virtual {p0}, Li53;->g()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->s()Z

    move-result p0

    return p0
.end method
