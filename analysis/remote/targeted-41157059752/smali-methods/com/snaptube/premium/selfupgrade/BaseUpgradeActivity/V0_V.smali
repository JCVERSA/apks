.method public final V0()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->k:Lo/wu7;

    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->t1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->p(Landroid/content/Context;Ljava/lang/String;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$c;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$c;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    invoke-virtual {v0, v1}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->k:Lo/wu7;

    return-void
.end method
