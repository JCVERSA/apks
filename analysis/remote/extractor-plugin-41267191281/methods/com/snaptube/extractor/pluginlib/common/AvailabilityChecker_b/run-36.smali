.method public run()V
    .locals 12

    const-string v0, "AvailabilityChecker"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$300(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkCountryIso is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "https://misc.api.thejeu.com/availability"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "networkCountryIso"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_0
    const/4 v7, 0x0

    goto :goto_3

    :catch_0
    move-exception v5

    goto/16 :goto_4

    :cond_0
    :goto_1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lo/um8;->a(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v8, "vc"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-static {}, Lo/ye9;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "gl"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v4}, Lo/e93;->g(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lo/a93;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lo/a93;->h()I

    move-result v7
    :try_end_1
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5}, Lo/t83;->c(Lo/a93;)I

    move-result v5
    :try_end_2
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v8, v5

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_3

    :cond_3
    move-wide v8, v2

    const/4 v7, 0x0

    :goto_2
    const-string v5, ""

    goto :goto_5

    :catchall_2
    move-exception v5

    move-object v6, v4

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v4

    goto :goto_4

    :goto_3
    const-string v8, "request availability api failed"

    invoke-static {v0, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    move-wide v8, v2

    goto :goto_5

    :goto_4
    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/common/HttpException;->getStatusCode()I

    move-result v7

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/common/HttpException;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lo/t83;->b(Ljava/util/List;)I

    move-result v5

    int-to-long v9, v5

    move-object v5, v8

    move-wide v8, v9

    :goto_5
    sput v7, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->sHttpStatus:I

    const/16 v10, 0x1a2

    if-eq v7, v10, :cond_6

    const/16 v11, 0xc8

    if-eq v7, v11, :cond_6

    const/16 v11, 0xcc

    if-ne v7, v11, :cond_4

    goto :goto_7

    :cond_4
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-static {v0, v7, v5, v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$600(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    :goto_7
    if-eq v7, v10, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$102(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_9
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$400(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_a

    move-wide v2, v8

    :cond_a
    invoke-static {v4, v1, v2, v3}, Lo/ld2;->F(Landroid/content/Context;ZJ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Availability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0, v7, v8, v9}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$500(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;IJ)V

    :goto_8
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$800(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$700(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
