.class public abstract Lxqh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lerh;)Lcrh;
    .locals 1

    invoke-static {p2}, Lerh;->e(Lerh;)Lg8i;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lxqh;->b(Ljava/util/concurrent/Callable;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/concurrent/Callable;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;
    .locals 9

    new-instance v8, Lcrh;

    invoke-static {}, Lerh;->d()Lim5;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, p0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;Ldrh;)V

    return-object v8
.end method

.method public static final c(Lim5;Ljava/lang/Object;Lerh;)Lcrh;
    .locals 9

    new-instance v8, Lcrh;

    invoke-static {}, Lerh;->d()Lim5;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;Ldrh;)V

    return-object v8
.end method

.method public static final d(Lqqh;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;
    .locals 1

    new-instance v0, Lwqh;

    invoke-direct {v0, p0}, Lwqh;-><init>(Lqqh;)V

    invoke-static {v0, p1, p2, p3}, Lxqh;->b(Ljava/util/concurrent/Callable;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    return-object p0
.end method
