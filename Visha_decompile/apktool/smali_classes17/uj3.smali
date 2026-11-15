.class public abstract Luj3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lnj3;Lnj3;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    instance-of v1, p0, Lof1;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    instance-of v1, p1, Lof1;

    if-eqz v1, :cond_1

    check-cast p0, Lof1;

    invoke-virtual {p0}, Lof1;->c()Ljava/util/List;

    move-result-object p0

    check-cast p1, Lof1;

    invoke-virtual {p1}, Lof1;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/json/expressions/Expression;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/json/expressions/Expression;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final c(Lnj3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p0, Lof1;

    return p0
.end method

.method public static final d(Lcom/yandex/div/json/expressions/Expression;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p0, Lcom/yandex/div/json/expressions/Expression$b;

    return p0
.end method

.method public static final e(Lnj3;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Luj3;->c(Lnj3;)Z

    move-result p0

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

.method public static final f(Lcom/yandex/div/json/expressions/Expression;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

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
