.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/MediaBottomControllerLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->y4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q5:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "videoplaypage"

    invoke-static {v0}, Lry5;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->O()I

    move-result v0

    if-nez v0, :cond_2

    sget p0, Lcom/transsion/magicvideo/R$string;->video_has_no_audio:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video_play_next"

    invoke-static {v0, v1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->playNextVideo(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video_play_previous"

    invoke-static {v0, v1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->R2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lhsb;->c()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "play_repeat_mode"

    invoke-static {v1, v2, v0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Y0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showTextToast(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->setRepeat(Z)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J1()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->updateRepeatMode()V

    invoke-static {v0}, Lp06;->H(I)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f2:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$j;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v0, p0, v2}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
