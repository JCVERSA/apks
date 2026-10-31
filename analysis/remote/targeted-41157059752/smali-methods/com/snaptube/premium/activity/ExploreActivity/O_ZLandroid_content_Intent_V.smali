.method public O(ZLandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->O(ZLandroid/content/Intent;)V

    invoke-static {p0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/activity/ExploreActivity$j;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$j;->y(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-static {p0, p1, p2}, Lo/y2;->a(Landroidx/fragment/app/FragmentActivity;ZLandroid/content/Intent;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/lifecycle/n;

    invoke-direct {p1, p0}, Landroidx/lifecycle/n;-><init>(Lo/tx8;)V

    const-class p2, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->a(Ljava/lang/Class;)Lo/mx8;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    iput-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    :cond_0
    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->B:Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;

    invoke-virtual {p1}, Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;->W()V

    return-void
.end method
