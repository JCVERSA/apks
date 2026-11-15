.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;
.super Lfy3;
.source "SourceFile"

# interfaces
.implements Lco8;


# direct methods
.method public constructor <init>(Lsm9;Lsm9;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;Z)V

    return-void
.end method

.method public constructor <init>(Lsm9;Lsm9;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfy3;-><init>(Lsm9;Lsm9;)V

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/b;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->c(Leh5;Leh5;)Z

    :cond_0
    return-void
.end method

.method public static final V0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "out "

    invoke-static {p1, v0}, Lj1a;->F0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final W0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Leh5;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Leh5;->G0()Ljava/util/List;

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

    check-cast v1, Lmcb;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->z(Lmcb;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final X0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lj1a;->W(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0, v3, v2, v3}, Lj1a;->d1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v3, v2, v3}, Lj1a;->a1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic K0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic M0(Z)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->T0(Z)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lmgb;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->Y0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    move-result-object p0

    return-object p0
.end method

.method public P0()Lsm9;
    .locals 0

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Lkotlin/reflect/jvm/internal/impl/renderer/b;)Ljava/lang/String;
    .locals 12

    const-string v0, "renderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "raw ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p2

    invoke-virtual {p2}, Leh5;->G0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->v(Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->W0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Leh5;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->W0(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;Leh5;)Ljava/util/List;

    move-result-object v2

    check-cast p2, Ljava/lang/Iterable;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl$render$newArgs$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl$render$newArgs$1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {p2, v2}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->V0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->X0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;->X0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p2

    :cond_5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->v(Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public T0(Z)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object v1

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public U0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lfy3;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lsm9;

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lsm9;

    const/4 p1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;Z)V

    return-object v0
.end method

.method public Y0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;
    .locals 2

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object v1

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;)V

    return-object v0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    invoke-virtual {p0}, Lfy3;->I0()Lsbb;

    move-result-object v0

    invoke-interface {v0}, Lsbb;->c()Lpx0;

    move-result-object v0

    instance-of v1, v0, Lqw0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lqw0;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0}, Lqw0;->t0(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    const-string v0, "classDescriptor.getMemberScope(RawSubstitution())"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect classifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfy3;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->c()Lpx0;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
