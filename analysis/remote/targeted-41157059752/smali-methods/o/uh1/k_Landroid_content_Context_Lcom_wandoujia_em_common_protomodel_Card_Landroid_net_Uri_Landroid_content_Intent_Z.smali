.method public final k(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-static/range {p2 .. p2}, Lo/ri0;->D(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lo/ri0;->o(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p2 .. p2}, Lo/ri0;->z(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v8, v0

    invoke-static/range {p2 .. p2}, Lo/ri0;->q(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "videoId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "feedSourceId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "specialId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "snaplistId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/wandoujia/em/common/protomodel/Card;->action:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v5

    :goto_0
    const-string v13, "creatorId"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "report_meta"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v5

    move-object/from16 v16, v4

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_2

    :cond_4
    move-object/from16 v13, v16

    :goto_2
    const-string v0, "pos"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p2 .. p2}, Lo/ri0;->w(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p2 .. p2}, Lo/ri0;->A(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v2, v0

    const-string v0, "dialog_style"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v0, "menu"

    :cond_7
    move-object v15, v0

    const/16 v0, 0x4e4c

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    const/16 v0, 0x4e4d

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v17, 0x1

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    :goto_4
    const/16 v0, 0x4e4e

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v5, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->stringValue:Ljava/lang/String;

    :cond_a
    move-object/from16 v18, v5

    goto :goto_5

    :cond_b
    move-object/from16 v18, v5

    const/16 v17, 0x0

    :goto_5
    new-instance v0, Lo/la7;

    invoke-direct {v0}, Lo/la7;-><init>()V

    invoke-virtual {v0, v2}, Lo/la7;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lo/la7;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lo/la7;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lo/la7;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lo/la7;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lo/la7;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lo/la7;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lo/la7;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lo/la7;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lo/la7;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lo/la7;->j(Ljava/lang/String;)V

    const-string v1, "query"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->e(Ljava/lang/String;)V

    const-string v1, "query_from"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->f(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    const-string v1, "card_pos"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 p3, v15

    const-string v15, "trigger_pos"

    if-nez v5, :cond_d

    invoke-virtual {v3, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v23, v4

    goto :goto_8

    :cond_d
    :goto_6
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v23, v4

    :try_start_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    :goto_7
    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    move-object/from16 v23, v4

    move-object/from16 p3, v15

    :goto_8
    const-string v0, "adapter_position"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v0, "playlist_video_count"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "share_channel"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v1, v23

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v3, p3

    const/4 v2, 0x1

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-static/range {v4 .. v22}, Lcom/snaptube/premium/share/SharePopupFragment;->s3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/views/CommonPopupView$f;)Ljava/lang/Object;

    return v2
.end method
