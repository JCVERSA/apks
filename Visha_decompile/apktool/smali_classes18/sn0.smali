.class public abstract Lsn0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lo54;Ljava/lang/String;)Lo54;
    .locals 0

    invoke-static {p0, p1}, Lsn0;->c(Lo54;Ljava/lang/String;)Lo54;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lp54;Ljava/lang/String;)Lo54;
    .locals 0

    invoke-static {p0, p1}, Lsn0;->d(Lp54;Ljava/lang/String;)Lo54;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lo54;Ljava/lang/String;)Lo54;
    .locals 0

    invoke-static {p1}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo54;->c(Lby6;)Lo54;

    move-result-object p0

    const-string p1, "child(Name.identifier(name))"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Lp54;Ljava/lang/String;)Lo54;
    .locals 0

    invoke-static {p1}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp54;->c(Lby6;)Lp54;

    move-result-object p0

    invoke-virtual {p0}, Lp54;->l()Lo54;

    move-result-object p0

    const-string p1, "child(Name.identifier(name)).toSafe()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
