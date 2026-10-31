.method public onBackPressed()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->q:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->t:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->b2()V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->q:J

    const v0, 0x7f110667

    invoke-static {p0, v0}, Lo/b88;->l(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
