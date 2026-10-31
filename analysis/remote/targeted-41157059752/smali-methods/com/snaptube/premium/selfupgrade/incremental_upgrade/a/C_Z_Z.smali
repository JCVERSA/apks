.method public final C(Z)Z
    .locals 3

    invoke-static {}, Lo/x87;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->v()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a4()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->s()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    xor-int/lit8 v2, v0, 0x1

    :goto_1
    return v2
.end method
