.class public Lcom/mbridge/msdk/click/m;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;Lcom/mbridge/msdk/click/entity/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/click/o$f;Lcom/mbridge/msdk/click/k;Ljava/util/concurrent/Semaphore;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    .line 2
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    iget v3, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v5, 0xc8

    if-ne v5, v3, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v2, Lcom/mbridge/msdk/click/o;

    invoke-direct {v2}, Lcom/mbridge/msdk/click/o;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    new-instance v8, Lcom/mbridge/msdk/click/o;

    invoke-direct {v8}, Lcom/mbridge/msdk/click/o;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 9
    const-string v0, "TAG"

    const-string v1, "webview spider start error"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    .line 12
    iget-object v5, v1, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 13
    iget v5, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    .line 15
    iget-object v1, v1, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 23
    invoke-interface {v2, p1}, Lcom/mbridge/msdk/click/k;->a(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Z
    .locals 0

    .line 24
    invoke-virtual {p2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    return p1

    :cond_0
    const/4 p1, 0x2

    .line 28
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    .line 29
    invoke-virtual {p2, p0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
