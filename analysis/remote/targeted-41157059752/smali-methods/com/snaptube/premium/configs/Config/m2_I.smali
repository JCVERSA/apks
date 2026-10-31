.method public static m2()I
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "key.vip_switch_max_no_ad_buffer_seconds"

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->g1(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
