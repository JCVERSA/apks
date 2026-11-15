.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isNeedAutoAdaptation:Z

.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

.field protected mCheckoutTask:Ljava/lang/Runnable;

.field protected mFullAnimEnd:Z

.field protected mInnerHandler:Landroid/os/Handler;

.field protected mListItemRect:[I

.field protected mListItemSize:[I

.field protected mLockLand:Z

.field protected mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mShowFullAnimation:Z

.field protected mSmallClose:Landroid/view/View;

.field protected mStatusBar:Z

.field protected mSystemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    .line 15
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    .line 19
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    .line 20
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    .line 21
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isNeedAutoAdaptation:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    .line 24
    new-instance p1, Ljc4;

    invoke-direct {p1, p0}, Ljc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    .line 27
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    .line 29
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    .line 30
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    .line 31
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    .line 32
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    .line 33
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isNeedAutoAdaptation:Z

    .line 34
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Ljc4;

    invoke-direct {p1, p0}, Ljc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    .line 39
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    .line 41
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    .line 42
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    .line 43
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    .line 44
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    .line 45
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isNeedAutoAdaptation:Z

    .line 46
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Ljc4;

    invoke-direct {p1, p0}, Ljc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    .line 3
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    .line 5
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    .line 6
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    .line 7
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    .line 8
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    .line 9
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isNeedAutoAdaptation:Z

    .line 10
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    .line 12
    new-instance p1, Ljc4;

    invoke-direct {p1, p0}, Ljc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private synthetic lambda$backToNormal$3(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method private synthetic lambda$clearFullscreenLayout$2()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->backToNormal()V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eq v1, p0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resolveFullVideoShow$1(ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->getIsLand()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setFullBack$7(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    const-string v0, "btn_back"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->clearFullscreenLayout()V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setSmallVideoTextureView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->hideSmallVideo()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->releaseVideos()V

    return-void
.end method

.method private synthetic lambda$startWindowFullscreen$5(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->clearFullscreenLayout()V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startWindowFullscreen$6(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveFullVideoShow(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    return-void
.end method

.method private pauseFullBackCoverLogic(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 2

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseFullCoverLogic()V
    .locals 2

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$backToNormal$3(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$clearFullscreenLayout$2()V

    return-void
.end method

.method private removeVideo(Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$startWindowFullscreen$5(Landroid/view/View;)V

    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*************isTranslucent*************** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    aget p2, p1, v2

    sub-int/2addr p2, v0

    aput p2, p1, v2

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    aget p2, p1, v2

    sub-int/2addr p2, v3

    aput p2, p1, v2

    :cond_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemSize:[I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    aput p2, p1, v1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemSize:[I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p1, v2

    return-void
.end method

.method private setFullBack(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lqc4;

    invoke-direct {v0, p0}, Lqc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$resolveFullVideoShow$1(ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$startWindowFullscreen$6(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$setFullBack$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->lambda$setSmallVideoTextureView$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public autoAdaptation()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v3, v1, v2

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const-string p0, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u672a\u5c06\u5e03\u5c40\u4e0b\u79fb"

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u5c06\u5e03\u5c40\u4e0b\u79fb\uff1by:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public backToNormal()V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    invoke-direct {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->pauseFullBackCoverLogic(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    if-eqz v3, :cond_0

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v3, v6, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemSize:[I

    aget v6, v4, v5

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aget v4, v4, v7

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    new-instance v4, Lnc4;

    invoke-direct {v4, p0, v1, v0, v2}, Lnc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method public checkAutoFullSizeWhenFull()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSYVideoBase onPrepared isVerticalFullByVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    invoke-virtual {p0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkAutoFullWithSizeAndAdaptation(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    :cond_0
    return-void
.end method

.method public checkAutoFullWithSizeAndAdaptation(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isNeedAutoAdaptation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isAutoFullWithSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isFullHideStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public checkoutState()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mCheckoutTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearFullscreenLayout()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->releaseListener()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    if-nez v2, :cond_3

    move v1, v0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    iput-boolean v0, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setFullScreen(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    new-instance v2, Lkc4;

    invoke-direct {v2, p0}, Lkc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 6

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayTag:Ljava/lang/String;

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayPosition:I

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mShowPauseCover:Z

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetChanged:Z

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mNetSate:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mBackUpPlayingBufferState:I

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRenderer:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mMode:I

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mStartAfterPrepared:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPauseBeforePrepared:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mReleaseWhenLossAudio:Z

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowNeedVIP:Z

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    iput v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPreviewDuration:I

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureView:Lcom/transsion/vishaplayersdk/gsyplayer/render/GSYRenderProxy;

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mbBuffering:Z

    iget-object v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    iput-object v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayType:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    iget-wide v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoID:J

    iput-wide v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoID:J

    iget-wide v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSerialID:J

    iput-wide v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSerialID:J

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iput-boolean v0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbSwitchResolutionNeedVip:Z

    iget v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSpeed:F

    iget-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSoundTouch:Z

    iget-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    iput-boolean p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbShowError:Z

    iget p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    iput p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorType:I

    iget p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    iput p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoSourceType:I

    iget-object p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iput-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mYoutubePlayData:Lcom/transsion/vishaplayersdk/youtube/YoutubePlayData;

    iget-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz p0, :cond_0

    iget-object v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    iget-object v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object v4, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mMapHeadData:Ljava/util/Map;

    iget-object v5, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    iget-object p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    iput-object p0, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCache:Z

    iget-object v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCachePath:Ljava/io/File;

    iget-object v4, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLooping()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setLooping(Z)V

    iget-boolean p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    invoke-virtual {p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setIsTouchWigetFull(Z)V

    iget p0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    invoke-virtual {p2, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    return-void
.end method

.method public getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSmallWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSmallWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public abstract getFullId()I
.end method

.method public getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSaveBeforeFullSystemUiVisibility()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSystemUiVisibility:I

    return p0
.end method

.method public abstract getSmallId()I
.end method

.method public getSmallWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSmallId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hideSmallVideo()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSmallId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->removeVideo(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getLastState()I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->addTextureView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    const-string v0, "onQuitSmallWidget"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V

    sget p1, Lcom/transsion/vishaplayersdk/R$id;->small_close:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSmallClose:Landroid/view/View;

    return-void
.end method

.method public isAdPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    return p0
.end method

.method public isAutoFullWithSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    return p0
.end method

.method public isFullHideStatusBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    return p0
.end method

.method public isLockLandByAutoFullSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isAutoFullWithSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    return p0
.end method

.method public isShowFullAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    return p0
.end method

.method public isVerticalFullByVideoSize()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isAutoFullWithSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVerticalVideo()Z
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mRotate:I

    const/16 v3, 0x5a

    const/4 v4, 0x1

    if-eq p0, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_2

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method public lockTouchLogic()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isRotateViewAuto()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackFullscreen()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->clearFullscreenLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:hideActionBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hideStatusBar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p2}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->isEnable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onInfo(II)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkAutoFullSizeWhenFull()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->onPrepared()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkAutoFullSizeWhenFull()V

    return-void
.end method

.method public resolveFullVideoShow(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setIfCurrentIsFullscreen(Z)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isRotateViewAuto()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setRotateWithSystem(Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    iput-object p1, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isLockLandByAutoFullSize()Z

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isShowFullAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    new-instance v0, Lmc4;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lmc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;ZZLcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->getLastState()I

    move-result p1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eqz p3, :cond_1

    sget-object p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fullplayer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normalplayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    iget p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mMuteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isNeedMute()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->addTextureView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mSaveChangeViewTIme:J

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_3

    const-string p1, "onQuitFullscreen"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSystemUiVisibility:I

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->showNavKey(Landroid/content/Context;I)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    iget-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    invoke-static {p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->showSupportActionBar(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public setAutoFullWithSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mAutoFullWithSize:Z

    return-void
.end method

.method public setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullHideActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    return-void
.end method

.method public setFullHideStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mLockLand:Z

    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateViewAuto:Z

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mRotateWithSystem:Z

    return-void
.end method

.method public setSaveBeforeFullSystemUiVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSystemUiVisibility:I

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    return-void
.end method

.method public setSmallVideoTextureView()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSmallClose:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSmallClose:Landroid/view/View;

    new-instance v1, Llc4;

    invoke-direct {v1, p0}, Llc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public showTextToast(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
    .locals 9

    const-class v0, Ljava/lang/Boolean;

    const-class v1, Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mSystemUiVisibility:I

    invoke-static {p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_0
    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mActionBar:Z

    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mStatusBar:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemSize:[I

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullId()I

    move-result v2

    invoke-direct {p0, v5, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->removeVideo(Landroid/view/ViewGroup;I)V

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->pauseFullCoverLogic()V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->saveLocationStatus(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    goto :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setIfCurrentIsFullscreen(Z)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    invoke-virtual {p2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)V

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full player:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal player:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->cloneParams(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Loc4;

    invoke-direct {v1, p0}, Loc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullBack(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getAdBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getAdBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullBack(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getAdBackButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getLoadingBackTv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullBack(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getVipBackTv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullBack(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mShowFullAnimation:Z

    if-eqz v2, :cond_7

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mFullAnimEnd:Z

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mListItemRect:[I

    aget v4, v3, v1

    aget v3, v3, p3

    invoke-virtual {v2, v4, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->mInnerHandler:Landroid/os/Handler;

    new-instance v1, Lpc4;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lpc4;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1, p2, v8}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->resolveFullVideoShow(Landroid/content/Context;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Landroid/widget/FrameLayout;)V

    :goto_4
    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkoutState()V

    invoke-virtual {p0, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkAutoFullWithSizeAndAdaptation(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->addTextureView()V

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setLastListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->setFullScreen(Z)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mAdPlaying:Z

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    :cond_8
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_9

    const-string p1, "onEnterFullscreen"

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    return-object p2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
