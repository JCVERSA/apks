.method public static P0()J
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.next_check_plugin_duration"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    return-wide v0
.end method
