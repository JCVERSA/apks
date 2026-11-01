.method public static s(Ljava/lang/String;Ljava/lang/String;ZLcom/snaptube/premium/action/OpenMediaFileAction$From;Z)Z
    .locals 5

    invoke-static {p0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1102b8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lo/b88;->l(Landroid/content/Context;I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Lo/zd3;->j(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "position_source"

    invoke-static {p3, p2}, Lcom/snaptube/premium/action/d;->h(Lcom/snaptube/premium/action/OpenMediaFileAction$From;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lo/i04;->a(Z)Ljava/io/File;

    sget-object v3, Lcom/snaptube/premium/action/OpenMediaFileAction$From;->PLAY_AS_MUSIC:Lcom/snaptube/premium/action/OpenMediaFileAction$From;

    if-ne p3, v3, :cond_1

    invoke-static {p0, v2, v0}, Lo/lx5;->e(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    xor-int/2addr p4, v3

    invoke-static {p3}, Lcom/snaptube/premium/action/d;->i(Lcom/snaptube/premium/action/OpenMediaFileAction$From;)Z

    move-result p3

    invoke-static {p0, p1, p4, p3, v0}, Lo/lx5;->h(Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/snaptube/premium/action/d;->i(Lcom/snaptube/premium/action/OpenMediaFileAction$From;)Z

    move-result p1

    invoke-static {p0, v3, p1, v0}, Lo/lx5;->g(Ljava/lang/String;ZZLandroid/os/Bundle;)Z

    move-result p1

    :goto_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, p0}, Lcom/snaptube/premium/action/d;->g(Landroid/content/Context;ZLjava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {}, Lo/t74;->e()Lo/t74;

    move-result-object p2

    invoke-virtual {p2, p0}, Lo/t74;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lo/b88;->l(Landroid/content/Context;I)V

    :goto_1
    return p1
.end method
