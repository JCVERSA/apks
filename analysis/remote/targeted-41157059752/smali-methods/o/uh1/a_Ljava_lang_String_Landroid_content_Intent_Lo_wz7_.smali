.method public a(Ljava/lang/String;Landroid/content/Intent;)Lo/wz7;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lo/uh1;->z(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snaptube.intent.action.OPEN_WEBVIEW"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lo/uh1;->x(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "list"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, p2, v1, v2}, Lo/uh1;->v(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p2, "search"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, v1, v2}, Lo/uh1;->w(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method
