.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/a04;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/a04;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1, v1}, Lo/l65;->d(Landroid/content/Context;Landroid/view/ContextThemeWrapper;Ljava/util/Locale;ZZ)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
