.method public static n(Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->y(Lrx/c;Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
