.method public static V0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->W0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
