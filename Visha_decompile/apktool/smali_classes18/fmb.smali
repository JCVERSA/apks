.class public abstract Lfmb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lqr5;Lor5;Lqw0;Lby6;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "name"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lqr5$a;->a:Lqr5$a;

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lor5;->getLocation()Ljo5;

    return-void
.end method

.method public static final b(Lqr5;Lor5;Ldv7;Lby6;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ldv7;->d()Lo54;

    move-result-object p2

    invoke-virtual {p2}, Lo54;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "scopeOwner.fqName.asString()"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lby6;->b()Ljava/lang/String;

    move-result-object p3

    const-string v0, "name.asString()"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lfmb;->c(Lqr5;Lor5;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Lqr5;Lor5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFqName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "name"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lqr5$a;->a:Lqr5$a;

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lor5;->getLocation()Ljo5;

    return-void
.end method
