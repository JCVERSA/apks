.method public static final y(Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "getGenericSharedPrefs(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->r(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartDownloadAdViewModel"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->D()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->G(Landroid/content/SharedPreferences;I)V

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->w(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u4e0b\u8f7d\u6b21\u6570+1"

    invoke-static {v2, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
