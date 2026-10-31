.method public static y(Lrx/c;Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p0

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$b;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$b;-><init>()V

    invoke-virtual {p0, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p0

    new-instance v6, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$a;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$a;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    return-void
.end method
