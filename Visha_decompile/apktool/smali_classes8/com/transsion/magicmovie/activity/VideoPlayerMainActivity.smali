.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;
.super Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/TabOperationBar$p;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/videoplayer/videoplayermainactivity"
.end annotation


# static fields
.field private static final AUDIO_COVER_UPDATE_DELAY_MS:J = 0x190L

.field private static final DUPLICATE_THRESHOLD_MS:J = 0x3e8L

.field private static final HANDLE_DELAY_RECREATE:I = 0x64

.field private static final HAVE_AUDIO_DEBOUNCE_MS:J = 0x12cL

.field private static final MEDIA_SCAN_MIN_INTERVAL_MS:J = 0xea60L

.field private static final M_MUSIC_PAGE_INDEX:I = 0x1

.field private static final NAVIGATION_STATE_EDIT_MODE:I = 0x10

.field public static final NAVIGATION_STATE_MASK:I = 0xffffff

.field private static final NAVIGATION_STATE_MUSIC_BAR_SHOW:I = 0x100

.field private static final NAVIGATION_STATE_SHOW_TAB_BAR:I = 0x1

.field private static final NAVIGATION_STATE_VIDEO_BAR_SHOW:I = 0x1000

.field private static final REFRESH_DEBOUNCE_MS:J = 0x320L

.field static final TAG:Ljava/lang/String; = "VideoPlayerMain_Activity"

.field private static volatile sLastMediaScanTimeMs:J


# instance fields
.field private cacheHideEnable:Z

.field firstTime:J

.field private hasAllAudioList:Z

.field private hasAllVideoList:Z

.field private mAllSelected:Z

.field private final mApplyHaveAudioRunnable:Ljava/lang/Runnable;

.field private final mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

.field private mAudioDataListModel:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

.field private mAudioDataPreloaded:Z

.field private mBlurView:Landroid/view/View;

.field private mBottomInAnimate:Z

.field private mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

.field private mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

.field private mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mDebouncedRefreshRunnable:Ljava/lang/Runnable;

.field private mDefaultPosition:I

.field private mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

.field private mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field private final mFinishchangeRunnable:Ljava/lang/Runnable;

.field protected mFirstClickTime:J

.field private mFootBarBackground:I

.field private mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

.field private mFragmentContentLayout:Landroid/widget/FrameLayout;

.field public mFromGuide:Z

.field private mHasDownloadFragment:Z

.field private mHasOnlineVideoFragment:Z

.field private volatile mHaveNar:Z

.field private mHideFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field private mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

.field private mInConvertPage:Z

.field private mIsDrawShadow:Z

.field private mIsEditMode:Z

.field private mIsFullScreenGuideShow:Z

.field private mIsInitLayoutModelAndOttNull:Z

.field private mIsPrivacyEnable:Z

.field mIsShowMVTip:Z

.field private mIsVideo:Z

.field private mLastProcessedTime:J

.field private mLastProcessedUri:Ljava/lang/String;

.field private mLastSelectTab:I

.field private mListFlag:I

.field private final mListener:Los0;

.field private mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field private mManualSort:Z

.field private mManualSortFrom:I

.field private final mMapFragment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/playercommon/fragments/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkView:Landroid/view/View;

.field private final mMediaScanRunnable:Ljava/lang/Runnable;

.field mMigrateDialogContentView:Landroid/view/View;

.field private mMigrationContent:Landroid/widget/TextView;

.field mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

.field private mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

.field private mMigrationRetry:Landroid/widget/TextView;

.field private mMiniBarStartRunnable:Ljava/lang/Runnable;

.field private mNavigationFlag:I

.field private final mOnlineVideoTabPosition:I

.field private mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private mPendingHaveAudio:Ljava/lang/Boolean;

.field private mPendingResumeAudioCoverUpdate:Z

.field private mPlayerLayout:Landroid/view/ViewGroup;

.field private mPrivacyAgreed:Z

.field private final mReCreateHandler:Landroid/os/Handler;

.field mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

.field private mSelectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShowDolbySplash:Z

.field private mShowMvGuideRunnable:Ljava/lang/Runnable;

.field private mSkinChangeUtils:Lxn9;

.field private mSkipNextVideoMiniBarShowAnim:Z

.field private mSuccessWritePermission:Z

.field private mUpdateDialogShow:Z

.field private mVideoDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDataListModel:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

.field private mVideoDataPreloaded:Z

.field private mWaitShowUpdateDialog:Z

.field private mWindowInsets:Landroid/view/WindowInsets;

.field private mbSelectedTabFromRouter:Z

