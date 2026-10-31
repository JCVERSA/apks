.method public f(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_1
    return-void
.end method
