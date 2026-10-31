.method public p(Lcom/snaptube/premium/dialog/coordinator/IPopElement;)V
    .locals 4

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snaptube/premium/dialog/coordinator/a;->e()Z

    move-result v0

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPop popElement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFullViewPop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " popType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/snaptube/premium/dialog/coordinator/IPopElement;->c()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->n:Lo/hh3;

    invoke-interface {p1}, Lo/hh3;->a()V

    :cond_0
    return-void
.end method
