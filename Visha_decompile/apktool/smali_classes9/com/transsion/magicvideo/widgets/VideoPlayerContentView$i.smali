.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/MusicModeLayout$b;


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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->farYoutube()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p0

    invoke-static {p0}, Llz5;->h(I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f2:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v0, p0, v2}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->o0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {v0}, Llpb;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->O()I

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->video_has_no_audio:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    const-string v0, "\u542c\u89c6\u9891"

    invoke-static {v0}, Lh16;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-static {v0, p0}, Lo5b;->j(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->trans_mp3_error1:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    const-string p0, "video_play_background_tomp3"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showEq()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    const-string p0, "btn"

    const-string v0, "backbtn"

    const-string v1, "video_play_background_back"

    invoke-static {v1, p0, v0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lry5;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lp06;->v0(Ljava/lang/String;Z)V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$i;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onSpeedClicked()V

    return-void
.end method
