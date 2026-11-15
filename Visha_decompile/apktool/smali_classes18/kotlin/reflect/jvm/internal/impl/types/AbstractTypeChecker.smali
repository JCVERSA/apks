.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ltcb;Ltm9;)Z
    .locals 2

    instance-of v0, p1, Lrr0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lrr0;

    invoke-interface {p0, p1}, Ltcb;->s0(Lrr0;)Lqr0;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->u(Lqr0;)Lhbb;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->p0(Lhbb;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->o(Ltm9;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final c(Ltcb;Ltm9;)Z
    .locals 2

    invoke-interface {p0, p1}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    instance-of v0, p1, Lq45;

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgh5;

    invoke-interface {p0, v0}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v0}, Ltcb;->o(Ltm9;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static final d(Ltcb;Ltm9;)Z
    .locals 1

    invoke-interface {p0, p1}, Ltcb;->o(Ltm9;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->b(Ltcb;Ltm9;)Z

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

.method public static final e(Ltcb;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;Z)Z
    .locals 9

    invoke-interface {p0, p2}, Ltcb;->W(Ltm9;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgh5;

    invoke-interface {p0, v5}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v0

    invoke-interface {p0, p3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->s(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->o(Ltm9;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0, p3}, Ltcb;->o(Ltm9;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->d(Ltcb;Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->d(Ltcb;Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-interface {p0, p2}, Ltcb;->o(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->e(Ltcb;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    invoke-interface {p0, p3}, Ltcb;->o(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->c(Ltcb;Ltm9;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, p1, p3, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->e(Ltcb;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    return-object v1
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Ljava/lang/Boolean;
    .locals 12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->m0(Lgh5;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-interface {p0, p3}, Ltcb;->m0(Lgh5;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {p0, p2}, Ltcb;->r0(Ltm9;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p0, p3}, Ltcb;->r0(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v0, p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->p(Ltcb;Ltm9;Ltm9;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->n()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0, p2}, Ltcb;->E(Ltm9;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {p0, p3}, Ltcb;->E(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-interface {p0, p3}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p0, v0}, Ltcb;->L(Lh72;)Ltm9;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, p3

    :cond_6
    invoke-interface {p0, v0}, Ltcb;->d(Ltm9;)Lrr0;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p0, v0}, Ltcb;->l(Lrr0;)Lgh5;

    move-result-object v4

    goto :goto_0

    :cond_7
    move-object v4, v3

    :goto_0
    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    invoke-interface {p0, p3}, Ltcb;->w(Ltm9;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p0, v4, v2}, Ltcb;->C0(Lgh5;Z)Lgh5;

    move-result-object v4

    :cond_8
    :goto_1
    move-object v8, v4

    goto :goto_2

    :cond_9
    invoke-interface {p0, p3}, Ltcb;->Z(Lgh5;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p0, v4}, Ltcb;->w0(Lgh5;)Lgh5;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->g(Ltm9;Lrr0;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;

    move-result-object v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    goto :goto_3

    :cond_a
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v11}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v11}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_3
    invoke-interface {p0, p3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->S(Ltbb;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {p0, p3}, Ltcb;->w(Ltm9;)Z

    invoke-interface {p0, v0}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p3, p0, Ljava/util/Collection;

    if-eqz p3, :cond_e

    move-object p3, p0

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_e

    :cond_d
    move v1, v2

    goto :goto_4

    :cond_e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lgh5;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    instance-of v1, p2, Lrr0;

    if-nez v1, :cond_13

    invoke-interface {p0, v0}, Ltcb;->S(Ltbb;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p0, v0}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgh5;

    instance-of v1, v1, Lrr0;

    if-nez v1, :cond_12

    goto :goto_6

    :cond_13
    :goto_5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->m(Ltcb;Lgh5;Lgh5;)Lkcb;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-interface {p0, p3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ltcb;->n0(Lkcb;Ltbb;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_14
    :goto_6
    return-object v3

    :cond_15
    :goto_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->n()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->m()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_17
    invoke-interface {p0, p2}, Ltcb;->w(Ltm9;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0, p3}, Ltcb;->w(Ltm9;)Z

    move-result p1

    if-nez p1, :cond_18

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_18
    sget-object p1, Lb4;->a:Lb4;

    invoke-interface {p0, p2, v1}, Ltcb;->b(Ltm9;Z)Ltm9;

    move-result-object p2

    invoke-interface {p0, p3, v1}, Ltcb;->b(Ltm9;Z)Ltm9;

    move-result-object p3

    invoke-virtual {p1, p0, p2, p3}, Lb4;->b(Ltcb;Lgh5;Lgh5;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;
    .locals 12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Ltcb;->y(Ltm9;Ltbb;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p3}, Ltcb;->U(Ltbb;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p2}, Ltcb;->B(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0, p3}, Ltcb;->i0(Ltbb;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {p0, p2, p1}, Ltcb;->k(Ltm9;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ltm9;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance v0, Lbq9;

    invoke-direct {v0}, Lbq9;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->k()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->h()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm9;

    const-string v4, "current"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {p0, v3, v4}, Ltcb;->k(Ltm9;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ltm9;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v3

    :cond_6
    invoke-interface {p0, v4}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v5

    invoke-interface {p0, v5, p3}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    goto :goto_3

    :cond_7
    invoke-interface {p0, v4}, Ltcb;->o0(Lgh5;)I

    move-result v5

    if-nez v5, :cond_8

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v4}, Ltcb;->m(Ltm9;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;

    move-result-object v4

    :goto_3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {v5, v3}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgh5;

    invoke-virtual {v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;)Ltm9;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many supertypes for type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Supertypes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    return-object v0
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->g(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->w(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;Z)Z
    .locals 3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->p(Lgh5;)Lgh5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->o(Lgh5;)Lgh5;

    move-result-object p2

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->p(Lgh5;)Lgh5;

    move-result-object p3

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->o(Lgh5;)Lgh5;

    move-result-object p3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {p0, p2}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v1

    invoke-interface {p0, p3}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->f(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->c(Lgh5;Lgh5;Z)Ljava/lang/Boolean;

    return p0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->c(Lgh5;Lgh5;Z)Ljava/lang/Boolean;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0, p2}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object p2

    invoke-interface {p0, p3}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->u(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public final j(Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 0

    const-string p0, "declared"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "useSite"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne p1, p0, :cond_0

    return-object p2

    :cond_0
    if-ne p2, p0, :cond_1

    return-object p1

    :cond_1
    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;)Z
    .locals 10

    const-string p0, "state"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "a"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v8, p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->o(Ltcb;Lgh5;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v8, p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->o(Ltcb;Lgh5;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->p(Lgh5;)Lgh5;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->o(Lgh5;)Lgh5;

    move-result-object v1

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->p(Lgh5;)Lgh5;

    move-result-object v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->o(Lgh5;)Lgh5;

    move-result-object v2

    invoke-interface {p0, v1}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v3

    invoke-interface {p0, v1}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v4

    invoke-interface {p0, v2}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result v4

    if-nez v4, :cond_1

    return v9

    :cond_1
    invoke-interface {p0, v3}, Ltcb;->o0(Lgh5;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p0, v1}, Ltcb;->Y(Lgh5;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p0, v2}, Ltcb;->Y(Lgh5;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v3}, Ltcb;->w(Ltm9;)Z

    move-result p1

    invoke-interface {p0, v2}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object p2

    invoke-interface {p0, p2}, Ltcb;->w(Ltm9;)Z

    move-result p0

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v9

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v9

    :goto_1
    return v0
.end method

.method public final l(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;
    .locals 12

    const-string p0, "state"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subType"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superConstructor"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->B(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->h(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, p3}, Ltcb;->U(Ltbb;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p3}, Ltcb;->K(Ltbb;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->g(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lbq9;

    invoke-direct {v0}, Lbq9;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->k()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->h()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm9;

    const-string v4, "current"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v3}, Ltcb;->B(Ltm9;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Lbq9;->add(Ljava/lang/Object;)Z

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    goto :goto_1

    :cond_3
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {v5, v3}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgh5;

    invoke-virtual {v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;)Ltm9;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many supertypes for type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Supertypes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm9;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const-string v2, "it"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->h(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    :cond_8
    return-object p0
.end method

.method public final m(Ltcb;Lgh5;Lgh5;)Lkcb;
    .locals 6

    invoke-interface {p1, p2}, Ltcb;->o0(Lgh5;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_6

    invoke-interface {p1, p2, v2}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object v4

    invoke-interface {p1, v4}, Ltcb;->p0(Lhbb;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    :cond_0
    if-eqz v3, :cond_5

    invoke-interface {p1, v3}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1, v3}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v4

    invoke-interface {p1, v4}, Ltcb;->j0(Ltm9;)Ltm9;

    move-result-object v4

    invoke-interface {p1, v4}, Ltcb;->v0(Lgh5;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, p3}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v4

    invoke-interface {p1, v4}, Ltcb;->j0(Ltm9;)Ltm9;

    move-result-object v4

    invoke-interface {p1, v4}, Ltcb;->v0(Lgh5;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-static {v3, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v4

    invoke-interface {p1, p3}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v3, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->m(Ltcb;Lgh5;Lgh5;)Lkcb;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_4
    :goto_2
    invoke-interface {p1, p2}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Ltcb;->e0(Ltbb;I)Lkcb;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method public final n(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;)Z
    .locals 12

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->U(Ltbb;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ltcb;->h0(Ltbb;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->h0(Ltbb;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->k()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->h()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm9;

    const-string v4, "current"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v3}, Ltcb;->B(Ltm9;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    goto :goto_1

    :cond_3
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {v5, v3}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgh5;

    invoke-virtual {v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;)Ltm9;

    move-result-object v5

    invoke-interface {p0, v5}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v6

    invoke-interface {p0, v6}, Ltcb;->h0(Ltbb;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many supertypes for type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Supertypes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public final o(Ltcb;Lgh5;)Z
    .locals 0

    invoke-interface {p1, p2}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object p0

    invoke-interface {p1, p0}, Ltcb;->t0(Ltbb;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ltcb;->i(Lgh5;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Ltcb;->Z(Lgh5;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Ltcb;->f0(Lgh5;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object p0

    invoke-interface {p1, p0}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p0

    invoke-interface {p1, p2}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object p2

    invoke-interface {p1, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p(Ltcb;Ltm9;Ltm9;)Z
    .locals 2

    invoke-interface {p1, p2}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ltcb;->L(Lh72;)Ltm9;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    move-object p0, p2

    :cond_1
    invoke-interface {p1, p3}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ltcb;->L(Lh72;)Ltm9;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p3

    :cond_3
    invoke-interface {p1, p0}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p0

    invoke-interface {p1, v0}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    return v1

    :cond_4
    invoke-interface {p1, p2}, Ltcb;->Z(Lgh5;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {p1, p3}, Ltcb;->Z(Lgh5;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    invoke-interface {p1, p2}, Ltcb;->w(Ltm9;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1, p3}, Ltcb;->w(Ltm9;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final q(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgbb;Ltm9;)Z
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "<this>"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturedSubArguments"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v10

    invoke-interface {v10, v9}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v11

    invoke-interface {v10, v8}, Ltcb;->R(Lgbb;)I

    move-result v0

    invoke-interface {v10, v11}, Ltcb;->c0(Ltbb;)I

    move-result v12

    const/4 v13, 0x0

    if-ne v0, v12, :cond_9

    invoke-interface {v10, v9}, Ltcb;->o0(Lgh5;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    move v14, v13

    :goto_0
    const/4 v0, 0x1

    if-ge v14, v12, :cond_8

    invoke-interface {v10, v9, v14}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object v1

    invoke-interface {v10, v1}, Ltcb;->p0(Lhbb;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v10, v1}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v3

    invoke-interface {v10, v8, v14}, Ltcb;->O(Lgbb;I)Lhbb;

    move-result-object v2

    invoke-interface {v10, v2}, Ltcb;->z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-interface {v10, v2}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v5

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {v10, v11, v14}, Ltcb;->e0(Ltbb;I)Lkcb;

    move-result-object v6

    invoke-interface {v10, v6}, Ltcb;->V(Lkcb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v6

    invoke-interface {v10, v1}, Ltcb;->z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->j(Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->m()Z

    move-result v0

    return v0

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {v2, v10, v5, v3, v11}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->v(Ltcb;Lgh5;Lgh5;Ltbb;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2, v10, v3, v5, v11}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->v(Ltcb;Lgh5;Lgh5;Ltbb;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v4

    const/16 v6, 0x64

    if-gt v4, v6, :cond_6

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v7, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;I)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    const/16 v6, 0x8

    const/4 v15, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_4
    const/16 v6, 0x8

    const/4 v15, 0x0

    const/4 v4, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v2, v5

    move v5, v6

    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v7, v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->k(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;)Z

    move-result v0

    :goto_1
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v7, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;I)V

    if-nez v0, :cond_7

    return v13

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arguments depth is too high. Some related argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v13
.end method

.method public final r(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;)Z
    .locals 8

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->t(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;Z)Z
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->f(Lgh5;Lgh5;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->i(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;Z)Z

    move-result p0

    return p0
.end method

.method public final u(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v3

    sget-boolean v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->b:Z

    if-eqz v4, :cond_1

    invoke-interface {v3, v1}, Ltcb;->f(Ltm9;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v1}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v4

    invoke-interface {v3, v4}, Ltcb;->S(Ltbb;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->l(Lgh5;)Z

    move-result v4

    :cond_0
    invoke-interface {v3, v2}, Ltcb;->f(Ltm9;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->l(Lgh5;)Z

    move-result v4

    :cond_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-virtual {v4, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/a;->d(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    return v5

    :cond_2
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {v3, v1}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v6

    invoke-interface {v3, v2}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object v7

    invoke-virtual {v4, v0, v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->d(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;Lgh5;ZILjava/lang/Object;)Ljava/lang/Boolean;

    return v6

    :cond_3
    invoke-interface {v3, v2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v6

    invoke-interface {v3, v1}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v3, v6}, Ltcb;->c0(Ltbb;)I

    move-result v7

    if-nez v7, :cond_4

    return v8

    :cond_4
    invoke-interface {v3, v2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v7

    invoke-interface {v3, v7}, Ltcb;->M(Ltbb;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v8

    :cond_5
    invoke-virtual {v4, v0, v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->l(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltm9;

    invoke-virtual {v0, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->o(Lgh5;)Lgh5;

    move-result-object v11

    invoke-interface {v3, v11}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    move-object v10, v11

    :goto_1
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_11

    if-eq v4, v8, :cond_10

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    invoke-interface {v3, v6}, Ltcb;->c0(Ltbb;)I

    move-result v10

    invoke-direct {v4, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;-><init>(I)V

    invoke-interface {v3, v6}, Ltcb;->c0(Ltbb;)I

    move-result v10

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_e

    if-nez v12, :cond_9

    invoke-interface {v3, v6, v11}, Ltcb;->e0(Ltbb;I)Lkcb;

    move-result-object v12

    invoke-interface {v3, v12}, Ltcb;->V(Lkcb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-eq v12, v13, :cond_8

    goto :goto_3

    :cond_8
    move v12, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v12, v8

    :goto_4
    if-nez v12, :cond_d

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v7, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ltm9;

    invoke-interface {v3, v15, v11}, Ltcb;->g0(Ltm9;I)Lhbb;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v3, v5}, Ltcb;->z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v9

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v9, v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_b

    invoke-interface {v3, v5}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xa

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {v3, v13}, Ltcb;->F(Ljava/util/List;)Lgh5;

    move-result-object v5

    invoke-interface {v3, v5}, Ltcb;->t(Lgh5;)Lhbb;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xa

    goto/16 :goto_2

    :cond_e
    if-nez v12, :cond_f

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v1, v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->q(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgbb;Ltm9;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4;

    invoke-direct {v1, v7, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltcb;Ltm9;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->q(Le74;)Z

    move-result v0

    return v0

    :cond_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-static {v7}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltm9;

    invoke-interface {v3, v4}, Ltcb;->q0(Ltm9;)Lgbb;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->q(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgbb;Ltm9;)Z

    move-result v0

    return v0

    :cond_11
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->n(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;)Z

    move-result v0

    return v0
.end method

.method public final v(Ltcb;Lgh5;Lgh5;Ltbb;)Z
    .locals 0

    invoke-interface {p1, p2}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object p0

    instance-of p2, p0, Lrr0;

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    check-cast p0, Lrr0;

    invoke-interface {p1, p0}, Ltcb;->Q(Lrr0;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1, p0}, Ltcb;->s0(Lrr0;)Lqr0;

    move-result-object p2

    invoke-interface {p1, p2}, Ltcb;->u(Lqr0;)Lhbb;

    move-result-object p2

    invoke-interface {p1, p2}, Ltcb;->p0(Lhbb;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ltcb;->X(Lrr0;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object p0

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    if-eq p0, p2, :cond_1

    return p4

    :cond_1
    invoke-interface {p1, p3}, Ltcb;->J(Lgh5;)Ltbb;

    :cond_2
    :goto_0
    return p4
.end method

.method public final w(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ljava/util/List;)Ljava/util/List;
    .locals 6

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return-object p2

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltm9;

    invoke-interface {p0, v2}, Ltcb;->q0(Ltm9;)Lgbb;

    move-result-object v2

    invoke-interface {p0, v2}, Ltcb;->R(Lgbb;)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v2, v4}, Ltcb;->O(Lgbb;I)Lhbb;

    move-result-object v5

    invoke-interface {p0, v5}, Ltcb;->j(Lhbb;)Lgh5;

    move-result-object v5

    invoke-interface {p0, v5}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    move-object p2, v0

    :cond_4
    return-object p2
.end method
