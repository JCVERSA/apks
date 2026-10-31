.method public h0()V
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    invoke-interface {v0}, Lo/sn;->L()Lo/ne3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->p:Lo/n9;

    invoke-interface {v0, v1}, Lo/x93;->g(Lo/n9;)V

    invoke-static {}, Landroidx/lifecycle/j;->l()Lo/x24;

    move-result-object v0

    invoke-interface {v0}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    :cond_0
    return-void
.end method
