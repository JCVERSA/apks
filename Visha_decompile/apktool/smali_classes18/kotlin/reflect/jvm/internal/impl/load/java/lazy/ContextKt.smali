.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lgj5;Lxt1;Lt85;ILyi5;)Lgj5;
    .locals 2

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;

    invoke-direct {v1, p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaTypeParameterResolver;-><init>(Lgj5;Lxt1;Lt85;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgj5;->f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    move-result-object v1

    :goto_0
    new-instance p0, Lgj5;

    invoke-direct {p0, v0, v1, p4}, Lgj5;-><init>(Le85;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lyi5;)V

    return-object p0
.end method

.method public static final b(Lgj5;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;)Lgj5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object v1

    invoke-virtual {p0}, Lgj5;->c()Lyi5;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lgj5;-><init>(Le85;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lyi5;)V

    return-object v0
.end method

.method public static final c(Lgj5;Lbx0;Lt85;I)Lgj5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt$childForClassOrPackage$1;

    invoke-direct {v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt$childForClassOrPackage$1;-><init>(Lgj5;Lbx0;)V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->a(Lgj5;Lxt1;Lt85;ILyi5;)Lgj5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lgj5;Lbx0;Lt85;IILjava/lang/Object;)Lgj5;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->c(Lgj5;Lbx0;Lt85;I)Lgj5;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lgj5;Lxt1;Lt85;I)Lgj5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgj5;->c()Lyi5;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->a(Lgj5;Lxt1;Lt85;ILyi5;)Lgj5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lgj5;Lxt1;Lt85;IILjava/lang/Object;)Lgj5;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->e(Lgj5;Lxt1;Lt85;I)Lgj5;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lgj5;Lmd;)Lu85;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->a()Lkd;

    move-result-object v0

    invoke-virtual {p0}, Lgj5;->b()Lu85;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->c(Lu85;Ljava/lang/Iterable;)Lu85;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lgj5;Lmd;)Lgj5;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lmd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object v1

    invoke-virtual {p0}, Lgj5;->f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    move-result-object v2

    sget-object v3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt$copyWithNewDefaultTypeQualifiers$1;

    invoke-direct {v4, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt$copyWithNewDefaultTypeQualifiers$1;-><init>(Lgj5;Lmd;)V

    invoke-static {v3, v4}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lgj5;-><init>(Le85;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lyi5;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final i(Lgj5;Le85;)Lgj5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgj5;

    invoke-virtual {p0}, Lgj5;->f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    move-result-object v1

    invoke-virtual {p0}, Lgj5;->c()Lyi5;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lgj5;-><init>(Le85;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lyi5;)V

    return-object v0
.end method
