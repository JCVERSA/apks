.class public Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/magicvideo/R$layout;->activity_subtitle_manager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/magicvideo/R$id;->fragment_content:I

    invoke-static {}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->a1()Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, La64;->j(Lcom/transsion/playercommon/activities/BaseActivity;ILandroidx/fragment/app/Fragment;Z)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    return-void
.end method
