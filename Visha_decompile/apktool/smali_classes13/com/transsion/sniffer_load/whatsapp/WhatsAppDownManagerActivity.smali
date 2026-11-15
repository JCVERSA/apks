.class public final Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownManagerActivity;
.super Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0003\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownManagerActivity;",
        "Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lzfb;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "setBackground",
        "",
        "loadSkin",
        "(Z)I",
        "initFragment",
        "onBackPressed",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final initFragment()V
    .locals 2

    sget-object v0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->D0:Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$a;->a(Z)Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

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
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setDefaultWindowBackground()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownManagerActivity;->initFragment()V

    return-void
.end method
