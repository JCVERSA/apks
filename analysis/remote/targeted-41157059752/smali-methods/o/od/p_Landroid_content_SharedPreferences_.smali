.method public static p()Landroid/content/SharedPreferences;
    .locals 4

    const/4 v3, 0x7

    invoke-static {}, Lcom/snaptube/base/BaseApplication;->e()Landroid/app/Application;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "pref.fan"

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    return-object v0
.end method
