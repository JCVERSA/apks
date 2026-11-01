.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/plugin/a$a$a;->a:Lcom/snaptube/plugin/PluginInstallationStatus;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginInstallationStatus;->b()Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/plugin/a$a$a;->a:Lcom/snaptube/plugin/PluginInstallationStatus;

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/PluginId;->tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V

    new-instance v0, Lcom/snaptube/plugin/a$a$a$a;

    invoke-direct {v0, p0}, Lcom/snaptube/plugin/a$a$a$a;-><init>(Lcom/snaptube/plugin/a$a$a;)V

    invoke-static {v0}, Lo/y48;->n(Ljava/lang/Runnable;)V

    return-void
.end method
