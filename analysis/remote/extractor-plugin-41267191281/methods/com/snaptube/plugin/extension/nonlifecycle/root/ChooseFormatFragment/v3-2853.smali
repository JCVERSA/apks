.method public final v3(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->S3(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    sget-object v0, Lo/fs2;->a:Lo/fs2;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v1

    const-string v2, "getFormats(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/fs2;->q(Ljava/util/List;)Z

    move-result v0

    sget-object v1, Lo/ao0;->a:Lo/ao0$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v2

    const-string v3, "getVideoUrlExtractor(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lo/ao0$a;->c(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lo/dv8;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormatsCount()I

    move-result v0

    const/16 v4, 0x9

    if-le v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->j3()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->n3()V

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->w3()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    if-eqz v4, :cond_5

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/chooseformat/view/PopupFragment;->F2()Lcom/snaptube/premium/views/CommonPopupView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/snaptube/premium/views/CommonPopupView;->setMeasureAutoScroll(Z)V

    :cond_3
    iget-object v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->C:Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$c;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormatsCount()I

    move-result p1

    const/16 v1, 0xc

    if-le p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$c;->c(Z)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/chooseformat/view/PopupFragment;->F2()Lcom/snaptube/premium/views/CommonPopupView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->C:Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$c;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->x3()V

    :cond_6
    :goto_3
    return-void
.end method
