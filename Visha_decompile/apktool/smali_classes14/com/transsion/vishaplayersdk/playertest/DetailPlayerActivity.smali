.class public Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

.field private isPause:Z

.field private isPlay:Z

.field private orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

.field postDetailNestedScroll:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPlay:Z

    return-void
.end method

.method private getCurPlay()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    return-object p0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "MRmRym.Qtcmtyyc.a6509247eea53877"

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1(IIII)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    return-void
.end method

.method private resolveNormalVideoUI()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic t(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->lambda$onCreate$1(IIII)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->lambda$onCreate$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPause:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/vishaplayersdk/R$layout;->activity_detail_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->detail_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->post_detail_nested_scroll:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->postDetailNestedScroll:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->resolveNormalVideoUI()V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ee"

    const-string v3, "33"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "allowCrossProtocolRedirects"

    const-string v3, "true"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setAutoFullWithSize(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setMapHeadData(Ljava/util/Map;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    const-string v0, "\u6d4b\u8bd5\u89c6\u9891"

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayPosition(I)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSeekOnStart(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    new-instance v0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity$1;-><init>(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    new-instance v0, Ly92;

    invoke-direct {v0, p0}, Ly92;-><init>(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    new-instance v0, Lz92;

    invoke-direct {v0}, Lz92;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setGSYVideoProgressListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Laa2;

    invoke-direct {v0, p0}, Laa2;-><init>(Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPlay:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->getCurPlay()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->getCurPlay()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPause:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->getCurPlay()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoResume(Z)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/playertest/DetailPlayerActivity;->isPause:Z

    return-void
.end method
