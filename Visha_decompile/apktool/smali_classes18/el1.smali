.class public Lel1;
.super Lcu1;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcu1;-><init>()V

    iput-object p1, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lti8;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lzfb;

    invoke-virtual {p0, p1, p2}, Lel1;->q(Lti8;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic l(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lzfb;

    invoke-virtual {p0, p1, p2}, Lel1;->p(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    return-object p0
.end method

.method public p(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    return-object p2
.end method

.method public q(Lti8;Lzfb;)Lkotlin/reflect/jvm/internal/KCallableImpl;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->Z()Lro8;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p2, v0

    invoke-interface {p1}, Lxnb;->y()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_5

    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2

    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2

    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_5

    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty2Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2

    :cond_5
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported property: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty1Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2

    :cond_7
    new-instance p2, Lkotlin/reflect/jvm/internal/KProperty0Impl;

    iget-object p0, p0, Lel1;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/KProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lti8;)V

    return-object p2
.end method
