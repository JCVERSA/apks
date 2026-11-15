.class public Lcom/transsion/sniffer_load/DownloadGuideActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

.field public O:Landroid/os/Bundle;

.field public P:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->O:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->f0(Landroid/os/Bundle;)Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->N:Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadSkin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->P:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadGuideActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->P:Z

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->O:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "support_theme_background"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;->P:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadGuideActivity;->initFragment()V

    return-void
.end method
