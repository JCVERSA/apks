.method public final D()V
    .locals 5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getGenericSharedPrefs(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->r(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StartDownloadAdViewModel"

    const-string v1, "\u4e0a\u6b21\u6267\u884c\u4e0d\u662f\u4eca\u65e5\uff0c\u6e05\u7a7a\u7f13\u5b58\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->H(Landroid/content/SharedPreferences;J)V

    sget-object v2, Lo/g9;->a:Lo/g9$a;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lo/g9$a;->b(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/g9$a;->c(I)V

    invoke-virtual {v1, v0, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->G(Landroid/content/SharedPreferences;I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->E(Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->F(Landroid/content/SharedPreferences;I)V

    :cond_0
    return-void
.end method
