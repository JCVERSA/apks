.method public final P1()V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    move-result-object v0

    iget-object v0, v0, Lo/xy8;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lo/j80;

    invoke-direct {v1, p0}, Lo/j80;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
