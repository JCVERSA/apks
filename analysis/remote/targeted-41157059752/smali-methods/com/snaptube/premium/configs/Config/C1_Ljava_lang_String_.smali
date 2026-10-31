.method public static C1()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/snaptube/premium/configs/Config;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "KEY_SEARCH_HINT"

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
