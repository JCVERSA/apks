.method public h()Z
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->Q()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/snaptube/premium/configs/Config;->z6(J)V

    return v3

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->l2()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const/16 v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v1, v4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->m2()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->P2()Z

    move-result v0

    return v0
.end method
