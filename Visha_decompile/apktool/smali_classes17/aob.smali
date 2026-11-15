.class public abstract Laob;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lqnb;Ljava/lang/String;)Lynb;
    .locals 0

    invoke-static {p0, p1}, Laob;->c(Lqnb;Ljava/lang/String;)Lynb;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lqnb;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_0

    const-string p0, "array"

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_1

    const-string p0, "boolean"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_2

    const-string p0, "color"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_3

    const-string p0, "dict"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_4

    const-string p0, "number"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_5

    const-string p0, "integer"

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_6

    const-string p0, "string"

    goto :goto_0

    :cond_6
    instance-of p0, p0, Lqnb$h;

    if-eqz p0, :cond_7

    const-string p0, "url"

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final c(Lqnb;Ljava/lang/String;)Lynb;
    .locals 3

    new-instance v0, Lynb;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Laob;->b(Lqnb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lynb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
