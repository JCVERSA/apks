.method public static e3()Z
    .locals 2

    const-string v0, "debug-for-local"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
