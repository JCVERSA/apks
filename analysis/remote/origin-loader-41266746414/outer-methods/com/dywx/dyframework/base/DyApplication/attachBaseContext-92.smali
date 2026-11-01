.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sget-object p1, Lo/zg4;->c:Lo/zg4$a;

    invoke-virtual {p1, p0}, Lo/zg4$a;->b(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
