.method public final n(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "url"

    invoke-virtual {p4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid argument: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lo/g86;->f()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p2}, Lo/uh1;->s(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p3, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {p2, p3}, Lo/uh1;->B(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
