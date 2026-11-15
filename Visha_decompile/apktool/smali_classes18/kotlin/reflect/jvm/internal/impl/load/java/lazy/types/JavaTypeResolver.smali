.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgj5;

.field public final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

.field public final c:Lbo8;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;


# direct methods
.method public constructor <init>(Lgj5;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    new-instance p1, Lbo8;

    invoke-direct {p1}, Lbo8;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c:Lbo8;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;-><init>(Loc3;Ljcb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;)Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    return-object p0
.end method

.method public static synthetic l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lq65;Lp85;ZILjava/lang/Object;)Leh5;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->k(Lq65;Lp85;Z)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lb75;)Lgd3;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-interface {p0}, Lb75;->y()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lid3;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lgd3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lb75;Lqw0;)Z
    .locals 0

    invoke-interface {p1}, Lb75;->t()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo85;

    invoke-static {p0}, Lw85;->a(Lo85;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object p0, Ln85;->a:Ln85;

    invoke-virtual {p0, p2}, Ln85;->b(Lqw0;)Lqw0;

    move-result-object p0

    invoke-interface {p0}, Lpx0;->m()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string p2, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhcb;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq p0, p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_0
    return p1
.end method

.method public final c(Lb75;Lp85;Lsbb;)Ljava/util/List;
    .locals 9

    invoke-interface {p1}, Lb75;->H()Z

    move-result v0

    const-string v1, "constructor.parameters"

    if-nez v0, :cond_1

    invoke-interface {p1}, Lb75;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p3}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2, p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d(Lb75;Ljava/util/List;Lsbb;Lp85;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Lb75;->t()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/16 v0, 0xa

    if-eq p2, p3, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhcb;

    new-instance p3, Locb;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-interface {p2}, Lgy6;->getName()Lby6;

    move-result-object p2

    invoke-virtual {p2}, Lby6;->b()Ljava/lang/String;

    move-result-object p2

    const-string v1, "p.name.asString()"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lid3;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lgd3;

    move-result-object p2

    invoke-direct {p3, p2}, Locb;-><init>(Leh5;)V

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p1}, Lb75;->t()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->j1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmz4;

    invoke-virtual {p3}, Lmz4;->a()I

    move-result v0

    invoke-virtual {p3}, Lmz4;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo85;

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcb;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object v1

    const-string v3, "parameter"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->p(Lo85;Lp85;Lhcb;)Lmcb;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {p2}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lb75;Ljava/util/List;Lsbb;Lp85;)Ljava/util/List;
    .locals 11

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcb;

    invoke-virtual {p4}, Lp85;->c()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->l(Lhcb;Lsbb;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, p4}, Lkotlin/reflect/jvm/internal/impl/types/n;->t(Lhcb;Lpc3;)Lmcb;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {v2}, Lgj5;->e()Lvx9;

    move-result-object v9

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lhcb;Lp85;Lsbb;Lb75;)V

    invoke-direct {v8, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lvx9;Lc74;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c:Lbo8;

    invoke-interface {p1}, Lb75;->H()Z

    move-result v3

    invoke-virtual {p4, v3}, Lp85;->j(Z)Lp85;

    move-result-object v3

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    invoke-virtual {v2, v1, v3, v4, v8}, Lbo8;->a(Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;)Lmcb;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e(Lb75;Lp85;Lsm9;)Lsm9;
    .locals 8

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lgj5;Lo65;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Llbb;->b(Lmd;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->f(Lb75;Lp85;)Lsbb;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->i(Lp85;)Z

    move-result v4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Leh5;->I0()Lsbb;

    move-result-object v0

    :cond_3
    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lb75;->H()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c(Lb75;Lp85;Lsbb;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lb75;Lp85;)Lsbb;
    .locals 3

    invoke-interface {p1}, Lb75;->j()La75;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->g(Lb75;)Lsbb;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Ls65;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ls65;

    invoke-interface {v1}, Ls65;->d()Lo54;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->j(Lb75;Lp85;Lo54;)Lqw0;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p2}, Lgj5;->a()Le85;

    move-result-object p2

    invoke-virtual {p2}, Le85;->n()Lnq6;

    move-result-object p2

    invoke-interface {p2, v1}, Lnq6;->a(Ls65;)Lqw0;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lpx0;->m()Lsbb;

    move-result-object p2

    if-nez p2, :cond_6

    :cond_2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->g(Lb75;)Lsbb;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Class type should have a FQ name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    instance-of p1, v0, Ls85;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    check-cast v0, Ls85;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Ls85;)Lhcb;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lhcb;->m()Lsbb;

    move-result-object p2

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :cond_6
    :goto_0
    return-object p2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown classifier kind: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lb75;)Lsbb;
    .locals 1

    new-instance v0, Lo54;

    invoke-interface {p1}, Lb75;->A()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object p1

    const-string v0, "topLevel(FqName(javaType.classifierQualifiedName))"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->d()Le92;

    move-result-object p0

    invoke-virtual {p0}, Le92;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;->d(Lxw0;Ljava/util/List;)Lqw0;

    move-result-object p0

    invoke-interface {p0}, Lpx0;->m()Lsbb;

    move-result-object p0

    const-string p1, "c.components.deserialize\u2026istOf(0)).typeConstructor"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Z
    .locals 2

    invoke-interface {p2}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    if-eq p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final i(Lp85;)Z
    .locals 2

    invoke-virtual {p1}, Lp85;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lp85;->h()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lp85;->b()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final j(Lb75;Lp85;Lo54;)Lqw0;
    .locals 7

    invoke-virtual {p2}, Lp85;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lv85;->a()Lo54;

    move-result-object v0

    invoke-static {p3, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->p()Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->c()Lqw0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v6, Ln85;->a:Ln85;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {v0}, Lgj5;->d()Lqq6;

    move-result-object v0

    invoke-interface {v0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ln85;->f(Ln85;Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/Integer;ILjava/lang/Object;)Lqw0;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v6, p3}, Ln85;->d(Lqw0;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lp85;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lp85;->b()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    move-result-object p2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b(Lb75;Lqw0;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-virtual {v6, p3}, Ln85;->b(Lqw0;)Lqw0;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p3
.end method

.method public final k(Lq65;Lp85;Z)Leh5;
    .locals 9

    const/4 v0, 0x1

    const-string v1, "arrayType"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lq65;->h()Lo85;

    move-result-object v1

    instance-of v2, v1, Lz75;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lz75;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lz75;->getType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v3

    :cond_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-direct {v2, v4, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lgj5;Lo65;Z)V

    if-eqz v3, :cond_3

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->O(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lsm9;

    move-result-object p0

    const-string p1, "it"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Lmd;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    aput-object v2, v1, v0

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>([Lmd;)V

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->x(Leh5;Lmd;)Leh5;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    invoke-virtual {p2}, Lp85;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lsm9;->P0(Z)Lsm9;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    invoke-virtual {p2}, Lp85;->h()Z

    move-result v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object p1

    invoke-virtual {p2}, Lp85;->h()Z

    move-result p2

    const-string v1, "c.module.builtIns.getArr\u2026mponentType, annotations)"

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_2

    :cond_4
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;Lmd;)Lsm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p2}, Lgj5;->d()Lqq6;

    move-result-object p2

    invoke-interface {p2}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p2

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p2, p3, p1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;Lmd;)Lsm9;

    move-result-object p2

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, p3, p1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;Lmd;)Lsm9;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lb75;Lp85;)Leh5;
    .locals 3

    invoke-virtual {p2}, Lp85;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lp85;->b()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lb75;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lb75;Lp85;Lsm9;)Lsm9;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lb75;)Lgd3;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p2, v0}, Lp85;->l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lp85;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lb75;Lp85;Lsm9;)Lsm9;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lb75;)Lgd3;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_UPPER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p2, v2}, Lp85;->l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lp85;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lb75;Lp85;Lsm9;)Lsm9;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lb75;)Lgd3;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;)V

    goto :goto_2

    :cond_5
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final o(Lo85;Lp85;)Leh5;
    .locals 7

    const-string v0, "attr"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lz75;

    if-eqz v0, :cond_1

    check-cast p1, Lz75;

    invoke-interface {p1}, Lz75;->getType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->R(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->Z()Lsm9;

    move-result-object p0

    :goto_0
    const-string p1, "{\n                val pr\u2026ns.unitType\n            }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lb75;

    if-eqz v0, :cond_2

    check-cast p1, Lb75;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->m(Lb75;Lp85;)Leh5;

    move-result-object p0

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lq65;

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Lq65;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lq65;Lp85;ZILjava/lang/Object;)Leh5;

    move-result-object p0

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lb95;

    const-string v1, "c.module.builtIns.defaultBound"

    if-eqz v0, :cond_6

    check-cast p1, Lb95;

    invoke-interface {p1}, Lb95;->s()Lo85;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, p1

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->y()Lsm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->y()Lsm9;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Lo85;Lp85;Lhcb;)Lmcb;
    .locals 8

    instance-of v0, p1, Lb95;

    if-eqz v0, :cond_4

    check-cast p1, Lb95;

    invoke-interface {p1}, Lb95;->s()Lo85;

    move-result-object v0

    invoke-interface {p1}, Lb95;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->h(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lgj5;

    invoke-static {p2, p1}, Lgmb;->a(Lgj5;Lb95;)Lgd;

    move-result-object p1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object p0

    if-eqz p1, :cond_2

    sget-object p2, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object v0

    invoke-static {v0, p1}, Li81;->I0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmd$a;->a(Ljava/util/List;)Lmd;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->x(Leh5;Lmd;)Leh5;

    move-result-object p0

    :cond_2
    invoke-static {p0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->f(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Lmcb;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/types/n;->t(Lhcb;Lpc3;)Lmcb;

    move-result-object p0

    :goto_2
    const-string p1, "{\n                val bo\u2026          }\n            }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance p3, Locb;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object p0

    invoke-direct {p3, v0, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    move-object p0, p3

    :goto_3
    return-object p0
.end method
