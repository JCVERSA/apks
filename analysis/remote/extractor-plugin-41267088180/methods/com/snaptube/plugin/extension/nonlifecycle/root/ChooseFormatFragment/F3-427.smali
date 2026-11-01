.method private final F3()V
    .locals 11

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->d:Lcom/snaptube/plugin/extension/ins/view/DownloadButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/ins/view/DownloadButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->d:Lcom/snaptube/plugin/extension/ins/view/DownloadButton;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110522

    goto :goto_0

    :cond_0
    const v2, 0x7f110213

    :goto_0
    invoke-virtual {v0, v2}, Lcom/snaptube/plugin/extension/ins/view/DownloadButton;->setText(I)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->I3()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v3, v0, Lo/xn0;->f:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    const/16 v9, 0x15

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lo/sr7;->f(Landroid/view/View;IIZZZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v3, v0, Lo/xn0;->i:Lcom/snaptube/plugin/extension/nonlifecycle/MaxHeightLayout;

    const-string v0, "scrollView"

    invoke-static {v3, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v4

    iget-object v4, v4, Lo/xn0;->i:Lcom/snaptube/plugin/extension/nonlifecycle/MaxHeightLayout;

    invoke-static {v4, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v5, v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v10}, Lo/sr7;->f(Landroid/view/View;IIZZZILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->u:Ljava/lang/String;

    invoke-static {v0}, Lo/zz4;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->u:Ljava/lang/String;

    invoke-static {v0}, Lo/kf9;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->g:Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->t3()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;->setTimeout(J)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->g:Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;

    new-instance v3, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$initView$2;

    invoke-direct {v3, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$initView$2;-><init>(Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;)V

    invoke-virtual {v0, v3}, Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;->setTimeoutCallback(Lo/bx2;)V

    :cond_5
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->y3()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-static {p0, v1, v3, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->A3(Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lo/yn0;->q(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->u3()Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatViewModel;->X(Z)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->J3()V

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->v:J

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/chooseformat/view/PopupFragment;->F2()Lcom/snaptube/premium/views/CommonPopupView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Lcom/snaptube/premium/views/CommonPopupView;->setIgnoreMeasureTopOffset(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->g:Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;

    new-instance v1, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$f;

    invoke-direct {v1, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$f;-><init>(Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;->setOnRetryClickListener(Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView$b;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->p3()Lo/xn0;

    move-result-object v0

    iget-object v0, v0, Lo/xn0;->g:Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;

    new-instance v1, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$initView$5;

    invoke-direct {v1, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment$initView$5;-><init>(Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/ins/view/ChooseFormatLoadingView;->setTimeoutCallback(Lo/bx2;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;->P3()V

    return-void
.end method
