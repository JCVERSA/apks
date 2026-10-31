.method public static t()Ljava/lang/String;
    .locals 2

    const-string v0, "key.not_support_finish_activity_regex"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
