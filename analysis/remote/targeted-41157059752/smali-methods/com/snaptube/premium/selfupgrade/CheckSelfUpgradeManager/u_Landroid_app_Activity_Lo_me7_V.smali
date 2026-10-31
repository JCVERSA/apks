.method public static u(Landroid/app/Activity;Lo/me7;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lo/s5;->d()Landroid/app/Activity;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/snaptube/permission/a$a;

    invoke-direct {v0}, Lcom/snaptube/permission/a$a;-><init>()V

    invoke-static {}, Lo/sq5;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->h(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/permission/a$a;->i(Lo/qq5;)Lcom/snaptube/permission/a$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->e(I)Lcom/snaptube/permission/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->c(Z)Lcom/snaptube/permission/a$a;

    move-result-object p1

    const-string v0, "app_upgrade"

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->j(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/permission/a$a;->a()Lcom/snaptube/permission/a;

    move-result-object p1

    invoke-static {}, Lo/pq5;->a()Lo/pq5;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/pq5;->e(Landroid/app/Activity;Lcom/snaptube/permission/a;)V

    return-void
.end method
