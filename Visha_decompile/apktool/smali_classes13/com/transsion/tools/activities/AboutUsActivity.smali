.class public Lcom/transsion/tools/activities/AboutUsActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/AboutUsFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/fragments/AboutUsFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/AboutUsActivity;->initFragment()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    return-void
.end method
