.class public final Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->a:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lsbb;Lsbb;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->d(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lsbb;Lsbb;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;ZZZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Z
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;ZZZLkotlin/reflect/jvm/internal/impl/types/checker/c;)Z

    move-result p0

    return p0
.end method

.method public static final d(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lsbb;Lsbb;)Z
    .locals 2

    const-string v0, "$a"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$b"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c1"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p3}, Lsbb;->c()Lpx0;

    move-result-object p3

    invoke-interface {p4}, Lsbb;->c()Lpx0;

    move-result-object p4

    instance-of v0, p3, Lhcb;

    if-eqz v0, :cond_2

    instance-of v0, p4, Lhcb;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->a:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;

    check-cast p3, Lhcb;

    check-cast p4, Lhcb;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1$1;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    invoke-virtual {v0, p3, p4, p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->i(Lhcb;Lhcb;ZLs74;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic g(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lxt1;Lxt1;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->f(Lxt1;Lxt1;ZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lhcb;Lhcb;ZLs74;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->i(Lhcb;Lhcb;ZLs74;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;ZZZLkotlin/reflect/jvm/internal/impl/types/checker/c;)Z
    .locals 3

    const-string v0, "a"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-interface {p2}, Lgy6;->getName()Lby6;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p4, :cond_2

    instance-of p4, p1, Lbn6;

    if-eqz p4, :cond_2

    instance-of p4, p2, Lbn6;

    if-eqz p4, :cond_2

    move-object p4, p1

    check-cast p4, Lbn6;

    invoke-interface {p4}, Lbn6;->m0()Z

    move-result p4

    move-object v0, p2

    check-cast v0, Lbn6;

    invoke-interface {v0}, Lbn6;->m0()Z

    move-result v0

    if-eq p4, v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object p4

    invoke-interface {p2}, Lzt1;->b()Lxt1;

    move-result-object v0

    invoke-static {p4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    if-nez p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lyt9;

    move-result-object p4

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lyt9;

    move-result-object v0

    invoke-static {p4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    return v2

    :cond_4
    invoke-static {p1}, Ly82;->E(Lxt1;)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-static {p2}, Ly82;->E(Lxt1;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$1;

    invoke-virtual {p0, p1, p2, p4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->k(Lxt1;Lxt1;Ls74;Z)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    new-instance p0, Lr82;

    invoke-direct {p0, p3, p1, p2}, Lr82;-><init>(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    invoke-static {p6, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->i(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object p0

    const-string p3, "create(kotlinTypeRefiner\u2026= a && y == b }\n        }"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p3, p5, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->E(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lqw0;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;->c()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;

    move-result-object p3

    sget-object p6, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;

    if-ne p3, p6, :cond_7

    xor-int/lit8 p3, p5, 0x1

    invoke-virtual {p0, p2, p1, p4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->E(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lqw0;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo;->c()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo$Result;

    move-result-object p0

    if-ne p0, p6, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_0
    return v1

    :cond_8
    :goto_1
    return v2
.end method

.method public final e(Lqw0;Lqw0;)Z
    .locals 0

    invoke-interface {p1}, Lpx0;->m()Lsbb;

    move-result-object p0

    invoke-interface {p2}, Lpx0;->m()Lsbb;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lxt1;Lxt1;ZZ)Z
    .locals 10

    instance-of v0, p1, Lqw0;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lqw0;

    if-eqz v0, :cond_0

    check-cast p1, Lqw0;

    check-cast p2, Lqw0;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->e(Lqw0;Lqw0;)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lhcb;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lhcb;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lhcb;

    move-object v3, p2

    check-cast v3, Lhcb;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p3

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->j(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lhcb;Lhcb;ZLs74;ILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz v0, :cond_2

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->c(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;ZZZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ldv7;

    if-eqz p0, :cond_3

    instance-of p0, p2, Ldv7;

    if-eqz p0, :cond_3

    check-cast p1, Ldv7;

    invoke-interface {p1}, Ldv7;->d()Lo54;

    move-result-object p0

    check-cast p2, Ldv7;

    invoke-interface {p2}, Ldv7;->d()Lo54;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final h(Lhcb;Lhcb;Z)Z
    .locals 8

    const-string v0, "a"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->j(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lhcb;Lhcb;ZLs74;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i(Lhcb;Lhcb;ZLs74;)Z
    .locals 3

    const-string v0, "a"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equivalentCallables"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object v0

    invoke-interface {p2}, Lzt1;->b()Lxt1;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->k(Lxt1;Lxt1;Ls74;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lhcb;->getIndex()I

    move-result p0

    invoke-interface {p2}, Lhcb;->getIndex()I

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public final k(Lxt1;Lxt1;Ls74;Z)Z
    .locals 7

    invoke-interface {p1}, Lxt1;->b()Lxt1;

    move-result-object v1

    invoke-interface {p2}, Lxt1;->b()Lxt1;

    move-result-object v2

    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-nez p1, :cond_1

    instance-of p1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p4

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->g(Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;Lxt1;Lxt1;ZZILjava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p3, v1, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final l(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lyt9;
    .locals 2

    :goto_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->e()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "overriddenDescriptors"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->P0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ldu1;->getSource()Lyt9;

    move-result-object p0

    return-object p0
.end method
