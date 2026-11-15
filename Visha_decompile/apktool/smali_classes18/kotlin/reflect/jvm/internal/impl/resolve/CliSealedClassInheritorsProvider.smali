.class public final Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;
.super Lk39;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;->a:Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk39;-><init>()V

    return-void
.end method

.method public static final b(Lqw0;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Z)V
    .locals 4

    sget-object v0, Lu82;->t:Lu82;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->a(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;Lu82;Le74;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxt1;

    instance-of v3, v1, Lqw0;

    if-eqz v3, :cond_0

    check-cast v1, Lqw0;

    invoke-interface {v1}, Lbn6;->m0()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lgy6;->getName()Lby6;

    move-result-object v1

    const-string v3, "descriptor.name"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_ALL_DESCRIPTORS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;->f(Lby6;Lor5;)Lpx0;

    move-result-object v1

    instance-of v3, v1, Lqw0;

    if-eqz v3, :cond_1

    check-cast v1, Lqw0;

    goto :goto_1

    :cond_1
    instance-of v3, v1, Lebb;

    if-eqz v3, :cond_2

    check-cast v1, Lebb;

    invoke-interface {v1}, Lebb;->k()Lqw0;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1, p0}, Ly82;->z(Lqw0;Lqw0;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_0

    invoke-interface {v1}, Lqw0;->D()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    const-string v3, "refinedDescriptor.unsubstitutedInnerClassesScope"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;->b(Lqw0;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Z)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Lqw0;Z)Ljava/util/Collection;
    .locals 3

    const-string p0, "sealedClass"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lqw0;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-eq p0, v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    if-nez p2, :cond_1

    invoke-interface {p1}, Lqw0;->b()Lxt1;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->q(Lxt1;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lxt1;

    instance-of v2, v2, Ldv7;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    check-cast v0, Lxt1;

    :goto_1
    instance-of v1, v0, Ldv7;

    if-eqz v1, :cond_4

    check-cast v0, Ldv7;

    invoke-interface {v0}, Ldv7;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-static {p1, p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;->b(Lqw0;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Z)V

    :cond_4
    invoke-interface {p1}, Lqw0;->D()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p2

    const-string v0, "sealedClass.unsubstitutedInnerClassesScope"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider;->b(Lqw0;Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Z)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider$computeSealedSubclasses$$inlined$sortedBy$1;

    invoke-direct {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/CliSealedClassInheritorsProvider$computeSealedSubclasses$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
