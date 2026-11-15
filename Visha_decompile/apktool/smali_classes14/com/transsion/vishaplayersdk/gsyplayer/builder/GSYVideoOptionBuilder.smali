.class public Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected bShowSubtitles:Z

.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCachePath:Ljava/io/File;

.field protected mCacheWithPlay:Z

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field protected mDismissControlTime:I

.field protected mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

.field protected mEnlargeImageRes:I

.field protected mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

.field protected mLockLand:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mOverrideExtension:Ljava/lang/String;

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

.field protected mReleaseWhenLossAudio:Z

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mSeekOnStart:J

.field protected mSeekRatio:F

.field protected mSerialID:J

.field protected mSetUpLazy:Z

.field protected mShowFullAnimation:Z

.field protected mShowPauseCover:Z

.field protected mShrinkImageRes:I

.field protected mSounchTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mStatusBar:Z

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbPlay:Z

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

.field protected mVideoID:J

.field protected mVideoTitle:Ljava/lang/String;

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mbHardwareAccelerated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    const/16 v0, -0x16

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    const/16 v0, -0xb

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/effect/NoEffect;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mbHardwareAccelerated:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->bShowSubtitles:Z

    return-void
.end method


# virtual methods
.method public build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    if-lez v1, :cond_4

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    return-void
.end method

.method public build(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 9

    .line 12
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayTag(Ljava/lang/String;)V

    .line 13
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayPosition(I)V

    .line 14
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mThumbPlay:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setThumbPlay(Z)V

    .line 15
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mThumbImageView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setThumbImageView(Landroid/view/View;)V

    .line 17
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mNeedLockFull:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 18
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)V

    .line 20
    :cond_1
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setDismissControlTime(I)V

    .line 21
    iget-wide v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 22
    invoke-virtual {p1, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    .line 23
    :cond_2
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setShowFullAnimation(Z)V

    .line 24
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setLooping(Z)V

    .line 25
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)V

    .line 27
    :cond_3
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setGSYVideoProgressListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;)V

    .line 29
    :cond_4
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mOverrideExtension:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setOverrideExtension(Ljava/lang/String;)V

    .line 30
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setAutoFullWithSize(Z)V

    .line 31
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setRotateViewAuto(Z)V

    .line 32
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setLockLand(Z)V

    .line 33
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSounchTouch:Z

    invoke-virtual {p1, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSpeed(FZ)V

    .line 34
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setHideKey(Z)V

    .line 35
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 36
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setIsTouchWigetFull(Z)V

    .line 37
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 38
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    .line 39
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setStartAfterPrepared(Z)V

    .line 40
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setReleaseWhenLossAudio(Z)V

    .line 41
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullHideActionBar(Z)V

    .line 42
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setFullHideStatusBar(Z)V

    .line 43
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mbHardwareAccelerated:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYRenderView;->setHardwareAccelerated(Z)V

    .line 44
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    .line 45
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    if-lez v2, :cond_5

    .line 46
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setEnlargeImageRes(I)V

    .line 47
    :cond_5
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    if-lez v2, :cond_6

    .line 48
    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setShrinkImageRes(I)V

    .line 49
    :cond_6
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setShowPauseCover(Z)V

    .line 50
    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setSeekRatio(F)V

    .line 51
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setRotateWithSystem(Z)V

    .line 52
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->bShowSubtitles:Z

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setShowSubtitle(Z)V

    .line 53
    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    if-eqz v2, :cond_7

    .line 54
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    move-object v0, p1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    goto :goto_0

    .line 55
    :cond_7
    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoID:J

    iget-wide v5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSerialID:J

    iget-boolean v7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    iget-object v8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    move-object v0, p1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;JJZLjava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public setAutoFullWithSize(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mAutoFullWithSize:Z

    return-object p0
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCachePath(Ljava/io/File;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method public setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mCacheWithPlay:Z

    return-object p0
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDialogProgressColor(II)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressHighLightColor:I

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDialogProgressNormalColor:I

    return-object p0
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDismissControlTime(I)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mDismissControlTime:I

    return-object p0
.end method

.method public setEffectFilter(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEffectFilter:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object p0
.end method

.method public setEnlargeImageRes(I)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mEnlargeImageRes:I

    return-object p0
.end method

.method public setFullHideActionBar(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mActionBar:Z

    return-object p0
.end method

.method public setFullHideStatusBar(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStatusBar:Z

    return-object p0
.end method

.method public setGSYVideoProgressListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mGSYVideoProgressListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoProgressListener;

    return-object p0
.end method

.method public setHardwareAccelerated(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hardwareAccelerated :"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mbHardwareAccelerated:Z

    return-object p0
.end method

.method public setHideKey(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mHideKey:Z

    return-object p0
.end method

.method public setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWiget:Z

    return-object p0
.end method

.method public setIsTouchWigetFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mIsTouchWigetFull:Z

    return-object p0
.end method

.method public setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLockClickListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;

    return-object p0
.end method

.method public setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLockLand:Z

    return-object p0
.end method

.method public setLooping(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mLooping:Z

    return-object p0
.end method

.method public setMapHeadData(Ljava/util/Map;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mMapHeadData:Ljava/util/Map;

    return-object p0
.end method

.method public setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mNeedLockFull:Z

    return-object p0
.end method

.method public setNeedShowWifiTip(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mNeedShowWifiTip:Z

    return-object p0
.end method

.method public setOverrideExtension(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mOverrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayPosition(I)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayPosition:I

    return-object p0
.end method

.method public setPlayTag(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    const-string v1, "playerInitConfig :"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object p0
.end method

.method public setReleaseWhenLossAudio(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mReleaseWhenLossAudio:Z

    return-object p0
.end method

.method public setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateViewAuto:Z

    return-object p0
.end method

.method public setRotateWithSystem(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mRotateWithSystem:Z

    return-object p0
.end method

.method public setSeekOnStart(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekOnStart:J

    return-object p0
.end method

.method public setSeekRatio(F)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSeekRatio:F

    return-object p0
.end method

.method public setSerialID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serial id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSerialID:J

    return-object p0
.end method

.method public setSetUpLazy(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSetUpLazy:Z

    return-object p0
.end method

.method public setShowFullAnimation(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowFullAnimation:Z

    return-object p0
.end method

.method public setShowPauseCover(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShowPauseCover:Z

    return-object p0
.end method

.method public setShowSubtitle(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->bShowSubtitles:Z

    return-object p0
.end method

.method public setShrinkImageRes(I)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mShrinkImageRes:I

    return-object p0
.end method

.method public setSoundTouch(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSounchTouch:Z

    return-object p0
.end method

.method public setSpeed(F)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mSpeed:F

    return-object p0
.end method

.method public setStartAfterPrepared(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mStartAfterPrepared:Z

    return-object p0
.end method

.method public setThumbImageView(Landroid/view/View;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mThumbImageView:Landroid/view/View;

    return-object p0
.end method

.method public setThumbPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mThumbPlay:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play source url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method public setVideoID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoID:J

    return-object p0
.end method

.method public setVideoTitle(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->mVideoTitle:Ljava/lang/String;

    return-object p0
.end method
