.class public abstract Lky3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Lfy3;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfy3;

    return-object p0
.end method

.method public static final b(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of p0, p0, Lfy3;

    return p0
.end method

.method public static final c(Leh5;)Lsm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lfy3;

    if-eqz v0, :cond_0

    check-cast p0, Lfy3;

    invoke-virtual {p0}, Lfy3;->Q0()Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lsm9;

    if-eqz v0, :cond_1

    check-cast p0, Lsm9;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final d(Leh5;)Lsm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lfy3;

    if-eqz v0, :cond_0

    check-cast p0, Lfy3;

    invoke-virtual {p0}, Lfy3;->R0()Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lsm9;

    if-eqz v0, :cond_1

    check-cast p0, Lsm9;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
