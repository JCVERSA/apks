.class public abstract Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Lmcb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Locb;

    invoke-direct {v0, p0}, Locb;-><init>(Leh5;)V

    return-object v0
.end method

.method public static final b(Leh5;Le74;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->c(Leh5;Le74;)Z

    move-result p0

    return p0
.end method

.method public static final c(Leh5;Lsbb;Ljava/util/Set;)Z
    .locals 6

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v2, v0, Lqx0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lqx0;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lqx0;->r()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->j1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v4

    goto :goto_5

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmz4;

    invoke-virtual {v2}, Lmz4;->a()I

    move-result v5

    invoke-virtual {v2}, Lmz4;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmcb;

    if-eqz v0, :cond_6

    invoke-static {v0, v5}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhcb;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Lmcb;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_8
    invoke-interface {v2}, Lmcb;->getType()Leh5;

    move-result-object v2

    const-string v5, "argument.type"

    invoke-static {v2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->c(Leh5;Lsbb;Ljava/util/Set;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    return v1
.end method

.method public static final d(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeAliasParameters$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeAliasParameters$1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->b(Leh5;Le74;)Z

    move-result p0

    return p0
.end method

.method public static final e(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeParameter$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeParameter$1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/n;->c(Leh5;Le74;)Z

    move-result p0

    return p0
.end method

.method public static final f(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Lmcb;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectionKind"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Locb;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ne p2, p1, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_1
    invoke-direct {v0, p1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object v0
.end method

.method public static final g(Leh5;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->h(Leh5;Leh5;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static final h(Leh5;Leh5;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v1, v0, Lhcb;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_0
    check-cast v0, Lhcb;

    invoke-interface {v0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh5;

    const-string v1, "upperBound"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->h(Leh5;Leh5;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v1, v0, Lqx0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lqx0;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lqx0;->r()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmcb;

    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcb;

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Lmcb;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v5

    invoke-virtual {v5}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->c()Lpx0;

    move-result-object v5

    invoke-static {v1, v5}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v1

    invoke-virtual {v1}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-static {v1, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v1

    const-string v4, "argument.type"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->h(Leh5;Leh5;Ljava/util/Set;Ljava/util/Set;)V

    :cond_8
    :goto_5
    move v1, v3

    goto :goto_3

    :cond_9
    :goto_6
    return-void
.end method

.method public static final i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    const-string v0, "constructor.builtIns"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final j(Lhcb;)Leh5;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {p0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Leh5;

    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v4

    invoke-interface {v4}, Lsbb;->c()Lpx0;

    move-result-object v4

    instance-of v5, v4, Lqw0;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lqw0;

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-eq v3, v4, :cond_0

    move-object v3, v2

    :cond_3
    check-cast v3, Leh5;

    if-nez v3, :cond_4

    invoke-interface {p0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "upperBounds.first()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Leh5;

    :cond_4
    return-object v3
.end method

.method public static final k(Lhcb;)Z
    .locals 2

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->m(Lhcb;Lsbb;Ljava/util/Set;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final l(Lhcb;Lsbb;Ljava/util/Set;)Z
    .locals 4

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeParameter.upperBounds"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    const-string v3, "upperBound"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lpx0;->q()Lsm9;

    move-result-object v3

    invoke-virtual {v3}, Leh5;->I0()Lsbb;

    move-result-object v3

    invoke-static {v1, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->c(Leh5;Lsbb;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2
.end method

.method public static synthetic m(Lhcb;Lsbb;Ljava/util/Set;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->l(Lhcb;Lsbb;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final n(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->f0(Leh5;)Z

    move-result p0

    return p0
.end method

.method public static final o(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->n0(Leh5;)Z

    move-result p0

    return p0
.end method

.method public static final p(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lg72;

    if-eqz v0, :cond_0

    check-cast p0, Lg72;

    invoke-virtual {p0}, Lg72;->U0()Lsm9;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final q(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lg72;

    if-eqz v0, :cond_0

    check-cast p0, Lg72;

    invoke-virtual {p0}, Lg72;->U0()Lsm9;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final r(Leh5;Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->c(Leh5;Leh5;)Z

    move-result p0

    return p0
.end method

.method public static final s(Lpx0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lhcb;

    if-eqz v0, :cond_0

    check-cast p0, Lhcb;

    invoke-interface {p0}, Lzt1;->b()Lxt1;

    move-result-object p0

    instance-of p0, p0, Lebb;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final t(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->m(Leh5;)Z

    move-result p0

    return p0
.end method

.method public static final u(Leh5;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lgd3;

    if-eqz v0, :cond_0

    check-cast p0, Lgd3;

    invoke-virtual {p0}, Lgd3;->S0()Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->isUnresolved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(Leh5;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->n(Leh5;)Leh5;

    move-result-object p0

    const-string v0, "makeNotNullable(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final w(Leh5;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->o(Leh5;)Leh5;

    move-result-object p0

    const-string v0, "makeNullable(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final x(Leh5;Lmd;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object v0

    invoke-interface {v0}, Lmd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lmd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object v0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-static {p0, p1}, Llbb;->a(Lkotlin/reflect/jvm/internal/impl/types/j;Lmd;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmgb;->O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Leh5;)Leh5;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lfy3;

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-string v3, "constructor.parameters"

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lfy3;

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v5

    invoke-virtual {v5}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->c()Lpx0;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhcb;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v5, v7, v4, v1, v4}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->c()Lpx0;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhcb;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v7, v6}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v3, v4, v1, v4}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-static {v5, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v0

    goto :goto_5

    :cond_6
    instance-of v0, p0, Lsm9;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lsm9;

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->c()Lpx0;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhcb;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v6, v5}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {v0, v3, v4, v1, v4}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-static {v0, p0}, Lddb;->b(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final z(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->b(Leh5;Le74;)Z

    move-result p0

    return p0
.end method
