.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.super Lg4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg4;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lgh5;)Lgh5;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->b(Lgh5;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public b(Lgh5;)Lmgb;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Leh5;

    if-eqz v0, :cond_4

    check-cast p1, Leh5;

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    instance-of v0, p1, Lsm9;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lsm9;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->c(Lsm9;)Lsm9;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lfy3;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lfy3;

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->c(Lsm9;)Lsm9;

    move-result-object v1

    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->c(Lsm9;)Lsm9;

    move-result-object v2

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v0

    :goto_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1, v1}, Lddb;->c(Lmgb;Leh5;Le74;)Lmgb;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lsm9;)Lsm9;
    .locals 13

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p0

    instance-of v0, p0, Lpr0;

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    check-cast p0, Lpr0;

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object v0

    invoke-interface {v0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmcb;->getType()Leh5;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leh5;->L0()Lmgb;

    move-result-object v2

    :cond_1
    move-object v6, v2

    invoke-virtual {p0}, Lpr0;->f()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lpr0;->b()Lmcb;

    move-result-object v8

    invoke-virtual {p0}, Lpr0;->k()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-virtual {v1}, Leh5;->L0()Lmgb;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;-><init>(Lmcb;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lpr0;->h(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;)V

    :cond_3
    new-instance v0, Lf07;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {p0}, Lpr0;->f()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v5

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v7

    invoke-virtual {p1}, Leh5;->J0()Z

    move-result v8

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lf07;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lmgb;Lkotlin/reflect/jvm/internal/impl/types/j;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Leh5;->J0()Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->k()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->w(Leh5;)Leh5;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->g()Leh5;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->w(Leh5;)Leh5;

    move-result-object v2

    :cond_7
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->l(Leh5;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v2

    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->f()Lsm9;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1
.end method
