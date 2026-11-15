.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->L4()V
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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->r()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q5:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    sget-object p2, Lo06;->e:Ljava/lang/String;

    invoke-static {p2}, Lo06;->e(Ljava/lang/String;)V

    invoke-static {}, Lo06;->f()V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSelected position:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",current index:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoPlayerContentView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result p2

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z1(Z)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2, p3, v0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const-string v3, "num"

    invoke-virtual {p1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result v2

    const-string v4, "rotate_status"

    invoke-virtual {p1, v4, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "queue"

    invoke-virtual {p1, v2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {v0}, Lp06;->s0(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "order_by"

    invoke-virtual {p1, v6, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-virtual {v5, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G()I

    move-result p2

    invoke-virtual {v5, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lp06;->s0(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "vd_cp_playlist_video_cl"

    const-wide/16 v0, 0x246c

    invoke-static {p1, v5, p2, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->o2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lpp3;->w()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p2

    iget p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setVideoViewSize(II)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onPlayStatusEnd()V

    return-void
.end method

.method public d()V
    .locals 3

    sget-object v0, Ln16;->a:Ln16$a;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    const-string v2, "video_play_rorate"

    invoke-virtual {v0, v2, v1}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "rotate_hori_play"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "rotate_vert_play"

    :goto_1
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPlaySizeFit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget v1, v1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget v2, v1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V:I

    aget v0, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->I1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget v4, v4, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->V:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showTextToast(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object v1

    invoke-static {v1, v0}, Lrtb;->p(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V

    invoke-static {}, Lpp3;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->E2(I)V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "video_play_scale_switch"

    invoke-static {v1, v2}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ln16;->a:Ln16$a;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    const-string v3, "video_play_size_fit"

    invoke-virtual {v1, v3, v2}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getVideoRatio()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lj16;->e(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video_play_previous"

    invoke-static {v0, v1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->R2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->O2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    sget-object p1, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v0, "video_play_back"

    invoke-virtual {p1, v0, p0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public h()V
    .locals 4

    const-string v0, "startDownloadVideo "

    const-string v1, "VideoPlayerContentView"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMIMediaVideoPlayItemInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v2

    const-class v3, Lcom/transsion/magicvideo/services/ICloudFileService;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/magicvideo/services/ICloudFileService;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/transsion/magicvideo/services/ICloudFileService;->startDownload(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started miMedia video download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get cloud file service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error downloading miMedia video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    if-nez v0, :cond_0

    const-string p0, "videoToMusicMode mVideoData == null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leuc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    if-eqz v0, :cond_4

    sget p0, Lcom/transsion/magicvideo/R$string;->privacy_video_setting_toast:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->O()I

    move-result v0

    if-gtz v0, :cond_5

    sget p0, Lcom/transsion/magicvideo/R$string;->video_has_no_audio:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_5
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    :cond_6
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;->d()V

    const-string v0, "video_play_background"

    invoke-static {v0}, Lp06;->j0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p0, ""

    :goto_2
    invoke-static {v0, v1, v2, p0}, Lj16;->c(ZJLjava/lang/String;)V

    return-void

    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not switch to music mode, state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->j3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "VideoPlayerContentView"

    const-string v0, "videoPlayPicInPic mVideoData == null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Ln16;->a:Ln16$a;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    const-string v2, "video_play_pic_in_pic"

    invoke-virtual {v0, v2, v1}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S3(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/magicvideo/R$string;->privacy_video_setting_toast:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->i2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->y1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->requestedChangeOrientation(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    :cond_1
    invoke-static {}, Lw;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->showSettingView(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    move-result-object v0

    new-instance v1, Ld2c;

    invoke-direct {v1, p0}, Ld2c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;)V

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->setmUnLockListener(Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    sget-object v0, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v1, "video_play_lock"

    invoke-virtual {v0, v1, p0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public m()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onSpeedClicked()V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video_play_next"

    invoke-static {v0, v1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->playNextVideo(Z)V

    return-void
.end method

.method public o()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->t()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->y2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "VideoPlayerContentView"

    const-string v0, "videoPlaySetting: contentView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "video_play_background_more_show"

    invoke-static {v2}, Lp06;->d0(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v2, v0, v3, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showSettingsLayout(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->isHorizontalShowDialog()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showSettingDialogView(ZLandroid/view/View;)V

    sget-object v0, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v1, "video_play_setting"

    invoke-virtual {v0, v1, p0}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    const/4 v0, 0x0

    sput v0, Ll06;->a:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->m3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method

.method public final synthetic r()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->J2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$e;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    :goto_0
    return-void
.end method
