.method public static s1()I
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.push_show_limit"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
