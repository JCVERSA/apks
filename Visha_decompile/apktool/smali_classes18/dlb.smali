.class public abstract Ldlb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "newValueParameterTypes"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "oldValueParameters"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newOwner"

    move-object/from16 v15, p2

    invoke-static {v15, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    check-cast v0, Ljava/lang/Iterable;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Leh5;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getIndex()I

    move-result v6

    invoke-interface {v2}, Ldd;->getAnnotations()Lmd;

    move-result-object v7

    invoke-interface {v2}, Lgy6;->getName()Lby6;

    move-result-object v8

    const-string v3, "oldParameter.name"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->N()Z

    move-result v10

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->u0()Z

    move-result v11

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->r0()Z

    move-result v12

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->x0()Leh5;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->p(Lxt1;)Lqq6;

    move-result-object v3

    invoke-interface {v3}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v3

    invoke-virtual {v3, v9}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->k(Leh5;)Leh5;

    move-result-object v3

    :goto_1
    move-object v13, v3

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2}, Ldu1;->getSource()Lyt9;

    move-result-object v2

    const-string v3, "oldParameter.source"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 p0, v0

    move-object v0, v14

    move-object v14, v2

    invoke-direct/range {v3 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final b(Lqw0;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->t(Lqw0;)Lqw0;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lqw0;->n0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Ldlb;->b(Lqw0;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    move-result-object v0

    :cond_2
    return-object v0
.end method
