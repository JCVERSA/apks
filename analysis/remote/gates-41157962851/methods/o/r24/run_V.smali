.method public run()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-static {}, Lo/yt1;->c()V

    invoke-static {}, Lo/ss;->d()V

    invoke-static {v0}, Lo/k6;->e(Landroid/app/Application;)V

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lo/bu5;->j(Landroid/app/Application;)V

    sget-object v1, Lo/q5;->a:Lo/q5$a;

    invoke-virtual {v1, v0}, Lo/q5$a;->a(Landroid/app/Application;)V

    invoke-static {v0}, Lo/bp;->h(Landroid/app/Application;)V

    sget-object v1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->k(Landroid/app/Application;)V

    invoke-static {v0}, Lo/s5;->g(Landroid/app/Application;)V

    sget-object v1, Lcom/snaptube/premium/reyclerbin/DeleteRecordHelper;->a:Lcom/snaptube/premium/reyclerbin/DeleteRecordHelper;

    invoke-virtual {v1}, Lcom/snaptube/premium/reyclerbin/DeleteRecordHelper;->l()V

    invoke-static {}, Lo/ap;->e()V

    new-instance v1, Lo/z5;

    invoke-direct {v1}, Lo/z5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v1, Lo/tr2;->f:Lo/tr2$a;

    invoke-virtual {v1, v0}, Lo/tr2$a;->a(Landroid/content/Context;)Lo/tr2;

    sget-object v0, Lo/lz3;->a:Lo/lz3;

    invoke-virtual {v0}, Lo/lz3;->c()V

    invoke-static {}, Lcom/snaptube/premium/notification/ToolbarNotificationLifecycleTrigger;->f()V

    invoke-static {}, Lo/td5;->b()V

    return-void
.end method
