.class public final Lkd;
.super Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V
    .locals 1

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Z)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lgd;

    invoke-virtual {p0, p1, p2}, Lkd;->u(Lgd;Z)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Lo54;
    .locals 0

    check-cast p1, Lgd;

    invoke-virtual {p0, p1}, Lkd;->v(Lgd;)Lo54;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgd;

    invoke-virtual {p0, p1}, Lkd;->w(Lgd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lgd;

    invoke-virtual {p0, p1}, Lkd;->x(Lgd;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public u(Lgd;Z)Ljava/lang/Iterable;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lgd;->f()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lby6;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpf1;

    if-eqz p2, :cond_1

    sget-object v3, Lyc5;->c:Lby6;

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lkd;->y(Lpf1;)Ljava/util/List;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public v(Lgd;)Lo54;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lgd;->d()Lo54;

    move-result-object p0

    return-object p0
.end method

.method public w(Lgd;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->i(Lgd;)Lqw0;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public x(Lgd;)Ljava/lang/Iterable;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->i(Lgd;)Lqw0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    :goto_0
    return-object p0
.end method

.method public final y(Lpf1;)Ljava/util/List;
    .locals 2

    instance-of v0, p1, Lvh;

    if-eqz v0, :cond_0

    check-cast p1, Lvh;

    invoke-virtual {p1}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpf1;

    invoke-virtual {p0, v1}, Lkd;->y(Lpf1;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lfb3;

    if-eqz p0, :cond_1

    check-cast p1, Lfb3;

    invoke-virtual {p1}, Lfb3;->c()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method
