.method public static final R1(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/a;->a:Lcom/snaptube/premium/selfupgrade/a;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    move-result-object v1

    iget-object v1, v1, Lo/xy8;->b:Landroid/widget/FrameLayout;

    const-string v2, "flContainer"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/snaptube/premium/selfupgrade/a$b;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->q1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->s1()Z

    move-result p0

    invoke-direct {v2, v3, p0}, Lcom/snaptube/premium/selfupgrade/a$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/selfupgrade/a;->h(Landroid/view/View;Lcom/snaptube/premium/selfupgrade/a$b;)V

    return-void
.end method
