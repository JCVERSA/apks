.class public abstract Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$a;
    }
.end annotation


# direct methods
.method public static final a(Leh5;)Luf;
    .locals 7

    const-string v0, "type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lky3;->b(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lky3;->c(Leh5;)Lsm9;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object v0

    invoke-static {p0}, Lky3;->d(Leh5;)Lsm9;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object v1

    new-instance v2, Luf;

    invoke-virtual {v0}, Luf;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh5;

    invoke-static {v3}, Lky3;->c(Leh5;)Lsm9;

    move-result-object v3

    invoke-virtual {v1}, Luf;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh5;

    invoke-static {v4}, Lky3;->d(Leh5;)Lsm9;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v3

    invoke-static {v3, p0}, Lddb;->b(Lmgb;Leh5;)Lmgb;

    move-result-object v3

    invoke-virtual {v0}, Luf;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh5;

    invoke-static {v0}, Lky3;->c(Leh5;)Lsm9;

    move-result-object v0

    invoke-virtual {v1}, Luf;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-static {v1}, Lky3;->d(Leh5;)Lsm9;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v0

    invoke-static {v0, p0}, Lddb;->b(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->d(Leh5;)Z

    move-result v1

    const-string v2, "type.builtIns.nothingType"

    if-eqz v1, :cond_3

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lor0;

    invoke-interface {v0}, Lor0;->b()Lmcb;

    move-result-object v0

    invoke-interface {v0}, Lmcb;->getType()Leh5;

    move-result-object v1

    const-string v3, "typeProjection.type"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->b(Leh5;Leh5;)Leh5;

    move-result-object v1

    invoke-interface {v0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    new-instance v0, Luf;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->H()Lsm9;

    move-result-object v3

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->b(Leh5;Leh5;)Leh5;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only nontrivial projections should have been captured, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance v0, Luf;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object p0

    const-string v2, "type.builtIns.nullableAnyType"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v5, "typeConstructor.parameters"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmcb;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhcb;

    const-string v6, "typeParameter"

    invoke-static {v4, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->g(Lmcb;Lhcb;)Lfbb;

    move-result-object v4

    invoke-interface {v5}, Lmcb;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->d(Lfbb;)Luf;

    move-result-object v4

    invoke-virtual {v4}, Luf;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfbb;

    invoke-virtual {v4}, Luf;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfbb;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfbb;

    invoke-virtual {v5}, Lfbb;->d()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v4, 0x1

    :cond_9
    :goto_2
    new-instance v0, Luf;

    if-eqz v4, :cond_a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->H()Lsm9;

    move-result-object v1

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->e(Leh5;Ljava/util/List;)Leh5;

    move-result-object v1

    :goto_3
    invoke-static {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->e(Leh5;Ljava/util/List;)Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_b
    :goto_4
    new-instance v0, Luf;

    invoke-direct {v0, p0, p0}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b(Leh5;Leh5;)Leh5;
    .locals 0

    invoke-virtual {p1}, Leh5;->J0()Z

    move-result p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->q(Leh5;Z)Leh5;

    move-result-object p0

    const-string p1, "makeNullableIfNeeded(this, type.isMarkedNullable)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lmcb;Z)Lmcb;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lmcb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object v0

    const-string v1, "typeProjection.type"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/n;->c(Leh5;Le74;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    const-string v2, "typeProjection.projectionKind"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object p0

    new-instance p1, Locb;

    invoke-virtual {p0}, Luf;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh5;

    invoke-direct {p1, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object p0

    invoke-virtual {p0}, Luf;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh5;

    new-instance p1, Locb;

    invoke-direct {p1, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1

    :cond_4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->f(Lmcb;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lfbb;)Luf;
    .locals 7

    invoke-virtual {p0}, Lfbb;->a()Leh5;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-virtual {v0}, Luf;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh5;

    invoke-virtual {p0}, Lfbb;->b()Leh5;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->a(Leh5;)Luf;

    move-result-object v2

    invoke-virtual {v2}, Luf;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh5;

    invoke-virtual {v2}, Luf;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh5;

    new-instance v4, Luf;

    new-instance v5, Lfbb;

    invoke-virtual {p0}, Lfbb;->c()Lhcb;

    move-result-object v6

    invoke-direct {v5, v6, v0, v3}, Lfbb;-><init>(Lhcb;Leh5;Leh5;)V

    new-instance v0, Lfbb;

    invoke-virtual {p0}, Lfbb;->c()Lhcb;

    move-result-object p0

    invoke-direct {v0, p0, v1, v2}, Lfbb;-><init>(Lhcb;Leh5;Leh5;)V

    invoke-direct {v4, v5, v0}, Luf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static final e(Leh5;Ljava/util/List;)Leh5;
    .locals 6

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Ljava/util/List;->size()I

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbb;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->h(Lfbb;)Lmcb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lscb;->e(Leh5;Ljava/util/List;Lmd;Ljava/util/List;ILjava/lang/Object;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lmcb;)Lmcb;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$b;-><init>()V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    const-string v1, "create(object : TypeCons\u2026ojection\n        }\n    })"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->t(Lmcb;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lmcb;Lhcb;)Lfbb;
    .locals 4

    invoke-interface {p1}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->c(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lmcb;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "type"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lfbb;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->H()Lsm9;

    move-result-object v1

    const-string v3, "typeParameter.builtIns.nothingType"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p0}, Lfbb;-><init>(Lhcb;Leh5;Leh5;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lfbb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object v1

    const-string v2, "typeParameter.builtIns.nullableAnyType"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0, v1}, Lfbb;-><init>(Lhcb;Leh5;Leh5;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lfbb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object v1

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p0}, Lfbb;-><init>(Lhcb;Leh5;Leh5;)V

    :goto_0
    return-object v0
.end method

.method public static final h(Lfbb;)Lmcb;
    .locals 2

    invoke-virtual {p0}, Lfbb;->d()Z

    invoke-virtual {p0}, Lfbb;->a()Leh5;

    move-result-object v0

    invoke-virtual {p0}, Lfbb;->b()Leh5;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lfbb;->c()Lhcb;

    move-result-object v0

    invoke-interface {v0}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfbb;->a()Leh5;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->n0(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfbb;->c()Lhcb;

    move-result-object v0

    invoke-interface {v0}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Locb;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->i(Lfbb;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    invoke-virtual {p0}, Lfbb;->b()Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lfbb;->b()Leh5;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->p0(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Locb;

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->i(Lfbb;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    invoke-virtual {p0}, Lfbb;->a()Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_1

    :cond_2
    new-instance v0, Locb;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->i(Lfbb;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    invoke-virtual {p0}, Lfbb;->b()Leh5;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Locb;

    invoke-virtual {p0}, Lfbb;->a()Leh5;

    move-result-object p0

    invoke-direct {v0, p0}, Locb;-><init>(Leh5;)V

    :goto_1
    return-object v0
.end method

.method public static final i(Lfbb;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 0

    invoke-virtual {p0}, Lfbb;->c()Lhcb;

    move-result-object p0

    invoke-interface {p0}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    if-ne p1, p0, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_0
    return-object p1
.end method
