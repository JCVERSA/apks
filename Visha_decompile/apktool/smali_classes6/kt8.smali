.class public abstract Lkt8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lokhttp3/Request;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Li55;

    invoke-virtual {p0, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li55;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li55;->a()Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const-string v2, "getAnnotations(...)"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    instance-of v5, v4, Lqd;

    if-eqz v5, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static final b(Lokhttp3/Request;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Li55;

    invoke-virtual {p0, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li55;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li55;->a()Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const-string v2, "getAnnotations(...)"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    instance-of v5, v4, Lma3;

    if-eqz v5, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    return v1

    :cond_4
    check-cast v0, Lma3;

    invoke-interface {v0}, Lma3;->value()Z

    move-result p0

    return p0
.end method
