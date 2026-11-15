.class public final Lkotlin/reflect/jvm/internal/impl/types/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/g$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/g$a;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/types/g;


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/types/i;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/g;->c:Lkotlin/reflect/jvm/internal/impl/types/g$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/i$a;->a:Lkotlin/reflect/jvm/internal/impl/types/i$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/i;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/g;->d:Lkotlin/reflect/jvm/internal/impl/types/g;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/i;Z)V
    .locals 1

    const-string v0, "reportStrategy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lmd;Lmd;)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgd;

    invoke-interface {v1}, Lgd;->d()Lo54;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgd;

    invoke-interface {p2}, Lgd;->d()Lo54;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/i;->b(Lgd;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Leh5;Leh5;)V
    .locals 8

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->f(Leh5;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    const-string v1, "create(substitutedType)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Leh5;->G0()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Lmcb;

    invoke-interface {v2}, Lmcb;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Lmcb;->getType()Leh5;

    move-result-object v4

    const-string v5, "substitutedArgument.type"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->d(Leh5;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmcb;

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcb;

    iget-boolean v6, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->b:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v4

    const-string v7, "unsubstitutedArgument.type"

    invoke-static {v4, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lmcb;->getType()Leh5;

    move-result-object v2

    invoke-static {v2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeParameter"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0, v4, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/i;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Leh5;Leh5;Lhcb;)V

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 1

    invoke-static {p1}, Lfh5;->a(Leh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, p2, v0}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final d(Lsm9;Leh5;)Lsm9;
    .locals 0

    invoke-virtual {p2}, Leh5;->J0()Z

    move-result p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->r(Lsm9;Z)Lsm9;

    move-result-object p0

    const-string p1, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Lsm9;Leh5;)Lsm9;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->d(Lsm9;Leh5;)Lsm9;

    move-result-object p1

    invoke-virtual {p2}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->c(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;Z)Lsm9;
    .locals 1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/h;->b()Lebb;

    move-result-object p0

    invoke-interface {p0}, Lpx0;->m()Lsbb;

    move-result-object p0

    const-string v0, "descriptor.typeConstructor"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/h;->a()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    invoke-static {p2, p0, p1, p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->k(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 0

    invoke-static {p1}, Lfh5;->a(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/j;->l(Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 7

    const-string v0, "typeAliasExpansion"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/g;->j(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;ZIZ)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;I)Lmcb;
    .locals 11

    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object v0

    invoke-virtual {v0}, Leh5;->L0()Lmgb;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/e;->a(Leh5;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0}, Lscb;->a(Leh5;)Lsm9;

    move-result-object v0

    invoke-static {v0}, Lfh5;->a(Leh5;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->z(Leh5;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-interface {v1}, Lsbb;->c()Lpx0;

    move-result-object v2

    invoke-interface {v1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {v0}, Leh5;->G0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    instance-of v3, v2, Lhcb;

    if-eqz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    instance-of v3, v2, Lebb;

    if-eqz v3, :cond_7

    check-cast v2, Lebb;

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/h;->d(Lebb;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/i;->d(Lebb;)V

    new-instance p0, Locb;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->RECURSIVE_TYPE_ALIAS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-interface {v2}, Lgy6;->getName()Lby6;

    move-result-object p3

    invoke-virtual {p3}, Lby6;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "typeDescriptor.name.toString()"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lid3;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lgd3;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p0

    :cond_3
    invoke-virtual {v0}, Leh5;->G0()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    check-cast v6, Lmcb;

    invoke-interface {v1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhcb;

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {p0, v6, p2, v5, v8}, Lkotlin/reflect/jvm/internal/impl/types/g;->k(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;Lhcb;I)Lmcb;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    :cond_5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/h;->e:Lkotlin/reflect/jvm/internal/impl/types/h$a;

    invoke-virtual {v1, p2, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/h$a;->a(Lkotlin/reflect/jvm/internal/impl/types/h;Lebb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/h;

    move-result-object v6

    invoke-virtual {v0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v7

    invoke-virtual {v0}, Leh5;->J0()Z

    move-result v8

    add-int/lit8 v9, p3, 0x1

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/types/g;->j(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;ZIZ)Lsm9;

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/g;->l(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/h;I)Lsm9;

    move-result-object p0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/e;->a(Leh5;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1, p0}, Ltu9;->j(Lsm9;Lsm9;)Lsm9;

    move-result-object v1

    :goto_1
    new-instance p0, Locb;

    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    :goto_2
    move-object p1, p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/g;->l(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/h;I)Lsm9;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->b(Leh5;Leh5;)V

    new-instance p0, Locb;

    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_2

    :cond_8
    :goto_3
    return-object p1
.end method

.method public final j(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;ZIZ)Lsm9;
    .locals 3

    new-instance v0, Locb;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/h;->b()Lebb;

    move-result-object v2

    invoke-interface {v2}, Lebb;->w0()Lsm9;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p4}, Lkotlin/reflect/jvm/internal/impl/types/g;->k(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;Lhcb;I)Lmcb;

    move-result-object p4

    invoke-interface {p4}, Lmcb;->getType()Leh5;

    move-result-object v0

    const-string v1, "expandedProjection.type"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lscb;->a(Leh5;)Lsm9;

    move-result-object v0

    invoke-static {v0}, Lfh5;->a(Leh5;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p4}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0}, Leh5;->getAnnotations()Lmd;

    move-result-object p4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/b;->a(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmd;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lkotlin/reflect/jvm/internal/impl/types/g;->a(Lmd;Lmd;)V

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->c(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p4

    invoke-static {p4, p3}, Lkotlin/reflect/jvm/internal/impl/types/n;->r(Lsm9;Z)Lsm9;

    move-result-object p4

    const-string v0, "expandedType.combineAttr\u2026fNeeded(it, isNullable) }"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/g;->f(Lkotlin/reflect/jvm/internal/impl/types/h;Lkotlin/reflect/jvm/internal/impl/types/j;Z)Lsm9;

    move-result-object p0

    invoke-static {p4, p0}, Ltu9;->j(Lsm9;Lsm9;)Lsm9;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public final k(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;Lhcb;I)Lmcb;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/g;->c:Lkotlin/reflect/jvm/internal/impl/types/g$a;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/h;->b()Lebb;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lkotlin/reflect/jvm/internal/impl/types/g$a;->a(Lkotlin/reflect/jvm/internal/impl/types/g$a;ILebb;)V

    invoke-interface {p1}, Lmcb;->b()Z

    move-result v0

    const-string v1, "makeStarProjection(typeParameterDescriptor!!)"

    if-eqz v0, :cond_0

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/n;->s(Lhcb;)Lmcb;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object v0

    const-string v2, "underlyingProjection.type"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/h;->c(Lsbb;)Lmcb;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lkotlin/reflect/jvm/internal/impl/types/g;->i(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;I)Lmcb;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2}, Lmcb;->b()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/n;->s(Lhcb;)Lmcb;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-interface {v2}, Lmcb;->getType()Leh5;

    move-result-object p4

    invoke-virtual {p4}, Leh5;->L0()Lmgb;

    move-result-object p4

    invoke-interface {v2}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    const-string v2, "argument.projectionKind"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    const-string v2, "underlyingProjection.projectionKind"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    move-object v1, p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/h;->b()Lebb;

    move-result-object v2

    invoke-interface {p1, v2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/i;->a(Lebb;Lhcb;Leh5;)V

    :goto_0
    if-eqz p3, :cond_6

    invoke-interface {p3}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_7
    const-string v2, "typeParameterDescriptor?\u2026nce ?: Variance.INVARIANT"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_8

    goto :goto_1

    :cond_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v2, :cond_9

    goto :goto_1

    :cond_9
    if-ne v1, v2, :cond_a

    move-object v1, v2

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->a:Lkotlin/reflect/jvm/internal/impl/types/i;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/h;->b()Lebb;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/i;->a(Lebb;Lhcb;Leh5;)V

    :goto_1
    invoke-virtual {v0}, Leh5;->getAnnotations()Lmd;

    move-result-object p1

    invoke-virtual {p4}, Leh5;->getAnnotations()Lmd;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/g;->a(Lmd;Lmd;)V

    invoke-static {p4}, Lscb;->a(Leh5;)Lsm9;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/g;->e(Lsm9;Leh5;)Lsm9;

    move-result-object p0

    new-instance p1, Locb;

    invoke-direct {p1, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1
.end method

.method public final l(Lsm9;Lkotlin/reflect/jvm/internal/impl/types/h;I)Lsm9;
    .locals 8

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-virtual {p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v4, Lmcb;

    invoke-interface {v0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhcb;

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/g;->k(Lmcb;Lkotlin/reflect/jvm/internal/impl/types/h;Lhcb;I)Lmcb;

    move-result-object v3

    invoke-interface {v3}, Lmcb;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Locb;

    invoke-interface {v3}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    invoke-interface {v3}, Lmcb;->getType()Leh5;

    move-result-object v3

    invoke-interface {v4}, Lmcb;->getType()Leh5;

    move-result-object v4

    invoke-virtual {v4}, Leh5;->J0()Z

    move-result v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/n;->q(Leh5;Z)Leh5;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    move-object v3, v6

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    const/4 p2, 0x0

    invoke-static {p1, v2, p2, p0, p2}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object p0

    return-object p0
.end method
