.method public final P1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lo/xy8;->b:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    new-instance v1, Lo/j80;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lo/j80;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
