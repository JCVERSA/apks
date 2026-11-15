.class public Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;->N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;->N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->G(Z)V

    return-void

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/bt_download/R$color;->transparent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/bt_download/R$layout;->activity_torrent_download:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpk0;->n(Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-direct {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;->N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onStart()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;->N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->j()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentDownloadActivity;->N:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->E()V

    return-void
.end method
