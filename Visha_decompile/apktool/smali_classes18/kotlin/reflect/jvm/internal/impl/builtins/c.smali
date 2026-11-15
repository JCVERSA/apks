.class public abstract Lkotlin/reflect/jvm/internal/impl/builtins/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->D:Lo54;

    invoke-interface {p0, v0}, Lmd;->a(Lo54;)Lgd;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lgd;->f()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e;->l:Lby6;

    invoke-static {p0, v0}, Lkotlin/collections/a;->m(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpf1;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lx15;

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lmd;Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Z)Lsm9;
    .locals 6

    const-string v0, "builtIns"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextReceiverTypes"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterTypes"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->g(Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p6

    add-int/2addr p4, p6

    if-nez p2, :cond_0

    const/4 p6, 0x0

    goto :goto_0

    :cond_0
    const/4 p6, 0x1

    :goto_0
    add-int/2addr p4, p6

    invoke-static {p0, p4, p7}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->f(Lkotlin/reflect/jvm/internal/impl/builtins/d;IZ)Lqw0;

    move-result-object p4

    if-eqz p2, :cond_1

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->t(Lmd;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Lmd;

    move-result-object p1

    :cond_1
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->s(Lmd;Lkotlin/reflect/jvm/internal/impl/builtins/d;I)Lmd;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Llbb;->b(Lmd;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->g(Lkotlin/reflect/jvm/internal/impl/types/j;Lqw0;Ljava/util/List;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lmd;Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;ZILjava/lang/Object;)Lsm9;
    .locals 9

    move/from16 v0, p8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->b(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lmd;Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Z)Lsm9;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Leh5;)Lby6;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->E:Lo54;

    invoke-interface {p0, v0}, Lmd;->a(Lo54;)Lgd;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lgd;->f()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->P0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ls0a;

    if-eqz v1, :cond_1

    check-cast p0, Ls0a;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lby6;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static final e(Leh5;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->o(Leh5;)Z

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->a(Leh5;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmcb;

    invoke-interface {v1}, Lmcb;->getType()Leh5;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static final f(Lkotlin/reflect/jvm/internal/impl/builtins/d;IZ)Lqw0;
    .locals 1

    const-string v0, "builtIns"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->X(I)Lqw0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->C(I)Lqw0;

    move-result-object p0

    :goto_0
    const-string p1, "if (isSuspendFunction) b\u2026tFunction(parameterCount)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/util/List;
    .locals 8

    const-string v0, "contextReceiverTypes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterTypes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    add-int/2addr v1, v4

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh5;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, p1

    :goto_2
    invoke-static {v0, p0}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    check-cast p2, Leh5;

    if-eqz p3, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lby6;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lby6;->h()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, p1

    :goto_4
    if-eqz v2, :cond_5

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->E:Lo54;

    const-string v5, "name"

    invoke-static {v5}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v5

    new-instance v6, Ls0a;

    invoke-virtual {v2}, Lby6;->b()Ljava/lang/String;

    move-result-object v2

    const-string v7, "name.asString()"

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Ls0a;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, p5, v4, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lo54;Ljava/util/Map;)V

    sget-object v2, Lmd;->u1:Lmd$a;

    invoke-virtual {p2}, Leh5;->getAnnotations()Lmd;

    move-result-object v4

    invoke-static {v4, v3}, Li81;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->x(Leh5;Lmd;)Leh5;

    move-result-object p2

    :cond_5
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_3

    :cond_6
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final h(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqw0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->B0(Lxt1;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->m(Lxt1;)Lp54;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->i(Lp54;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lp54;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 3

    invoke-virtual {p0}, Lp54;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lp54;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

    invoke-virtual {p0}, Lp54;->i()Lby6;

    move-result-object v1

    invoke-virtual {v1}, Lby6;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortName().asString()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp54;->l()Lo54;

    move-result-object p0

    invoke-virtual {p0}, Lo54;->e()Lo54;

    move-result-object p0

    const-string v2, "toSafe().parent()"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;->b(Ljava/lang/String;Lo54;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final j(Leh5;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->o(Leh5;)Z

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->r(Leh5;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->a(Leh5;)I

    move-result v0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Leh5;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->o(Leh5;)Z

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    const-string v0, "arguments.last().type"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l(Leh5;)Ljava/util/List;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->o(Leh5;)Z

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->a(Leh5;)I

    move-result v1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->m(Leh5;)Z

    move-result p0

    add-int/2addr v1, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->o(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->r(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final n(Lxt1;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->h(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final o(Leh5;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->n(Lxt1;)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static final p(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->h(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final q(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->h(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final r(Leh5;)Z
    .locals 1

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->C:Lo54;

    invoke-interface {p0, v0}, Lmd;->a(Lo54;)Lgd;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final s(Lmd;Lkotlin/reflect/jvm/internal/impl/builtins/d;I)Lmd;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->D:Lo54;

    invoke-interface {p0, v0}, Lmd;->h(Lo54;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lmd;->u1:Lmd$a;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/e;->l:Lby6;

    new-instance v4, Lx15;

    invoke-direct {v4, p2}, Lx15;-><init>(I)V

    invoke-static {v3, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v2, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lo54;Ljava/util/Map;)V

    invoke-static {p0, v2}, Li81;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final t(Lmd;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Lmd;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->C:Lo54;

    invoke-interface {p0, v0}, Lmd;->h(Lo54;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lmd;->u1:Lmd$a;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lo54;Ljava/util/Map;)V

    invoke-static {p0, v2}, Li81;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object p0

    :goto_0
    return-object p0
.end method
