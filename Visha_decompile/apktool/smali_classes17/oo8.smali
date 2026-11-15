.class public abstract Loo8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Loj8;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getCurrentRebindReusableList$div_release()Lxu8;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {p1, v1}, Lxu8;->c(Lcom/yandex/div2/Div;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p3}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v0}, Lzl2;->d()Loj3;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/Div;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getCurrentRebindReusableList$div_release()Lxu8;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lxu8;->c(Lcom/yandex/div2/Div;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
