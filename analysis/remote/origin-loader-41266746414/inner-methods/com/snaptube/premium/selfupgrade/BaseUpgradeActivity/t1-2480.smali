.method public final t1()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "normal_upgrade"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "NormalUpdateActivity"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "ForceUpdateActivity"

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method
