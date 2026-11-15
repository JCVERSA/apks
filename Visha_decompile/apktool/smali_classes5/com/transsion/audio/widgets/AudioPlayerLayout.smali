.class public Lcom/transsion/audio/widgets/AudioPlayerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;
    }
.end annotation


# static fields
.field private static final MAX_UPDATE_INTERVAL_MS:I = 0xfa

.field static final TAG:Ljava/lang/String; = "AudioPlayerLayout"


# instance fields
.field private final errorNextRunnable:Ljava/lang/Runnable;

.field protected mArtistName:Landroid/widget/TextView;

.field private mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field private mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

.field private mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

.field protected mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field mCollapseWidthAnim:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private final mCustomIconItemClickListener:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

.field private mCustomIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

.field protected mDefaultSpeedTxSize:I

.field private final mDeferredSpeedUpdateRunnable:Ljava/lang/Runnable;

.field private mDisposables:Lgd1;

.field protected mDuration:J

.field mExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFirstClickTime:J

.field public mFromPage:Ljava/lang/String;

.field public mFromShare:Z

.field private mGestureView:Landroid/view/View;

.field private mGestureViewButton:Landroid/view/View;

.field private mIsAudioCoverChanged:Z

.field private mIsAudioInfoChanged:Z

.field private mIsFoldSmall:Z

.field private mIsFoldSmallInit:Z

.field protected mIsInFavorites:Z

.field private mIsInitPlayPause:Z

.field private mIsPlaying:Z

.field private mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

.field private mIvCancelEditInfo:Landroid/widget/ImageView;

.field private mIvFavorites:Landroid/widget/ImageView;

.field private mIvMore:Landroid/widget/ImageView;

.field private mIvSaveEditInfo:Landroid/widget/ImageView;

.field private mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

.field private mLastCoverClickTime:J

.field private mLlAudioinfo:Landroid/view/View;

.field private mLlSmartEdit:Landroid/widget/LinearLayout;

.field private mLlSpaceAlbum:Landroid/widget/LinearLayout;

.field private mMVPlayerMediaView:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

.field private mMusicAlbumContainer:Landroid/widget/FrameLayout;

.field private mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

.field private mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field private mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

.field private mNewCoverPath:Ljava/lang/String;

.field private final mOnSeekBarChangeListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

.field private mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPauseButtonUpdateRunnable:Ljava/lang/Runnable;

.field private final mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field private mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

.field private mPlayNext:Landroid/widget/ImageView;

.field private mPlayPause:Landroid/widget/ImageView;

.field private mPlayPrevious:Landroid/widget/ImageView;

.field private final mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

.field protected mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field private mSmartEditViewModel:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

.field private mSpeed:F

.field protected mSpeedTxSize:I

.field private final mSurfaceCallback:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

.field protected mTracking:Z

.field protected mTvCover:Landroid/widget/TextView;

.field protected mTvCurrentProgress:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;

.field protected mTvTotalProgress:Landroid/widget/TextView;

