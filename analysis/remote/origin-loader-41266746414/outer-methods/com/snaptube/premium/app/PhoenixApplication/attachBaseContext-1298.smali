.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "app_attach_base_context"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/snaptube/base/BaseApplication;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->x()V

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {v2}, Lo/vq6;->z(Landroid/content/Context;)V

    invoke-static {p1}, Lme/weishu/reflection/Reflection;->c(Landroid/content/Context;)I

    invoke-static {}, Lo/gl7;->a()Lo/gl7;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/gl7;->f(Landroid/content/Context;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {p1, v2}, Lo/i02;->m(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method
