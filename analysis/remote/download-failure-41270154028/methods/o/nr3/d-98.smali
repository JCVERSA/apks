.method public static final d(Ljava/util/List;Lo/aq0;)V
    .locals 2

    const-string v0, "adsPosList"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/nr3;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lo/aq0;->N(Lcom/snaptube/ads/base/AdsPos;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
