.class public Lcom/transsion/sniffer_load/DownloadManagerActivity;
.super Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.source "SourceFile"


# static fields
.field public static final synthetic R:I


# instance fields
.field public N:Landroid/view/WindowManager$LayoutParams;

.field public O:I

.field public P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

.field public Q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->O:I

    return-void
.end method


# virtual methods
.method public final Y0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->N:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public final Z0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "from"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dl_manager_show"

    invoke-static {v0, p0}, Lp06;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x465

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->X()I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/sniffer_load/R$color;->download_window_background:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initFragment()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "go_transfer_working"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "from"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "go_download"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->O:I

    const-string v4, "show_full_screen"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v3, "0"

    move v0, v2

    :goto_0
    invoke-static {}, Lydc;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    iget v4, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->O:I

    invoke-static {v3, v4, v2, v2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iput-object v3, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p0, v0, v2}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public initNotify()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x465

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadManagerActivity;->setDefaultWindowBackground()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadManagerActivity;->initFragment()V

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->clearWindowDimFlag(Z)V

    :cond_0
    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Y0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Z0()V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->foot_bar_background:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/sniffer_load/R$color;->download_window_background:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->N:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    if-eqz v0, :cond_1

    const-string v0, "go_download"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->O:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->n0(IZ)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onResume()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->P:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o0()V

    :cond_0
    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->N:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/DownloadManagerActivity;->Q:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public setDefaultWindowBackground()V
    .locals 0

    return-void
.end method

.method public setThemeWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadManagerActivity;->setDefaultWindowBackground()V

    return-void
.end method
