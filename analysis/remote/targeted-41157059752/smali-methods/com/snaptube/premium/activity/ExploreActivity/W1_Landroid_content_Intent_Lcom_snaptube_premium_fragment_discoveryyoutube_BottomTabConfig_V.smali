.method public final W1(Landroid/content/Intent;Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->A3(Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_init_tab"

    invoke-virtual {p2}, Lcom/snaptube/premium/fragment/discoveryyoutube/BottomTabConfig;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->h4(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    :goto_0
    return-void
.end method
