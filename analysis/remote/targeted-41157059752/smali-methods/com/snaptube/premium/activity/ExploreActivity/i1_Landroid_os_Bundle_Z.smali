.method public final i1(Landroid/os/Bundle;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->J()Lo/av;

    move-result-object v0

    new-instance v1, Lo/la2;

    invoke-direct {v1, p0}, Lo/la2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1}, Lo/av;->b(Lo/av$b;)V

    :cond_0
    invoke-static {p0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/activity/ExploreActivity$j;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$j;->y(Lcom/snaptube/premium/activity/ExploreActivity;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/premium/activity/ExploreActivity;->G:Z

    const-string v0, "pref.content_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    if-nez p1, :cond_1

    new-instance v0, Lo/vu;

    invoke-direct {v0, p0}, Lo/vu;-><init>(Landroid/content/Context;)V

    new-instance v2, Lo/na2;

    invoke-direct {v2, p0, p1}, Lo/na2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Landroid/os/Bundle;)V

    const p1, 0x7f0c019f

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lo/vu;->a(ILandroid/view/ViewGroup;Lo/wu;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lo/ya2;->c(Landroid/view/LayoutInflater;)Lo/ya2;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->A:Lo/ya2;

    invoke-virtual {v0}, Lo/ya2;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->A1(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->w1()V

    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->d2()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->d1()V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lo/oa2;

    invoke-direct {v0}, Lo/oa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroidx/lifecycle/j;->l()Lo/x24;

    move-result-object p1

    invoke-interface {p1}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/clean/CleanForegroundWatcher;

    invoke-direct {v0}, Lcom/snaptube/premium/clean/CleanForegroundWatcher;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lcom/snaptube/premium/activity/ExploreActivity$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$a;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/pa2;

    invoke-direct {v0}, Lo/pa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->z2()V

    return v1
.end method
