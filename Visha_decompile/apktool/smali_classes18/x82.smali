.class public abstract Lx82;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lxt1;)Lpx0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lxt1;->b()Lxt1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of p0, p0, Ldv7;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lx82;->b(Lxt1;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lx82;->a(Lxt1;)Lpx0;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lpx0;

    if-eqz p0, :cond_2

    move-object v1, v0

    check-cast v1, Lpx0;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static final b(Lxt1;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lxt1;->b()Lxt1;

    move-result-object p0

    instance-of p0, p0, Ldv7;

    return p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->b()Lxt1;

    move-result-object v0

    instance-of v1, v0, Lqw0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lqw0;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lh05;->f(Lxt1;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lqw0;->q()Lsm9;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->y(Leh5;)Leh5;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object v3

    sget-object v4, Lak7;->e:Lby6;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->n(Leh5;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->o(Leh5;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    const-string v4, "valueParameters[0].type"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->y(Leh5;)Leh5;

    move-result-object v2

    invoke-static {v2, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->y0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object p0

    if-nez p0, :cond_5

    move v1, v3

    :cond_5
    :goto_1
    return v1
.end method

.method public static final d(Lqq6;Lo54;Lor5;)Lqw0;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupLocation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo54;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lo54;->e()Lo54;

    move-result-object v0

    const-string v2, "fqName.parent()"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lqq6;->C(Lo54;)Lpv7;

    move-result-object v0

    invoke-interface {v0}, Lpv7;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-virtual {p1}, Lo54;->g()Lby6;

    move-result-object v3

    const-string v4, "fqName.shortName()"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;->f(Lby6;Lor5;)Lpx0;

    move-result-object v0

    instance-of v3, v0, Lqw0;

    if-eqz v3, :cond_1

    check-cast v0, Lqw0;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lo54;->e()Lo54;

    move-result-object v0

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lx82;->d(Lqq6;Lo54;Lor5;)Lqw0;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lqw0;->D()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lo54;->g()Lby6;

    move-result-object p1

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;->f(Lby6;Lor5;)Lpx0;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    instance-of p1, p0, Lqw0;

    if-eqz p1, :cond_4

    move-object v1, p0

    check-cast v1, Lqw0;

    :cond_4
    return-object v1
.end method
