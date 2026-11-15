.class public abstract synthetic Lob/d;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lob/e;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lob/b0;->b(Ljava/lang/Class;)Lob/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lob/e;->f(Lob/b0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b(Lob/e;Lob/b0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lob/e;->c(Lob/b0;)Lkc/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Lkc/b;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static c(Lob/e;Ljava/lang/Class;)Lkc/a;
    .locals 0

    .line 1
    invoke-static {p1}, Lob/b0;->b(Ljava/lang/Class;)Lob/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lob/e;->b(Lob/b0;)Lkc/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Lob/e;Ljava/lang/Class;)Lkc/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lob/b0;->b(Ljava/lang/Class;)Lob/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lob/e;->c(Lob/b0;)Lkc/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e(Lob/e;Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p1}, Lob/b0;->b(Ljava/lang/Class;)Lob/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lob/e;->d(Lob/b0;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static f(Lob/e;Lob/b0;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lob/e;->g(Lob/b0;)Lkc/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkc/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Set;

    .line 10
    .line 11
    return-object p0
.end method
