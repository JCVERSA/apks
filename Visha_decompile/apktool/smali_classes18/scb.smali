.class public abstract Lscb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Lsm9;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object v0

    instance-of v1, v0, Lsm9;

    if-eqz v1, :cond_0

    check-cast v0, Lsm9;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is should be simple type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Leh5;Ljava/util/List;Lmd;)Leh5;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lscb;->e(Leh5;Ljava/util/List;Lmd;Ljava/util/List;ILjava/lang/Object;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Leh5;Ljava/util/List;Lmd;Ljava/util/List;)Leh5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArgumentsForUpperBound"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object v0

    if-ne p2, v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    instance-of v1, p2, Llv3;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lmd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p2, Lmd;->u1:Lmd$a;

    invoke-virtual {p2}, Lmd$a;->b()Lmd;

    move-result-object p2

    :cond_2
    invoke-static {v0, p2}, Llbb;->a(Lkotlin/reflect/jvm/internal/impl/types/j;Lmd;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p2

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lfy3;

    if-eqz v0, :cond_3

    check-cast p0, Lfy3;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lscb;->d(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p1

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    invoke-static {p0, p3, p2}, Lscb;->d(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p3, p0, Lsm9;

    if-eqz p3, :cond_4

    check-cast p0, Lsm9;

    invoke-static {p0, p1, p2}, Lscb;->d(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final d(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAttributes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lsm9;->Q0(Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lgd3;

    if-eqz v0, :cond_2

    check-cast p0, Lgd3;

    invoke-virtual {p0, p1}, Lgd3;->U0(Ljava/util/List;)Lgd3;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Leh5;Ljava/util/List;Lmd;Ljava/util/List;ILjava/lang/Object;)Leh5;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, p1

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lscb;->c(Leh5;Ljava/util/List;Lmd;Ljava/util/List;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Leh5;->H0()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, Lscb;->d(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;)Lsm9;

    move-result-object p0

    return-object p0
.end method
