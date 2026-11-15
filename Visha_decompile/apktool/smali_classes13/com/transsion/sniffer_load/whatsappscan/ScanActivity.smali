.class public Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Ljava/util/List;

.field public O:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initBackground()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$color;->bottom_player_operate_bar_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/sniffer_load/R$layout;->activity_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->initBackground()V

    if-eqz p1, :cond_0

    const-string v0, "scan_whatsapp_file_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->N:Ljava/util/List;

    const-string v0, "scan_whatsapp_cur_position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->O:I

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->N:Ljava/util/List;

    invoke-static {p1}, Lv19;->e(Ljava/util/List;)V

    iget p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->O:I

    invoke-static {p1}, Lv19;->d(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv19;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->N:Ljava/util/List;

    invoke-static {}, Lv19;->a()I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->O:I

    :goto_0
    new-instance p1, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;

    invoke-direct {p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    invoke-static {}, Lv19;->c()V

    const/4 p0, 0x0

    invoke-static {p0}, Lv19;->d(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->N:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "scan_whatsapp_file_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "scan_whatsapp_cur_position"

    iget v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanActivity;->O:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
