.method public final z2()V
    .locals 3

    invoke-static {}, Lo/uh;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0}, Lo/sq5;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/snaptube/permission/a$a;

    invoke-direct {v0}, Lcom/snaptube/permission/a$a;-><init>()V

    const-string v1, "push_permission"

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->h(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->e(I)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->g(Z)Lcom/snaptube/permission/a$a;

    move-result-object v0

    const-string v1, "manual_trigger"

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->j(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/permission/a$a;->a()Lcom/snaptube/permission/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/permission/PermissionHelper;->a:Lcom/snaptube/permission/PermissionHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/snaptube/permission/PermissionHelper;->k(Landroid/app/Activity;Lcom/snaptube/permission/a;Lcom/snaptube/permission/PermissionHelper$a;)V

    :cond_1
    :goto_0
    return-void
.end method
