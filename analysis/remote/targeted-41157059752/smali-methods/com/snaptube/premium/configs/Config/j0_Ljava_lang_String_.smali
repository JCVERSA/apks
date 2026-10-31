.method public static j0()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lo/ld2;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "ENABLE"

    return-object v0

    :cond_0
    if-gez v0, :cond_1

    const-string v0, "DISABLE"

    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    return-object v0
.end method
