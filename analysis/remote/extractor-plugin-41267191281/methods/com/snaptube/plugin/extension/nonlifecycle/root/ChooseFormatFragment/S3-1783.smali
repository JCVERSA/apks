.method public final S3(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->q3()Lo/do0;

    move-result-object v0

    invoke-virtual {v0}, Lo/do0;->c()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lo/ao0;->a:Lo/ao0$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v2

    const-string v3, "getVideoUrlExtractor(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lo/ao0$a;->a(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lo/dv8;)Lcom/snaptube/premium/extractor/ChooseFormatStyle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->q3()Lo/do0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/do0;->b(Lcom/snaptube/premium/extractor/ChooseFormatStyle;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v1

    iget-object v1, v1, Lo/xn0;->d:Lcom/snaptube/plugin/extension/ins/view/DownloadButton;

    const v5, 0x7f110798

    invoke-virtual {v1, v5}, Lcom/snaptube/plugin/extension/ins/view/DownloadButton;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v1

    iget-object v1, v1, Lo/xn0;->b:Lo/qn0;

    iget-object v1, v1, Lo/qn0;->g:Landroid/widget/TextView;

    const v5, 0x7f110217

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->q3()Lo/do0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, p1}, Lo/do0;->f(Landroid/view/View;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    instance-of v1, v2, Lcom/snaptube/plugin/extension/chooseformat/MediaTypeFormatFragment;

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    check-cast v1, Lcom/snaptube/plugin/extension/chooseformat/MediaTypeFormatFragment;

    invoke-virtual {v1, p1}, Lcom/snaptube/plugin/extension/chooseformat/MediaTypeFormatFragment;->N2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result v1

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->v:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->k3(Landroid/os/Bundle;J)Landroid/os/Bundle;

    move-result-object v3

    :cond_5
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lo/dn0;->p(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lo/yj8;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/yj8;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "urls"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/xu0;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    sget-object p1, Lo/mg8;->a:Lo/mg8;

    const-string p1, "key_format_fragment"

    const v3, 0x7f09054f

    invoke-virtual {v0, v3, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object p1

    iget-object p1, p1, Lo/xn0;->d:Lcom/snaptube/plugin/extension/ins/view/DownloadButton;

    invoke-virtual {p1, v1}, Lcom/snaptube/plugin/extension/ins/view/DownloadButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object p1

    iget-object p1, p1, Lo/xn0;->d:Lcom/snaptube/plugin/extension/ins/view/DownloadButton;

    const-string v0, "downloadButton"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
