.method public static F5(JZ)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_last_check_plugin_info_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p0, "key_last_check_plugin_info_result"

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_0

    const-string p0, "key_has_fetched_plugin_info_successfully_vc"

    const p1, 0x47c3a22

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->Q6(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
