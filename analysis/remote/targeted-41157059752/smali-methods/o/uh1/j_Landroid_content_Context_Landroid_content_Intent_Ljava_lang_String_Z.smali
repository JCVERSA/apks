.method public final j(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_package.local"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/list/youtube"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const-string v0, "pos"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/snaptube/premium/NavigationManager;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    const-string v0, "/search_video_play"

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method
