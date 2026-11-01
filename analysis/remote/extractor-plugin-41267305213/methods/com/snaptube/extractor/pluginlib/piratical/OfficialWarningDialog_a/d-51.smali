.method public static final d(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$this_runCatching"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$activity"

    invoke-static {p1, p0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;

    sget-object v0, Lo/xl;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lo/mg8;->a:Lo/mg8;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
