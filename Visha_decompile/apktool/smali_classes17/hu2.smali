.class public abstract Lhu2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div2/DivVariable;)Lqnb;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivVariable$b;

    if-eqz v0, :cond_0

    new-instance v0, Lqnb$b;

    check-cast p0, Lcom/yandex/div2/DivVariable$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$b;->c()Lcom/yandex/div2/BoolVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/BoolVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$b;->c()Lcom/yandex/div2/BoolVariable;

    move-result-object p0

    iget-boolean p0, p0, Lcom/yandex/div2/BoolVariable;->b:Z

    invoke-direct {v0, v1, p0}, Lqnb$b;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$f;

    if-eqz v0, :cond_1

    new-instance v0, Lqnb$f;

    check-cast p0, Lcom/yandex/div2/DivVariable$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$f;->c()Lcom/yandex/div2/IntegerVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/IntegerVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$f;->c()Lcom/yandex/div2/IntegerVariable;

    move-result-object p0

    iget-wide v2, p0, Lcom/yandex/div2/IntegerVariable;->b:J

    invoke-direct {v0, v1, v2, v3}, Lqnb$f;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$g;

    if-eqz v0, :cond_2

    new-instance v0, Lqnb$e;

    check-cast p0, Lcom/yandex/div2/DivVariable$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$g;->c()Lcom/yandex/div2/NumberVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/NumberVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$g;->c()Lcom/yandex/div2/NumberVariable;

    move-result-object p0

    iget-wide v2, p0, Lcom/yandex/div2/NumberVariable;->b:D

    invoke-direct {v0, v1, v2, v3}, Lqnb$e;-><init>(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$h;

    if-eqz v0, :cond_3

    new-instance v0, Lqnb$g;

    check-cast p0, Lcom/yandex/div2/DivVariable$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$h;->c()Lcom/yandex/div2/StrVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/StrVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$h;->c()Lcom/yandex/div2/StrVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/StrVariable;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lqnb$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$c;

    if-eqz v0, :cond_4

    new-instance v0, Lqnb$c;

    check-cast p0, Lcom/yandex/div2/DivVariable$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$c;->c()Lcom/yandex/div2/ColorVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/ColorVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$c;->c()Lcom/yandex/div2/ColorVariable;

    move-result-object p0

    iget p0, p0, Lcom/yandex/div2/ColorVariable;->b:I

    invoke-direct {v0, v1, p0}, Lqnb$c;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$i;

    if-eqz v0, :cond_5

    new-instance v0, Lqnb$h;

    check-cast p0, Lcom/yandex/div2/DivVariable$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$i;->c()Lcom/yandex/div2/UrlVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/UrlVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$i;->c()Lcom/yandex/div2/UrlVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/UrlVariable;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, p0}, Lqnb$h;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$e;

    if-eqz v0, :cond_6

    new-instance v0, Lqnb$d;

    check-cast p0, Lcom/yandex/div2/DivVariable$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$e;->c()Lcom/yandex/div2/DictVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DictVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$e;->c()Lcom/yandex/div2/DictVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DictVariable;->b:Lorg/json/JSONObject;

    invoke-direct {v0, v1, p0}, Lqnb$d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivVariable$a;

    if-eqz v0, :cond_7

    new-instance v0, Lqnb$a;

    check-cast p0, Lcom/yandex/div2/DivVariable$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$a;->c()Lcom/yandex/div2/ArrayVariable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/ArrayVariable;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div2/DivVariable$a;->c()Lcom/yandex/div2/ArrayVariable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ArrayVariable;->b:Lorg/json/JSONArray;

    invoke-direct {v0, v1, p0}, Lqnb$a;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    :goto_0
    return-object v0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
