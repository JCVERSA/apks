.method public m1()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lo/m5;->c(Landroid/view/LayoutInflater;)Lo/m5;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->r:Lo/m5;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lo/m5;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
