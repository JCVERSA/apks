.class public abstract Ltu9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Lj2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lj2;

    if-eqz v0, :cond_0

    check-cast p0, Lj2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Leh5;)Lsm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ltu9;->a(Leh5;)Lj2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj2;->U0()Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of p0, p0, Lg72;

    return p0
.end method

.method public static final d(Lmgb;Z)Lmgb;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg72;->e:Lg72$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lg72$a;->c(Lg72$a;Lmgb;ZZILjava/lang/Object;)Lg72;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ltu9;->g(Leh5;)Lsm9;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmgb;->M0(Z)Lmgb;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .locals 8

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->k()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh5;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Leh5;->L0()Lmgb;

    move-result-object v3

    invoke-static {v3, v2, v5, v6}, Ltu9;->f(Lmgb;ZILjava/lang/Object;)Lmgb;

    move-result-object v4

    move v3, v5

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->g()Leh5;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    invoke-static {p0, v2, v5, v6}, Ltu9;->f(Lmgb;ZILjava/lang/Object;)Lmgb;

    move-result-object p0

    :cond_3
    move-object v6, p0

    :cond_4
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->l(Leh5;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v6

    :goto_1
    return-object v6
.end method

.method public static synthetic f(Lmgb;ZILjava/lang/Object;)Lmgb;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Ltu9;->d(Lmgb;Z)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Leh5;)Lsm9;
    .locals 2

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Ltu9;->e(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->f()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lsm9;Z)Lsm9;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg72;->e:Lg72$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lg72$a;->c(Lg72$a;Lmgb;ZZILjava/lang/Object;)Lg72;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ltu9;->g(Leh5;)Lsm9;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic i(Lsm9;ZILjava/lang/Object;)Lsm9;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Ltu9;->h(Lsm9;Z)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lsm9;Lsm9;)Lsm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfh5;->a(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj2;

    invoke-direct {v0, p0, p1}, Lj2;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public static final k(Lf07;)Lf07;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf07;

    invoke-virtual {p0}, Lf07;->R0()Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object v2

    invoke-virtual {p0}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v3

    invoke-virtual {p0}, Lf07;->T0()Lmgb;

    move-result-object v4

    invoke-virtual {p0}, Lf07;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v5

    invoke-virtual {p0}, Lf07;->J0()Z

    move-result v6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZ)V

    return-object v0
.end method
