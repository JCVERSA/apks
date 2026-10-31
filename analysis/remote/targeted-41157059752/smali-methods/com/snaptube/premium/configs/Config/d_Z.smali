.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Y3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->R4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
