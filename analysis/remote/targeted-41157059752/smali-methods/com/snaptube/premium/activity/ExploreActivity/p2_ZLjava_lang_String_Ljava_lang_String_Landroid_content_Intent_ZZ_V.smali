.method public final p2(ZLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "intent is null when restart MainActivity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "phoenix.intent.extra.EXTRA_IS_LOGIN_RESTART"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "arg_init_tab"

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "url_of_default_tab"

    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "action_after_restart"

    invoke-virtual {p5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const p1, 0x10018000

    invoke-virtual {p5, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p6, :cond_4

    const p1, 0x7f010014

    const p2, 0x7f010016

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
