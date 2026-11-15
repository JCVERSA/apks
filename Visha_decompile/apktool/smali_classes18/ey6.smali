.class public abstract Ley6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcy6;I)Lxw0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcy6;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lcy6;->b(I)Z

    move-result p0

    invoke-static {v0, p0}, Lxw0;->f(Ljava/lang/String;Z)Lxw0;

    move-result-object p0

    const-string p1, "fromString(getQualifiedC\u2026 isLocalClassName(index))"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lcy6;I)Lby6;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcy6;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->f(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string p1, "guessByFirstCharacter(getString(index))"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
