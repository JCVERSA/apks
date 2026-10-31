.method public final u(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a4()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->s()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
