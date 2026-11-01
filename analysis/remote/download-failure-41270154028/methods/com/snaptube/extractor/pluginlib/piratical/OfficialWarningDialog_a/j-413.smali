.method public final j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->g()Lo/af3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/af3;->b(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lo/xl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "be135353437d704f3a37e2b413d040a5ddff4f19"

    invoke-static {v0, p1, v1}, Lo/cu7;->y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lo/et5;->a:Lo/et5;

    invoke-virtual {v0, p1}, Lo/et5;->d(Ljava/lang/String;)V

    :cond_4
    return v2
.end method
