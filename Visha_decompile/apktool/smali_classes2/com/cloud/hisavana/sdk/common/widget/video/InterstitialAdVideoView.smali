.class public Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field public final d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ProgressBar;

.field public f:Z

.field public g:Z

.field public h:Lxnd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    const-string p2, "NativeAdVideoView"

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Z

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->layout_interstitial_ad_video_view:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->repeat_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 11
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e:Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lxnd;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->h:Lxnd;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Z

    return p0
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    return-object p0
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f:Z

    return p0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ImageView;

    new-instance v1, Lx45;

    invoke-direct {v1, p0}, Lx45;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    return-void
.end method

.method public final synthetic j(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    :cond_0
    return-void
.end method

.method public final synthetic k(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lxnd;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->release()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->h:Lxnd;

    instance-of v2, v0, Lvkd;

    if-eqz v2, :cond_1

    check-cast v0, Lvkd;

    invoke-virtual {v0}, Lvkd;->j()V

    :cond_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->h:Lxnd;

    return-void
.end method

.method public seekToPosition(J)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAdMediaPlayerListener(Lxnd;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->h:Lxnd;

    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f:Z

    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaData -------------> path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeAdVideoView"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public setVolumeView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lw45;

    invoke-direct {v0, p0}, Lw45;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
