.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;
.super Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;
.source "SourceFile"


# instance fields
.field public final n:Lqw0;

.field public final o:Ls65;

.field public final p:Z

.field public final q:Lx17;

.field public final r:Lx17;

.field public final s:Lx17;

.field public final t:Lx17;

.field public final u:Lgn6;


# direct methods
.method public constructor <init>(Lgj5;Lqw0;Ls65;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;-><init>(Lgj5;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;)V

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->n:Lqw0;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    .line 5
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p:Z

    .line 6
    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;

    invoke-direct {p3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$constructors$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lgj5;)V

    invoke-interface {p2, p3}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->q:Lx17;

    .line 7
    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$nestedClassIndex$1;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$nestedClassIndex$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    invoke-interface {p2, p3}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->r:Lx17;

    .line 8
    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$generatedNestedClassNames$1;

    invoke-direct {p3, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$generatedNestedClassNames$1;-><init>(Lgj5;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    invoke-interface {p2, p3}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->s:Lx17;

    .line 9
    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    invoke-interface {p2, p3}, Lvx9;->c(Lc74;)Lx17;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->t:Lx17;

    .line 10
    invoke-virtual {p1}, Lgj5;->e()Lvx9;

    move-result-object p2

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$nestedClasses$1;

    invoke-direct {p3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$nestedClasses$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lgj5;)V

    invoke-interface {p2, p3}, Lvx9;->a(Le74;)Lgn6;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->u:Lgn6;

    return-void
.end method

.method public synthetic constructor <init>(Lgj5;Lqw0;Ls65;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;-><init>(Lgj5;Lqw0;Ls65;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    return-void
.end method

.method public static final synthetic M(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic N(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->f0()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Lx17;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->t:Lx17;

    return-object p0
.end method

.method public static final synthetic P(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Lx17;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->s:Lx17;

    return-object p0
.end method

.method public static final synthetic Q(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Ls65;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    return-object p0
.end method

.method public static final synthetic R(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)Lx17;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->r:Lx17;

    return-object p0
.end method

.method public static final synthetic S(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lc75;)Lt65;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->H0(Lc75;)Lt65;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic T(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lby6;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->J0(Lby6;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic U(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lby6;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->K0(Lby6;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Ls75;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;ILjava/lang/Object;)La85;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->j0(Ls75;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)La85;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Lby6;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->c0()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-virtual {v1}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->b(Lby6;Lor5;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti8;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v0, v2}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final B0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lko6;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v4

    const-string v5, "builtinWithErasedParameters.original"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0, v0, v1, v2}, Lko6;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic C()Lxt1;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public final C0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z
    .locals 5

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    const-string v1, "function.name"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lri8;->a(Lby6;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lby6;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->A0(Lby6;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti8;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$isVisibleAsFunctionInCurrentClass$1$1$1;

    invoke-direct {v4, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$isVisibleAsFunctionInCurrentClass$1$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    invoke-virtual {p0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o0(Lti8;Le74;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lxnb;->y()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v3

    invoke-virtual {v3}, Lby6;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "function.name.asString()"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lxc5;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->q0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->s0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result p0

    if-nez p0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public final D0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->h0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->g0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final E0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;Lby6;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v1

    const-string v2, "identifier(nameInJava)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->m0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->r0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p1, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->g0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final F0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 3

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSuspend()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    const-string v2, "descriptor.name"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->n0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_3
    return-object v1
.end method

.method public G(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0}, Ls65;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result p0

    return p0
.end method

.method public G0(Lby6;Lor5;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->l()Lqr5;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-static {v0, p2, p0, p1}, Lfmb;->a(Lqr5;Lor5;Lqw0;Lby6;)V

    return-void
.end method

.method public H(Ls75;Ljava/util/List;Leh5;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$a;
    .locals 8

    const-string v0, "method"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodTypeParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueParameters"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->s()Laj9;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Laj9;->b(Ls75;Lqw0;Leh5;Leh5;Ljava/util/List;Ljava/util/List;)Laj9$b;

    move-result-object p0

    const-string p1, "c.components.signaturePr\u2026dTypeParameters\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$a;

    invoke-virtual {p0}, Laj9$b;->d()Leh5;

    move-result-object v1

    const-string p2, "propagated.returnType"

    invoke-static {v1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Laj9$b;->c()Leh5;

    move-result-object v2

    invoke-virtual {p0}, Laj9$b;->f()Ljava/util/List;

    move-result-object v3

    const-string p2, "propagated.valueParameters"

    invoke-static {v3, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Laj9$b;->e()Ljava/util/List;

    move-result-object v4

    const-string p2, "propagated.typeParameters"

    invoke-static {v4, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Laj9$b;->g()Z

    move-result v5

    invoke-virtual {p0}, Laj9$b;->b()Ljava/util/List;

    move-result-object v6

    const-string p0, "propagated.errors"

    invoke-static {v6, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$a;-><init>(Leh5;Leh5;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p1
.end method

.method public final H0(Lc75;)Lt65;
    .locals 9

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v1

    invoke-static {v1, p1}, Lfj5;->a(Lgj5;Lo65;)Lmd;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v2

    invoke-virtual {v2}, Lgj5;->a()Le85;

    move-result-object v2

    invoke-virtual {v2}, Le85;->t()Lj85;

    move-result-object v2

    invoke-interface {v2, p1}, Lj85;->a(Lk75;)Li85;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lt65;->o1(Lqw0;Lmd;ZLyt9;)Lt65;

    move-result-object v1

    const-string v2, "createJavaConstructor(\n \u2026ce(constructor)\n        )"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v2

    invoke-interface {v0}, Lqw0;->r()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v1, p1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->e(Lgj5;Lxt1;Lt85;I)Lgj5;

    move-result-object v2

    invoke-interface {p1}, Lc75;->f()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->K(Lgj5;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$b;

    move-result-object p0

    invoke-interface {v0}, Lqw0;->r()Ljava/util/List;

    move-result-object v4

    const-string v5, "classDescriptor.declaredTypeParameters"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p1}, Lt85;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls85;

    invoke-virtual {v2}, Lgj5;->f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    move-result-object v8

    invoke-interface {v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Ls85;)Lhcb;

    move-result-object v7

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4, v6}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1}, Lt75;->getVisibility()Ltfc;

    move-result-object v6

    invoke-static {v6}, Lgmb;->d(Ltfc;)Lc92;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lnw0;->m1(Ljava/util/List;Lc92;Ljava/util/List;)Lnw0;

    invoke-virtual {v1, v3}, Lt65;->T0(Z)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$b;->b()Z

    move-result p0

    invoke-virtual {v1, p0}, Lt65;->U0(Z)V

    invoke-interface {v0}, Lqw0;->q()Lsm9;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    invoke-virtual {v2}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->h()Ld85;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Ld85;->b(Lk75;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    return-object v1
.end method

.method public final I0(Lc85;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v1

    invoke-static {v1, v0}, Lfj5;->a(Lgj5;Lo65;)Lmd;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lv75;->getName()Lby6;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v4

    invoke-virtual {v4}, Lgj5;->a()Le85;

    move-result-object v4

    invoke-virtual {v4}, Le85;->t()Lj85;

    move-result-object v4

    invoke-interface {v4, v0}, Lj85;->a(Lk75;)Li85;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v1, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->k1(Lxt1;Lmd;Lby6;Lyt9;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    move-result-object v1

    const-string v2, "createJavaMethod(\n      \u2026omponent), true\n        )"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v3

    invoke-virtual {v3}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lc85;->getType()Lo85;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z()Lro8;

    move-result-object v8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v11

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;->a(ZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v13

    sget-object v14, Lb92;->e:Lc92;

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v15}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->j1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Ljava/util/Map;)Lbm9;

    invoke-virtual {v1, v3, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->n1(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v2

    invoke-virtual {v2}, Lgj5;->a()Le85;

    move-result-object v2

    invoke-virtual {v2}, Le85;->h()Ld85;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ld85;->e(Lr75;Lkotlin/reflect/jvm/internal/impl/descriptors/g;)V

    return-object v1
.end method

.method public final J0(Lby6;)Ljava/util/Collection;
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->d(Lby6;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls75;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->I(Ls75;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final K0(Lby6;)Ljava/util/Collection;
    .locals 3

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->y0(Lby6;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final L0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->n:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->l(Lby6;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->y0(Lby6;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-virtual {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->B0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method public final V(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/c;ILs75;Leh5;Leh5;)V
    .locals 13

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Lv75;->getName()Lby6;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lkotlin/reflect/jvm/internal/impl/types/n;->n(Leh5;)Leh5;

    move-result-object v7

    const-string v0, "makeNotNullable(returnType)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ls75;->N()Z

    move-result v8

    if-eqz p6, :cond_0

    invoke-static/range {p6 .. p6}, Lkotlin/reflect/jvm/internal/impl/types/n;->n(Leh5;)Leh5;

    move-result-object v0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->t()Lj85;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lj85;->a(Lk75;)Li85;

    move-result-object v12

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final W(Ljava/util/Collection;Lby6;Ljava/util/Collection;Z)V
    .locals 6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->c()Led3;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lv82;->d(Lby6;Ljava/util/Collection;Ljava/util/Collection;Lqw0;Led3;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object p2

    const-string p3, "resolveOverridesForNonSt\u2026.overridingUtil\n        )"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    const-string v2, "resolvedOverride"

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->g0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    :goto_1
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final X(Lby6;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le74;)V
    .locals 2

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v0, p5, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->E0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;Lby6;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    invoke-static {p4, v1}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p5, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->D0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    invoke-static {p4, v1}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->F0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    invoke-static {p4, v0}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Y(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Le74;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti8;

    invoke-virtual {p0, v0, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->i0(Lti8;Le74;)La85;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final Z(Lby6;Ljava/util/Collection;)V
    .locals 6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->d(Lby6;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->P0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ls75;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->k0(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Ls75;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;ILjava/lang/Object;)La85;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a0(Lu82;Le74;)Ljava/util/LinkedHashSet;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v0

    invoke-interface {v0}, Lpx0;->m()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh5;

    invoke-virtual {v2}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->a()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->a()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->c()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->l(Lu82;Le74;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object p2

    invoke-virtual {p2}, Lgj5;->a()Le85;

    move-result-object p2

    invoke-virtual {p2}, Le85;->w()Li8a;

    move-result-object p2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Li8a;->a(Lgj5;Lqw0;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public b(Lby6;Lor5;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->G0(Lby6;Lor5;)V

    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->b(Lby6;Lor5;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeMemberIndex$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeMemberIndex$1;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;-><init>(Ls65;Le74;)V

    return-object v0
.end method

.method public c(Lby6;Lor5;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->G0(Lby6;Lor5;)V

    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c(Lby6;Lor5;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Ljava/util/Collection;
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-interface {p0}, Lpx0;->m()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->d()Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->g(Lqw0;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final d0(Lnw0;)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0}, Ls65;->v()Ljava/util/Collection;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object v9

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ls75;

    invoke-interface {v4}, Lv75;->getName()Lby6;

    move-result-object v4

    sget-object v5, Lyc5;->c:Lby6;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ls75;

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ls75;->getReturnType()Lo85;

    move-result-object v1

    instance-of v2, v1, Lq65;

    if-eqz v2, :cond_2

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v3

    invoke-virtual {v3}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v3

    check-cast v1, Lq65;

    invoke-virtual {v3, v1, v9, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->k(Lq65;Lp85;Z)Leh5;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v4

    invoke-virtual {v4}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v4

    invoke-interface {v1}, Lq65;->h()Lo85;

    move-result-object v1

    invoke-virtual {v4, v1, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v3

    invoke-virtual {v3}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Leh5;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Leh5;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v5, v10

    invoke-virtual/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->V(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/c;ILs75;Leh5;Leh5;)V

    :cond_3
    const/4 v1, 0x0

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v11, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v10, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ls75;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v2

    invoke-virtual {v2}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v2

    invoke-interface {v5}, Ls75;->getReturnType()Lo85;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v6

    add-int v4, v1, v11

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->V(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/c;ILs75;Leh5;Leh5;)V

    move v1, v10

    goto :goto_3

    :cond_5
    return-object v8
.end method

.method public final e0()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0}, Ls65;->o()Z

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v1}, Ls65;->L()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v1}, Ls65;->G()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v1

    sget-object v2, Lmd;->u1:Lmd$a;

    invoke-virtual {v2}, Lmd$a;->b()Lmd;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v3

    invoke-virtual {v3}, Lgj5;->a()Le85;

    move-result-object v3

    invoke-virtual {v3}, Le85;->t()Lj85;

    move-result-object v3

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v3, v4}, Lj85;->a(Lk75;)Li85;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lt65;->o1(Lqw0;Lmd;ZLyt9;)Lt65;

    move-result-object v2

    const-string v3, "createJavaConstructor(\n \u2026.source(jClass)\n        )"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->d0(Lnw0;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lt65;->U0(Z)V

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->w0(Lqw0;)Lc92;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnw0;->l1(Ljava/util/List;Lc92;)Lnw0;

    invoke-virtual {v2, v4}, Lt65;->T0(Z)V

    invoke-interface {v1}, Lqw0;->q()Lsm9;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->h()Ld85;

    move-result-object v0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0, p0, v2}, Ld85;->b(Lk75;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    return-object v2
.end method

.method public f(Lby6;Lor5;)Lpx0;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->G0(Lby6;Lor5;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->B()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->u:Lgn6;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqw0;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->u:Lgn6;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lpx0;

    :goto_0
    return-object p2
.end method

.method public final f0()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v0

    sget-object v1, Lmd;->u1:Lmd$a;

    invoke-virtual {v1}, Lmd$a;->b()Lmd;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v2

    invoke-virtual {v2}, Lgj5;->a()Le85;

    move-result-object v2

    invoke-virtual {v2}, Le85;->t()Lj85;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v2, v3}, Lj85;->a(Lk75;)Li85;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lt65;->o1(Lqw0;Lmd;ZLyt9;)Lt65;

    move-result-object v1

    const-string v2, "createJavaConstructor(\n \u2026.source(jClass)\n        )"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->l0(Lnw0;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lt65;->U0(Z)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->w0(Lqw0;)Lc92;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lnw0;->l1(Ljava/util/List;Lc92;)Lnw0;

    invoke-virtual {v1, v3}, Lt65;->T0(Z)V

    invoke-interface {v0}, Lqw0;->q()Lsm9;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    return-object v1
.end method

.method public final g0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 2

    check-cast p3, Ljava/lang/Iterable;

    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final h0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 3

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    const-string v1, "overridden.name"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->B0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p2

    const-string v1, "overridden.valueParameters"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p2

    const-string v0, "override.valueParameters"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    invoke-static {v1, p2, p1}, Ldlb;->a(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->m(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->t()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->f()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->I:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    :cond_3
    return-object v1
.end method

.method public final i0(Lti8;Le74;)La85;
    .locals 11

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o0(Lti8;Le74;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->u0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1}, Lxnb;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->v0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-interface {v0}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    :cond_2
    new-instance v10, Lo75;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v2

    invoke-direct {v10, v2, v0, p2, p1}, Lo75;-><init>(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lti8;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z()Lro8;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v7

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    invoke-interface {v0}, Ldd;->getAnnotations()Lmd;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v0}, Ldu1;->getSource()Lyt9;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Ls82;->k(Lti8;Lmd;ZZZLyt9;)Lwi8;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->getType()Leh5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwi8;->K0(Leh5;)V

    const-string p1, "createGetter(\n          \u2026escriptor.type)\n        }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p1

    const-string v0, "setterMethod.valueParameters"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ldd;->getAnnotations()Lmd;

    move-result-object v3

    invoke-interface {p1}, Ldd;->getAnnotations()Lmd;

    move-result-object v4

    invoke-interface {p2}, Lbn6;->getVisibility()Lc92;

    move-result-object v8

    invoke-interface {p2}, Ldu1;->getSource()Lyt9;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v9}, Ls82;->m(Lti8;Lmd;Lmd;ZZZLc92;Lyt9;)Lyi8;

    move-result-object v1

    invoke-virtual {v1, p2}, Lsi8;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No parameter found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v10, p0, v1}, Lui8;->P0(Lwi8;Lxi8;)V

    return-object v10
.end method

.method public final j0(Ls75;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)La85;
    .locals 15

    move-object/from16 v6, p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-static {v0, v6}, Lfj5;->a(Lgj5;Lo65;)Lmd;

    move-result-object v8

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lt75;->getVisibility()Ltfc;

    move-result-object v0

    invoke-static {v0}, Lgmb;->d(Ltfc;)Lc92;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lv75;->getName()Lby6;

    move-result-object v12

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->t()Lj85;

    move-result-object v0

    invoke-interface {v0, v6}, Lj85;->a(Lk75;)Li85;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p3

    invoke-static/range {v7 .. v14}, La85;->a1(Lxt1;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZLby6;Lyt9;Z)La85;

    move-result-object v7

    const-string v0, "create(\n            owne\u2026inal = */ false\n        )"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v0

    invoke-static {v7, v0}, Ls82;->d(Lti8;Lmd;)Lwi8;

    move-result-object v8

    const-string v0, "createDefaultGetter(prop\u2026iptor, Annotations.EMPTY)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0}, Lui8;->P0(Lwi8;Lxi8;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->f(Lgj5;Lxt1;Lt85;IILjava/lang/Object;)Lgj5;

    move-result-object v0

    move-object v1, p0

    invoke-virtual {p0, v6, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->q(Ls75;Lgj5;)Leh5;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v6, p2

    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z()Lro8;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v5

    move-object v0, v7

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lui8;->W0(Leh5;Ljava/util/List;Lro8;Lro8;Ljava/util/List;)V

    invoke-virtual {v8, v6}, Lwi8;->K0(Leh5;)V

    return-object v7
.end method

.method public l(Lu82;Le74;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->r:Lx17;

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->t:Lx17;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lnw0;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v1}, Ls65;->E()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lq85;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZZLhcb;ILjava/lang/Object;)Lp85;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    move v8, v4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v8, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc85;

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v6

    invoke-virtual {v6}, Lgj5;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v6

    invoke-interface {v5}, Lc85;->getType()Lo85;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lo85;Lp85;)Leh5;

    move-result-object v11

    invoke-interface {v5}, Lc85;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v6

    invoke-virtual {v6}, Lgj5;->a()Le85;

    move-result-object v6

    invoke-virtual {v6}, Le85;->m()Lqq6;

    move-result-object v6

    invoke-interface {v6}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v6

    invoke-virtual {v6, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->k(Leh5;)Leh5;

    move-result-object v6

    :goto_1
    move-object v15, v6

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :goto_2
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    sget-object v6, Lmd;->u1:Lmd$a;

    invoke-virtual {v6}, Lmd$a;->b()Lmd;

    move-result-object v9

    invoke-interface {v5}, Lv75;->getName()Lby6;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v6

    invoke-virtual {v6}, Lgj5;->a()Le85;

    move-result-object v6

    invoke-virtual {v6}, Le85;->t()Lj85;

    move-result-object v6

    invoke-interface {v6, v5}, Lj85;->a(Lk75;)Li85;

    move-result-object v16

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move-object/from16 v18, v14

    move/from16 v14, v17

    invoke-direct/range {v5 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    move-object/from16 v5, v18

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final m0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->k(Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->t()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->f()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p0
.end method

.method public bridge synthetic n(Lu82;Le74;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->a0(Lu82;Le74;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public final n0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p0

    const-string v0, "valueParameters"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lknb;->getType()Leh5;

    move-result-object v2

    invoke-virtual {v2}, Leh5;->I0()Lsbb;

    move-result-object v2

    invoke-interface {v2}, Lsbb;->c()Lpx0;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->m(Lxt1;)Lp54;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lp54;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lp54;->l()Lo54;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/e;->q:Lo54;

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Li81;->g0(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->m(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p1

    invoke-interface {p0}, Lknb;->getType()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmcb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->j(Leh5;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-object p1, p0

    check-cast p1, Lbm9;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->c1(Z)V

    :goto_3
    return-object p0

    :cond_5
    :goto_4
    return-object v1
.end method

.method public o(Ljava/util/Collection;Lby6;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0}, Ls65;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->f(Lby6;)Lc85;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object v0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->f(Lby6;)Lc85;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->I0(Lc85;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v1

    invoke-virtual {v1}, Lgj5;->a()Le85;

    move-result-object v1

    invoke-virtual {v1}, Le85;->w()Li8a;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-interface {v1, v0, p0, p2, p1}, Li8a;->d(Lgj5;Lqw0;Lby6;Ljava/util/Collection;)V

    return-void
.end method

.method public final o0(Lti8;Le74;)Z
    .locals 2

    invoke-static {p1}, Li75;->a(Lti8;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->u0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->v0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lxnb;->y()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p0

    invoke-interface {v0}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p1

    if-ne p0, p1, :cond_3

    move v1, p2

    :cond_3
    return v1
.end method

.method public bridge synthetic p()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->b0()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;

    move-result-object p0

    return-object p0
.end method

.method public final p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->f:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->F(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;->c()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;

    move-result-object p0

    const-string v1, "DEFAULT.isOverridableByW\u2026iptor, this, true).result"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;

    if-ne p0, v1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a$a;

    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z
    .locals 6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->a:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$a;

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$a;->b(Lby6;)Lby6;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->y0(Lby6;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->m0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->r0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_6
    :goto_1
    return v1
.end method

.method public r(Ljava/util/Collection;Lby6;)V
    .locals 9

    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->y0(Lby6;)Ljava/util/Set;

    move-result-object v6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->a:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$a;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$a;->k(Lby6;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->n:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->l(Lby6;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSuspend()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->W(Ljava/util/Collection;Lby6;Ljava/util/Collection;Z)V

    return-void

    :cond_5
    :goto_2
    sget-object v0, Lcq9;->d:Lcq9$b;

    invoke-virtual {v0}, Lcq9$b;->a()Lcq9;

    move-result-object v7

    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v3

    sget-object v4, Led3;->a:Led3;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v5

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lv82;->d(Lby6;Ljava/util/Collection;Ljava/util/Collection;Lqw0;Led3;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object v8

    const-string v0, "resolveOverridesForNonSt\u2026.overridingUtil\n        )"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredFunctions$3;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredFunctions$3;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v8

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->X(Lby6;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le74;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredFunctions$4;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredFunctions$4;-><init>(Ljava/lang/Object;)V

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->X(Lby6;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le74;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, v7}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->W(Ljava/util/Collection;Lby6;Ljava/util/Collection;Z)V

    return-void
.end method

.method public final r0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->n:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p2

    :cond_0
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public s(Lby6;Ljava/util/Collection;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {v0}, Ls65;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->Z(Lby6;Ljava/util/Collection;)V

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->A0(Lby6;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcq9;->d:Lcq9$b;

    invoke-virtual {v1}, Lcq9$b;->a()Lcq9;

    move-result-object v2

    invoke-virtual {v1}, Lcq9$b;->a()Lcq9;

    move-result-object v1

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredProperties$1;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredProperties$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    invoke-virtual {p0, v0, p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->Y(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Le74;)V

    invoke-static {v0, v2}, Lze9;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredProperties$2;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$computeNonDeclaredProperties$2;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->Y(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Le74;)V

    invoke-static {v0, v1}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object v0

    invoke-virtual {v0}, Lgj5;->a()Le85;

    move-result-object v0

    invoke-virtual {v0}, Le85;->c()Led3;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->w()Lgj5;

    move-result-object p0

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lv82;->d(Lby6;Ljava/util/Collection;Ljava/util/Collection;Lqw0;Led3;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object p0

    const-string p1, "resolveOverridesForNonSt\u2026rridingUtil\n            )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final s0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->n0(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p1

    const-string v2, "name"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->y0(Lby6;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSuspend()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public t(Lu82;Le74;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {p1}, Ls65;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->y()Lx17;

    move-result-object p2

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->e()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-interface {p0}, Lpx0;->m()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object p0

    const-string p2, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leh5;

    invoke-virtual {p2}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->d()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final t0(Lti8;Ljava/lang/String;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 3

    invoke-static {p2}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string p2, "identifier(getterName)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lknb;->getType()Leh5;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->c(Leh5;Leh5;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    move-object p3, p2

    :cond_3
    :goto_1
    if-eqz p3, :cond_0

    :cond_4
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lazy Java member scope for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->o:Ls65;

    invoke-interface {p0}, Ls65;->d()Lo54;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 3

    invoke-interface {p1}, Lti8;->getGetter()Lvi8;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    check-cast v0, Lvi8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->a:Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->f(Lqw0;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->t0(Lti8;Ljava/lang/String;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-virtual {v0}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lxc5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->t0(Lti8;Ljava/lang/String;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final v0(Lti8;Le74;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 4

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lxc5;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string v0, "identifier(JvmAbi.setterName(name.asString()))"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->C0(Leh5;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v2

    const-string v3, "descriptor.valueParameters"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    invoke-interface {p1}, Lknb;->getType()Leh5;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->b(Leh5;Leh5;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p2

    :cond_4
    :goto_0
    if-eqz v0, :cond_0

    :cond_5
    return-object v0
.end method

.method public final w0(Lqw0;)Lc92;
    .locals 0

    invoke-interface {p1}, Lqw0;->getVisibility()Lc92;

    move-result-object p0

    const-string p1, "classDescriptor.visibility"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lj75;->b:Lc92;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lj75;->c:Lc92;

    const-string p1, "PROTECTED_AND_PACKAGE"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final x0()Lx17;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->q:Lx17;

    return-object p0
.end method

.method public final y0(Lby6;)Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->c0()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-virtual {v1}, Leh5;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->c(Lby6;Lor5;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public z()Lro8;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->z0()Lqw0;

    move-result-object p0

    invoke-static {p0}, Ly82;->l(Lxt1;)Lro8;

    move-result-object p0

    return-object p0
.end method

.method public z0()Lqw0;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->n:Lqw0;

    return-object p0
.end method
