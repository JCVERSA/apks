.method public Z(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance p4, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {p4}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string p5, "Click"

    invoke-virtual {p4, p5}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object p4

    const-string p5, "fab_batch_download_btn"

    invoke-interface {p4, p5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p4

    const-string p5, "position_source"

    invoke-interface {p4, p5, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "batch_download_count"

    invoke-interface {p4, v0, p5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_0
    invoke-interface {p4}, Lo/ah3;->reportEvent()V

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p4, 0x0

    if-nez p1, :cond_2

    move-object p5, p4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    :goto_0
    invoke-static {p5}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/em/common/protomodel/Card;

    invoke-static {v2}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "from"

    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "jump_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p4

    move-object p4, p1

    move-object p1, v3

    goto :goto_2

    :cond_5
    move-object p1, p4

    :goto_2
    new-instance v1, Lo/pn0$a;

    invoke-direct {v1}, Lo/pn0$a;-><init>()V

    new-instance v2, Lo/pn0$c;

    invoke-direct {v2}, Lo/pn0$c;-><init>()V

    invoke-virtual {v2, p3}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lo/pn0$c;->h(Z)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p4}, Lo/pn0$c;->i(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p6}, Lo/pn0$c;->n(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p7}, Lo/pn0$c;->o(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {v1, p3}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p3

    new-instance p4, Lo/pn0$b;

    invoke-direct {p4}, Lo/pn0$b;-><init>()V

    invoke-virtual {p4, p1}, Lo/pn0$b;->e(Ljava/lang/String;)Lo/pn0$b;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lo/pn0$b;->b(Ljava/util/List;I)Lo/pn0$b;

    move-result-object p1

    invoke-virtual {p1}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p5}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    :cond_6
    :goto_3
    return-void
.end method
