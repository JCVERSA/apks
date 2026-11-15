.class public abstract Lgv7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lfv7;Lo54;Ljava/util/Collection;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lhv7;

    if-eqz v0, :cond_0

    check-cast p0, Lhv7;

    invoke-interface {p0, p1, p2}, Lhv7;->a(Lo54;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lfv7;->c(Lo54;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public static final b(Lfv7;Lo54;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lhv7;

    if-eqz v0, :cond_0

    check-cast p0, Lhv7;

    invoke-interface {p0, p1}, Lhv7;->b(Lo54;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lgv7;->c(Lfv7;Lo54;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final c(Lfv7;Lo54;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lgv7;->a(Lfv7;Lo54;Ljava/util/Collection;)V

    return-object v0
.end method
