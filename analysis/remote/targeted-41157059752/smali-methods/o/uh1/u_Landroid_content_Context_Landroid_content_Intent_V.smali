.method public final u(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-static {p2}, Lcom/snaptube/premium/youtube/PlaylistVideoFragment;->p6(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->STANDARD:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string v2, "/videos"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return-void
.end method
