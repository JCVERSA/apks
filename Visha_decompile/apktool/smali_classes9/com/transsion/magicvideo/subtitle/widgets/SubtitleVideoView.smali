.class public Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;
.super Lcom/avery/subtitle/widget/TracksSubtitleView;
.source "SourceFile"


# instance fields
.field public B:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/widget/TracksSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindToIPlayer(Lcom/transsion/playercommon/player/b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->bindToIPlayer(Lcom/transsion/playercommon/player/b;)V

    return-void
.end method

.method public g()I
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$layout;->subtitles_visha_layout:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->g()I

    move-result p0

    :goto_0
    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->B:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public setFirstTrackDelay(J)V
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->B:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->f2(J)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setFirstTrackDelay(J)V

    :goto_0
    return-void
.end method

.method public setFirstTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 3

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    :goto_2
    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->B:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->h2(I)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->B:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z(Ljava/lang/String;)Z

    :goto_3
    iget p0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    sput p0, Lf16;->a:I

    goto :goto_5

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/avery/subtitle/widget/SubtitleTextView;->onSubtitleText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;->B:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->h2(I)V

    return-void

    :cond_6
    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setFirstTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    :goto_5
    return-void
.end method

.method public setSecondTrackDelay(J)V
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setFirstTrackDelay(J)V

    :goto_0
    return-void
.end method

.method public setSecondTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setSecondTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    :goto_0
    return-void
.end method
