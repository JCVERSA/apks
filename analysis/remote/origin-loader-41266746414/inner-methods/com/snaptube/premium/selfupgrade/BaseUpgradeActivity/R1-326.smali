.method public static final R1(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/snaptube/premium/selfupgrade/a;->a:Lcom/snaptube/premium/selfupgrade/a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lo/xy8;->b:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const-string v2, "flContainer"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/snaptube/premium/selfupgrade/a$b;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->q1()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->s1()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-direct {v2, v3, p0}, Lcom/snaptube/premium/selfupgrade/a$b;-><init>(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/selfupgrade/a;->h(Landroid/view/View;Lcom/snaptube/premium/selfupgrade/a$b;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
