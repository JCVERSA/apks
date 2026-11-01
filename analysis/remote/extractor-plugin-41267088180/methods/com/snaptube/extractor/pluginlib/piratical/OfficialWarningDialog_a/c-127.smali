.method public final c(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    return v0

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->e(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    sget-object v2, Lo/et5;->a:Lo/et5;

    sget-object v4, Lo/xl;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lo/et5;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lo/rf5;

    invoke-direct {v2, p0, v1}, Lo/rf5;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
