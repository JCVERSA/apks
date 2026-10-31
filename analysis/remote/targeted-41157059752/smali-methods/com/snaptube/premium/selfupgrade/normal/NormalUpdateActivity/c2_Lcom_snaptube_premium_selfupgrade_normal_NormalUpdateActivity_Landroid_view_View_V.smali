.method public static final c2(Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->h2()V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->l4()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->l1()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p0}, Lo/vh8;->d(Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Lo/gx0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->b1()V

    :goto_0
    return-void
.end method
