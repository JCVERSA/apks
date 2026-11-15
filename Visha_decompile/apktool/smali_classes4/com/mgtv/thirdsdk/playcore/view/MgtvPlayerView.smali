.class public Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MgtvPlayerView"


# instance fields
.field public from:Ljava/lang/String;

.field private mAdControlFrameLayout:Landroid/widget/FrameLayout;

.field private mAdFrameLayout:Landroid/widget/FrameLayout;

.field private mControlFrameLayout:Landroid/widget/FrameLayout;

.field private mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addFullView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public configPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setPlayerHardwareMode(Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setNetConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setAccurateSeekEnable(Z)V

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/16 v3, 0x2710

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setNetWorkConnectTimeout(I)V

    :cond_0
    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setDataReceiveTimeout(I)V

    :cond_1
    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const v0, 0x2bf20

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setBufferTimeout(I)V

    :cond_2
    return-void
.end method

.method public destory()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->cleanUp()V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdFrameLayout:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdControlFrameLayout:Landroid/widget/FrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mControlFrameLayout:Landroid/widget/FrameLayout;

    :cond_3
    return-void
.end method

.method public getAdControlFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdControlFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getAdLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getControlLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mControlFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    return-object p0
.end method

.method public hideRenderView()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->initView()V

    return-void
.end method

.method public initAdVideoView()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->addFullView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mAdControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->addFullView(Landroid/view/View;)V

    return-void
.end method

.method public initControlView()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->addFullView(Landroid/view/View;)V

    return-void
.end method

.method public initVideoView()V
    .locals 4

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->configPlayer()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->addFullView(Landroid/view/View;)V

    return-void
.end method

.method public initView()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->initVideoView()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->initControlView()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->initAdVideoView()V

    return-void
.end method

.method public removeSubtitleSource()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->removeSubtitle()V

    :cond_0
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->from:Ljava/lang/String;

    return-void
.end method

.method public setSubtitleSource([B)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setSubtitleSource([B)V

    return-void
.end method

.method public showRenderView()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->mVideoPlayer:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
