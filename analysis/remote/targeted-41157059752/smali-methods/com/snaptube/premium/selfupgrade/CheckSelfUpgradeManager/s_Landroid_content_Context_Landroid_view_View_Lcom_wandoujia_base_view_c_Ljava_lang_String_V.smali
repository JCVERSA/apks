.method public static s(Landroid/content/Context;Landroid/view/View;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f09093c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09093b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0, p2, v0, p1, p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->n(Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
