.class public Lqj5;
.super Ljq6;
.source "SourceFile"


# instance fields
.field public final c:Ljq6;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

.field public e:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Lsbb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljq6;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V
    .locals 0

    invoke-direct {p0}, Ljq6;-><init>()V

    iput-object p1, p0, Lqj5;->c:Ljq6;

    iput-object p2, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-void
.end method

.method public static synthetic C0(Lqj5;Lsm9;)Lsm9;
    .locals 0

    invoke-virtual {p0, p1}, Lqj5;->H0(Lsm9;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic l0(I)V
    .locals 15

    const/16 v0, 0x17

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "getMemberScope"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "substitute"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getContextReceivers"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_12
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v13, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v11, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public D()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->D()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public E()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-static {v0}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->o(Lqq6;)Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqj5;->d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public E0()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->E0()Z

    move-result p0

    return p0
.end method

.method public final F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 3

    iget-object v0, p0, Lqj5;->e:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    iput-object v0, p0, Lqj5;->e:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-interface {v0}, Lpx0;->m()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lqj5;->f:Ljava/util/List;

    iget-object v1, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v1

    iget-object v2, p0, Lqj5;->f:Ljava/util/List;

    invoke-static {v0, v1, p0, v2}, Lw82;->b(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/l;Lxt1;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    iput-object v0, p0, Lqj5;->e:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    iget-object v0, p0, Lqj5;->f:Ljava/util/List;

    new-instance v1, Lqj5$a;

    invoke-direct {v1, p0}, Lqj5$a;-><init>(Lqj5;)V

    invoke-static {v0, v1}, Li81;->k0(Ljava/lang/Iterable;Le74;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lqj5;->g:Ljava/util/List;

    :cond_1
    :goto_0
    iget-object p0, p0, Lqj5;->e:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-object p0
.end method

.method public G0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lqw0;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x17

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lqj5;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p1

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->h(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lqj5;-><init>(Ljq6;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object v0
.end method

.method public final H0(Lsm9;)Lsm9;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    check-cast p0, Lsm9;

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public Q(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_1
    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-virtual {v0, p1, p2}, Ljq6;->Q(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    iget-object p2, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    const/4 p0, 0x7

    invoke-static {p0}, Lqj5;->l0(I)V

    :cond_2
    return-object p1

    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object p2
.end method

.method public R()Lro8;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public T()Ljava/util/Collection;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->T()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x1f

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic a()Lpx0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqj5;->a()Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public a()Lqw0;
    .locals 1

    .line 3
    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->a()Lqw0;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x15

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lqj5;->a()Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public b()Lxt1;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->b()Lxt1;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    invoke-virtual {p0, p1}, Lqj5;->G0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public c0()Linb;
    .locals 2

    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-interface {v0}, Lqw0;->c0()Linb;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lqj5$b;

    invoke-direct {v1, p0}, Lqj5$b;-><init>(Lqj5;)V

    invoke-virtual {v0, v1}, Linb;->b(Le74;)Linb;

    move-result-object p0

    return-object p0
.end method

.method public d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-virtual {v0, p1}, Ljq6;->d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    iget-object v0, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/16 p0, 0xe

    invoke-static {p0}, Lqj5;->l0(I)V

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/SubstitutingScope;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object v0
.end method

.method public f0()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lbn6;->f0()Z

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqx0;->g()Z

    move-result p0

    return p0
.end method

.method public g0()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getAnnotations()Lmd;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getName()Lby6;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 1

    sget-object p0, Lyt9;->a:Lyt9;

    if-nez p0, :cond_0

    const/16 v0, 0x1d

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getVisibility()Lc92;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->getVisibility()Lc92;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public h0()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->h0()Z

    move-result p0

    return p0
.end method

.method public isExternal()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lbn6;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->isInline()Z

    move-result p0

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x1a

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public j0()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->j0()Z

    move-result p0

    return p0
.end method

.method public m()Lsbb;
    .locals 5

    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-interface {v0}, Lpx0;->m()Lsbb;

    move-result-object v0

    iget-object v1, p0, Lqj5;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lqj5;->l0(I)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lqj5;->h:Lsbb;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-interface {v0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh5;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lfx0;

    iget-object v1, p0, Lqj5;->f:Ljava/util/List;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->e:Lvx9;

    invoke-direct {v0, p0, v1, v2, v3}, Lfx0;-><init>(Lqw0;Ljava/util/List;Ljava/util/Collection;Lvx9;)V

    iput-object v0, p0, Lqj5;->h:Lsbb;

    :cond_3
    iget-object p0, p0, Lqj5;->h:Lsbb;

    if-nez p0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_4
    return-object p0
.end method

.method public m0()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lbn6;->m0()Z

    move-result p0

    return p0
.end method

.method public n()Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lqj5;->c:Ljq6;

    invoke-interface {v0}, Lqw0;->n()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v3

    invoke-interface {v2}, Lbn6;->j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v3

    invoke-interface {v2}, Lbn6;->getVisibility()Lc92;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->n(Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->h(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public n0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->n0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public o0()Lqw0;
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->o0()Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public q()Lsm9;
    .locals 4

    invoke-virtual {p0}, Lqj5;->m()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/n;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/c;->a:Lkotlin/reflect/jvm/internal/impl/types/c;

    invoke-virtual {p0}, Lqj5;->getAnnotations()Lmd;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lkotlin/reflect/jvm/internal/impl/types/c;->a(Lmd;Lsbb;Lxt1;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v1

    invoke-virtual {p0}, Lqj5;->m()Lsbb;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lqj5;->E()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    invoke-static {v1, v2, v0, v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->k(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lsm9;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lbu1;->h(Lqw0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lqj5;->F0()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    iget-object p0, p0, Lqj5;->g:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public s()Z
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->s()Z

    move-result p0

    return p0
.end method

.method public t0(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lqj5;->l0(I)V

    :cond_0
    invoke-static {p0}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->o(Lqq6;)Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lqj5;->Q(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    if-nez p0, :cond_1

    const/16 p1, 0xb

    invoke-static {p1}, Lqj5;->l0(I)V

    :cond_1
    return-object p0
.end method

.method public w()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    iget-object p0, p0, Lqj5;->c:Ljq6;

    invoke-interface {p0}, Lqw0;->w()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0
.end method
