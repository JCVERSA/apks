.class public Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field private final c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Z

.field private g:Lcom/cloud/hisavana/sdk/j4;


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

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->a:Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f:Z

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

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 11
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->ad_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ProgressBar;

    .line 12
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->j(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/j4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c:Landroid/widget/ImageView;

    .line 14
    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/c;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 24
    .line 25
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->release()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 27
    .line 28
    instance-of v2, v0, Lcom/cloud/hisavana/sdk/c4;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Lcom/cloud/hisavana/sdk/c4;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/c4;->i()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 38
    .line 39
    return-void
.end method

.method public seekToPosition(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->seekTo(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCompanionSize(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setMediaData -------------> path = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "NativeAdVideoView"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    move v2, v1

    .line 12
    :goto_0
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f:Z

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_2
    const/16 v1, 0x8

    .line 18
    .line 19
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setVideoSize(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVolumeView(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/b;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/video/b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
