.class public abstract Lq75;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls75;)Z
    .locals 2

    invoke-interface {p0}, Ls75;->f()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->Q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx85;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lx85;->getType()Lo85;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lb75;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lb75;

    :cond_1
    const/4 p0, 0x0

    if-nez v0, :cond_2

    return p0

    :cond_2
    invoke-interface {v0}, Lb75;->j()La75;

    move-result-object v0

    instance-of v1, v0, Ls65;

    if-eqz v1, :cond_3

    check-cast v0, Ls65;

    invoke-interface {v0}, Ls65;->d()Lo54;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo54;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method public static final b(Ls75;)Z
    .locals 3

    invoke-interface {p0}, Lv75;->getName()Lby6;

    move-result-object v0

    invoke-virtual {v0}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x69e9ad94

    if-eq v1, v2, :cond_3

    const v2, -0x4d378041

    if-eq v1, v2, :cond_1

    const v2, 0x8cdac1b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_1
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lq75;->a(Ls75;)Z

    move-result p0

    goto :goto_1

    :cond_3
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-interface {p0}, Ls75;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final c(Lr75;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lr75;->D()Ls65;

    move-result-object v0

    invoke-interface {v0}, Ls65;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ls75;

    if-eqz v0, :cond_0

    check-cast p0, Ls75;

    invoke-static {p0}, Lq75;->b(Ls75;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
