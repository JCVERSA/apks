.method public final synthetic k(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11016b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p1, v1, p2, v0}, Lo/k08;->n0(ILjava/lang/String;Z)I

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    invoke-virtual {p1}, Lo/k08;->A()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, v0, p2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
