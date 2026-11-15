.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lmgb;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ljava/util/List;
    .locals 11

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-interface {v1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmcb;

    invoke-interface {v4}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v3

    invoke-interface {v3}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v3

    const-string v4, "type.constructor.parameters"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v1, v3}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmcb;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhcb;

    invoke-interface {v5}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Lmcb;->b()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v5}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v6, v7, :cond_4

    invoke-interface {v5}, Lmcb;->getType()Leh5;

    move-result-object v6

    invoke-virtual {v6}, Leh5;->L0()Lmgb;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    new-instance v7, Lf07;

    const-string v8, "parameter"

    invoke-static {v4, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, p1, v6, v5, v4}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lmgb;Lmcb;Lhcb;)V

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object v5

    :goto_3
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->b(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->c()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmcb;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmcb;

    invoke-interface {v4}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v6, v7, :cond_8

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhcb;

    invoke-interface {v6}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v6

    const-string v7, "type.constructor.parameters[index].upperBounds"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh5;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p1, v8, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->n(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v8

    invoke-virtual {v8}, Leh5;->L0()Lmgb;

    move-result-object v8

    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->b(Lgh5;)Lmgb;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Lmcb;->b()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v4}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v6, v8, :cond_7

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;

    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v4

    invoke-virtual {v4}, Leh5;->L0()Lmgb;

    move-result-object v4

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->b(Lgh5;)Lmgb;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5}, Lmcb;->getType()Leh5;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lf07;

    invoke-virtual {v4}, Lf07;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->h(Ljava/util/List;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_9
    return-object v3

    :cond_a
    :goto_6
    return-object v2
.end method

.method public static final b(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lsm9;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/d;->a(Lmgb;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/d;->c(Lmgb;Ljava/util/List;)Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Lmgb;Ljava/util/List;)Lsm9;
    .locals 7

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lsm9;

    move-result-object p0

    return-object p0
.end method
