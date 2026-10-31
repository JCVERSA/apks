.method public final h(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "pos"

    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lo/ri0;->w(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/ri0;->A(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
