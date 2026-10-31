.method public final p(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string v2, "/shorts_play"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    const/4 p1, 0x1

    return p1
.end method
