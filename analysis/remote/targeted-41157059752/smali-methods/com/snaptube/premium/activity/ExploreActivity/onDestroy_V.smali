.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->x:Z

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    invoke-virtual {v0}, Lo/x52;->d()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/RxBus;->e()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snaptube/premium/activity/ExploreActivity;->G:Z

    const-string v1, "pref.content_config"

    invoke-virtual {p0, v1, v0}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->r:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->A2()V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->y:Lo/wu7;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->y:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_1
    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onDestroy()V

    return-void
.end method
