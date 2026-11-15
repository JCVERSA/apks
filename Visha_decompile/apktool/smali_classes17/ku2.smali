.class public abstract Lku2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div2/DivVideo;Loj3;)Ljava/util/List;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/DivVideo;->Q:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivVideoSource;

    iget-object v2, v1, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v1, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v6, Lqu2;

    iget-object v7, v4, Lcom/yandex/div2/DivVideoSource$Resolution;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v7, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    iget-object v4, v4, Lcom/yandex/div2/DivVideoSource$Resolution;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-direct {v6, v7, v4}, Lqu2;-><init>(II)V

    goto :goto_1

    :cond_0
    move-object v6, v5

    :goto_1
    iget-object v1, v1, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Long;

    :cond_1
    new-instance v1, Lru2;

    invoke-direct {v1, v2, v3, v6, v5}, Lru2;-><init>(Landroid/net/Uri;Ljava/lang/String;Lqu2;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
