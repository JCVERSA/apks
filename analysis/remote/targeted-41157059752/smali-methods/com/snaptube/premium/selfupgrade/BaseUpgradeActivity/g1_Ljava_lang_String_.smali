.method public final g1()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal_upgrade"

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "normal_upgrade_manual"

    goto :goto_0

    :cond_0
    const-string v0, "strong_upgrade_manual"

    :goto_0
    return-object v0
.end method
