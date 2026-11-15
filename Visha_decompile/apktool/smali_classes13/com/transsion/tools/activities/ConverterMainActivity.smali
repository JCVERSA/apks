.class public Lcom/transsion/tools/activities/ConverterMainActivity;
.super Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.source "SourceFile"


# instance fields
.field public N:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    iget v0, p0, Lcom/transsion/tools/activities/ConverterMainActivity;->N:I

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->O0(I)Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
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
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_to_mp3_item_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/activities/ConverterMainActivity;->N:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/activities/ConverterMainActivity;->initFragment()V

    return-void
.end method
