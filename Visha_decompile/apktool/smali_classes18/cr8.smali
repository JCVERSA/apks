.class public Lcr8;
.super Lbr8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbr8;-><init>()V

    return-void
.end method

.method public static m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lke5;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/a;->e:Lkotlin/reflect/jvm/internal/a;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/jvm/internal/FunctionReference;)Lle5;
    .locals 3

    new-instance p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b(Ljava/lang/Class;)Lde5;
    .locals 0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/CachesKt;->c(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lke5;
    .locals 0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/CachesKt;->d(Ljava/lang/Class;)Lke5;

    move-result-object p0

    return-object p0
.end method

.method public d(Lkotlin/jvm/internal/MutablePropertyReference0;)Lwe5;
    .locals 3

    new-instance p0, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;
    .locals 3

    new-instance p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public f(Lkotlin/jvm/internal/MutablePropertyReference2;)Lye5;
    .locals 2

    new-instance p0, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Lkotlin/jvm/internal/PropertyReference0;)Lbf5;
    .locals 3

    new-instance p0, Lkotlin/reflect/jvm/internal/KProperty0Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/KProperty0Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public h(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;
    .locals 3

    new-instance p0, Lkotlin/reflect/jvm/internal/KProperty1Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public i(Lkotlin/jvm/internal/PropertyReference2;)Ldf5;
    .locals 2

    new-instance p0, Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-static {p1}, Lcr8;->m(Lkotlin/jvm/internal/CallableReference;)Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/KProperty2Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public j(Lg84;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lkotlin/reflect/jvm/ReflectLambdaKt;->a(Lx74;)Lle5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lclb;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KFunctionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lbr8;->j(Lg84;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcr8;->j(Lg84;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l(Lhe5;Ljava/util/List;Z)Lff5;
    .locals 0

    instance-of p0, p1, Lkw0;

    if-eqz p0, :cond_0

    check-cast p1, Lkw0;

    invoke-interface {p1}, Lkw0;->d()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lkotlin/reflect/jvm/internal/CachesKt;->a(Ljava/lang/Class;Ljava/util/List;Z)Lff5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lje5;->b(Lhe5;Ljava/util/List;ZLjava/util/List;)Lff5;

    move-result-object p0

    return-object p0
.end method
