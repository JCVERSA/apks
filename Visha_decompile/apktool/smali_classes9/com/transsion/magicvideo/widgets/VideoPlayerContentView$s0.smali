.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->h(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->i(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->j()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->g()V

    return-void
.end method


# virtual methods
.method public final synthetic f()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method

.method public forceExit()V
    .locals 2

    const-string v0, "VideoPlayerContentView"

    const-string v1, "forceExit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->exitVideo()V

    return-void
.end method

.method public final synthetic g()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    return-void
.end method

.method public final synthetic h(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method

.method public final synthetic i(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoLoadingView;->showOrHideLogo(Z)V

    return-void
.end method

.method public final synthetic j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->l3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public onInfo(II)Z
    .locals 13

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->M:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->M:Z

    :cond_0
    invoke-static {}, Lpp3;->w()Z

    move-result v0

    const-string v4, "VideoPlayerContentView"

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    const-string v0, "onInfo hide cover, first video frame "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->u3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :cond_1
    sget v0, Lifc;->V:I

    if-ne p1, v0, :cond_3

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo_tip_frame_,delay show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, v1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mHadCheckResolution:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mHadCheckResolution:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_bitrate_too_high_cause_lagging:I

    const-string v5, "frame_drop"

    invoke-static {v0, v1, v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->i3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lo16;->a(Lcom/transsion/dbdata/beans/media/MediaItem;FLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v3, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mWillShowBitrateTip:Z

    goto :goto_0

    :cond_3
    sget v0, Lifc;->W:I

    if-ne p1, v0, :cond_4

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lo06;->d()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v5

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v6

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lo06;->b()J

    move-result-wide v8

    invoke-static {}, Lo06;->c()J

    move-result-wide v10

    invoke-static {}, Lo06;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lo16;->b(Lcom/transsion/dbdata/beans/media/MediaItem;FLjava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lifc;->X:I

    if-ne p1, v0, :cond_5

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result v1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->k0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5, p2}, Lo16;->c(Lcom/transsion/dbdata/beans/media/MediaItem;FLjava/lang/String;I)V

    :cond_5
    :goto_0
    sget v0, Lifc;->Y:I

    if-ne p1, v0, :cond_6

    sget v0, Lf16;->a:I

    invoke-static {p2, v0}, Lf16;->e(II)V

    :cond_6
    sget p2, Lifc;->Z:I

    if-ne p1, p2, :cond_7

    const-string p2, "onInfo_tip_first_pic_display_"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->checkIsShowBlockDialog()V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :cond_7
    sget p2, Lifc;->a0:I

    if-ne p1, p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInfo_tip_video_prepared_getVideoFPS:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l0()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :cond_8
    return v2
.end method

.method public onLoadingOnlineVideo(ZZ)V
    .locals 4

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-static {v0}, Lpz6;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->o1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Li2c;

    invoke-direct {v0, p0}, Li2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->j:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    new-instance p1, Lj2c;

    invoke-direct {p1, p0}, Lj2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-string v3, "vd_play_ytb_rtp"

    invoke-static {v0, v1, v2, v3}, La16;->c(Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    new-instance v0, Lk2c;

    invoke-direct {v0, p0, p1}, Lk2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ll2c;

    invoke-direct {v0, p0, p2}, Ll2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoading "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayerContentView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z8(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->I2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setPlayList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setPlayList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->k2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v3

    if-eq v3, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->g2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->W1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->T1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3, v2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->onVideoPlayerStateChange(I)V

    :cond_3
    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->updatePlayPauseIcon(Z)V

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G3()V

    :cond_5
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v3, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p1, :cond_8

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :cond_8
    :goto_2
    invoke-static {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :goto_3
    return-void
.end method

.method public onShowError(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerContentView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    new-instance p2, Lm2c;

    invoke-direct {p2, p0}, Lm2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->k3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    :goto_0
    return-void
.end method

.method public onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 6

    const-string v0, "VideoPlayerContentView"

    const-string v1, "onStartChangedPlayItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v3

    iget v3, v3, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {v2, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->I2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Luib;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setPlayList(Ljava/util/List;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->w3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->g1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->g1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    iget v2, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    sget-object v4, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->i1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Y1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Laf9;->e:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->playPlayerLogo(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->h3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoLoadingView;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->h3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->h3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_c

    :cond_a
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->O1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/SurfaceHolder;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->O1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S1(Landroid/view/SurfaceHolder;Z)V

    :cond_b
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setDisplaySurfaceView(Z)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lm16;->a:J

    sub-long/2addr v0, v2

    sput-wide v0, Lhb0;->duration:J

    invoke-static {}, Lm16;->b()V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    if-eq p2, p1, :cond_d

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->isHorizontalShowDialog()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J0()V

    :cond_e
    invoke-static {}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G3()V

    return-void
.end method

.method public onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->onPlayerStateUpdate(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onVideoSizeChanged(II)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    :cond_0
    return-void
.end method

.method public onVolumeChange(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput p1, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->P:I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->onVolumeChange()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$s0;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->restartTracks()V

    :cond_0
    return-void
.end method
