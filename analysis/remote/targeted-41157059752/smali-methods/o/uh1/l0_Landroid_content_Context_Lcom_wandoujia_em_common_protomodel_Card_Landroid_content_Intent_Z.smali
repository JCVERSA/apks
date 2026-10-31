.method public l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1, p3, p2}, Lo/uh1;->m(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lo/uh1;->b:Lo/bg5;

    const-string p2, "click_log"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/lg5;->b(Lo/bg5;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
