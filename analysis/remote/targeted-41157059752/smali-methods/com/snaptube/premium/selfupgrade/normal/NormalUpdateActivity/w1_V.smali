.method public w1()V
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->u1()V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lo/xh8;->j:Lo/xy8;

    iget-object v0, v0, Lo/xy8;->b:Landroid/widget/FrameLayout;

    const-string v3, "flContainer"

    invoke-static {v0, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity$initView$1;

    invoke-direct {v3, p0}, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity$initView$1;-><init>(Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;)V

    invoke-static {v0, v3}, Lcom/snaptube/ktx/view/ViewKt;->t(Landroid/view/View;Lo/dx2;)Lo/wu7;

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lo/xh8;->g:Landroid/widget/TextView;

    new-instance v3, Lo/m75;

    invoke-direct {v3, p0}, Lo/m75;-><init>(Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v0, :cond_2

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lo/xh8;->c:Landroid/widget/ImageView;

    const-string v3, "ivNormalFeedback"

    invoke-static {v0, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->w4()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v0, :cond_4

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lo/xh8;->c:Landroid/widget/ImageView;

    new-instance v1, Lo/n75;

    invoke-direct {v1, p0}, Lo/n75;-><init>(Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
