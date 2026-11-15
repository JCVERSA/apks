.class public abstract Lyj3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div2/DivVariable;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivVariable$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivVariable$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$b;->c()Lcom/yandex/div2/BoolVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/BoolVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$f;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivVariable$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$f;->c()Lcom/yandex/div2/IntegerVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/IntegerVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$g;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivVariable$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$g;->c()Lcom/yandex/div2/NumberVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/NumberVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$h;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivVariable$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$h;->c()Lcom/yandex/div2/StrVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/StrVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$c;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivVariable$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$c;->c()Lcom/yandex/div2/ColorVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivVariable$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$i;->c()Lcom/yandex/div2/UrlVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/UrlVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$e;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivVariable$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$e;->c()Lcom/yandex/div2/DictVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DictVariable;->a:Ljava/lang/String;

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$a;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivVariable$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$a;->c()Lcom/yandex/div2/ArrayVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ArrayVariable;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