.field private miniBarAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    new-instance v0, Lg3c;

    invoke-direct {v0, p0}, Lg3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDebouncedRefreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Lh3c;

    invoke-direct {v0, p0}, Lh3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

    new-instance v0, Li3c;

    invoke-direct {v0, p0}, Li3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyHaveAudioRunnable:Ljava/lang/Runnable;

    new-instance v0, Lj3c;

    invoke-direct {v0, p0}, Lj3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMediaScanRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mOnlineVideoTabPosition:I

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsDrawShadow:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAllSelected:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mbSelectedTabFromRouter:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsInitLayoutModelAndOttNull:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cacheHideEnable:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsShowMVTip:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsFullScreenGuideShow:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationRetry:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedUri:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedTime:J

    new-instance v2, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$1;

    invoke-direct {v2, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$1;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFinishchangeRunnable:Ljava/lang/Runnable;

    iput-wide v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->firstTime:J

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$m;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$m;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListener:Los0;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lk3c;

    invoke-direct {v1, p0}, Lk3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mReCreateHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic A1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->performRefreshData()V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$23(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method

.method public static synthetic C1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$enterEditMode$40()V

    return-void
.end method

.method public static synthetic D1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$didReceivedNotification$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$32(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initMainViewModel$16(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$31(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic H1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initMainViewModel$14(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$showTabFromRouter$7(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic J1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$27(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic K1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$installMainWindowInsetsListener$20(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$28(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic M1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$22(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic N1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$animBar$33()V

    return-void
.end method

.method public static synthetic O1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$26(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic P1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$30(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$migrateDialog$41(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic R1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    return-object p0
.end method

.method public static bridge synthetic S1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/widgets/CloudUploadView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    return-object p0
.end method

.method public static bridge synthetic T1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/widgets/TabOperationBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    return-object p0
.end method

.method public static bridge synthetic U1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    return p0
.end method

.method public static bridge synthetic V1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    return p0
.end method

.method public static bridge synthetic W1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/playercommon/videomodel/MainViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    return-object p0
.end method

.method public static bridge synthetic X1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mReCreateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic Y0(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initFootOperationBar$11(I)V

    return-void
.end method

.method public static bridge synthetic Y1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic Z0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initDolbyView$2(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic Z1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowDolbySplash:Z

    return p0
.end method

.method public static synthetic a1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initMainViewModel$13(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic a2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lxn9;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkinChangeUtils:Lxn9;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private animAudioPlayerActivity(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->getAudioBar()Lcom/transsion/audio/widgets/BottomAudioBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->getCoverView()Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, p1, v3

    const-string v4, "audio_cover_originX"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    aget p1, p1, v3

    const-string v3, "audio_cover_originY"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_3
    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "tran:activity.orientation.overlay"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_1
    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method private animBar(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomInAnimate:Z

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const-string v3, "translationY"

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    new-array v1, v1, [F

    aput v6, v1, v0

    aput v4, v1, v2

    invoke-static {v5, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    new-array v1, v1, [F

    aput v4, v1, v0

    aput v6, v1, v2

    invoke-static {v5, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Ls53;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v5, v4, v2, v3}, Ls53;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$d;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lc3c;

    invoke-direct {p2, p0}, Lc3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private animMiniAudioPlayer(ZLcom/transsion/dbdata/beans/media/PlayAudioData;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animMiniAudioPlayer---->isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromAudioList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playAudioData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v0, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    if-eqz p3, :cond_0

    invoke-static {p0, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->F1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animAudioPlayerActivity(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p2

    iget-object p3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->shouldShowPlayerMiniBar()Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 p2, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->updateState()V

    invoke-direct {p0, v2, p2, p3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1, v0, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v3}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->updateState()V

    invoke-direct {p0, v2, p2, p3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start miniBarAnim:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animBar(ZZ)V

    return-void

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "animMiniAudioPlayer,not show>> showAudioBar:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animMiniVideoPlayer---->isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playVideoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iput-boolean v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    invoke-static {p0, p2}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    if-nez p1, :cond_1

    sget p2, Lcom/transsion/magicmovie/R$anim;->activity_audio_slide_in_up:I

    invoke-static {p3, p0, p2}, Lf5;->d(Landroid/content/Intent;Landroid/content/Context;I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result p2

    iget-object p3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->shouldShowPlayerMiniBar()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-boolean p3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkipNextVideoMiniBarShowAnim:Z

    if-eqz p3, :cond_5

    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkipNextVideoMiniBarShowAnim:Z

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomInAnimate:Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_5
    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkipNextVideoMiniBarShowAnim:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start miniVideoAnim:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animBar(ZZ)V

    return-void

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "animMiniVideoPlayer,not show>> showVideoBar:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyEditFootBarBottomInset(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    sget v2, Lcom/transsion/widgetslib/R$id;->fob_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-eq v2, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private applyPendingAudioCoverUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomInAnimate:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->isAudioShowing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isCurrentPlayingAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AudioMiniBar] skip cover update for non-playing item, pendingId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->syncCurrentAudioCoverPath(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private applySafeInsetHorizontal(Landroid/view/WindowInsets;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lr2c;->a()I

    move-result v1

    invoke-static {}, Lmoc;->a()I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {p1, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p1, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyTabBarBottomInset(I)V

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyEditFootBarBottomInset(I)V

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, p1, p0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private applyTabBarBottomInset(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic b1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initDolbyView$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic c1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initMainViewModel$12(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic c2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomInAnimate:Z

    return-void
.end method

.method private cancelPendingMediaStoreScan()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMediaScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelShowMvGuideTip()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowMvGuideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getFootItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getFootItemView(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowMvGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowMvGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private changeFragmentContentLayoutBackground()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$color;->online_video_bottom_player_operate_bar:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootBarBackground:I

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveOsBgPrimaryColor()I

    move-result v4

    :goto_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_7
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private changeLightStatusNavigationBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "VideoPlayerMain_Activity"

    const-string p1, "changeLightStatusNavigationBar failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasDarkTheme()Z

    move-result p0

    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    or-int/lit16 p0, v1, 0x2010

    goto :goto_1

    :cond_3
    :goto_0
    and-int/lit16 p0, v1, -0x2011

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private changeTabOperationBarBackground()V
    .locals 5

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBlurView:Landroid/view/View;

    if-nez v3, :cond_1

    sget v3, Lcom/transsion/magicmovie/R$id;->vs_blur_view:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBlurView:Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v3, Lcom/transsion/blur/ShapeBlurView;

    invoke-virtual {v3}, Lcom/transsion/blur/ShapeBlurView;->callDraw()V

    :cond_1
    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBlurView:Landroid/view/View;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$color;->online_video_bottom_player_operate_bar:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootBarBackground:I

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveOsBgPrimaryColor()I

    move-result v1

    :goto_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method private checkAfterPermissionDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSuccessWritePermission:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkUpdateDialog()V

    :cond_0
    return-void
.end method

.method private createGDPR()V
    .locals 4

    const-string v0, "privacy_policy_cl"

    const-string v1, "version"

    const-wide v2, 0xd91af27358L

    invoke-static {v2, v3, v0, v1}, Lcom/transsion/privacy/MarkPointUtil;->p(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showGdprDialog()V

    return-void
.end method

.method public static synthetic d1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$fitSystemStatusBar$21(Z)V

    return-void
.end method

.method public static bridge synthetic d2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsDrawShadow:Z

    return-void
.end method

.method private dismissDolbySplash()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowDolbySplash:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowDolbySplash:Z

    const-string v1, "need_dolby_splash_show"

    invoke-static {p0, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget v1, Lcom/transsion/magicmovie/R$id;->dolby_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->createGDPR()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showUpdateDialog()V

    invoke-static {p0}, Lcom/transsion/sysbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/transsion/sysbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/sysbar/ImmersionBar;->init()V

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hideNavigationBar(Z)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setNaviColor()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->fitSystemStatusBar()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->checkFilePermission()V

    :cond_4
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showMvGuideTip(J)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x498

    invoke-virtual {v2, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method public static synthetic e1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$29(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic e2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsFullScreenGuideShow:Z

    return-void
.end method

.method private ensureDataPreloadForTab(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAudioDataPreloaded:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAudioDataPreloaded:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->preloadAllAudioDataList()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataPreloaded:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataPreloaded:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->preloadAllVideoDataList()V

    :cond_2
    return-void
.end method

.method private ensureInAppBackCallback()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$l;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public static synthetic f1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method public static bridge synthetic f2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mUpdateDialogShow:Z

    return-void
.end method

.method private fitSystemStatusBar()V
    .locals 6

    const-string v0, "fitSystemStatusBar:"

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "fitSystemStatusBar failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v3, 0x4000000

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-direct {p0, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeLightStatusNavigationBar(Z)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Ld3c;

    invoke-direct {v3, p0, v0}, Ld3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fitSystemStatusBar "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private flushPendingHaveAudio()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyHaveAudioRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingHaveAudio:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllAudioList:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingHaveAudio:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public static synthetic g1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$onItemClick$35()V

    return-void
.end method

.method public static bridge synthetic g2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWaitShowUpdateDialog:Z

    return-void
.end method

.method private getCurrentItem()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->F0()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getFragmentByItemId(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-nez v0, :cond_2

    sget v1, Lcom/transsion/magicmovie/R$id;->nv_movies:I

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicmovie/R$id;->nv_files:I

    if-ne p1, v1, :cond_1

    new-instance v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private getLogicalMainTabIndex()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget p0, p0, Lcom/transsion/data/Repository;->mainTab:I

    return p0
.end method

.method private getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v0, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTabCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasDownloadFragment:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic h1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$onItemClick$36(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkAfterPermissionDialog()V

    return-void
.end method

.method private handleAppFootActionBarClick(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Laz5;->h(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h0(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAllSelected:Z

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-static {p1, p0, v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g0(ZLandroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->markCloudTransmitList(Ljava/util/List;Z)V

    new-instance p1, Le6b;

    new-instance v1, Ll3c;

    invoke-direct {v1, p0}, Ll3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-direct {p1, p0, v1}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {p1, v0}, Le6b;->b(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleDeepLink(Landroid/content/Intent;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeepLink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedUri:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate URI ignored: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", time diff: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedUri:Ljava/lang/String;

    iput-wide v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastProcessedTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnu1;->a:Lnu1;

    invoke-virtual {v0, p0, p1}, Lnu1;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private hasDarkTheme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideNavigationBar(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x802

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 p1, p1, -0x803

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic i1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$onBottomFilterMenuClick$37(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->dismissDolbySplash()V

    return-void
.end method

.method private inflateBubbleText()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->J0()V

    :cond_0
    return-void
.end method

.method private inflatePlayerLayout()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateFragmentView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicmovie/R$id;->activity_local_player_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initData(Landroid/view/View;)V

    return-void
.end method

.method private initDolbyView()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowDolbySplash:Z

    const-string v0, "need_dolby_splash_show"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget v0, Lcom/transsion/magicmovie/R$id;->dolby_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/magicmovie/R$id;->tv_dolby:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget-boolean v4, Lpp3;->c:Z

    const/4 v5, -0x2

    if-nez v4, :cond_0

    const/high16 v6, 0x43870000    # 270.0f

    invoke-static {v6}, Lc39;->a(F)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v4, :cond_1

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lc39;->a(F)I

    move-result v5

    :cond_1
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v4, :cond_2

    const/high16 v8, 0x41800000    # 16.0f

    goto :goto_1

    :cond_2
    const/high16 v8, 0x421c0000    # 39.0f

    :goto_1
    invoke-static {v8}, Lc39;->a(F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_3

    sget v3, Lcom/transsion/magicmovie/R$drawable;->ic_dolby_log_pre:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/transsion/magicmovie/R$drawable;->ic_dolby_log:I

    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPlayerLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_4
    new-instance v2, Lz3c;

    invoke-direct {v2}, Lz3c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    sget v0, Lcom/transsion/magicmovie/R$id;->tv_start:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, La4c;

    invoke-direct {v1, p0}, La4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method private initFootOperationBar()V
    .locals 2

    sget v0, Lcom/transsion/magicmovie/R$id;->content_operation_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/TabOperationBar;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkFootOperationBar()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setOnHeadViewClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$p;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    new-instance v1, Lv3c;

    invoke-direct {v1, p0}, Lv3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$o;)V

    return-void
.end method

.method private initLayoutModel()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttTab()Lcom/transsion/dbdata/beans/appconfig/BottomBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsInitLayoutModelAndOttNull:Z

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OTT] the default position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bottomBean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "VideoPlayerMain_Activity"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getOttChannelsBean()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getTabCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    new-instance v2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getUnselectIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getUnselectIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BottomBean;->getName()Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/transsion/magicmovie/R$drawable;->ic_tab_ott:I

    sget v12, Lcom/transsion/magicmovie/R$drawable;->ic_tab_ott_select:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/playercommon/widgets/TabOperationBar;->addItem(Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;I)V

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFromGuide:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mbSelectedTabFromRouter:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeBackgroundForOnlineVideo(ZI)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->switchTabItem(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getTabCount()I

    move-result v2

    if-eq v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v4}, Lcom/transsion/playercommon/widgets/TabOperationBar;->removeItemView(I)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setCurrentItem(I)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result v0

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setCurrentItem(I)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    if-ne v0, v4, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeBackgroundForOnlineVideo(ZI)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeTabOperationBarItem(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private initMainViewModel()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lm3c;

    invoke-direct {v1, p0}, Lm3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lo3c;

    invoke-direct {v1, p0}, Lo3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lp3c;

    invoke-direct {v1, p0}, Lp3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lq3c;

    invoke-direct {v1}, Lq3c;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lr3c;

    invoke-direct {v1, p0}, Lr3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initTUpdate()V
    .locals 2

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/TUpdate$a;->c(Landroid/content/Context;)Lxgb$a;

    move-result-object v0

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxgb$a;->i(Ljava/lang/String;)Lxgb$a;

    move-result-object v0

    invoke-virtual {v0}, Lxgb$a;->j()Lxgb$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$j;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$j;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lxgb$a;->k(Lvw4;)Lxgb$a;

    move-result-object p0

    invoke-virtual {p0}, Lxgb$a;->l()V

    :cond_0
    return-void
.end method

.method private installMainWindowInsetsListener()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lx3c;

    invoke-direct {v1, p0}, Lx3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestApplyInsetsSafe()V

    return-void
.end method

.method private isCurrentPlayingAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v0, p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private isOnlineVideoTabPosition()Z
    .locals 4

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getLogicalMainTabIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnlineVideoTabPosition mHasOnlineVideoFragment\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " logicalTab\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewPagerItem\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOnlineVideoTabPosition\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoPlayerMain_Activity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-eqz p0, :cond_0

    if-ne v0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTabFirstLevelForPredictiveBack()Z
    .locals 2

    sget-boolean v0, Lpp3;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowDolbySplash:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->L0()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static synthetic j1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$didReceivedNotification$18(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic j2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/fragments/PlayerMainFragment;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$showGdprDialog$8(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method

.method public static bridge synthetic k2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->markCloudTransmitList(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic l1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initData$9(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic l2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showUpgradeSdkDefaultDialog()V

    return-void
.end method

.method private synthetic lambda$animBar$33()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMiniBarStartRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$createUpdateDialog$6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mUpdateDialogShow:Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showNewFeatureDialog()V

    return-void
.end method

.method private static synthetic lambda$didReceivedNotification$17(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo5b;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$18(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lo5b;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method private synthetic lambda$enterEditMode$40()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveNavigationBarBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyEditFootBarBottomInset(I)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fitSystemStatusBar$21(Z)V
    .locals 4

    invoke-static {p0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/transsion/magicmovie/R$id;->fragment_content:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    sget v1, Lcom/transsion/magicmovie/R$id;->content_operation_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz p1, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5

    invoke-static {}, Lhoc;->a()I

    move-result v0

    invoke-static {p1, v0}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyTabBarBottomInset(I)V

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyEditFootBarBottomInset(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$handleAppFootActionBarClick$34(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startBatchDownload(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x46a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initData$10(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->reCalcFootTabBarIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeTabOperationBarItem(I)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateFragmentContentParams(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateAudioShortcutNotice(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method private static synthetic lambda$initData$9(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$initDolbyView$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$initDolbyView$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->dismissDolbySplash()V

    return-void
.end method

.method private synthetic lambda$initFootOperationBar$11(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasDownloadFragment:Z

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->switchTabItem(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->switchTabItem(I)V

    return-void
.end method

.method private synthetic lambda$initMainViewModel$12(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateTabOperationBarVisibility()V

    return-void
.end method

.method private synthetic lambda$initMainViewModel$13(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit8 p1, p1, -0x11

    :goto_0
    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayout()V

    return-void
.end method

.method private synthetic lambda$initMainViewModel$14(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit8 p1, p1, -0x11

    :goto_1
    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayout()V

    return-void
.end method

.method private static synthetic lambda$initMainViewModel$15(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$initMainViewModel$16(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setShouldUpdate(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->updateState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$installMainWindowInsetsListener$20(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iput-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setSafeInsetBottom()V

    invoke-direct {p0, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applySafeInsetHorizontal(Landroid/view/WindowInsets;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$listenEventKeyChange$22(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    or-int/lit16 p1, p1, 0x100

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit16 p1, p1, -0x101

    :goto_0
    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$23(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 2

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "[VideoMiniBar]EVENT_KEY_LAUNCH_VIDEO_PLAYER_ACTIVITY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$24(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "[VideoMiniBar]EVENT_KEY_INTENT_LAUNCH_VIDEO_PLAYER_ACTIVITY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$25(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_1

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "[MiniBar]EVENT_KEY_FINISH_MEDIA_PLAYER_ACTIVITY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniAudioPlayer(ZLcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkipNextVideoMiniBarShowAnim:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v1, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$26(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "[AudioMiniBar]EVENT_KEY_LAUNCH_AUDIO_PLAYER_ACTIVITY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniAudioPlayer(ZLcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$27(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniAudioPlayer(ZLcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$28(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isCurrentPlayingAudio(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[AudioMiniBar] ignore cover change of non-playing item, id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayerMain_Activity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v0, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$29(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_KEY_HAVE_AUDIO , haveAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingHaveAudio:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyHaveAudioRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyHaveAudioRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$30(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_KEY_HAVE_VIDEO , haveVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllVideoList:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllVideoList:Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$31(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_KEY_SKIP_DOWNLOAD_GUIDE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$listenEventKeyChange$32(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lzdc;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_KEY_CHANGE_MINIBAR_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lastPlayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayerMain_Activity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p1, Lzdc;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->isAudioShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniAudioPlayer(ZLcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    goto :goto_0

    :cond_1
    sget p1, Lzdc;->a:I

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->isVideoShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v1, v2, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$markCloudTransmitList$38(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcz5;->c(Ljava/util/List;Z)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$markCloudTransmitList$39(Ljava/util/List;ZLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcz5;->f(JIZ)V

    return-void
.end method

.method private synthetic lambda$migrateDialog$41(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicmovie/R$string;->visha_fun_optimizing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationRetry:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->u(I)V

    invoke-static {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->i(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->sLastMediaScanTimeMs:J

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$19(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onBottomFilterMenuClick$37(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$onItemClick$35()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->enterEditMode(Z)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->startEditMode(ZIZ)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onItemClick$36(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showGdprDialog$8(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/privacy/MarkPointUtil;->y(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method

.method private synthetic lambda$showTabFromRouter$7(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->parseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showUpdateDialog$4(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->c:Z

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->v(Landroid/content/Context;J)V

    invoke-static {p0, v0, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->g(Landroid/content/Context;ZZ)Lcom/transsion/playercommon/data/CloudVersionControl;

    move-result-object p1

    sput-object p1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has cloud data:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/transsion/playercommon/core/MainApp;->c:Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->e(Landroid/content/Context;)Lcom/transsion/playercommon/data/CloudVersionControl;

    move-result-object p1

    sput-object p1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    :goto_1
    sget-boolean p1, Lcom/transsion/magicmovie/application/VideoApplication;->H:Z

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->n(Landroid/content/Context;Z)Z

    move-result p0

    sget-boolean p1, Lcom/transsion/magicmovie/application/VideoApplication;->H:Z

    if-eqz p1, :cond_3

    sput-boolean v0, Lcom/transsion/magicmovie/application/VideoApplication;->H:Z

    :cond_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showUpdateDialog$5(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPrivacyAgreed:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsPrivacyEnable:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPrivacyAgreed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPrivacyAgreed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsPrivacyEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsPrivacyEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerMain_Activity"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsPrivacyEnable:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPrivacyAgreed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWaitShowUpdateDialog:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->createUpdateDialog()V

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mUpdateDialogShow:Z

    invoke-static {}, Lbs8;->b()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showNewFeatureDialog()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->triggerUpgradeSdkCheck()V

    :goto_1
    return-void
.end method

.method private listenEventKeyChange()V
    .locals 2

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "bottom_bar_show"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lj4c;

    invoke-direct {v1, p0}, Lj4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "launch_video_player_activity"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Ll4c;

    invoke-direct {v1, p0}, Ll4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "launch_intent_video_player_activity"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lt2c;

    invoke-direct {v1, p0}, Lt2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "finish_media_player_activity"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lu2c;

    invoke-direct {v1, p0}, Lu2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "launch_audio_player_activity"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lv2c;

    invoke-direct {v1, p0}, Lv2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lw2c;

    invoke-direct {v1, p0}, Lw2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "change_audio_cover"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lx2c;

    invoke-direct {v1, p0}, Lx2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "have_audio"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Ly2c;

    invoke-direct {v1, p0}, Ly2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "have_video"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lz2c;

    invoke-direct {v1, p0}, Lz2c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "go_download_tab"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$a;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "video_music_mode_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$b;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "draw_shadow"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "skip_download_guide"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, La3c;

    invoke-direct {v1, p0}, La3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "change_minibar_state"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lk4c;

    invoke-direct {v1, p0}, Lk4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic m1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$showUpdateDialog$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic m2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->switchTabItem(I)V

    return-void
.end method

.method private markCloudTransmitList(Ljava/util/List;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v0, Lh4c;

    invoke-direct {v0, p1, p2}, Lh4c;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Li4c;

    invoke-direct {v0, p1, p2}, Li4c;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method private migrateDialog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicmovie/R$layout;->layout_show_migrate_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrateDialogContentView:Landroid/view/View;

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrateDialogContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/magicmovie/R$id;->os_loading_view:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/magicmovie/R$id;->show_content:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    sget v0, Lcom/transsion/magicmovie/R$id;->retry:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationRetry:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicmovie/R$string;->visha_fun_optimizing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationRetry:Landroid/widget/TextView;

    new-instance v0, Ld4c;

    invoke-direct {v0, p0}, Ld4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/dbdata/utils/MigrationUtils;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->i(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VideoPlayerMain_Activity"

    const-string v0, "migrateDialog dismiss failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic n1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$createUpdateDialog$6()V

    return-void
.end method

.method public static bridge synthetic n2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method public static synthetic o1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$25(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onBottomFilterMenuClick()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Le3c;

    invoke-direct {v1}, Le3c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->k(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->startEditMode(ZIZ)V

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x455

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p0, "vd_mul_filt_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onBottomHideMenuCLick()V
    .locals 4

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHideFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    sget-boolean v1, Lpp3;->p:Z

    if-eqz v1, :cond_0

    const-string v1, "video_bottom"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->x(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->V()V

    :goto_0
    const-string v0, "vd_mul_encry_cl"

    const-wide v1, 0xd91af27327L

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->startEditMode(ZIZ)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHideFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    return-void
.end method

.method public static synthetic p1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$new$0()V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "appWidget"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const-string v2, "turn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x44c

    invoke-virtual {v0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private performRefreshData()V
    .locals 1

    sget v0, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getFragmentByItemId(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->refresh()V

    :cond_0
    return-void
.end method

.method public static synthetic q1(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$markCloudTransmitList$38(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$showUpdateDialog$4(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private reCalcFootTabBarIndex(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-lt p1, p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private relayoutPlayerMiniBar(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const/16 v2, 0x13

    const/16 v3, 0x12

    const/16 v4, 0xc

    if-eqz p1, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget p1, Lcom/transsion/magicmovie/R$id;->container_operation_layout:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget p1, Lcom/transsion/magicmovie/R$id;->fragment_content:I

    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private releaseInAppBackCallback()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    :cond_0
    return-void
.end method

.method private requestApplyInsetsSafe()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestApplyInsetsSafe error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private requestMediaStoreScanIfNeeded()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->sLastMediaScanTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMediaScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMediaScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestRefreshData()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDebouncedRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDebouncedRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resolveNavigationBarBottom()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    invoke-static {}, Lhoc;->a()I

    move-result v1

    invoke-static {v0, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-lez v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {}, Lhoc;->a()I

    move-result v0

    invoke-static {p0, v0}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_3
    return v2
.end method

.method private resolveOsBgPrimaryColor()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/magicmovie/R$attr;->OsBgPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$color;->tab_operation_bar_bg:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static synthetic s1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$listenEventKeyChange$24(Landroid/content/Intent;)V

    return-void
.end method

.method private setCurrentItem(I)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g1(IZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setEditModeFromEditSource()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editFrom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEditMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mManualSort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mManualSortFrom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSortFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayerMain_Activity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSortFrom:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v1, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v1, v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->f1()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    :cond_2
    return-void
.end method

.method private setMainTabIndex(I)V
    .locals 2

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget v1, v0, Lcom/transsion/data/Repository;->mainTab:I

    iput v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastSelectTab:I

    iput p1, v0, Lcom/transsion/data/Repository;->mainTab:I

    return-void
.end method

.method private setNaviColor()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$attr;->foot_bar_background:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private setPlayerMiniBarMarginBottom(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveNavigationBarBottom()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v3, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v3, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq p1, v2, :cond_4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private setSearch()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {p0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v1, v2, :cond_2

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldShowPlayerMiniBar()Z
    .locals 10

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v3

    invoke-static {}, Lzdc;->f()I

    move-result v4

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    sget v5, Lzdc;->a:I

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/media/PlayListData;->isCurrentListEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v8

    if-nez v8, :cond_2

    sget v8, Lzdc;->b:I

    if-eq v4, v8, :cond_2

    sget v8, Lzdc;->a:I

    if-eq v4, v8, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    iget-object v9, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v9, v9, Lcom/transsion/playercommon/videomodel/MainViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldShowBottomOperateBar---->show="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isEditMode:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",hasAllAudioList:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllAudioList:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isDragMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isOnlineTab:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hasAllVideoList:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllVideoList:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isVideoPlaying:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isAudioPlaying:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private showBottomOperateBar(Z)V
    .locals 7

    const/16 v0, 0x8

    const-string v1, "VideoPlayerMain_Activity"

    if-eqz p1, :cond_6

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomInAnimate:Z

    if-eqz v2, :cond_0

    const-string p0, "miniBarAnim isRunning, return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v3

    invoke-static {}, Lzdc;->f()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showBottomOperateBar: isMusicPlaying:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isVideoPlaying:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",lastPlayState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v5, v5}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v2, v5}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    goto :goto_0

    :cond_2
    sget v3, Lzdc;->a:I

    if-ne v4, v3, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->isCurrentListEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "showBottomOperateBar: show video miniBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v2, v5}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    goto :goto_0

    :cond_3
    sget v3, Lzdc;->b:I

    if-eq v4, v3, :cond_4

    sget v3, Lzdc;->a:I

    if-eq v4, v3, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v0, "showBottomOperateBar: show audio miniBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v5, v5}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(ZZ)V

    goto :goto_0

    :cond_5
    const-string p1, "showBottomOperateBar: nothing play, hide miniBar"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    move p1, v2

    goto :goto_0

    :cond_6
    const-string v2, "showBottomOperateBar: hide miniBar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v1, v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private showGdprDialog()V
    .locals 5

    new-instance v0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-direct {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setIgnoreUserExperience(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setGdprStyle(I)V

    sget v1, Lcom/transsion/magicmovie/R$string;->visha_welcome_to:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v3, Lpp3;->c:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/magicmovie/R$string;->visha_Player_pre:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/magicmovie/R$string;->visha_Player:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setTitleText(Ljava/lang/String;)V

    sget v1, Lcom/transsion/audio/R$string;->gdpr_notice_visha_translatable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setContentText(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lw3c;

    invoke-direct {v2, p0, v0}, Lw3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMvGuideTip(J)V
    .locals 3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    const-string v1, "mmkv_key_show_mv_tip"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsFullScreenGuideShow:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsShowMVTip:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getFootItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsShowMVTip:Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cancelShowMvGuideTip()V

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$19;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$19;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowMvGuideRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getFootItemView(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mShowMvGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ls06;->c()V

    :cond_3
    return-void
.end method

.method private showNewFeatureDialog()V
    .locals 6

    invoke-static {}, Lge;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFromGuide:Z

    if-nez v0, :cond_5

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lw6c;->q(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "theme_preview_key"

    const/4 v2, 0x0

    const-string v3, "new_version_application_first_start"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const-string v0, "new_feature_poster_dialog_2"

    invoke-static {p0, v0, v4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0, v0, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/tools/activities/NewFeatureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/tools/activities/SkinsGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_2
    :goto_0
    invoke-static {p0, v3, v4}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$9;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$9;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v4}, Lw6c;->E(Landroid/content/Context;Z)V

    invoke-static {p0, v3, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/ThemeData;

    if-nez v0, :cond_5

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    invoke-static {p0, v3, v4}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showPlayerMainFragment(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getFragmentByItemId(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    invoke-static {p1}, La64;->l(Lcom/transsion/playercommon/fragments/BaseFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v1, Lcom/transsion/magicmovie/R$id;->nv_movies:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v1, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    filled-new-array {v0, p0}, [Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    invoke-static {p1, p0}, La64;->b(Landroidx/fragment/app/FragmentManager;[Lcom/transsion/playercommon/fragments/BaseFragment;)V

    return-void
.end method

.method private showUpgradeSdkDefaultDialog()V
    .locals 3

    const-string v0, "showUpgradeSdkDefaultDialog: "

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lghb;->a()Lax4;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lax4;->c(Landroid/app/Activity;Z)V

    const-string p0, "showUpgradeDialog: "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startOrStopMusicProgress(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->startOrStopMusicProgress(Z)V

    :cond_0
    return-void
.end method

.method private switchTabItem(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setMainTabIndex(I)V

    sget v0, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getFragmentByItemId(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, La64;->f(Lcom/transsion/playercommon/activities/BaseActivity;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->c1(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private syncCurrentAudioCoverPath(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->setCustomCoverPath(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->setCustomCoverPath(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->getAudioBar()Lcom/transsion/audio/widgets/BottomAudioBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p0, :cond_3

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->setCustomCoverPath(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static synthetic t1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyPendingAudioCoverUpdate()V

    return-void
.end method

.method private triggerUpgradeSdkCheck()V
    .locals 3

    invoke-static {}, Lge;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "triggerUpgradeSdkCheck: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lghb;->a()Lax4;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$k;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lax4;->b(Landroid/app/Activity;ZLhhb;)V

    return-void
.end method

.method public static synthetic u1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initMainViewModel$15(Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateAudioShortcutNotice(Ljava/lang/Integer;)V
    .locals 3

    sget-boolean v0, Lydc;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mLastSelectTab:I

    if-eq p1, v0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "MMKV_AUDIO_MIAN_SHOW_TIME"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    if-ge p1, v1, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, p1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->b()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->f(Z)V

    invoke-static {p0, v1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->g(Landroid/app/Activity;Z)Lkotlinx/coroutines/j;

    :cond_2
    :goto_0
    return-void
.end method

.method private updateEditFootOperationBarParams()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x11

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/magicmovie/R$id;->container_operation_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateFragmentContentParams(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 4

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x11

    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/magicmovie/R$id;->container_operation_layout:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsEditMode:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    const/high16 p1, 0x428c0000    # 70.0f

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :cond_2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateTabOperationBarVisibility()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateMarkViewVisibility()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    return-void
.end method

.method private updateLayoutScreenType(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->fitSystemStatusBar()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-nez v0, :cond_0

    const-string p0, "VideoPlayerMain_Activity"

    const-string p1, "updateLayoutScreenType failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sget-object v3, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xc

    const/16 v5, 0x14

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eqz v1, :cond_3

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_3
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_2
    iget-object v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    sget-boolean v4, Lpp3;->c:Z

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/16 v2, 0x8

    :cond_5
    invoke-virtual {v3, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeHeaderViewVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->relayoutPlayerMiniBar(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateFragmentContentParams(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateEditFootOperationBarParams()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateMarkViewVisibility()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateTabOperationBarVisibility()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeTabOperationBarBackground()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateRightBorder()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeFragmentContentLayoutBackground()V

    invoke-direct {p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    return-void
.end method

.method private updateMarkViewVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMarkView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMarkView:Landroid/view/View;

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePlayerMiniBarLayout()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->flushPendingHaveAudio()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->shouldShowPlayerMiniBar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->getScreenType()Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v1

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->relayoutPlayerMiniBar(Z)V

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mActivityStart:Z

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->startOrStopMusicProgress(Z)V

    invoke-direct {p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showBottomOperateBar(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method private updatePredictiveBackState()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isTabFirstLevelForPredictiveBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->releaseInAppBackCallback()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->ensureInAppBackCallback()V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v1, v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predictiveBack tabFirstLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isTabFirstLevelForPredictiveBack()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " primary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tabFirstPage="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->L0()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " inAppCb="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInAppBackCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v1, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " enabledCallbacks="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateRightBorder()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->getScreenType()Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v2

    sget-object v3, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/magicmovie/R$color;->devider_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v1

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const v0, 0x800005

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private updateTabOperationBarVisibility()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v4, v4, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v4, v4, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTabOperationBarVisibility "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoPlayerMain_Activity"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v5}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->isVideoShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    move v5, v3

    :goto_5
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v5}, Lcom/transsion/playercommon/widgets/TabOperationBar;->initShow(Z)V

    if-eqz v5, :cond_8

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    or-int/2addr v0, v3

    goto :goto_6

    :cond_8
    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit8 v0, v0, -0x2

    :goto_6
    iput v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    return-void
.end method

.method public static synthetic v1(Ljava/util/List;ZLjava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$markCloudTransmitList$39(Ljava/util/List;ZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic w1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$handleAppFootActionBarClick$34(Z)V

    return-void
.end method

.method public static synthetic x1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$initData$10(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic y1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$new$1()V

    return-void
.end method

.method public static synthetic z1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->lambda$new$19(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public changeBackgroundForOnlineVideo(ZI)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicmovie/R$color;->transparent:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityStatusBarColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeLightStatusNavigationBar(Z)V

    sget v0, Lcom/transsion/magicmovie/R$id;->fragment_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeTabOperationBarBackground()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeToDarkMode(ZI)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    return-void
.end method

.method public changeNavigationBarColor()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isOnlineVideoTabPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/magicmovie/R$color;->online_video_bottom_player_operate_bar:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    :cond_0
    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez v0, :cond_8

    :cond_1
    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v5, v5, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-nez v0, :cond_5

    if-nez v4, :cond_4

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_5

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    xor-int/2addr v0, v3

    invoke-static {v4, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    :cond_6
    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    :cond_8
    return-void
.end method

.method public changeTabOperationBarItem(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeTabOperationBarItem--->tabIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayerMain_Activity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getTabCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mFootOperationBar.getItemCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    :cond_0
    return-void
.end method

.method public checkAfterGpdrDialog()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$8;

    invoke-direct {v1, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$8;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->notifyOnlineFragment()V

    return-void
.end method

.method public checkFootOperationBar()V
    .locals 4

    const-string v0, "VideoPlayerMain_Activity"

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz v1, :cond_2

    sget-boolean v1, Lpp3;->w:Z

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFootOperationBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lzz0;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzz0;->d()Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicmovie/R$drawable;->icon_cloud_tab:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/transsion/magicmovie/R$string;->visha_cloud_drive:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "checkFootOperationBar activity resources missing, use app context"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/magicmovie/R$drawable;->icon_cloud_tab:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/magicmovie/R$string;->visha_cloud_drive:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/playercommon/widgets/TabOperationBar;->resetFootBarIconText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_1
    const-string v1, "checkFootOperationBar failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string v1, "checkFootOperationBar resource not found"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-void
.end method

.method public checkUpdateDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWaitShowUpdateDialog:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$5;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public createUpdateDialog()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/utils/UpdateDialogUtils;

    new-instance v1, Lu3c;

    invoke-direct {v1, p0}, Lu3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-direct {v0, v1}, Lcom/transsion/tools/utils/UpdateDialogUtils;-><init>(Lcom/transsion/tools/utils/UpdateDialogUtils$b;)V

    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/tools/utils/UpdateDialogUtils;->b(Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method

.method public customTabIconPreload(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 5

    const-string v0, "VideoPlayerMain_Activity"

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {p1, v1}, Lvha;->h(Lcom/transsion/dbdata/beans/ThemeData;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveTab success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveTab error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x458

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInConvertPage:Z

    if-nez p1, :cond_16

    sget-object p1, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Ls3c;

    invoke-direct {p2}, Ls3c;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$string;->convert_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/magicmovie/R$string;->snackbar_check:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lgq9;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Lt3c;

    invoke-direct {p1, p0}, Lt3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/magicmovie/R$string;->convert_success:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$string;->snackbar_check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgq9;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x42e

    const-string v1, "VideoPlayerMain_Activity"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_15

    const/16 v0, 0x47d

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0x42d

    if-ne p1, v0, :cond_3

    const-string p1, "[AudioMiniBar]EVENT_MUSIC_RESTORE, updatePlayerMiniBarLayout"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    goto/16 :goto_3

    :cond_3
    const/16 v0, 0x476

    const/4 v3, 0x1

    if-ne p1, v0, :cond_5

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSortFrom:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EVENT_AUDIO_MANUAL_SORT ,is Manual Sort :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", from:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSortFrom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mManualSort:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    and-int/lit8 p1, p1, -0x11

    :goto_0
    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mNavigationFlag:I

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeNavigationBarColor()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayout()V

    goto/16 :goto_3

    :cond_5
    const/16 v0, 0x404

    if-ne p1, v0, :cond_6

    const-string p1, "EVENT_VIDEO_MUSIC_MODE_STOP"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showBottomOperateBar(Z)V

    goto/16 :goto_3

    :cond_6
    const/16 v0, 0x47f

    if-ne p1, v0, :cond_7

    :try_start_0
    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsInitLayoutModelAndOttNull:Z

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initLayoutModel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    const-string p1, "onEventMainThread: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_7
    const/16 v0, 0x488

    if-ne p1, v0, :cond_8

    aget-object p1, p2, v2

    if-eqz p1, :cond_16

    instance-of p2, p1, Lcom/transsion/dbdata/beans/ThemeData;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->customTabIconPreload(Lcom/transsion/dbdata/beans/ThemeData;)V

    goto/16 :goto_3

    :cond_8
    const/16 v0, 0x495

    if-ne p1, v0, :cond_9

    aget-object p1, p2, v2

    if-eqz p1, :cond_16

    instance-of p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p2, :cond_16

    sget-object p2, Lmu3;->a:Lmu3;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Ls2c;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, v3, p1}, Lmu3;->k(Landroid/content/Context;ZLjava/util/List;)V

    goto/16 :goto_3

    :cond_9
    const/16 v0, 0x49d

    if-ne p1, v0, :cond_a

    const-string p1, "[VideoMiniBar]EVENT_KEY_LAUNCH_VIDEO_PLAYER_ACTIVITY_VALUE"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    if-eqz p2, :cond_16

    array-length p1, p2

    if-lez p1, :cond_16

    aget-object p1, p2, v2

    instance-of p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 p2, 0x0

    invoke-direct {p0, v2, p1, p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animMiniVideoPlayer(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_a
    const/16 v0, 0x49e

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_16

    array-length p1, p2

    if-lez p1, :cond_16

    aget-object p1, p2, v2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->shouldShowPlayerMiniBar()Z

    move-result p1

    if-nez p1, :cond_b

    const-string p0, "[VideoMiniBar]EVENT_KEY_VIDEO_MINI_BAR_SHOW ignored on OTT/hidden state"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->animBar(ZZ)V

    goto/16 :goto_3

    :cond_c
    const/16 v0, 0x4a1

    if-ne p1, v0, :cond_14

    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->f()I

    move-result p2

    if-eq p2, v3, :cond_13

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    const/4 v1, 0x3

    if-eq p2, v1, :cond_d

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result p1

    const-string p2, "mmkv_key_audio_is_migrate"

    if-eq p1, v3, :cond_10

    const-string v3, "mmkv_key_video_is_migrate"

    if-eq p1, v0, :cond_f

    if-eq p1, v1, :cond_e

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_key_all_migrate_retry_count"

    invoke-virtual {p1, v0, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_11

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->migrateDialog(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "mmkv_key_video_migrate_retry_count"

    invoke-virtual {p1, p2, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_11

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->migrateDialog(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_key_audio_migrate_retry_count"

    invoke-virtual {p1, v0, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_11

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->migrateDialog(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_11
    :goto_1
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationRetry:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    if-eqz p2, :cond_16

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationContent:Landroid/widget/TextView;

    sget p2, Lcom/transsion/magicmovie/R$string;->visha_fun_optimize_failed:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrationDialog:Lcom/transsion/widgetslib/dialog/d;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMigrateDialogContentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/dialog/d;->setView(Landroid/view/View;)V

    goto :goto_3

    :cond_12
    sget-object p1, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->forceReloadAll()V

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->migrateDialog(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    invoke-static {p0}, Let;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lv00;->b(Landroid/content/Context;)V

    goto :goto_3

    :cond_13
    invoke-direct {p0, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->migrateDialog(Z)V

    goto :goto_3

    :cond_14
    const/16 v0, 0x46c

    if-ne p1, v0, :cond_16

    sget-object p1, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;->DEEPLINK:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    invoke-virtual {p1, p0, p2, v2, v0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->h(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;)V

    goto :goto_3

    :cond_15
    :goto_2
    const-string p1, "[AudioMiniBar]EVENT_MUSIC_NONE,animMiniAudioPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showBottomOperateBar(Z)V

    :cond_16
    :goto_3
    return-void
.end method

.method public enterCloudUploadEditMode(ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->inflateUploadBottomView()V

    iput p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getBtnUploadView()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getBtnUploadView()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;

    invoke-direct {p2, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$h;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public enterEditMode(Z)V
    .locals 4

    .line 10
    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 11
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    return-void

    .line 12
    :cond_1
    sget-boolean v1, Lpp3;->w:Z

    if-nez v1, :cond_4

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->setVisibility(I)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->inflateOperationBar()V

    .line 15
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initShow(Z)V

    .line 16
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setListFlag(I)V

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveNavigationBarBottom()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyEditFootBarBottomInset(I)V

    .line 20
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    new-instance v0, Lf3c;

    invoke-direct {v0, p0}, Lf3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public enterEditMode(ZIZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(ZIZ)V

    .line 2
    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsEditMode:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 5
    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsEditMode:Z

    .line 7
    iput p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    .line 8
    iput-boolean p3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->enterEditMode(Z)V

    return-void
.end method

.method public finishSetWindowBackground()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->finishSetWindowBackground()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBlurView:Landroid/view/View;

    check-cast p0, Lcom/transsion/blur/ShapeBlurView;

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->callDraw()V

    :cond_0
    return-void
.end method

.method public getSearchFileView()Lcom/transsion/playercommon/widgets/SearchFileView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicmovie/R$id;->search_file_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/SearchFileView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setSearch()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSearchView:Lcom/transsion/playercommon/widgets/SearchFileView;

    return-object p0
.end method

.method public inflateOperationBar()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicmovie/R$id;->activity_bottom_edit_foot_bar_stub:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget-boolean v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cacheHideEnable:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setEnabled(IZ)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    const/4 v1, 0x3

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cacheHideEnable:Z

    invoke-virtual {v0, v1, v3}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setEnabled(IZ)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    new-instance v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$g;

    const-string v3, "VideoPlayerMain_Activity"

    invoke-direct {v1, p0, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$g;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setAnim(Z)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateEditFootOperationBarParams()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->resolveNavigationBarBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applyEditFootBarBottomInset(I)V

    :cond_0
    return-void
.end method

.method public inflateUploadBottomView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicmovie/R$id;->upload_bottom_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CloudUploadView;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mCloudUploadView:Lcom/transsion/playercommon/widgets/CloudUploadView;

    :cond_0
    return-void
.end method

.method public initData(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "VideoPlayerMain_Activity"

    const-string p1, "initData error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Lcom/transsion/magicmovie/R$id;->fragment_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFragmentContentLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/magicmovie/R$id;->container_operation_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/magicmovie/R$id;->mask_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMarkView:Landroid/view/View;

    new-instance v0, Ly3c;

    invoke-direct {v0}, Ly3c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/magicmovie/R$id;->bottom_player_bar_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget p1, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showPlayerMainFragment(I)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootBarBackground:I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initFootOperationBar()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initLayoutModel()V

    sget-boolean p1, Lpp3;->k:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasDownloadFragment:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->removeItemView(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg4c;

    invoke-direct {v0, p0}, Lg4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setMainTabIndex(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget v1, v0, Lcom/transsion/data/Repository;->mainTab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget p1, v0, Lcom/transsion/data/Repository;->mainTab:I

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->ensureDataPreloadForTab(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayoutScreenType(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initMainViewModel()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->listenEventKeyChange()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method public initNotify()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x47d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x47f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x488

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x495

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x49d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x49e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x4a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x46c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isHistoryEdit()Z
    .locals 2

    iget p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public notifyOnlineFragment()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v0, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->b1()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x4df

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getPlayerMainFragment()Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->startEditMode(ZIZ)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x4de

    if-ne p1, p2, :cond_1

    sget-boolean p1, Lpp3;->p:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHideFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_1

    const-string p1, "video"

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->x(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->fitSystemStatusBar()V

    return-void
.end method

.method public onBackNavigationStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePredictiveBackState()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mUpdateDialogShow:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->createUpdateDialog()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/privacy/MarkPointUtil;->j(Landroid/app/FragmentManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/privacy/MarkPointUtil;->v(Landroid/app/FragmentManager;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showGdprDialog()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->reCalcFootTabBarIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->updateState()V

    :cond_2
    invoke-static {p0}, Lcom/transsion/utils/a;->v(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayoutScreenType(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeFragmentContentLayoutBackground()V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestApplyInsetsSafe()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "onCreate"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataListModel:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    const-class v0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAudioDataListModel:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lpp3;->u:Z

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/sysbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->transparentNavigationBar()Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->init()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hideNavigationBar(Z)V

    :cond_2
    sget p1, Lcom/transsion/magicmovie/R$layout;->activity_local_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le p1, v3, :cond_3

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->installMainWindowInsetsListener()V

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    if-nez p1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v3, Lcom/transsion/playercommon/R$drawable;->os_window_background:I

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "setBackground failed"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mIsDelayRequestPermission:Z

    sget-object p1, Lw6c;->a:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    sget-object p1, Lw6c;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasDownloadFragment:Z

    sget-object p1, Lw6c;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-static {p0, p1, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OTT] the default position:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDefaultPosition:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", has online video fragment:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHasOnlineVideoFragment:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->inflatePlayerLayout()V

    invoke-static {}, Lxn9;->c()Lxn9;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkinChangeUtils:Lxn9;

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListener:Los0;

    invoke-virtual {p1, v3}, Lxn9;->f(Los0;)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkinChangeUtils:Lxn9;

    invoke-virtual {p1}, Lxn9;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFinishchangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->e()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v3, "yyyy-MM-dd"

    invoke-static {v3}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vishaStart"

    invoke-virtual {p1, v4, v3}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initTUpdate()V

    sget-boolean p1, Lpp3;->u:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->initDolbyView()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->createGDPR()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showUpdateDialog()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setNaviColor()V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleDeepLink(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v3, "show_full_screen_guide"

    invoke-virtual {p1, v3}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    new-instance v3, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$i;

    invoke-direct {v3, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$i;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {p1, p0, v3}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onResume: isMigrate = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/dbdata/utils/MigrationUtils;->k()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", checkOldDatabaseExists = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/dbdata/utils/MigrationUtils;->e()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/dbdata/utils/MigrationUtils;->k()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/transsion/dbdata/utils/MigrationUtils;->e()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->u(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x4a1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->releaseInAppBackCallback()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mReCreateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-static {v0, v3}, La64;->b(Landroidx/fragment/app/FragmentManager;[Lcom/transsion/playercommon/fragments/BaseFragment;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/a;->i(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSkinChangeUtils:Lxn9;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListener:Los0;

    invoke-virtual {v0, v3}, Lxn9;->e(Los0;)V

    :cond_1
    const-string v0, "audio"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    const-string v3, "audio_play_list_status"

    invoke-virtual {v0, v3, v2}, Lsg9;->n(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyHaveAudioRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingAudioCoverItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingHaveAudio:Ljava/lang/Boolean;

    invoke-static {}, Lo5b;->i()V

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object v0

    invoke-virtual {v0}, Lcl4;->c()V

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object v0

    invoke-virtual {v0}, Lcl4;->r()V

    invoke-static {}, Lcom/transsion/vishaads/datasource/AdsDataManager;->n()Lcom/transsion/vishaads/datasource/AdsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->A()V

    invoke-static {}, Lcom/just/agentweb/AgentWebUtils;->dismiss()V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFinishchangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->miniBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$o;)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFootOperationBar:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setOnHeadViewClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$p;)V

    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEjected unMountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestRefreshData()V

    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    const/16 v0, 0x4d7

    if-eqz p2, :cond_1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->A()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x4de

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m0()V

    goto :goto_0

    :cond_1
    const/16 p0, 0x4d6

    if-eq p1, p0, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onHeaderClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->switchTabItem(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeTabOperationBarItem(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/16 v1, 0x3e8

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleAppFootActionBarClick(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleAppFootActionBarClick(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->checkItemIndex(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    new-instance v3, Lb4c;

    invoke-direct {v3, p0}, Lb4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setOperateFinishListener(Lcom/transsion/playercommon/widgets/AppFootActionBar$c;)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    if-eq v0, v1, :cond_c

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v1, v0, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "bottom_delete_menu"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v0, "vd_mul_del_cl"

    invoke-static {v0, p1, p0}, Lkz5;->b(Ljava/lang/String;ZI)V

    goto/16 :goto_3

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lc4c;

    invoke-direct {v0}, Lc4c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    const-string v3, "list_flag"

    const-string v4, "data_list_ids"

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListBucket:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->g(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->h(Ljava/util/ArrayList;)V

    const-class p1, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListBucket:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->e(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->f(Ljava/util/ArrayList;)V

    const-class p1, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    const/16 p1, 0x4df

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    const-string p0, "vd_mul_addlist_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsVideo:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->onBottomHideMenuCLick()V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->onBottomFilterMenuClick()V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->isHistoryEdit()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x49f

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preShare(Z)V

    const-string p0, "vd_mul_share_cl"

    const-wide v2, 0xd91af27329L

    invoke-static {v1, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onMainTabSelected(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->ensureDataPreloadForTab(I)V

    return-void
.end method

.method public bridge synthetic onMoreClick()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$n;->onMoreClick()V

    return-void
.end method

.method public onMounted(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMounted mountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestRefreshData()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setSafeInsetBottom()V

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->applySafeInsetHorizontal(Landroid/view/WindowInsets;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestApplyInsetsSafe()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laf9;->e:J

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleDeepLink(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onPause()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cancelShowMvGuideTip()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingResumeAudioCoverUpdate:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mApplyPendingAudioCoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0}, Lt08;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->onResume()V

    const-string v0, "MainActivity onResume"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoPlayerMain_Activity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->installMainWindowInsetsListener()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/privacy/MarkPointUtil;->j(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onResume: hide because has been grant"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/privacy/MarkPointUtil;->v(Landroid/app/FragmentManager;)V

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPrivacyAgreed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsPrivacyEnable:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPrivacyAgreed:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->notifyOnlineFragment()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showTabFromRouter(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/transsion/utils/a;->v(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->hasAllVideoList:Z

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayoutScreenType(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeFragmentContentLayoutBackground()V

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestApplyInsetsSafe()V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updatePlayerMiniBarLayout()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mBottomPlayerLayout:Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;->updateState()V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingResumeAudioCoverUpdate:Z

    :goto_1
    invoke-static {}, Ldy0;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clipboard:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_7

    sget-object v1, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    invoke-virtual {v1, v0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;->CLIPBOARD:Lcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->h(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/cloud/share/KtShareLinkHandleManager$LinkSource;)V

    :cond_7
    const-string v0, "onback_from_play_video"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mIsDrawShadow:Z

    if-eqz v2, :cond_8

    return-void

    :cond_8
    invoke-static {p0}, Lcom/transsion/magicvideo/utils/GpReviewUtils;->g(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lb3c;

    invoke-direct {v1, p0}, Lb3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->updateLayoutScreenType(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setSearch()V

    return-void
.end method

.method public onSdSwap()V
    .locals 2

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "onSdSwap "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestRefreshData()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lb3c;

    invoke-direct {v1, p0}, Lb3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestMediaStoreScanIfNeeded()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->startOrStopMusicProgress(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cancelPendingMediaStoreScan()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mDebouncedRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStop()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->startOrStopMusicProgress(Z)V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onSystemUiVisibilityChange(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHaveNar:Z

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    return-void
.end method

.method public onUnMounted(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnMounted unMountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerMain_Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestRefreshData()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity onWindowFocusChanged, hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "APP_START"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cancelShowMvGuideTip()V

    return-void

    :cond_0
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showMvGuideTip(J)V

    iget-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingResumeAudioCoverUpdate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mPendingResumeAudioCoverUpdate:Z

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->requestBottomAudioCoverUpdate(Lcom/transsion/dbdata/beans/media/AudioItem;J)V

    :cond_1
    sget-boolean p0, Lpp3;->u:Z

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x498

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public preloadAllAudioDataList()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "preloadAllAudioDataList start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAudioDataListModel:Lcom/transsion/playercommon/audiomodel/AudioDataListModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->h()V

    :cond_0
    return-void
.end method

.method public preloadAllVideoDataList()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "VideoPlayerMain_Activity"

    const-string v1, "preloadAllVideoDataList start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataListModel:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->k()V

    :cond_0
    return-void
.end method

.method public selectItems(Ljava/util/ArrayList;ZZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->selectItems(Ljava/util/ArrayList;ZZ)V

    iget v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mListFlag:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSelectItems:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mAllSelected:Z

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mVideoDataList:Ljava/util/ArrayList;

    :goto_1
    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setAllEnable(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->I(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_3
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mEditFootOperationBar:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setEnabled(IZ)V

    iput-boolean p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->cacheHideEnable:Z

    :cond_0
    return-void
.end method

.method public setInConvertPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mInConvertPage:Z

    return-void
.end method

.method public setSafeInsetBottom()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mWindowInsets:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lhoc;->a()I

    move-result v2

    invoke-static {v0, v2}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mHaveNar:Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v3, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-direct {p0, v2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setPlayerMiniBarMarginBottom(Z)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->changeLightStatusNavigationBar(Z)V

    return-void
.end method

.method public showSearchFragment()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-direct {v0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public showTabFromRouter(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "from_router"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mbSelectedTabFromRouter:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTabFromRouter: mbSelectedTabFromRouter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mbSelectedTabFromRouter:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoPlayerMain_Activity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mbSelectedTabFromRouter:Z

    if-eqz v0, :cond_a

    const-string v0, "router_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getBottom_position()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTop_position()I

    move-result v4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_page()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getBottom_position()I

    move-result v0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTop_position()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_page()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    move v3, v0

    goto :goto_1

    :cond_2
    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/os/PersistableBundle;

    const-string v0, "router_data_bottom_position"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "router_data_top_position"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setEditModeFromEditSource()V

    invoke-static {}, Lsy5;->a()V

    const-string v3, "shortcut"

    iput-object v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getBottom_position()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTop_position()I

    move-result v4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_page()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getHintMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move v3, v1

    move v4, v3

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showTabFromRouter: bottomIndex "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "topIndex "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v2, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFromGuide:Z

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v2, v2, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setMainTabIndex(I)V

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v2, v2, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    instance-of v2, v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz v2, :cond_6

    invoke-static {v0}, La64;->l(Lcom/transsion/playercommon/fragments/BaseFragment;)V

    check-cast v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    :cond_6
    const-string v0, "com.transsion.magicshow.OPEN_AUDIO"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->r0()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->O()Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    :cond_7
    invoke-static {v3, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_8
    const-string v0, "appWidget"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ln3c;

    invoke-direct {v1, p0, p1}, Ln3c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string v0, "jump_to_specified_location"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "bottomIndex"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "topIndex"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "jump_from"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpTpLocation bottomIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",topIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMapFragment:Landroid/util/SparseArray;

    sget v3, Lcom/transsion/magicmovie/R$id;->nv_files:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object v3, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v3, v3, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->setMainTabIndex(I)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mMainViewModel:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    instance-of p0, v2, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    if-eqz p0, :cond_c

    invoke-static {v2}, La64;->l(Lcom/transsion/playercommon/fragments/BaseFragment;)V

    check-cast v2, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {v2, v0, v1, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public showUpdateDialog()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showNewFeatureDialog()V

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Le4c;

    invoke-direct {v1, p0}, Le4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lf4c;

    invoke-direct {v1, p0}, Lf4c;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public successWritePermissionOnce()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->successWritePermissionOnce()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mSuccessWritePermission:Z

    const-string p0, "VideoPlayerMain_Activity"

    const-string v0, "successWritePermissionOnce"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public triggerMenuSwitch(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->triggerMenuSwitch(I)V

    return-void
.end method
