.method public final F1()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Y0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    const v1, 0x7f1102dc

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->G1(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->c1()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->Z0()V

    :goto_1
    return-void
.end method
