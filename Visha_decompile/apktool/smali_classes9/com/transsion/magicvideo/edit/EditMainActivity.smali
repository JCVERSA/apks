.class public Lcom/transsion/magicvideo/edit/EditMainActivity;
.super Lcom/transsion/video_edit/EditBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/video_edit/EditBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic m1(Lcom/transsion/magicvideo/edit/EditMainActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/edit/EditMainActivity;->n1(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public U0(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/video_edit/EditBaseActivity;->U0(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance p1, Lm63;

    invoke-direct {p1, p0, p2}, Lm63;-><init>(Lcom/transsion/magicvideo/edit/EditMainActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic n1(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "cut"

    invoke-static {p1, v0, v1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->e0(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->f0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    iput-boolean v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->q0:Z

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->X:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/16 v0, 0x4d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
