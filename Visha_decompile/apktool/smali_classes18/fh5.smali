.class public abstract Lfh5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of v0, p0, Lgd3;

    if-nez v0, :cond_1

    instance-of v0, p0, Lfy3;

    if-eqz v0, :cond_0

    check-cast p0, Lfy3;

    invoke-virtual {p0}, Lfy3;->P0()Lsm9;

    move-result-object p0

    instance-of p0, p0, Lgd3;

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

.method public static final b(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->l(Leh5;)Z

    move-result p0

    return p0
.end method