.field private mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsPlaying:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInitPlayPause:Z

    .line 4
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    .line 5
    new-instance v0, Ljw;

    invoke-direct {v0}, Ljw;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromPage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromShare:Z

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDisposables:Lgd1;

    .line 10
    new-instance v0, Lkw;

    invoke-direct {v0, p0}, Lkw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDeferredSpeedUpdateRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconItemClickListener:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    .line 12
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    .line 13
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSurfaceCallback:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    .line 14
    new-instance v0, Llw;

    invoke-direct {v0, p0}, Llw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lmw;

    invoke-direct {v0, p0}, Lmw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPauseButtonUpdateRunnable:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 17
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mOnSeekBarChangeListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsPlaying:Z

    .line 21
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInitPlayPause:Z

    .line 22
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    .line 23
    new-instance p2, Ljw;

    invoke-direct {p2}, Ljw;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    .line 24
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromPage:Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFromShare:Z

    .line 26
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    .line 27
    new-instance p2, Lgd1;

    invoke-direct {p2}, Lgd1;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDisposables:Lgd1;

    .line 28
    new-instance p2, Lkw;

    invoke-direct {p2, p0}, Lkw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDeferredSpeedUpdateRunnable:Ljava/lang/Runnable;

    .line 29
    new-instance p2, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconItemClickListener:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    .line 30
    new-instance p2, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    .line 31
    new-instance p2, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$3;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSurfaceCallback:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    .line 32
    new-instance p2, Llw;

    invoke-direct {p2, p0}, Llw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance p2, Lmw;

    invoke-direct {p2, p0}, Lmw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPauseButtonUpdateRunnable:Ljava/lang/Runnable;

    .line 34
    new-instance p2, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$9;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 35
    new-instance p2, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mOnSeekBarChangeListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMVPlayerMediaView:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/widgets/RoundImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPauseButtonUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public static bridge synthetic J(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->expandSmartEditLayout()V

    return-void
.end method

.method public static bridge synthetic K(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setNewCover(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic L(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setSmartEditInfo(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->stopSmartEditLoadingAnim()V

    return-void
.end method

.method public static bridge synthetic N(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateAudioPlayList()V

    return-void
.end method

.method public static bridge synthetic O(Lcom/transsion/audio/widgets/AudioPlayerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateMVPlayView(Z)V

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/audio/widgets/AudioPlayerLayout;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateTimer(J)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$init$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$updateDisplayUI$9()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$triggerFavoriteButton$12()V

    return-void
.end method

.method private checkSmallWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsFoldSmallInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$dimen;->audio_player_layout_album_space_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSpaceAlbum:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsFoldSmall:Z

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsFoldSmallInit:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_2

    sget v2, Lcom/transsion/audio/R$id;->fold_window_small:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSmallWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSpaceAlbum:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFoldSmall: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsFoldSmall:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioPlayerLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private collapseSmartEditLayout(Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Ldw;

    invoke-direct {v1, p0}, Ldw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lt53;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lt53;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$init$2(Ljava/lang/Integer;)V

    return-void
.end method

.method private doPlayListDialog(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "theme"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "is_hide_audio_play_list"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$onVisibilityChanged$16()V

    return-void
.end method

.method private expandSmartEditLayout()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42a80000    # 84.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lpw;

    invoke-direct {v3, p0}, Lpw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {v5, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lqw;

    invoke-direct {v3, p0}, Lqw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->handleSaveSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$setMusicPlayListStyle$11()V

    return-void
.end method

.method private getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->audio_play_operate_foldable:I

    return p0
.end method

.method public static synthetic h(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$saveAudioEditInfo$18()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private handleSaveError(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error saving audio edit info: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioPlayerLayout"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method private handleSaveSuccess(Ljava/lang/Boolean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio edit info saved result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->collapseSmartEditLayout(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioCoverChanged:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "change_audio_cover"

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$saveAudioEditInfo$17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private initCoverChangeObserver()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSmartEditViewModel:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;

    invoke-direct {v2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/transsion/audio/widgets/AudioPlayerLayout$5;

    invoke-direct {v2, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$5;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method private initDisplayUI()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDisplayUI repeatMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayerLayout"

    invoke-static {v2, v1}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setRepeatImg(ILcom/transsion/widgetslib/widget/OSIconTextView;Z)V

    return-void
.end method

.method private initDolbyOrEqShow()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEqCustomIcon(Z)V

    return-void
.end method

.method private isPlayListShow()Z
    .locals 2

    const-string p0, "audio"

    invoke-static {p0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object p0

    const-string v0, "audio_play_list_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsg9;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$initGesture$14(I)V

    return-void
.end method

.method public static synthetic k(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$initGesture$15(I)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/audio/widgets/AudioPlayerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$expandSmartEditLayout$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$collapseSmartEditLayout$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$expandSmartEditLayout$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expandSmartEditLayout$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$init$2(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMusicModel.getAudioPlayRepeatMode().observe repeatMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setRepeatImg(ILcom/transsion/widgetslib/widget/OSIconTextView;Z)V

    return-void
.end method

.method private synthetic lambda$init$3(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveEventBus.getInstance().with(EventKey.EVENT_KEY_AUDIO_SWITCH_REPEAT_MODE).observe repeatMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setRepeatImg(ILcom/transsion/widgetslib/widget/OSIconTextView;Z)V

    return-void
.end method

.method private static synthetic lambda$initGesture$14(I)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "audio_play_switch"

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Lp06;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    invoke-static {v1}, Lp06;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p0, :cond_2

    const-string p0, "1"

    const/4 v0, 0x0

    const-string v1, "vd_audio_play"

    invoke-static {v1, p0, v0}, Lp06;->i0(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne v0, p0, :cond_3

    const-string p0, "vd_audio_cover_cl_enter_lyrics"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initGesture$15(I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$0()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->R0()V

    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePlayPauseButton(I)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->runVideoProgressUpdate()V

    return-void
.end method

.method private synthetic lambda$onVisibilityChanged$16()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEq(Z)V

    return-void
.end method

.method private synthetic lambda$registerEqOpen$8(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEq(Z)V

    return-void
.end method

.method private synthetic lambda$saveAudioEditInfo$17(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {v0, v1, p1}, Lul;->a(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;)Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {v0, p0, p2}, Lul;->a(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;)Z

    :cond_1
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$saveAudioEditInfo$18()Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->saveAudioCover()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$saveAudioEditInfo$19(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setMusicPlayListStyle$11()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->scrollToPlayIndex()V

    return-void
.end method

.method private synthetic lambda$triggerFavoriteButton$12()V
    .locals 4

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x41f

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateFavoriteIcon(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvf;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-interface {v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->addForFavorites(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    invoke-static {v0}, Lcd;->i(Landroid/view/View;)V

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    const-string v3, "audio_favorite"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {v1, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_audio_play"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$triggerFavoriteButton$13(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {v0, v1, p1}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance p1, Lhw;

    invoke-direct {p1, p0}, Lhw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateDisplayUI$9()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O1()V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadStaticCover(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-static {p0}, Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->handleSaveError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$new$4()V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$triggerFavoriteButton$13(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private onCancelSmartEditInfo()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->collapseSmartEditLayout(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateTitleInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private onSaveSmartEditInfo()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v0, v1, v2, v3}, Lqy5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->saveAudioEditInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/audio/widgets/AudioPlayerLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$init$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private playNextPre(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->audioPlayNext()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->audioPlayPrevious()V

    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$new$10()V

    return-void
.end method

.method public static synthetic r()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$new$0()V

    return-void
.end method

.method private registerEqOpen()V
    .locals 3

    sget-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lrw;

    invoke-direct {v2, p0}, Lrw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEq(Z)V

    goto :goto_1

    :cond_0
    sget-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Llc3;->d()Z

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEq(Z)V

    :goto_1
    return-void
.end method

.method private releaseAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCollapseWidthAnim:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public static synthetic s(Lcom/transsion/audio/widgets/AudioPlayerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$collapseSmartEditLayout$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private saveAudioCover()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioCoverChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mNewCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveAudioEditInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luw;

    invoke-direct {v0, p0, p2, p1}, Luw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p1

    new-instance p2, Lvw;

    invoke-direct {p2, p0}, Lvw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-static {p2}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p2

    new-instance v0, Lww;

    invoke-direct {v0}, Lww;-><init>()V

    invoke-static {p1, p2, v0}, Lxm9;->y(Lmn9;Lmn9;Lbe0;)Lxm9;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p1

    new-instance p2, Lxw;

    invoke-direct {p2, p0}, Lxw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    new-instance v0, Lyw;

    invoke-direct {v0, p0}, Lyw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p1, p2, v0}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDisposables:Lgd1;

    invoke-virtual {p0, p1}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method private setDefCoverImage()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    sget v1, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-static {p0}, Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V

    return-void
.end method

.method private setMusicPlayListStyle()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {v0, v2}, Lcom/transsion/audio/widgets/MusicPlayListView;->adaptFoldState(Z)Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setNightType(Z)Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->refresh(ZZ)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    new-instance v1, Liw;

    invoke-direct {v1, p0}, Liw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setNewCover(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mNewCoverPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->loadStaticCover(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioCoverChanged:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateSmartEditLayout(ZZ)V

    return-void
.end method

.method private setRepeatImg(ILcom/transsion/widgetslib/widget/OSIconTextView;Z)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$string;->os_single_loop:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    sget p0, Lcom/transsion/widgetslib/R$string;->os_List_loop:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/widgetslib/R$string;->os_shuffle:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Lp10;->b(I)V

    :cond_2
    return-void
.end method

.method private setSmartEditInfo(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getAlbumYear()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " artistName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " albumName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " albumYear:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "AudioPlayerLayout"

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioInfoChanged:Z

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioInfoChanged:Z

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsAudioInfoChanged:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateSmartEditLayout(ZZ)V

    :cond_2
    return-void
.end method

.method private shouldHideAlbumForWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-eqz v0, :cond_2

    iget-boolean p0, v0, Lwoc;->c:Z

    if-nez p0, :cond_1

    iget-boolean p0, v0, Lwoc;->d:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public static shouldShowPauseButton()Z
    .locals 2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startSmartEditLoadingAnim()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method private stopSmartEditLoadingAnim()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/audio/widgets/AudioPlayerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$expandSmartEditLayout$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private triggerFavoriteButton()V
    .locals 3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    new-instance v1, Low;

    invoke-direct {v1, p0, v0}, Low;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v1}, Liia;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private triggerRepeatMode()I
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "audio_play_repeat_mode"

    invoke-static {v0, v2, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Liz;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setRepeatImg(ILcom/transsion/widgetslib/widget/OSIconTextView;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    new-instance v2, Liz;

    invoke-direct {v2, v0}, Liz;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/transsion/audio/player/MusicPlayManager;->k1(Liz;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    const-class v1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->r(I)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    sget-object v2, Lp06;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v4, v2, v3

    const-string v5, "audio_loop"

    invoke-virtual {p0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "vd_audio_play"

    const-wide/16 v3, 0x246c

    invoke-static {v1, p0, v2, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {p0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return v0
.end method

.method public static synthetic u(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$registerEqOpen$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method private unRegisterEqOpen()V
    .locals 1

    sget-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private updateAudioPlayList()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->isPlayListShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setMusicPlayListStyle()V

    :cond_0
    return-void
.end method

.method private updateAudioSwitchView(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateSmartEditLayout(ZZ)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDolbyOrEq(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEqCustomIcon(Z)V

    return-void
.end method

.method private updateDolbyOrEqCustomIcon(Z)V
    .locals 8

    sget v1, Lcom/transsion/audio/R$drawable;->ic_audio_player_eq_on_new:I

    sget-boolean v0, Lpp3;->u:Z

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/audio/R$drawable;->ic_custom_dolby_open:I

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/transsion/audio/R$drawable;->ic_custom_dolby_close:I

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v7, Lcom/transsion/playercommon/data/CustomIconItemData;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {p0, v7}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemIcon(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    invoke-static {}, Llc3;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v7, Lcom/transsion/playercommon/data/CustomIconItemData;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    invoke-virtual {p0, v7}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Llc3;->d()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeCustomView(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateMVPlayView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMVPlayerMediaView:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->hideLayout()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->showLayout()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldHideAlbumForWindow()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method private updatePlayerViewWhenChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateMVPlayView(Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioSwitchView;->setIsMusic(Z)V

    :cond_0
    return-void
.end method

.method private updateProgress(JJJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgress: bufferedPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "AudioPlayerLayout"

    invoke-static {p6, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p5, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    cmp-long p5, p5, p3

    if-eqz p5, :cond_0

    iput-wide p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    iget-object p5, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide p5, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    cmp-long v0, p1, p5

    if-lez v0, :cond_1

    move-wide p1, p5

    :cond_1
    const-wide/16 p5, 0x64

    mul-long/2addr p5, p1

    long-to-float p5, p5

    long-to-float p3, p3

    div-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-boolean p4, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTracking:Z

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_2
    return-void
.end method

.method private updateTimer(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemText(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v1, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v4, Lcom/transsion/audio/R$drawable;->music_custom_timer:I

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeCustomView(I)V

    :goto_0
    return-void
.end method

.method private updateTitleInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic v(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->lambda$saveAudioEditInfo$19(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public changeDefImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-static {p1}, Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AudioPlayerLayout"

    const-string v1, "setDefCoverImg: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setDefCoverImage()V

    :goto_0
    return-void
.end method

.method public changePlayImage(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-static {p1}, Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCoverImg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayerLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setDefCoverImage()V

    return-void
.end method

.method public changePlayImage(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->setDefCoverImage()V

    return-void

    .line 8
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/transsion/audio/R$drawable;->def_music_cover:I

    .line 11
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    .line 12
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->loadStaticCover(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const/16 p2, 0x421

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initDisplayUI()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x42e

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x41f

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p2, v0}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateFavoriteIcon(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x475

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateSpeed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->getLayoutId()I

    move-result v1

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/transsion/audio/R$id;->ll_space_album:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSpaceAlbum:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/audio/R$id;->gesture_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mGestureView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->gesture_view_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mGestureViewButton:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->ll_audio_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlAudioinfo:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->tv_audio_play_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$id;->tv_audio_artist:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateTitleInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    sget v1, Lcom/transsion/audio/R$id;->tv_video_play_current_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$id;->tv_video_play_total_progress:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$id;->iv_smart_edit:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/widgets/SmartEditAnimationView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    sget v1, Lcom/transsion/audio/R$id;->ll_smart_edit_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/audio/R$id;->iv_save_edit_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSaveEditInfo:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->iv_cancel_edit_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvCancelEditInfo:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->seekbar_video_play_bottom:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPause:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPrevious:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayNext:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_repeat:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/audio/R$id;->iv_more:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvMore:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->as_audio_video:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/widgets/AudioSwitchView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    sget v1, Lcom/transsion/audio/R$id;->player_media_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMVPlayerMediaView:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSurfaceCallback:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;

    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->setSurfaceListener(Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView$SurfaceCallback;)V

    sget v1, Lcom/transsion/audio/R$id;->iv_favorites:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/audio/R$id;->music_alumb_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/audio/R$id;->music_alumb_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/RoundImageView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    sget v1, Lcom/transsion/audio/R$id;->tv_cover:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvCover:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$id;->panel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->play_list_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/widgets/MusicPlayListView;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicPlayListView:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$dimen;->default_speed_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDefaultSpeedTxSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$dimen;->speed_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSpeedTxSize:I

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPrevious:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayNext:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mRepeat:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvMore:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlAudioinfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvCancelEditInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSaveEditInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mOnSeekBarChangeListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lvha;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v2, Lew;

    invoke-direct {v2, p0}, Lew;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-class v1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    sget v1, Lcom/transsion/audio/R$id;->custom_media_operate_icon_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconItemClickListener:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->setOnItemClick(Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initDisplayUI()V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initGesture()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lfw;

    invoke-direct {v1, p0}, Lfw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-class p1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    const-class p1, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSmartEditViewModel:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    const-class p1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioAlbumViewModel:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {p1, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    new-instance v1, Lgw;

    invoke-direct {v1, p0}, Lgw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initDolbyOrEqShow()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDeferredSpeedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->d0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateTimer(J)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initCoverChangeObserver()V

    return-void
.end method

.method public initAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public initGesture()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mGestureView:Landroid/view/View;

    new-instance v1, Lsw;

    invoke-direct {v1}, Lsw;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mGestureViewButton:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/audio/a;->f(Landroid/view/View;)V

    sget v0, Lcom/transsion/audio/R$id;->gesture_view_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Ltw;

    invoke-direct {v0}, Ltw;-><init>()V

    invoke-static {p0, v0}, Lcom/transsion/widgets/GestureUtil;->scrollGesturesForAudio(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    return-void
.end method

.method public initSurfaceViewAndSwitchView(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMVPlayerMediaView:Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->setDisplaySurfaceView(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;->setDisplaySurfaceView(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateAudioSwitchView(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "AudioPlayerLayout"

    const-string v1, "onAttachedToWindowAudioPlayerLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->runVideoProgressUpdate()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->registerEqOpen()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x421

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42e

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x475

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initDisplayUI()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->windowOptionsChange(Lwoc;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsSelectedListener:Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/widgets/AudioSwitchView;->registerIsSelectedListener(Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    return-void

    :cond_2
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-wide v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFirstClickTime:J

    invoke-static {v0, v1}, Ljf;->j(J)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mFirstClickTime:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_pause:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerPlayOrPause "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayerLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "audioplaypage"

    invoke-static {p1}, Lry5;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "audio_pause"

    goto :goto_0

    :cond_6
    const-string p1, "audio_play"

    :goto_0
    invoke-static {p1}, Lp06;->h0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->audioPlayPause()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_repeat:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->triggerRepeatMode()I

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->audioPlayRepeatModeChange()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x421

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_next:I

    if-ne v0, v1, :cond_9

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->playNextPre(Z)V

    const-string p0, "audio_play_next"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_audio_play_previous:I

    if-ne v0, v1, :cond_a

    invoke-direct {p0, v3}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->playNextPre(Z)V

    const-string p0, "audio_play_previous"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->music_alumb_view:I

    if-ne v0, v1, :cond_d

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_c

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    if-eqz p1, :cond_c

    iget-wide v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLastCoverClickTime:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljf;->k(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLastCoverClickTime:J

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->choiceBackground()V

    :cond_c
    const-string p0, "audio_play_coverset"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_speed_setting:I

    const-string v3, "btn"

    const-string v4, "vd_audio_play"

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->tv_speed_setting:I

    if-ne v0, v1, :cond_e

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->tv_audio_play_title:I

    if-ne v0, v1, :cond_f

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->showInfo()V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_favorites:I

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->triggerFavoriteButton()V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_more:I

    if-ne v0, v1, :cond_11

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->showMore(Ljava/lang/String;)V

    const-string p0, "audio_play_more_cl"

    invoke-static {v4, v3, p0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->ll_audio_info:I

    if-ne v0, v1, :cond_12

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->showAudioInfo()V

    goto :goto_2

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_smart_edit:I

    const-string v2, "clicktype"

    const-string v5, "vd_audio_play_smartedit_cl"

    if-ne v0, v1, :cond_13

    const-string p1, "smartedit"

    invoke-static {v4, v3, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lookup"

    invoke-static {v5, v2, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->requestAudioInfoFromMusicBrain(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_save_edit_info:I

    if-ne v0, v1, :cond_14

    const-string p1, "confirm"

    invoke-static {v5, v2, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->onSaveSmartEditInfo()V

    goto :goto_2

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_cancel_edit_info:I

    if-ne p1, v0, :cond_16

    const-string p1, "cancel"

    invoke-static {v5, v2, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->onCancelSmartEditInfo()V

    goto :goto_2

    :cond_15
    :goto_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->speedSetting()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_audio_speed_setting"

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    const-string p0, "audio_speed"

    invoke-static {v4, v3, p0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDeferredSpeedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeProgressUpdate()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDisposables:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->errorNextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->h()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    const-string v1, "AudioPlayerLayout"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->removeScreenTypeListener(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->unRegisterEqOpen()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x421

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42e

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x475

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioSwitchView;->unregisterIsSelectedListener()V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->releaseAnimation()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->checkSmallWindow()V

    return-void
.end method

.method public onProgressUpdateError(JJJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    iget-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTotalProgress:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateDolbyOrEq(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->runVideoProgressUpdate()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeProgressUpdate()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    instance-of p1, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayerLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    new-instance p1, Lnw;

    invoke-direct {p1, p0}, Lnw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public removeCustomView(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->getItemViewIndex(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->removeItem(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeProgressUpdate()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestAudioInfoFromMusicBrain(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->startSmartEditLoadingAnim()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSmartEditViewModel:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->f(Ljava/lang/String;)Lxm9;

    move-result-object p1

    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$6;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    invoke-virtual {p1, v0}, Lxm9;->a(Lin9;)V

    return-void
.end method

.method public runVideoProgressUpdate()V
    .locals 12

    const-wide/16 v0, 0xfa

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v8, v4

    :try_start_1
    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v8, v2

    const-wide/16 v10, 0x0

    if-gtz v0, :cond_0

    :goto_0
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->onProgressUpdateError(JJJ)V

    return-void

    :cond_0
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateProgress(JJJ)V

    return-void

    :catchall_0
    move-exception v4

    goto :goto_1

    :catchall_1
    move-exception v4

    move-wide v8, v2

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v8, v2

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateProgress(JJJ)V

    throw v4
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAudioPlayClickListener(Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    return-void
.end method

.method public setCoverText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCoverTextVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->runVideoProgressUpdate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeProgressUpdate()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updatePlayerViewWhenChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->initSurfaceViewAndSwitchView(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/videomodel/PlayListModel;->c(ILandroid/content/Context;)V

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1, v2}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateFavoriteIcon(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, v2

    :cond_4
    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->updateDisplayUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPauseButtonUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    new-instance v0, Lcw;

    invoke-direct {v0, p0}, Lcw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateFavoriteIcon(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInFavorites:Z

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/audio/R$drawable;->ic_farvorited_on_music:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/audio/R$drawable;->ic_favorites_music:I

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFavoriteIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",skip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioPlayerLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvFavorites:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updatePlayPauseButton(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInitPlayPause:Z

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsInitPlayPause:Z

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsPlaying:Z

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayPauseButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsPlaying:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPause:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    sget v1, Lcom/transsion/audio/R$drawable;->icon_video_play_pause_new:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/audio/R$drawable;->icon_video_play_play_new:I

    :goto_1
    invoke-static {v0, v1}, Lcd;->f(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPause:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsPlaying:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->talkback_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->talkback_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioPlayClickListener:Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    invoke-interface {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->updatePlayPause(I)V

    return-void
.end method

.method public updatePreviousAndNextButton()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayPrevious:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->h0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayNext:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->g0()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public updateSmartEditLayout(ZZ)V
    .locals 4

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIvSmartEdit:Lcom/transsion/audio/widgets/SmartEditAnimationView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mLlSmartEdit:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateSpeed()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->b(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSpeed:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/audio/R$string;->speed_icon:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->removeCustomView(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v1, p0, v4}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->updateItemText(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomIconMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mCustomMediaOperateIconView:Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;

    new-instance v8, Lcom/transsion/playercommon/data/CustomIconItemData;

    sget v3, Lcom/transsion/audio/R$drawable;->ic_music_speed_light:I

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v5, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/playercommon/data/CustomIconItemData;-><init>(ILjava/lang/String;ZZI)V

    const/4 v2, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView;->addItem(Lcom/transsion/playercommon/data/CustomIconItemData;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public windowOptionsChange(Lwoc;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iget-boolean v2, p1, Lwoc;->f:Z

    iget-boolean v3, p1, Lwoc;->c:Z

    iget-boolean p1, p1, Lwoc;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "windowState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isLandScape: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSmallWindow: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSplitWindow: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSmallSplitWindow: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AudioPlayerLayout"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_7

    const/4 v8, 0x2

    if-eq v0, v8, :cond_1

    const/4 v8, 0x3

    if-eq v0, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->flat_split_land:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->flat_small:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->isPlayListShow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_4

    sget v1, Lcom/transsion/audio/R$id;->play_list_land:I

    goto :goto_0

    :cond_4
    sget v1, Lcom/transsion/audio/R$id;->play_list:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->updateAudioPlayList()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_6

    sget v1, Lcom/transsion/audio/R$id;->flat_land:I

    goto :goto_1

    :cond_6
    sget v1, Lcom/transsion/audio/R$id;->flat:I

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    :goto_2
    invoke-direct {p0, v7}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->doPlayListDialog(Z)V

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->fold_split_land:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->fold_split:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->fold_small:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mIsFoldSmall:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->fold_window_small:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mPanelMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/audio/R$id;->fold:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mAudioVideoSwitchView:Lcom/transsion/audio/widgets/AudioSwitchView;

    if-eqz v0, :cond_10

    if-nez v3, :cond_d

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioSwitchView;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    move v4, v7

    :goto_5
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    if-eqz v4, :cond_e

    move v1, v7

    goto :goto_6

    :cond_e
    move v1, v0

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    move v7, v0

    :goto_7
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "hide"

    const-string v2, "show"

    if-nez v0, :cond_11

    move-object v0, v2

    goto :goto_8

    :cond_11
    move-object v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mMusicAlbumView:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    move-object v1, v2

    :cond_12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
