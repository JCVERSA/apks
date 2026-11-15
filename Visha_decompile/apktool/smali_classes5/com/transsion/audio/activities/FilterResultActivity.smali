.class public Lcom/transsion/audio/activities/FilterResultActivity;
.super Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->a3(I)Lcom/transsion/audio/fragments/AudiosFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudiosFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->L:Z

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/audio/R$layout;->activity_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljv3;->a(Landroid/view/Window;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/activities/FilterResultActivity;->initFragment()V

    const-string p0, "vd_audio_filt_hide_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
