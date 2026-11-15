.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Lld8;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v1, v0, Lqx0;

    if-eqz v1, :cond_0

    check-cast v0, Lqx0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt;->b(Leh5;Lqx0;I)Lld8;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Leh5;Lqx0;I)Lld8;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lid3;->m(Lxt1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lqx0;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, Lqx0;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Ly82;->E(Lxt1;)Z

    move-result v1

    :cond_1
    new-instance v1, Lld8;

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lld8;-><init>(Lqx0;Ljava/util/List;Lld8;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-instance v2, Lld8;

    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object v3

    instance-of v4, v3, Lqx0;

    if-eqz v4, :cond_3

    move-object v0, v3

    check-cast v0, Lqx0;

    :cond_3
    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt;->b(Leh5;Lqx0;I)Lld8;

    move-result-object p0

    invoke-direct {v2, p1, p2, p0}, Lld8;-><init>(Lqx0;Ljava/util/List;Lld8;)V

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final c(Lhcb;Lxt1;I)Lsr0;
    .locals 1

    new-instance v0, Lsr0;

    invoke-direct {v0, p0, p1, p2}, Lsr0;-><init>(Lhcb;Lxt1;I)V

    return-object v0
.end method

.method public static final d(Lqx0;)Ljava/util/List;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lqx0;->r()Ljava/util/List;

    move-result-object v0

    const-string v1, "declaredTypeParameters"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lqx0;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lzt1;->b()Lxt1;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->q(Lxt1;)Lpc9;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->Z(Lpc9;Le74;)Lpc9;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$2;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->K(Lpc9;Le74;)Lpc9;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->q(Lxt1;)Lpc9;

    move-result-object v3

    invoke-interface {v3}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lqw0;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    check-cast v4, Lqw0;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lpx0;->m()Lsbb;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v5

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lqx0;->r()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    check-cast v2, Ljava/util/Collection;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v2, v5}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhcb;

    const-string v4, "it"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, p0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterUtilsKt;->c(Lhcb;Lxt1;I)Lsr0;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
