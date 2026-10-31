.method public final e(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110444

    invoke-static {p1, p2}, Lo/b88;->l(Landroid/content/Context;I)V

    return v0

    :cond_1
    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v0}, Lo/u08;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid argument: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mixed_list"

    invoke-static {p2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {p1}, Lo/az7;->v(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/snaptube/mixed_list/util/IntentDecoder;->b(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    move-result-object v3

    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v3, :cond_5

    iput-object p4, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->g:Ljava/lang/String;

    :cond_5
    if-nez v3, :cond_6

    new-instance p1, Lo/pn0$a;

    invoke-direct {p1}, Lo/pn0$a;-><init>()V

    new-instance p2, Lo/pn0$b;

    invoke-direct {p2}, Lo/pn0$b;-><init>()V

    iget-wide v5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->y:J

    invoke-virtual {p2, v5, v6}, Lo/pn0$b;->f(J)Lo/pn0$b;

    move-result-object p2

    invoke-virtual {p2}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    new-instance p2, Lo/pn0$c;

    invoke-direct {p2}, Lo/pn0$c;-><init>()V

    invoke-virtual {p2, v1}, Lo/pn0$c;->e(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v2}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    return v4

    :cond_6
    if-eqz p5, :cond_8

    const-string p1, "card_pos"

    const/4 p2, -0x1

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_8

    :try_start_0
    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_7
    new-instance p2, Lorg/json/JSONObject;

    iget-object v1, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    new-instance p1, Lo/pn0$a;

    invoke-direct {p1}, Lo/pn0$a;-><init>()V

    new-instance p2, Lo/pn0$b;

    invoke-direct {p2}, Lo/pn0$b;-><init>()V

    if-nez p5, :cond_9

    const-string p5, ""

    goto :goto_3

    :cond_9
    const-string v0, "from"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :goto_3
    invoke-virtual {p2, p5}, Lo/pn0$b;->e(Ljava/lang/String;)Lo/pn0$b;

    move-result-object p2

    iget-wide v0, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->y:J

    invoke-virtual {p2, v0, v1}, Lo/pn0$b;->f(J)Lo/pn0$b;

    move-result-object p2

    invoke-virtual {p2}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    new-instance p2, Lo/pn0$c;

    invoke-direct {p2}, Lo/pn0$c;-><init>()V

    iget-object p5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->n:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lo/pn0$c;->e(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    iget-object p5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->i:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lo/pn0$c;->t(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lo/uh1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lo/pn0$c;->k(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lo/pn0$c;->l(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pn0$c;->g(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    const-string p3, "normal"

    invoke-virtual {p2, p3}, Lo/pn0$c;->q(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {v3}, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->b()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pn0$c;->p(Ljava/util/Map;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p1

    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/pn0$a;->d(Ljava/lang/String;)Lo/pn0$a;

    move-result-object p1

    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->n:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v2}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    return v4

    :cond_a
    :goto_4
    invoke-static {p1, v1, v3, v4, p4}, Lcom/snaptube/premium/NavigationManager;->P0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return v0
.end method
