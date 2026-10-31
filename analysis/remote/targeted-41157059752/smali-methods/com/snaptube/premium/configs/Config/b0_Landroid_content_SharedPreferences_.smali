.method public static b0()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/configs/Config;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lo/bm5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->N1(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/configs/Config;->b:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/configs/Config;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method
