.method public final synthetic p(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11016b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p2, p3}, Lo/k08;->n0(ILjava/lang/String;Z)I

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    invoke-virtual {p1}, Lo/k08;->A()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object p3, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p2, p3, p1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
