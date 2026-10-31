.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->onResume()V

    invoke-static {p0}, Lo/y24;->a(Lo/x24;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lo/dp1;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$onResume$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$onResume$1;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->V0()V

    return-void
.end method
