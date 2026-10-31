.method public static B()Ljava/lang/String;
    .locals 2

    const-string v0, "key.web_configured_user_agent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
