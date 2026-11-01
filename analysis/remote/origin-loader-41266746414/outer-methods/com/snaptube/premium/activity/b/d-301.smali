.method public d(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "attachBaseContext"

    iput-object v0, p0, Lcom/snaptube/premium/activity/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/snaptube/premium/activity/b;->a:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lo/ra3;

    if-eqz v1, :cond_0

    check-cast v0, Lo/ra3;

    invoke-interface {v0}, Lo/ra3;->u()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/snaptube/premium/activity/b;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lo/b04;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/b04;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v0}, Lo/l65;->d(Landroid/content/Context;Landroid/view/ContextThemeWrapper;Ljava/util/Locale;ZZ)V

    return-void
.end method
