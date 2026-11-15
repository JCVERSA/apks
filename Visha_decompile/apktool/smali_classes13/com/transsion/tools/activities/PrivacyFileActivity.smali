.class public Lcom/transsion/tools/activities/PrivacyFileActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    iput-boolean p3, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    iput-boolean p3, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    iput-boolean p3, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_privacy_files:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "privacy_setting_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    if-eqz v1, :cond_1

    new-instance p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-direct {p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p1, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    iput-boolean v0, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->cast(Landroidx/fragment/app/Fragment;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {v0, v1, v1, v1}, La64;->k(Lcom/transsion/playercommon/fragments/BaseFragment;ZZZ)V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    return-void
.end method

.method public p0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/activities/PrivacyFileActivity;->N:Z

    return-void
.end method
