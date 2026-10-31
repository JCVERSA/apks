.method public static Q1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lo/rk7;->g:Lo/rk7$a;

    invoke-virtual {v1, p0}, Lo/rk7$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
