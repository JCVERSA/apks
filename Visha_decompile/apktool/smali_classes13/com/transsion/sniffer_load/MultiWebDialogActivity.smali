.class public Lcom/transsion/sniffer_load/MultiWebDialogActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

.field public O:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method private initFragment()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    iput-object v0, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->N:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->clearWindowDimFlag(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->initFragment()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/MultiWebDialogActivity;->O:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setThemeWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setDefaultWindowBackground()V

    return-void
.end method
