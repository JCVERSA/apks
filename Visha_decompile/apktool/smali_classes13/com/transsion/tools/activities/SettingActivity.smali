.class public Lcom/transsion/tools/activities/SettingActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# instance fields
.field public N:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tools/activities/SettingActivity;->N:Z

    return-void
.end method


# virtual methods
.method public finishSetWindowBackground()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$id;->fragment_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/tools/fragments/SettingFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SettingFragment;->refreshThemeBackground()V

    :cond_0
    return-void
.end method

.method public initFragment()V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "web_start_url"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x4db

    invoke-virtual {p0, v5, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/tools/fragments/SettingFragment;->newInstance(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/tools/fragments/SettingFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43f

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "show_full_screen"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/tools/activities/SettingActivity;->N:Z

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SettingActivity;->initFragment()V

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    iget-boolean p1, p0, Lcom/transsion/tools/activities/SettingActivity;->N:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    :cond_1
    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/activities/SettingActivity;->N:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method
