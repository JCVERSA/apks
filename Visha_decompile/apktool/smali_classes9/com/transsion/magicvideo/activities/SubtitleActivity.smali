.class public Lcom/transsion/magicvideo/activities/SubtitleActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# instance fields
.field public N:Ljava/lang/String;

.field public O:Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    return-void
.end method

.method private B0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleActivity;->O:Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->j0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initFragment()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->i0(Ljava/lang/String;)Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->k0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleActivity;->O:Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "subtitle_media_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleActivity;->N:Ljava/lang/String;

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$layout;->subtitle_main:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleActivity;->initFragment()V

    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onEjected(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/SubtitleActivity;->B0()V

    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onMounted(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleActivity;->O:Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->j0()V

    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onUnMounted(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/SubtitleActivity;->B0()V

    return-void
.end method
