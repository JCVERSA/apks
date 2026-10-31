.method public m(Lcom/snaptube/premium/dialog/coordinator/IPopElement;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss popElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/dialog/coordinator/PopCoordinator;->i0(Landroidx/fragment/app/FragmentActivity;)Lcom/snaptube/premium/dialog/coordinator/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/snaptube/premium/dialog/coordinator/a;->e()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss isFullViewPop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->i2()V

    :cond_0
    return-void
.end method
