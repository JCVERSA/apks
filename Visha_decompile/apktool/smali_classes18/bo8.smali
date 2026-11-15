.class public final Lbo8;
.super Loc3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo8$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loc3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;)Lmcb;
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterUpperBoundEraser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "erasedUpperBound"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lp85;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Loc3;->a(Lhcb;Lpc3;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Leh5;)Lmcb;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p2, Lp85;

    invoke-virtual {p2}, Lp85;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p2, p0}, Lp85;->l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lp85;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lp85;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    move-result-object p0

    sget-object p3, Lbo8$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p3, p0

    const/4 p3, 0x1

    if-eq p0, p3, :cond_6

    const/4 p3, 0x2

    if-eq p0, p3, :cond_3

    const/4 p3, 0x3

    if-ne p0, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    invoke-interface {p1}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->getAllowsOutPosition()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Locb;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->H()Lsm9;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p4}, Leh5;->I0()Lsbb;

    move-result-object p0

    invoke-interface {p0}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object p0

    const-string p3, "erasedUpperBound.constructor.parameters"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Locb;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-direct {p0, p1, p4}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    goto :goto_2

    :cond_5
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/n;->t(Lhcb;Lpc3;)Lmcb;

    move-result-object p0

    :goto_2
    const-string p1, "{\n                if (!p\u2026          }\n            }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance p0, Locb;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-direct {p0, p1, p4}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    :goto_3
    return-object p0
.end method
