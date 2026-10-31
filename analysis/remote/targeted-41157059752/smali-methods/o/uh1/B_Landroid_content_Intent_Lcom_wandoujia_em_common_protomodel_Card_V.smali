.method public static B(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)V
    .locals 4

    invoke-static {p1}, Lo/ri0;->q(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/wandoujia/em/common/protomodel/Card;->cardId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    const/16 v2, 0x4e22

    const-string v3, "cover_url"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x487

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_1
    const-string v0, "video_title"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4e21

    invoke-static {p1, v1}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, v2}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/16 v0, 0x4e28

    invoke-static {p1, v0}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/16 v0, 0x4e38

    invoke-static {p1, v0}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    return-void
.end method
