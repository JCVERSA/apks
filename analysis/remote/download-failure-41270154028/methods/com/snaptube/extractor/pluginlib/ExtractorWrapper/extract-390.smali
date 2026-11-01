.method public extract(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->b(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/PageContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/tc2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extract_from"

    invoke-static {v1, v2}, Lo/tc2;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "from_player"

    invoke-virtual {p1, v2, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->n(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->a()Lo/ma3;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo/ma3;->checkAndWait(J)Z

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/ma3;->isAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->extractSourceTracker:Lo/uc2;

    invoke-virtual {v0, p2}, Lo/uc2;->h(Ljava/lang/Object;)Lo/uc2$b;

    move-result-object v0

    invoke-virtual {v0}, Lo/uc2$b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object p2

    invoke-virtual {p2}, Lo/xm3;->a()Lo/ma3;

    move-result-object p2

    invoke-interface {p2}, Lo/ma3;->getLastHttpStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " This website is not available in your country or region."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lo/uc2$b;->b()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lo/rd2;

    invoke-direct {v1, v0, p1}, Lo/rd2;-><init>(Lo/uc2$b;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->TAG:Ljava/lang/String;

    const-string v1, "from choose format fragment"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance p2, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;

    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/ExtractError;->NOT_SUPPORTED:Lcom/snaptube/extractor/pluginlib/models/ExtractError;

    invoke-direct {p2, v0, p1}, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;-><init>(Lcom/snaptube/extractor/pluginlib/models/ExtractError;Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-static {p2}, Lo/no5;->i(Ljava/lang/Object;)Lo/no5;

    move-result-object p2

    new-instance v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;

    invoke-direct {v0, p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;-><init>(Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;Lo/no5;)V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lo/pz5;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->buildForbiddenResult(Lcom/snaptube/extractor/pluginlib/models/PageContext;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v3

    new-instance v4, Lo/sd2;

    invoke-direct {v4, p1, v0}, Lo/sd2;-><init>(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)V

    invoke-virtual {v3, v4}, Lo/yq8;->p(Lo/ic2;)V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v3

    if-nez p2, :cond_5

    move-object v0, v2

    :cond_5
    invoke-interface {v3, p1, v0}, Lo/qh3;->extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    invoke-direct {p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixTitle(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :goto_1
    :try_start_2
    invoke-static {p2}, Lo/dc2;->c(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    throw p2
.end method
