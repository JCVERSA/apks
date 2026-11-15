.class public abstract Lyf5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Loa;Lx0;)[B
    .locals 1

    :try_start_0
    new-instance v0, Log8;

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Log8;-><init>(Loa;Lx0;)V

    invoke-static {v0}, Lyf5;->b(Log8;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Log8;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Loa;Lx0;)[B
    .locals 1

    :try_start_0
    new-instance v0, Ls1a;

    invoke-direct {v0, p0, p1}, Ls1a;-><init>(Loa;Lx0;)V

    invoke-static {v0}, Lyf5;->e(Ls1a;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Loa;[B)[B
    .locals 1

    :try_start_0
    new-instance v0, Ls1a;

    invoke-direct {v0, p0, p1}, Ls1a;-><init>(Loa;[B)V

    invoke-static {v0}, Lyf5;->e(Ls1a;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ls1a;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
