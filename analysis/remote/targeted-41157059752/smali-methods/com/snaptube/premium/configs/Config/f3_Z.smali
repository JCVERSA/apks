.method public static f3()Z
    .locals 3

    sget-object v0, Lcom/snaptube/premium/configs/Config;->b:Landroid/content/SharedPreferences;

    const-string v1, "key.not_show_push_permission_dialog_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
