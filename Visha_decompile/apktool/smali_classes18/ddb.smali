.class public abstract Lddb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcdb;

    if-eqz v0, :cond_0

    check-cast p0, Lcdb;

    invoke-interface {p0}, Lcdb;->l0()Leh5;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lmgb;Leh5;)Lmgb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lddb;->a(Leh5;)Leh5;

    move-result-object p1

    invoke-static {p0, p1}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lmgb;Leh5;Le74;)Lmgb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lddb;->a(Leh5;)Leh5;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh5;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lmgb;Leh5;)Lmgb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcdb;

    if-eqz v0, :cond_0

    check-cast p0, Lcdb;

    invoke-interface {p0}, Lcdb;->Q()Lmgb;

    move-result-object p0

    invoke-static {p0, p1}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lsm9;

    if-eqz v0, :cond_2

    new-instance v0, Lvm9;

    check-cast p0, Lsm9;

    invoke-direct {v0, p0, p1}, Lvm9;-><init>(Lsm9;Leh5;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lfy3;

    if-eqz v0, :cond_3

    new-instance v0, Ljy3;

    check-cast p0, Lfy3;

    invoke-direct {v0, p0, p1}, Ljy3;-><init>(Lfy3;Leh5;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method
