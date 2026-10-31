.method public static a2(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "key.upgrade_check_interval"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
