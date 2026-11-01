.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lo/u5;->c(Landroid/view/LayoutInflater;)Lo/u5;

    move-result-object p1

    const-string v2, "inflate(...)"

    invoke-static {p1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez p1, :cond_0

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1}, Lo/u5;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez p1, :cond_1

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Lo/u5;->o:Landroidx/appcompat/widget/Toolbar;

    new-instance v4, Lo/bk4;

    invoke-direct {v4, p0}, Lo/bk4;-><init>(Lcom/snaptube/premium/user/activity/MeAboutActivity;)V

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez p1, :cond_2

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object p1, p1, Lo/u5;->o:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    new-instance p1, Lo/fy4;

    iget-object v4, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez v4, :cond_3

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    iget-object v4, v4, Lo/u5;->b:Landroid/widget/ImageView;

    new-instance v5, Lo/ck4;

    invoke-direct {v5, p0}, Lo/ck4;-><init>(Lcom/snaptube/premium/user/activity/MeAboutActivity;)V

    invoke-direct {p1, v4, v5}, Lo/fy4;-><init>(Landroid/view/View;Lo/fy4$b;)V

    iget-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez p1, :cond_4

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    iget-object p1, p1, Lo/u5;->q:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/user/activity/MeAboutActivity;->l1(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/user/activity/MeAboutActivity;->Z0()V

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/user/activity/MeAboutActivity;->Y0(Z)V

    iput-boolean v0, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->i:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/user/activity/MeAboutActivity;->d1()V

    invoke-virtual {p0}, Lcom/snaptube/premium/user/activity/MeAboutActivity;->c1()V

    iget-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez p1, :cond_5

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    iget-object p1, p1, Lo/u5;->e:Lo/fk4;

    iget-object p1, p1, Lo/fk4;->b:Landroid/widget/TextView;

    invoke-static {}, Lo/ve1;->d()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const v4, 0x7f110025

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Lo/xi7;->c(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;

    invoke-direct {p1}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pos"

    const-string v4, "me_about"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z

    :cond_6
    iget-object p1, p0, Lcom/snaptube/premium/user/activity/MeAboutActivity;->h:Lo/u5;

    if-nez p1, :cond_7

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, p1

    :goto_0
    iget-object p1, v2, Lo/u5;->p:Landroid/widget/TextView;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getSnaptubeHomePageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/vm8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v1, Lo/dk4;

    invoke-direct {v1, p1, v0}, Lo/dk4;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
