.method public final V0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->k:Lo/wu7;

    .line 2
    .line 3
    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->t1()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->p(Landroid/content/Context;Ljava/lang/String;)Lrx/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lo/ix6;->d()Lrx/d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lo/sh;->c()Lrx/d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$c;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$c;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->k:Lo/wu7;

    .line 44
    .line 45
    return-void
.end method
