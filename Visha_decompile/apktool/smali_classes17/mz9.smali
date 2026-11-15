.class public abstract Lmz9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lpd3;Lcom/yandex/div/evaluable/a;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "evaluationContext"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_2

    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lpd3;->d()Lqgc;

    move-result-object p0

    const-string p2, "String for padding is empty."

    invoke-interface {p0, p1, p2}, Lqgc;->a(Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lwn8;->q(II)Lu15;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lq15;

    invoke-virtual {p2}, Lq15;->nextInt()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "stringBuilder.toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
