.method public final G(Landroid/content/SharedPreferences;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
