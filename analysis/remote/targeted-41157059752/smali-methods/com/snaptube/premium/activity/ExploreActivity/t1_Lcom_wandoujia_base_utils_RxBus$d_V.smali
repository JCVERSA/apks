.method public final t1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    invoke-static {p0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lo/u04;->b(Landroid/content/Context;)V

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->l2(J)V

    invoke-static {p0}, Lcom/snaptube/premium/deeplink/FirebaseDynamicLinkChecker;->f(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
