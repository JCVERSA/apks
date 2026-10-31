.method public static R6(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "key.upgrade_switch_new_install_enable"

    goto :goto_0

    :cond_0
    const-string v0, "guide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key.guide_switch_new_install_enable"

    goto :goto_0

    :cond_1
    const-string p0, "key.ad_switch_new_install_enable"

    :goto_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->i1()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
