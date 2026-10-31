.method public static b4()Z
    .locals 1

    sget-object v0, Lcom/snaptube/premium/configs/Config;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->c4()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/configs/Config;->q:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/configs/Config;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
