.class public abstract Lvr8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Lqj3;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqj3;

    if-eqz v0, :cond_0

    check-cast p0, Lqj3;

    return-object p0

    :cond_0
    sget v0, Lcom/yandex/div/R$id;->div_releasable_list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/collection/SparseArrayCompat;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/collection/SparseArrayCompat;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lqj3;

    if-eqz v2, :cond_3

    move-object v3, v0

    check-cast v3, Lqj3;

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Lrj3;

    invoke-direct {v3}, Lrj3;-><init>()V

    invoke-virtual {v1, p0, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_4
    return-object v3
.end method

.method public static final b(Landroid/view/View;)Ljava/lang/Iterable;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/div/R$id;->div_releasable_list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/collection/SparseArrayCompat;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lou9;->a(Landroidx/collection/SparseArrayCompat;)Ljava/lang/Iterable;

    move-result-object v1

    :cond_1
    return-object v1
.end method
