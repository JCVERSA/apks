.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/dywx/dyframework/base/DyApplication;->attachBaseContext(Landroid/content/Context;)V

    sget-object p1, Lcom/snaptube/base/BaseApplication;->e:Lcom/snaptube/base/BaseApplication$a;

    invoke-virtual {p1, p0}, Lcom/snaptube/base/BaseApplication$a;->b(Landroid/app/Application;)V

    return-void
.end method
