.method public final synthetic T1()V
    .locals 3

    const-string v0, "home"

    invoke-static {v0}, Lo/bq0;->K0(Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/notification/NotificationToolBarHelper;->a:Lcom/snaptube/premium/notification/NotificationToolBarHelper$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/notification/NotificationToolBarHelper$Companion;->c0(Landroid/content/Context;Z)V

    return-void
.end method
