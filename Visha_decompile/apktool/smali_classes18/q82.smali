.class public abstract Lq82;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lqw0;Ldcb;)Ljava/lang/String;
    .locals 8

    const-string v0, "klass"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ldcb;->c(Lqw0;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lqw0;->b()Lxt1;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object v1

    invoke-static {v1}, Lsu9;->b(Lby6;)Lby6;

    move-result-object v1

    invoke-virtual {v1}, Lby6;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safeIdentifier(klass.name).identifier"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Ldv7;

    if-eqz v2, :cond_2

    check-cast v0, Ldv7;

    invoke-interface {v0}, Ldv7;->d()Lo54;

    move-result-object p0

    invoke-virtual {p0}, Lo54;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo54;->b()Ljava/lang/String;

    move-result-object v2

    const-string p0, "fqName.asString()"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lg1a;->M(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    instance-of v2, v0, Lqw0;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lqw0;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {p1, v2}, Ldcb;->e(Lqw0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v2, p1}, Lq82;->a(Lqw0;Ldcb;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Lqw0;Ldcb;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    sget-object p1, Lecb;->a:Lecb;

    :cond_0
    invoke-static {p0, p1}, Lq82;->a(Lqw0;Ldcb;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->C0(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p0, p0, Lvi8;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;
    .locals 8

    const-string v0, "kotlinType"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writeGenericType"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Ldcb;->d(Leh5;)Leh5;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->q(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ld7a;->a(Leh5;)Lsm9;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lyl9;->a:Lyl9;

    invoke-static {v0, p0, p1, p2}, Lrcb;->b(Lkotlin/reflect/jvm/internal/impl/types/m;Lgh5;Lrd5;Lfcb;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lfcb;->d()Z

    move-result p3

    invoke-static {p1, v1, p3}, Lrcb;->a(Lrd5;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p0, p1, p2}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->g()Leh5;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->k()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p3, p0}, Ldcb;->f(Ljava/util/Collection;)Leh5;

    move-result-object p0

    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->y(Leh5;)Leh5;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v1}, Lsbb;->c()Lpx0;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v1}, Lid3;->m(Lxt1;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p2, "error/NonExistentClass"

    invoke-interface {p1, p2}, Lrd5;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast v1, Lqw0;

    invoke-interface {p3, p0, v1}, Ldcb;->a(Leh5;Lqw0;)V

    return-object p1

    :cond_5
    instance-of v2, v1, Lqw0;

    if-eqz v2, :cond_8

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->c0(Leh5;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object v2

    const-string v0, "memberProjection.type"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v0, v3, :cond_6

    const-string p0, "java/lang/Object"

    invoke-interface {p1, p0}, Lrd5;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    const-string v0, "memberProjection.projectionKind"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, v1}, Lfcb;->f(Lkotlin/reflect/jvm/internal/impl/types/Variance;Z)Lfcb;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x5b

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Lrd5;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lrd5;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "arrays must have one type argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v2, :cond_d

    invoke-static {v1}, Lh05;->b(Lxt1;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lfcb;->c()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0, p0}, Lui3;->a(Lkotlin/reflect/jvm/internal/impl/types/m;Lgh5;)Lgh5;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Leh5;

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lfcb;->g()Lfcb;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p2}, Lfcb;->e()Z

    move-result p4

    if-eqz p4, :cond_a

    move-object p4, v1

    check-cast p4, Lqw0;

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->l0(Lqw0;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p1}, Lrd5;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_a
    check-cast v1, Lqw0;

    invoke-interface {v1}, Lqw0;->a()Lqw0;

    move-result-object p4

    const-string v0, "descriptor.original"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Ldcb;->b(Lqw0;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_c

    invoke-interface {v1}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne p4, v0, :cond_b

    invoke-interface {v1}, Lqw0;->b()Lxt1;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p4, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p4

    check-cast v1, Lqw0;

    :cond_b
    invoke-interface {v1}, Lqw0;->a()Lqw0;

    move-result-object p4

    const-string v0, "enumClassIfEnumEntry.original"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p3}, Lq82;->a(Lqw0;Ldcb;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lrd5;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_c
    move-object p1, p4

    :goto_1
    invoke-interface {p5, p0, p1, p2}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_d
    instance-of v0, v1, Lhcb;

    if-eqz v0, :cond_f

    check-cast v1, Lhcb;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->j(Lhcb;)Leh5;

    move-result-object p4

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->w(Leh5;)Leh5;

    move-result-object p4

    :cond_e
    move-object v0, p4

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->b()Lu74;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, v1, Lebb;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lfcb;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    check-cast v1, Lebb;

    invoke-interface {v1}, Lebb;->W()Lsm9;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no descriptor for type constructor of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->b()Lu74;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lq82;->d(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
