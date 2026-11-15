.class public abstract Lxt2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/view2/a;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Limb;->a(Lcom/yandex/div2/Div;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/RuntimeStore;->f(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/a;->c(Loj3;)Lcom/yandex/div/core/view2/a;

    move-result-object p0

    return-object p0
.end method
