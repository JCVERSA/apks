.method public Z1()V
    .locals 4

    sget-object v0, Lo/ua;->a:Lo/ua;

    invoke-virtual {v0}, Lo/ua;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/ads/base/AdsPos;

    sget-object v2, Lo/ua;->a:Lo/ua;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/ua;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/gb;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/gb;->c(Lo/jb;)V

    goto :goto_0

    :cond_1
    return-void
.end method
