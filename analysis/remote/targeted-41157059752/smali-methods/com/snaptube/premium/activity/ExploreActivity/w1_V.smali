.method public final w1()V
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a()V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->w()V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->L()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->k2()V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->N6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->o:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lo/d76;->b()Lo/d76;

    move-result-object v0

    invoke-virtual {v0}, Lo/d76;->j()V

    return-void
.end method
