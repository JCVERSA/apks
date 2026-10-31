.method public final q(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z
    .locals 2

    invoke-static {p1, p2, p3}, Lo/uh1;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1
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
.end method
