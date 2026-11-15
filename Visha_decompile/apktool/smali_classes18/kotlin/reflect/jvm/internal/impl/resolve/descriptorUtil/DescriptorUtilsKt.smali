.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lby6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "value"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"value\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->a:Lby6;

    return-void
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->g(ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    sget-object v0, Lz82;->a:Lz82;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$declaresOrInheritsDefaultValue$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$declaresOrInheritsDefaultValue$2;

    invoke-static {p0, v0, v1}, Ljq1;->e(Ljava/util/Collection;Ljq1$c;Le74;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(\n        listOf(th\u2026eclaresDefaultValue\n    )"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Ljava/lang/Iterable;
    .locals 2

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->e()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLe74;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance v1, La92;

    invoke-direct {v1, p1}, La92;-><init>(Z)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$a;

    invoke-direct {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Le74;)V

    invoke-static {p0, v1, p1}, Ljq1;->b(Ljava/util/Collection;Ljq1$c;Ljq1$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    return-object p0
.end method

.method public static synthetic f(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLe74;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLe74;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final g(ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Iterable;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->e()Ljava/util/Collection;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    goto :goto_1

    :cond_3
    move-object p0, v0

    check-cast p0, Ljava/lang/Iterable;

    :goto_1
    return-object p0
.end method

.method public static final h(Lxt1;)Lo54;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->m(Lxt1;)Lp54;

    move-result-object p0

    invoke-virtual {p0}, Lp54;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lp54;->l()Lo54;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final i(Lgd;)Lqw0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgd;->getType()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    instance-of v0, p0, Lqw0;

    if-eqz v0, :cond_0

    check-cast p0, Lqw0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->p(Lxt1;)Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Lpx0;)Lxw0;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lzt1;->b()Lxt1;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ldv7;

    if-eqz v2, :cond_0

    new-instance v0, Lxw0;

    check-cast v1, Ldv7;

    invoke-interface {v1}, Ldv7;->d()Lo54;

    move-result-object v1

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lxw0;-><init>(Lo54;Lby6;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lqx0;

    if-eqz v2, :cond_1

    check-cast v1, Lpx0;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->k(Lpx0;)Lxw0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-virtual {v1, p0}, Lxw0;->d(Lby6;)Lxw0;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final l(Lxt1;)Lo54;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly82;->n(Lxt1;)Lo54;

    move-result-object p0

    const-string v0, "getFqNameSafe(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final m(Lxt1;)Lp54;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p0

    const-string v0, "getFqName(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final n(Lqw0;)Lg05;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lqw0;->c0()Linb;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lg05;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lg05;

    :cond_1
    return-object v0
.end method

.method public static final o(Lqq6;)Lkotlin/reflect/jvm/internal/impl/types/checker/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lhh5;->a()Lmq6;

    move-result-object v0

    invoke-interface {p0, v0}, Lqq6;->s0(Lmq6;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    return-object p0
.end method

.method public static final p(Lxt1;)Lqq6;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object p0

    const-string v0, "getContainingModule(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final q(Lxt1;)Lpc9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->r(Lxt1;)Lpc9;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->E(Lpc9;I)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lxt1;)Lpc9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$parentsWithSelf$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$parentsWithSelf$1;

    invoke-static {p0, v0}, Lzc9;->p(Ljava/lang/Object;Le74;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->e0()Lti8;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final t(Lqw0;)Lqw0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lqw0;->q()Lsm9;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->k()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh5;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->b0(Leh5;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    invoke-static {v0}, Ly82;->w(Lxt1;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lqw0;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final u(Lqq6;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lhh5;->a()Lmq6;

    move-result-object v0

    invoke-interface {p0, v0}, Lqq6;->s0(Lmq6;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final v(Lqq6;Lo54;Lor5;)Lqw0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topLevelClassFqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo54;->d()Z

    invoke-virtual {p1}, Lo54;->e()Lo54;

    move-result-object v0

    const-string v1, "topLevelClassFqName.parent()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lqq6;->C(Lo54;)Lpv7;

    move-result-object p0

    invoke-interface {p0}, Lpv7;->p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    invoke-virtual {p1}, Lo54;->g()Lby6;

    move-result-object p1

    const-string v0, "topLevelClassFqName.shortName()"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;->f(Lby6;Lor5;)Lpx0;

    move-result-object p0

    instance-of p1, p0, Lqw0;

    if-eqz p1, :cond_0

    check-cast p0, Lqw0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
