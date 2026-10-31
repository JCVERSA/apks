.method public final g(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;

    invoke-direct {v0, p1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, p1, v1}, Lo/mp6;->d(Lrx/d;Lo/bx2;ILjava/lang/Object;)Lo/wu7;

    move-result-object p1

    sput-object p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e:Lo/wu7;

    return-void
.end method
