.method public static Q(Landroid/content/Context;Ljava/lang/String;)Lrx/c;
    .locals 2

    invoke-static {p0}, Lo/wl8;->f(Landroid/content/Context;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;

    invoke-direct {v1, p1, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p0

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$d;

    invoke-direct {v0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p0

    return-object p0
.end method
