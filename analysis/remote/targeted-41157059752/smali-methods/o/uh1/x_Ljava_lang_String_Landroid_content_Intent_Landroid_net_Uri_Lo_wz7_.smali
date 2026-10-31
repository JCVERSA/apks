.method public final x(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)Lo/wz7;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pos"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "show_toolbar"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "url"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/moweb/DefaultWebFragment;

    invoke-direct {p2, p3, v1, p1, v0}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2
.end method
