.class public abstract Lri8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lby6;)Ljava/util/List;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lxc5;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lri8;->b(Lby6;)Lby6;

    move-result-object p0

    invoke-static {p0}, Ly71;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lxc5;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lri8;->f(Lby6;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lrn0;->a:Lrn0;

    invoke-virtual {v0, p0}, Lrn0;->b(Lby6;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lby6;)Lby6;
    .locals 7

    const-string v0, "methodName"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lri8;->e(Lby6;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lby6;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "is"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lri8;->e(Lby6;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lby6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final c(Lby6;Z)Lby6;
    .locals 6

    const-string v0, "methodName"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "is"

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "set"

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lri8;->e(Lby6;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lby6;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lby6;Ljava/lang/String;ZLjava/lang/String;)Lby6;
    .locals 4

    invoke-virtual {p0}, Lby6;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lby6;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "methodName.identifier"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-gt v3, v2, :cond_3

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_3

    return-object v1

    :cond_3
    if-eqz p3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lj1a;->F0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p2, :cond_5

    return-object p0

    :cond_5
    invoke-static {v0, p1}, Lj1a;->F0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lkr0;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lby6;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lby6;
    .locals 0

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lri8;->d(Lby6;Ljava/lang/String;ZLjava/lang/String;)Lby6;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lby6;)Ljava/util/List;
    .locals 2

    const-string v0, "methodName"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lri8;->c(Lby6;Z)Lby6;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lri8;->c(Lby6;Z)Lby6;

    move-result-object p0

    filled-new-array {v0, p0}, [Lby6;

    move-result-object p0

    invoke-static {p0}, Ly71;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
