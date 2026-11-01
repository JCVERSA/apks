.method private final I0()V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lo/g5;->h:Landroid/widget/FrameLayout;

    new-instance v3, Lo/ot0;

    invoke-direct {v3, p0}, Lo/ot0;-><init>(Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lo/g5;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lo/pt0;

    invoke-direct {v3}, Lo/pt0;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lo/g5;->g:Landroid/widget/ImageView;

    const v3, 0x7f0800f5

    const v4, 0x7f0802a5

    invoke-static {p0, v3, v4}, Lo/yk3;->h(Landroid/content/Context;II)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lo/g5;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->b:Ljava/lang/String;

    const-string v4, "url"

    if-nez v3, :cond_4

    invoke-static {v4}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v0, :cond_5

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lo/g5;->j:Landroid/widget/TextView;

    sget-object v3, Lo/fs2;->a:Lo/fs2;

    iget-object v5, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->b:Ljava/lang/String;

    if-nez v5, :cond_6

    invoke-static {v4}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v5, v2

    :cond_6
    invoke-virtual {v3, v5}, Lo/fs2;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    iget-object v3, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->b:Ljava/lang/String;

    if-nez v3, :cond_7

    invoke-static {v4}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    invoke-virtual {v0, v3}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->p(Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v3, :cond_8

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    iget-object v3, v3, Lo/g5;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_9

    const v4, 0x7f110848

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_9
    const v4, 0x7f110213

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v3, :cond_a

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    iget-object v3, v3, Lo/g5;->b:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v4, Lo/qt0;

    invoke-direct {v4, p0, v0}, Lo/qt0;-><init>(Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;->d:Lo/g5;

    if-nez v0, :cond_b

    invoke-static {v1}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lo/g5;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lo/rt0;

    invoke-direct {v1, p0}, Lo/rt0;-><init>(Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lo/y24;->a(Lo/x24;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity$initView$5;

    invoke-direct {v6, p0, v2}, Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity$initView$5;-><init>(Lcom/snaptube/premium/ClipMonitor/ClipMonitorDownloadActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;

    return-void
.end method
