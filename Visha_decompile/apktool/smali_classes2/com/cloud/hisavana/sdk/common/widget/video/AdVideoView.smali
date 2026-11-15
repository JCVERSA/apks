.class public Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
    }
.end annotation


# instance fields
.field public b:Lwsd;

.field public final c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

.field public final d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

.field public e:Lxnd;

.field public f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

.field public final l:Ljava/lang/Runnable;

.field public m:Ly30;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    .line 5
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    .line 6
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m:Ly30;

    .line 8
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 9
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 10
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->o()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->p(Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lwsd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    return-object p0
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lxnd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lxnd;

    return-object p0
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    return-object p0
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n()V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    return p0
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    return p1
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m()V

    return-void
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    return-object p0
.end method

.method public static synthetic k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    return p0
.end method

.method public static synthetic l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    return-object p0
.end method


# virtual methods
.method public dispatchPause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwsd;->b()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public dispatchPlay()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwsd;->e()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->n()V

    :cond_0
    return-void
.end method

.method public dispatchPlayPause()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->d()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public isPlayWhenReady()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Loyd;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m:Ly30;

    invoke-direct {v1, v0, p0, v2}, Loyd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Ly30;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->g(Loyd;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public openOrCloseVolume()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic p(Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lwsd;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release videoPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lwsd;->release()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePlayer videoPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwsd;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    :cond_0
    return-void
.end method

.method public repeat()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwsd;->c()V

    :cond_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lwsd;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAdMediaPlayerListener(Lxnd;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lxnd;

    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {p1, v1, v2, v0, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCompanionViewVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d:Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListModeVisibilityCallback(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;)V
    .locals 0
    .param p1    # Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    return-void
.end method

.method public setMeasureAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g:Z

    return-void
.end method

.method public setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 9

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaData path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shouldCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwsd;->release()V

    :cond_0
    sget-object v0, Lnrd;->a:Lnrd;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnrd;->a(Landroid/content/Context;)Lwsd;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    invoke-interface {v0, v1}, Lwsd;->a(Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    invoke-interface {v0, v1}, Lwsd;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    invoke-interface {v0, v1}, Lwsd;->a(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    invoke-interface {v0, v1}, Lwsd;->c(Lxnd;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialWith()I

    move-result v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getMaterialHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    :cond_1
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    new-instance v1, Lz7;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lz7;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lwsd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i:Z

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lwsd;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setUseListMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h:Z

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b:Lwsd;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lwsd;->a(Z)V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoSize width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lhm4;->h()I

    move-result v1

    :goto_0
    if-lez p2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lhm4;->g()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;->adaptVideoSize(II)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e:Lxnd;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lxnd;->onVideoSizeChanged(II)V

    :cond_2
    return-void
.end method
