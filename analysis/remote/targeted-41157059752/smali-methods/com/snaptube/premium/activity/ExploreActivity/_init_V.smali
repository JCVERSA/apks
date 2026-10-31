.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    new-instance v0, Lo/cy;

    sget-object v1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lo/cy;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->g:Lo/lm3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->j:Landroid/view/View;

    new-instance v1, Lo/x52;

    invoke-direct {v1, p0}, Lo/x52;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    iput-boolean v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$k;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snaptube/premium/activity/ExploreActivity$k;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Landroid/os/Looper;Lo/xa2;)V

    iput-object v1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    new-instance v0, Lcom/snaptube/premium/activity/ExploreActivity$b;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/activity/ExploreActivity$b;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->D:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method
