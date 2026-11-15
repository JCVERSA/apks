.class public final Lij5;
.super Lf3;
.source "SourceFile"


# instance fields
.field public final l:Lgj5;

.field public final m:Ls85;


# direct methods
.method public constructor <init>(Lgj5;Ls85;ILxt1;)V
    .locals 11

    const-string v0, "c"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object v2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lgj5;Lo65;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2}, Lv75;->getName()Lby6;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    sget-object v9, Lyt9;->a:Lyt9;

    invoke-virtual {p1}, Lgj5;->a()Le85;

    move-result-object v1

    invoke-virtual {v1}, Le85;->v()Lt6a;

    move-result-object v10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p4

    move-object v4, v0

    move v8, p3

    invoke-direct/range {v1 .. v10}, Lf3;-><init>(Lvx9;Lxt1;Lmd;Lby6;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILyt9;Lt6a;)V

    iput-object p1, p0, Lij5;->l:Lgj5;

    iput-object p2, p0, Lij5;->m:Ls85;

    return-void
.end method


# virtual methods
.method public C0(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "bounds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lij5;->l:Lgj5;

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->r()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-result-object v0

    iget-object v1, p0, Lij5;->l:Lgj5;

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->i(Lhcb;Ljava/util/List;Lgj5;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public F0(Leh5;)V
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public G0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lij5;->H0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final H0()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lij5;->m:Ls85;

    invoke-interface {v0}, Ls85;->getUpperBounds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lij5;->l:Lgj5;

    invoke-virtual {v0}, Lgj5;->d()Lqq6;

    move-result-object v0

    invoke-interface {v0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->i()Lsm9;

    move-result-object v0

    const-string v1, "c.module.builtIns.anyType"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lij5;->l:Lgj5;

    invoke-virtual {p0}, Lgj5;->d()Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object p0

    const-string v1, "c.module.builtIns.nullableAnyType"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
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

    check-cast v2, Lb75;

    iget-object v3, p0, Lij5;->l:Lgj5;

    invoke-virtual {v3}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v4 .. v9}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
