.method public final F1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Y0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f1102dc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->G1(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-static {}, Lo/sq5;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->c1()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->Z0()V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method
