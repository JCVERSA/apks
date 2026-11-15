.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/onlinevideo/playerdetailactivity"
.end annotation


# static fields
.field public static final INVALID_VIDEO_ID:I

.field private static final TAG:Ljava/lang/String;

.field public static pipInTime:J

.field public static pipStartTime:J


# instance fields
.field private final Interval:I

.field detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

.field episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

.field handler:Landroid/os/Handler;

.field intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field private volatile isEnterPip:Z

.field isFromLeaveHint:Z

.field private isNewIntentCalled:Z

.field private isPlay:Z

.field private isStopCalled:Z

.field isVarietyShow:Z

.field mAddIcon:Landroid/widget/ImageView;

.field mAddIconParent:Landroid/view/View;

.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field mBackIv:Landroid/widget/ImageView;

.field mBottomController:Landroid/view/ViewGroup;

.field mBufferIngTime:J

.field private mCategory:I

.field mChannel:J

.field private mChannelHeadContainer:Landroid/view/View;

.field private mChannelHeadIv:Landroid/widget/ImageView;

.field mChannelName:Ljava/lang/String;

.field private mChannelNameTv:Landroid/widget/TextView;

.field mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field private mCollectIv:Landroid/widget/ImageView;

.field mCoverX:Ljava/lang/String;

.field mCoverY:Ljava/lang/String;

.field mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

.field mDate:Landroid/widget/TextView;

.field mDateLine:Landroid/view/View;

.field mDateStr:Ljava/lang/String;

.field mDetailContainer:Landroid/view/ViewGroup;

.field private mDetailMoreLl:Landroid/view/View;

.field mDetailRoot:Landroidx/core/widget/NestedScrollView;

.field mDetailView:Landroid/widget/FrameLayout;

.field mEmptyView:Landroid/view/ViewGroup;

.field mEpisodeTip:Landroid/widget/TextView;

.field mEpisodesClose:Landroid/widget/ImageView;

.field mEpisodesContainer:Landroid/view/ViewGroup;

.field mEpisodesName:Ljava/lang/String;

.field mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

.field mEpisodesTip:Landroid/view/View;

.field private mEpisodesUpdateTv:Landroid/widget/TextView;

.field mExpanded:Z

.field private final mFitStatusTitle:[I

.field private mForcePlay:I

.field mFromCard:Ljava/lang/String;

.field private mFullScreenGuideCancelled:Z

.field mHaveAD:I

.field mHaveTrivia:Z

.field public mHistorySeek:Z

.field private mHistroyBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;"
        }
    .end annotation
.end field

.field mIntroContainer:Landroid/view/ViewGroup;

.field mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

.field mIsEnterPiped:Z

.field mIsFirst:Z

.field mIsFromLanuchIcon:Z

.field mIsFullScreen:Z

.field mIsHaveEpisodes:Z

.field mIsHavePrepared:Z

.field mIsHaveSeries:Z

.field public mIsLandMorePip:Z

.field private mIsLoading:Z

.field mIsMultiSeason:I

.field mIsMultiSerial:I

.field mIsNeedFit:Z

.field volatile mIsOver:Z

.field mIsPlaying:Z

.field mIsPort:Z

.field mIsRelated:I

.field mIsSynEpisode:Z

.field mIsVk:Z

.field mIsYoutube:Z

.field mKind:Ljava/lang/String;

.field mLastNetState:I

.field mLastNo:I

.field private mLastPlayState:I

.field mLastSeason:Ljava/lang/String;

.field private mLastSourId:Ljava/lang/String;

.field mLoaddingErrorLayer:Landroid/view/ViewGroup;

.field mLoadingLayer:Landroid/view/ViewGroup;

.field mLoadingTip:Landroid/widget/TextView;

.field mLockIv:Landroid/widget/ImageView;

.field mNetworkStatusCallback:Lvz6;

.field mNoNetLayer:Landroid/view/ViewGroup;

.field mOldPrice:Landroid/widget/TextView;

.field mOpenTipTv:Landroid/widget/TextView;

.field mPageDuration:J

.field mPageTime:J

.field mPayType:I

.field mPipView:Lo18;

.field mPlayFrom:I

.field private volatile mPlayPostion:J

.field mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

.field private mPortVideoHeight:I

.field mPromotion:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

.field mRecentPlayEvent:Ljava/lang/String;

.field mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

.field mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

.field mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecommendsTipTv:Landroid/widget/TextView;

.field mRedPoint:Landroid/view/View;

.field public mReplay:Z

.field mRequestId:Ljava/lang/String;

.field mRootView:Landroid/view/ViewGroup;

.field private mSerialId:J

.field mSerialSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSerials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation
.end field

.field mSeriesName:Ljava/lang/String;

.field mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mSourceId:Ljava/lang/String;

.field mSourceType:Ljava/lang/String;

.field mSoureFromType:I

.field mSurfaceContainer:Landroid/view/View;

.field mTag:Landroidx/recyclerview/widget/RecyclerView;

.field mTime:Landroid/widget/TextView;

.field mTimeLine:Landroid/view/View;

.field mTitleTv:Landroid/widget/TextView;

.field mTopicId:J

.field mTopicName:Ljava/lang/String;

.field mTopicSort:I

.field mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field mTriviaContainer:Landroid/view/ViewGroup;

.field private mTriviaLastSourId:Ljava/lang/String;

.field mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

.field mTriviaTip:Landroid/view/ViewGroup;

.field private mTrivias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;"
        }
    .end annotation
.end field

.field private mTvSmashiUpdateTime:Landroid/widget/TextView;

.field private mVideoId:J

.field private mVideoIntroLogoIv:Landroid/widget/ImageView;

.field mVideoLoadingTime:J

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field mVipOpenView:Landroid/view/View;

.field mVishaPlayerCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

.field private mVkCoverImage:Ljava/lang/String;

.field private mVkDescTv:Landroid/widget/TextView;

.field private mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

.field private mVkHeadContainer:Landroid/view/View;

.field private mVkHeadIv:Landroid/widget/ImageView;

.field private mVkId:Ljava/lang/String;

.field private mVkPageNo:I

.field mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

.field private mVkSourceImage:Ljava/lang/String;

.field private mVkSourceName:Ljava/lang/String;

.field private mVkSourceNameTv:Landroid/widget/TextView;

.field private mVkTitleTv:Landroid/widget/TextView;

.field private mVkVideoName:Ljava/lang/String;

.field private mYoutubeChannel:Ljava/lang/String;

.field private mYoutubeCover:Ljava/lang/String;

.field private mYoutubeCoverX:Ljava/lang/String;

.field private mYoutubeVideoName:Ljava/lang/String;

.field mbLive:Z

.field private mbPlayFromHistory:Z

.field private mbRequestVip:Z

.field private mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

.field private navBar:Landroid/view/View;

.field networkObserver:Lcom/transsion/utils/NetworkObserver;

.field private orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

.field private recommendInit:Z

.field recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

.field runnable:Ljava/lang/Runnable;

.field seriesId:J

.field sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

.field tempStopLeaveHint:Z

.field varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipInTime:J

    sput-wide v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    sget v0, Lcom/transsion/vishaplayersdk/R$string;->fit_crop:I

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->fit_screen:I

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->fit_stratch:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFitStatusTitle:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistorySeek:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLandMorePip:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isEnterPip:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isStopCalled:Z

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsSynEpisode:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateStr:Ljava/lang/String;

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mKind:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isNewIntentCalled:Z

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->handler:Landroid/os/Handler;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialSet:Ljava/util/Set;

    iput v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFirst:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHavePrepared:Z

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsEnterPiped:Z

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbPlayFromHistory:Z

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBufferIngTime:J

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mExpanded:Z

    iput v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mForcePlay:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->Interval:I

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkPageNo:I

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVishaPlayerCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNetworkStatusCallback:Lvz6;

    iput v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastPlayState:I

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onPictureInPictureModeChanged$42(Z)V

    return-void
.end method

.method public static bridge synthetic A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initHistory$1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic B1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->loadMoreVkRecommendData()V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateVipGuide$39()V

    return-void
.end method

.method public static bridge synthetic C1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPlayEventTime(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initVishaPlayer$30(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic D1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onMobileChangedRetryPlay()V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$6(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic E1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onNetworkStatusChanged(I)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onPictureInPictureModeChanged$40(Z)V

    return-void
.end method

.method public static bridge synthetic F1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->openVip()V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$20(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic G1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playNext()V

    return-void
.end method

.method public static synthetic H0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initHistory$2()V

    return-void
.end method

.method public static bridge synthetic H1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playPre()V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateSeries$18(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic I1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->shouldShowPlayListBtn()Z

    move-result p0

    return p0
.end method

.method public static synthetic J0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onPictureInPictureModeChanged$41()V

    return-void
.end method

.method public static bridge synthetic J1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showFullScreenGuide()V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$10(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic K1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic L0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$fitRoot$4()V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onPause$44()V

    return-void
.end method

.method public static synthetic N0()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$didReceivedNotification$45()V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$showPromotion$43(Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V

    return-void
.end method

.method public static synthetic P0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateTrivia$17(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q0()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$enterFullScreen$31()V

    return-void
.end method

.method public static synthetic R0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateEpisodes$15(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onNetworkStatusChanged$3(I)V

    return-void
.end method

.method public static synthetic U0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$23(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic V0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$showEpisodesExpand$35(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic W0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initVishaPlayer$26(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic X0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onNormalPlay$33(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$5(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateVipGuide$38(Z)V

    return-void
.end method

.method public static synthetic b1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$showTriviaExpand$36(Ljava/util/List;I)V

    return-void
.end method

.method private bindLoadingPlaceholder()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/onlinevideo/R$id;->loading_video_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/onlinevideo/R$id;->view_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->shouldSkipIntentTitleOnLoading()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindLoadingPlaceholder skipIntentTitle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intentTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private buildOttPlayTag()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ott_mgtv_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$onObservePlayDetailRequest$32(Ljava/lang/Integer;)V

    return-void
.end method

.method private cancelShowFullScreenGuide()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFullScreenGuideCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFullScreenGuideCancelled:Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ott_play_fullscreen_guide"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic d1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$25(Ljava/util/List;)V

    return-void
.end method

.method private disableNestedScrollForDetailRecyclerViews()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic e1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initVishaPlayer$27(Landroid/view/View;)V

    return-void
.end method

.method private enterFullScreen()V
    .locals 6

    invoke-static {}, Lf38;->c()Lf38;

    move-result-object v0

    invoke-virtual {v0}, Lf38;->b()Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf38;->c()Lf38;

    move-result-object v0

    invoke-virtual {v0}, Lf38;->b()Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->resolveByClick()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->handler:Landroid/os/Handler;

    new-instance v2, Le98;

    invoke-direct {v2}, Le98;-><init>()V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayPosition()I

    move-result v1

    :cond_1
    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v1, v2, v3, v4, v5}, Lxz5;->f(IJJ)V

    return-void
.end method

.method private exitOthersPip()V
    .locals 2

    sget-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    :cond_0
    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic f1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateEpisodes$16(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private fitRoot()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lc98;

    invoke-direct {v1, p0}, Lc98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private fixPipNavBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsEnterPiped:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->navBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Le80;->c()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->navBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static synthetic g1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$setVkUI$47(Landroid/view/View;)V

    return-void
.end method

.method private getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    return-object p0
.end method

.method private getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserOpenID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitTokenType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPalmToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0"

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lkfc;->m(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitVIP(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getVideoId()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getVideoSerials()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_5

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-object v2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :cond_5
    :goto_4
    return-object v2
.end method

.method private getVideoUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static synthetic h1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$showEpisodesExpand$34(Ljava/util/List;I)V

    return-void
.end method

.method private initHistory()V
    .locals 10

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initHistory, mVideoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSerialId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mVideoUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lv98;

    invoke-direct {v1, p0}, Lv98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFromLanuchIcon:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->y(Landroid/content/Context;JZ)V

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v8, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayFrom:I

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v9

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->w(Landroid/content/Context;JIZ)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v0, Lw98;

    invoke-direct {v0, p0}, Lw98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private initPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "detailPlayer.getFullWindowPlayer() != null"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->setSerialTitle(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->setSerialId(J)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->setSourceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->setVideoUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initVishaPlayer()V

    :goto_0
    return-void
.end method

.method private initScrollListener()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailRoot:Landroidx/core/widget/NestedScrollView;

    new-instance v1, La98;

    invoke-direct {v1, p0}, La98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$i;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$i;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$j;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$j;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private initThumb()V
    .locals 3

    invoke-static {p0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/onlinevideo/R$dimen;->seekbar_custom_thumb_offset:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setCustomThumb(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method private initVishaPlayer()V
    .locals 7

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "initVishaPlayer"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-nez v1, :cond_0

    const-string p0, "play error: player not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->registerNetStatus(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->resolveNormalVideoUI()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbLive:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_VOD:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setRotateViewAuto(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setLockLand(Z)V

    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->buildOttPlayTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayTag(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    invoke-virtual {v0, v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSeekOnStart(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoId()J

    move-result-wide v5

    goto :goto_2

    :cond_3
    move-wide v5, v3

    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setSerialID(J)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setHardwareAccelerated(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVishaPlayerCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    new-instance v1, Ln98;

    invoke-direct {v1, p0}, Ln98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockClickListener(Lcom/transsion/vishaplayersdk/gsyplayer/listener/LockClickListener;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lo98;

    invoke-direct {v1, p0}, Lo98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    new-instance v1, Lq98;

    invoke-direct {v1, p0}, Lq98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setPlayNextListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    new-instance v1, Lr98;

    invoke-direct {v1, p0}, Lr98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setPlayListListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    new-instance v1, Ls98;

    invoke-direct {v1, p0}, Ls98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setPipListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static synthetic j1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$22(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic l1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLoading:Z

    return p0
.end method

.method private static synthetic lambda$didReceivedNotification$45()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    return-void
.end method

.method private static synthetic lambda$enterFullScreen$31()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    return-void
.end method

.method private synthetic lambda$fitRoot$4()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {}, Le80;->e()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v0

    if-le v2, v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsNeedFit:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Le80;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initHistory$1(Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHistoryBeansByVid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$initHistory$2()V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b()Lzf7;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v1}, Lzf7;->getHistoryUserBeanBySourceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    :cond_1
    return-void
.end method

.method private synthetic lambda$initScrollListener$46(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->cancelShowFullScreenGuide()V

    return-void
.end method

.method private synthetic lambda$initView$10(Ljava/lang/String;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    iget-wide v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "videoname"

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    const-string v4, "vd_ott_detail_addtohome_cl"

    const-string v5, "videoID"

    invoke-static {v4, v5, v1, v2, v3}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p0 .. p1}, Lzg9;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$string;->has_cut_ready:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const-string v2, "addShortCut,sourceid:"

    const-class v3, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iget-wide v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-static {v0, v3, v1, v4, v5}, Lzg9;->h(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;J)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v4, "is_ott_bubble_showed"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iput-boolean v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->tempStopLeaveHint:Z

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRedPoint:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    const-wide/16 v4, 0x3e8

    if-eqz v1, :cond_4

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v4

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-static {v4}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/4 v12, 0x0

    move-object v6, v1

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v17}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lzg9;->j(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)V

    goto :goto_2

    :cond_4
    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iget-wide v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-static {v0, v3, v1, v4, v5}, Lzg9;->h(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;J)V

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v4

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    const/4 v12, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lzg9;->j(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$initView$11(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->retry()V

    return-void
.end method

.method private synthetic lambda$initView$12(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->retry()V

    return-void
.end method

.method private synthetic lambda$initView$13(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPromotion:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getVipId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPromotion:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getVipCardId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "VIP"

    const-string v3, "ott_promotion"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/web/VipWebActivity;->K0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->openVip()V

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-wide p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lwz5;->B(JJZ)V

    return-void
.end method

.method private synthetic lambda$initView$5(Ljava/lang/String;Landroid/view/View;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v6, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    iget-object v12, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v6, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    iget-object v12, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    iget-object v15, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-static {v3}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-wide v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    if-nez v7, :cond_2

    const-string v7, ""

    :goto_0
    move-object/from16 v20, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :goto_1
    iget v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSoureFromType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCoverX:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCoverY:Ljava/lang/String;

    iget v10, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPayType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long v26, v10, v3

    iget-wide v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    move-object/from16 v17, v2

    move-wide/from16 v18, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-wide/from16 v28, v3

    invoke-direct/range {v17 .. v29}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JJ)V

    :goto_2
    iget-wide v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    iget-wide v6, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannel:J

    iget-wide v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->f(Ljava/lang/String;)Z

    move-result v10

    const/4 v3, 0x0

    invoke-static/range {v3 .. v10}, Lwz5;->p(IJJJZ)V

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCollectIv:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1, v3}, Lsf7;->a(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$initView$6(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    const-string p1, "eixt"

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {p1, v0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "btn_back"

    invoke-static {p1}, Lwz5;->N(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$7(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showTriviaExpand()V

    invoke-static {}, Lwz5;->i0()V

    return-void
.end method

.method private synthetic lambda$initView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showEpisodesExpand(Z)V

    invoke-static {}, Lwz5;->l()V

    invoke-static {}, Lwz5;->Y()V

    return-void
.end method

.method private synthetic lambda$initView$9(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showEpisodesExpand(Z)V

    invoke-static {}, Lwz5;->l()V

    invoke-static {}, Lwz5;->Y()V

    return-void
.end method

.method private synthetic lambda$initVishaPlayer$26(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initVishaPlayer$27(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->enterFullScreen()V

    return-void
.end method

.method private synthetic lambda$initVishaPlayer$28(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playNext()V

    return-void
.end method

.method private synthetic lambda$initVishaPlayer$29(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showPlayList()V

    return-void
.end method

.method private synthetic lambda$initVishaPlayer$30(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->updateLandStatusWhenPip()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->enterPip()V

    return-void
.end method

.method private synthetic lambda$onNetworkStatusChanged$3(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastPlayState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onWiFiNetWorkStateChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onMobileNetworkChanged()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onNetworkDisconnected()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNormalPlay$33(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "Player:get video info end"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateUI(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get video info failed videoid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, ""

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const-wide/32 v0, 0x895443

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x40a

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onObservePlayDetailRequest$32(Ljava/lang/Integer;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoaddingErrorLayer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lzg9;->q(Landroid/app/Activity;)V

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v0, v1}, Lzg9;->i(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lzg9;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "network"

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {p1, v0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-wide/32 v7, 0x895442

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNoNetLayer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lwz5;->A()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoaddingErrorLayer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-wide/32 v0, 0x895444

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onPause$44()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsEnterPiped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDurationPause()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPictureInPictureModeChanged$40(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBackIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBottomController:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isVkVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$id;->surface_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/transsion/onlinevideo/R$id;->surface_container:I

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_4

    move v4, v1

    goto :goto_5

    :cond_4
    move v4, v2

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/transsion/onlinevideo/R$id;->layout_bottom_container:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    move v4, v1

    goto :goto_7

    :cond_7
    move v4, v2

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method private synthetic lambda$onPictureInPictureModeChanged$41()V
    .locals 1

    invoke-static {p0}, Le80;->g(Landroid/app/Activity;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPictureInPictureModeChanged$42(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    sget p1, Lcom/transsion/onlinevideo/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$parseIntent$0(Landroid/os/PersistableBundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "router_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$setVkUI$47(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$showEpisodesExpand$34(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setExpand(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$showEpisodesExpand$35(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setExpand(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$showPlayList$37(Ljava/util/List;I)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItemBoth(J)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSeason:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p0, ""

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeasonName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lwz5;->R(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showPromotion$43(Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPromotion:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOpenTipTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getPromotionPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOpenTipTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private synthetic lambda$showTriviaExpand$36(Ljava/util/List;I)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSeason:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p0, ""

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeasonName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lwz5;->R(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateEpisodes$15(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Ljp8;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideoItem(Ljava/util/List;ZI)V

    return-void
.end method

.method private synthetic lambda$updateEpisodes$16(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Ljp8;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideoItem(Ljava/util/List;ZI)V

    return-void
.end method

.method private synthetic lambda$updateIntro$14(Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/Tag;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTopicId()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_id(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic_name(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagType()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setSourceType(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagId()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setChannel(J)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getSourceType()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setBottom_position(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getName()Ljava/lang/String;

    move-result-object p4

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->getTagId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "vd_ott_detail_label_cl"

    invoke-static {v2, p4, v0, v1, p1}, Lwz5;->g0(Ljava/lang/String;Ljava/lang/String;JI)V

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string p2, "vd_ott_label_cl"

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateRecommend$19(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p3, p2}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->c(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic lambda$updateRecommend$20(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend(Ljava/util/List;ZZ)V

    return-void
.end method

.method private static synthetic lambda$updateRecommend$21()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateRecommend$22(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p3, p2}, Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;->c(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic lambda$updateRecommend$23(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend(Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateRecommend$24(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-virtual {p1, p0, p3}, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->c(Landroid/content/Context;I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->stop()V

    return-void
.end method

.method private synthetic lambda$updateRecommend$25(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend(Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateSeries$18(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->switchSession(ZI)V

    return-void
.end method

.method private synthetic lambda$updateTrivia$17(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Ljp8;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideoItem(Ljava/util/List;ZI)V

    return-void
.end method

.method private synthetic lambda$updateVipGuide$38(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showVipGuide(Z)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$updateVipGuide$39()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkfc;->m(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isVip()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lx98;

    invoke-direct {v1, p0, v0}, Lx98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMoreVkRecommendData()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLoading:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-static {v1}, Ldt7;->j(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkPageNo:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkPageNo:I

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSourId:Ljava/lang/String;

    return-object p0
.end method

.method private markDuration()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->timeCount()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->timeDowith()V

    return-void
.end method

.method private markDurationPause()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    :cond_4
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->timeDowith()V

    return-void
.end method

.method private markPlayEventTime(Ljava/lang/String;II)V
    .locals 9

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-wide v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    sub-long/2addr v2, v4

    sget-wide v5, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v7, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    move-object v0, p1

    move-wide v1, v2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lwz5;->P(Ljava/lang/String;JIIJJ)V

    return-void
.end method

.method private markPlayEventTimeInit(Ljava/lang/String;II)V
    .locals 9

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v4

    iget-wide v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mInitStartTime:J

    sub-long/2addr v2, v4

    sget-wide v5, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v7, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    move-object v0, p1

    move-wide v1, v2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lwz5;->P(Ljava/lang/String;JIIJJ)V

    return-void
.end method

.method private markPreviewDuration()V
    .locals 10

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPayType:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    goto :goto_0

    :goto_1
    sget-wide v8, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    invoke-static/range {v4 .. v9}, Le06;->c(Ljava/lang/String;JLjava/lang/String;J)V

    sput-wide v2, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    :cond_1
    return-void
.end method

.method public static bridge synthetic n1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    return-wide v0
.end method

.method public static bridge synthetic o1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    return-object p0
.end method

.method private onMobileChangedRetryPlay()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onYoutubePlay()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->netWorkErrorLogic()V

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastPlayState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->autoPlay()V

    :goto_1
    return-void
.end method

.method private onMobileNetworkChanged()V
    .locals 3

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onMobileNetworkChanged: wifi is connected"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNoNetLayer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->netWorkErrorLogic()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastPlayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onNetworkDisconnected()V
    .locals 8

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onNetworkDisconnected,but network is isAvailable,no need to deal"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNetState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v1

    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastPlayState:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->pause()V

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNoNetLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lwz5;->A()V

    :cond_3
    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-wide/32 v5, 0x895442

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget-object v7, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {v0, p0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onNetworkStatusChanged(I)V
    .locals 1

    new-instance v0, Lt88;

    invoke-direct {v0, p0, p1}, Lt88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNormalPlay()V
    .locals 3

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player:get video info start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$string;->tip_no_net:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lma8;

    invoke-direct {v1, p0}, Lma8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method private onObservePlayDetailRequest()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ll98;

    invoke-direct {v1, p0}, Ll98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private onVkPlay()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkInitMute:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkTouchCheck:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initPlayer()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setVkUI()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onWiFiNetWorkStateChanged()V
    .locals 4

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNetState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNetState:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNoNetLayer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onMobileChangedRetryPlay()V

    :cond_0
    return-void
.end method

.method private onYoutubePlay()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initPlayer()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setYoutubeUI()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private openVip()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbRequestVip:Z

    const-string v0, "playdetail"

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/membership/UserCenterActivity;->T0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$13(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic p1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaLastSourId:Ljava/lang/String;

    return-object p0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendInit:Z

    const-string v2, "router_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v2, p1, Landroid/os/PersistableBundle;

    const-class v3, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    const-string v4, "4"

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFromLanuchIcon:Z

    check-cast p1, Landroid/os/PersistableBundle;

    const-string v2, "is_youtube"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const-string v2, "is_vk"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    iget-boolean v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const-string v6, "sid"

    if-eqz v5, :cond_2

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    const-string v2, "youtube_channel_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    const-string v2, "youtube_channel_cover"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    const-string v2, "youtube_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    const-string v2, "youtube_cover"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    sget-object v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mYoutubeChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mYoutubeCover = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mYoutubeVideoName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mYoutubeCoverX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    if-eqz v2, :cond_3

    const-string v2, "vk_title_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    const-string v2, "vk_source_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    const-string v2, "vk_source_image"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    const-string v2, "vk_cover_image"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    const-string v2, "vk_bean"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVideoLink()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    const-string v2, "vk_id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    const-string v2, "5"

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    sget-object v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVkSourceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVkSourceImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVkCoverImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVkVideoName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVideoUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mVkFeedStreamBean = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v2, "vid"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-string v2, "serid"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    const-string v2, "rel"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    sget-object v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIntent: mVideoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSerialId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSourceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsRelated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayFrom:I

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbPlayFromHistory:Z

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isNewIntentCalled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lm98;

    invoke-direct {v1, p0, p1}, Lm98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/os/PersistableBundle;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFromLanuchIcon:Z

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    sget-object p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseIntent: intentData = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isYoutube()I

    move-result p1

    if-ne p1, v0, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    move p1, v0

    goto :goto_4

    :cond_6
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVkId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSoureFromType:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getFrom_card()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_id()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_sort()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicSort:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getIs_related()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannel:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getChannel_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTopic_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getData_type()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayFrom:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_force_play()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mForcePlay:I

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz p1, :cond_7

    iput-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getYoutubeChannel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getYoutubeChannelCover()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getYoutubeVideoName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getYoutubeCover()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    :cond_7
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTypeBeanJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ldt7;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceImage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceName()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    :cond_9
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isNotPlayFromHistory()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbPlayFromHistory:Z

    :cond_a
    iget p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mForcePlay:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_serial_id()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->intentData:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRequestId:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string v2, "parseIntent null"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_7
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    iput-boolean v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    iput-boolean v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    :cond_f
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    const-string v2, "allow_mobile_data_play"

    invoke-static {p0, v2, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v2, "moble_remind"

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    iput-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    return-void
.end method

.method private playNext()V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSerial(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v1

    sput-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synEpisodeIndex()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    goto/16 :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_4

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    add-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItemBoth(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method private playPre()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    sput-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synEpisodeIndex()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget p1, Lcom/transsion/onlinevideo/R$string;->tip_no_net:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "serieschange"

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {v0, v2}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lwz5;->w()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setTime()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaLastSourId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSourId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v5

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoId()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;JJZLjava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-nez p1, :cond_7

    :cond_4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v4, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    invoke-virtual {p1}, Lgec;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object p1

    invoke-virtual {p1}, Lgec;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez p1, :cond_5

    const-string p1, "0"

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkfc;->m(I)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUserInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    :cond_7
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVipGuide()V

    return-void
.end method

.method private playVideoItem(Ljava/util/List;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;ZI)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->tip_no_net:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_7

    if-gez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-eq v0, v1, :cond_3

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-eq v0, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, p3, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItem(ZIZ)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-ne v0, v1, :cond_6

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPayType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result v1

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNo:I

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static/range {v1 .. v7}, Lwz5;->k(IIJJLjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p0, "serialcl"

    invoke-static {p0}, Lwz5;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0, p2}, Lwz5;->h0(JLjava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initVishaPlayer$29(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic q1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    return-wide v0
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initView$8(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic r1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    return-object p0
.end method

.method private resolveNormalVideoUI()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private retry()V
    .locals 1

    invoke-static {}, Lwz5;->v()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initData()V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/onlinevideo/R$string;->tip_no_net:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$19(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic s1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    return-object p0
.end method

.method private savePlayHistory()V
    .locals 49

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-wide v5, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v5, v6}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSerial(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSeason:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result v5

    iput v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNo:I

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v14, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoId()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v17

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v19

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getCoverX()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v22

    if-nez v2, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v3, v2

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v24

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v25

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    move-object/from16 v27, v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPlayLet()I

    move-result v28

    move-object v5, v14

    move-object v1, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-wide/from16 v22, v3

    invoke-direct/range {v5 .. v28}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>(JJJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)V

    iget-wide v2, v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a0(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->H(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPreviewDuration()V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v2

    :cond_b
    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v4, v3

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-long v6, v3

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v17

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v19

    if-nez v2, :cond_c

    const-wide/16 v21, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v21, v2

    :goto_5
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-static {v2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/4 v12, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v24}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    int-to-long v5, v5

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCoverX:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v43

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v45

    if-nez v2, :cond_e

    const-wide/16 v47, 0x0

    goto :goto_6

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v12, v2

    move-wide/from16 v47, v12

    :goto_6
    const/16 v38, 0x1

    move-object/from16 v29, v1

    move-wide/from16 v30, v3

    move-wide/from16 v32, v5

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v11

    invoke-direct/range {v29 .. v48}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJJ)V

    :goto_7
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelViewModel:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->H(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    :cond_f
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v6

    iget-wide v6, v6, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    :cond_10
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPreviewDuration()V

    return-void
.end method

.method private setExpand(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItemBoth(J)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->playVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSeason:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p0, ""

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeasonName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lwz5;->R(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTime()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {}, Lf38;->c()Lf38;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getDuration()I

    move-result v2

    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lf38;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    if-eq v2, v4, :cond_2

    :cond_1
    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDate:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v0, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateLine:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTime:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v7

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTimeLine:Landroid/view/View;

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v5, v7

    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    if-ne v0, v4, :cond_8

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    if-ne v0, v3, :cond_9

    sget v0, Lcom/transsion/onlinevideo/R$string;->video_category_variety:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mKind:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_6
    return-void
.end method

.method private setVkUI()V
    .locals 7

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkHeadContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_desc:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkDescTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getViews()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getLikes()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCreated()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Ldt7;->g(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkHeadContainer:Landroid/view/View;

    new-instance v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$a;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_head:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkHeadIv:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_avator_default:I

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkHeadIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget v0, Lcom/transsion/onlinevideo/R$id;->vk_source_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceNameTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->lay_tag_flow:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCollectIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAddIconParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaTip:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsTipTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsTipTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsTipTv:Landroid/widget/TextView;

    new-instance v2, Lna8;

    invoke-direct {v2, p0}, Lna8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->lay_video_info:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v1

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    const-string v3, "5"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lwz5;->j0(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setYoutubeUI()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->youtube_channel_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelNameTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->youtube_head:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelHeadIv:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->youtube_ctontainer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelHeadContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeCover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_avator_default:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelHeadIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mYoutubeVideoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->lay_tag_flow:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaTip:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldShowPlayListBtn()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private shouldSkipIntentTitleOnLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "external_deeplink"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showEpisodesExpand(Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    const-string v0, "EpisodesWithSeriesExpandDialog"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Lw88;

    invoke-direct {v1, p0}, Lw88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->M(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog$a;)Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Lx88;

    invoke-direct {v1, p0}, Lx88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-static {p1, v1}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->K(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;)Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showFullScreenGuide()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkfc;->m(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isVip()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-static {p0}, Lc07;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mExpanded:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ott_play_fullscreen_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private showPlayList()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    const-string v1, "tvdrama"

    const-string v2, "movie&variety"

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lwz5;->Q(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    if-eqz v0, :cond_3

    move-object v1, v2

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lwz5;->Q(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v2

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    new-instance v0, Lz88;

    invoke-direct {v0, p0}, Lz88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-static {v1, v3, v0}, Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;->L(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;ZLcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog$a;)Lcom/transsion/onlinevideo/widgets/dialog/EpisodesDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "EpisodesWithSeriesExpandDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showPromotion(I)V
    .locals 3

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    move-result-object v0

    new-instance v1, Lb98;

    invoke-direct {v1, p0}, Lb98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->f(Landroid/content/Context;IILli9;)V

    return-void
.end method

.method private showTriviaExpand()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Lu88;

    invoke-direct {v1, p0}, Lu88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->I(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;)Lcom/transsion/onlinevideo/mangotv/TriviaDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "trivia"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showVipGuide(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, -0x3da80000    # -54.0f

    invoke-static {v0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-int v0, v0

    int-to-float v2, v0

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "translationY"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private switchSession(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const-string p0, "seasoncl"

    invoke-static {p0}, Lwz5;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Lwz5;->o(J)V

    :goto_1
    return-void
.end method

.method private synCurrentVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCover()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveEpisodes:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveTrivia:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsMultiSeason:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsMultiSerial:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    iget p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mForcePlay:I

    const-wide/16 v3, 0x0

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbPlayFromHistory:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFromLanuchIcon:Z

    if-eqz p1, :cond_9

    :cond_6
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synCurrentVideo: mHistroyBeans.lastPos = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v3, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    iput-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    iput-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistroyBeans:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    iput-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-static {v3, v4}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSerial(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result p1

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v0

    goto :goto_6

    :cond_7
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    :goto_6
    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object p1

    :goto_7
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    goto/16 :goto_e

    :cond_9
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_a

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    :cond_a
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz p1, :cond_b

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object p1

    goto :goto_8

    :cond_b
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getVideoSerials()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    goto/16 :goto_e

    :cond_c
    iput v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mForcePlay:I

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_d

    iput-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    :cond_d
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz p1, :cond_e

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    invoke-static {v5, v6}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object p1

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v0, v5, v3

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    move p1, v1

    :goto_a
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    goto :goto_b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    if-nez v2, :cond_11

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :cond_11
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    move p1, v1

    :goto_c
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-object v2, p1

    goto :goto_d

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    if-nez v2, :cond_14

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSeriesId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    iput-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :cond_15
    :goto_e
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoUrl:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    sput-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    :cond_16
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVipGuide()V

    return-void
.end method

.method private synEpisodeIndex()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    sget-wide v4, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-direct {p0, v2, v3, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItem(ZIZ)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-eq v0, v1, :cond_3

    move v2, v1

    :cond_3
    invoke-direct {p0, v1, v3, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItem(ZIZ)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method private synPlayItem(ZIZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    if-nez p3, :cond_3

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_3
    iget-boolean p3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveTrivia:Z

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synPlayItemBoth(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->switchSession(ZI)V

    invoke-direct {p0, v1, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->switchSession(ZI)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSeriesName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synEpisodeIndex()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synEpisodeIndex()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synPreNextBtnStatus()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getEpisodes(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSourId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastSourId:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaLastSourId:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initScrollListener$46(Landroidx/core/widget/NestedScrollView;IIII)V

    return-void
.end method

.method public static bridge synthetic t1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    return-object p0
.end method

.method private timeCount()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v3

    iget-wide v3, v3, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v2

    iget-wide v2, v2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    :cond_1
    return-void
.end method

.method private timeDowith()V
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v7

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-wide v5, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-wide v7, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    sget-wide v9, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipInTime:J

    sget-wide v11, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-wide v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannel:J

    iget-wide v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesName:Ljava/lang/String;

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicName:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannelName:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRequestId:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    move-object/from16 v24, v1

    goto :goto_1

    :cond_1
    const/16 v24, 0x0

    :goto_1
    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    invoke-static/range {v5 .. v24}, Lwz5;->S(JJJLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "vd_ott_video_duration"

    invoke-static {v2, v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->markAlgorithmRecommend(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemDuration:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-wide v2, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateIntro$14(Lcom/transsion/onlinevideo/adapter/TagAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic u1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    return-object p0
.end method

.method private updateEpisodes()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveEpisodes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isVarietyShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->varietyShowAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v1, Lp98;

    invoke-direct {v1, p0}, Lp98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-direct {v0, p0, v1}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->episodesAdapter:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    new-instance v1, Laa8;

    invoke-direct {v1, p0}, Laa8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :goto_0
    return-void
.end method

.method private updateIntro(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches",
            "StringFormatInvalid"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateStr:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getKind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mKind:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    sget v3, Lcom/transsion/onlinevideo/R$id;->lay_tag_flow:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_4

    const-string v0, "vd_ott_detail_label_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/TagAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/TagAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTag:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTag:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ly88;

    invoke-direct {v3, p0, v0}, Ly88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/transsion/onlinevideo/adapter/TagAdapter;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v3

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesUpdateTv:Landroid/widget/TextView;

    sget v3, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_episodes_update:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateSerialNo()I

    move-result v3

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesUpdateTv:Landroid/widget/TextView;

    sget v3, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_episodes_all:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesUpdateTv:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateRecommend()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->loadMoreVkRecommendData()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->g(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;JLjava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend(Ljava/lang/String;)V

    return-void
.end method

.method private updateRecommend(Ljava/lang/String;)V
    .locals 6

    .line 7
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isNewIntentCalled:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->fixPipNavBar()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const/high16 v2, 0x41980000    # 19.0f

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 11
    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v2}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 12
    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 14
    new-instance p1, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-direct {p1}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    .line 15
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    new-instance v0, Ld98;

    invoke-direct {v0, p0}, Ld98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    new-instance v0, Lf98;

    invoke-direct {v0, p0}, Lf98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 19
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_6

    .line 20
    new-instance p1, Luf7;

    invoke-direct {p1, p0}, Luf7;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    .line 22
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 23
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    .line 24
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 25
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    new-instance v0, Lg98;

    invoke-direct {v0}, Lg98;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 26
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$e;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 29
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lr16;->d(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    new-instance v0, Lh98;

    invoke-direct {v0, p0}, Lh98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    new-instance v0, Li98;

    invoke-direct {v0, p0}, Li98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 32
    :cond_6
    new-instance v0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->q:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->d(Z)V

    .line 35
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;->g(Z)V

    .line 36
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    new-instance v2, Lj98;

    invoke-direct {v2, p0}, Lj98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lr16;->d(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v2, :cond_7

    goto :goto_5

    .line 39
    :cond_7
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_4

    :cond_8
    const/4 p1, 0x3

    :goto_4
    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_6

    .line 40
    :cond_9
    :goto_5
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, p1

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$f;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$f;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 43
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    new-instance v0, Lk98;

    invoke-direct {v0, p0}, Lk98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateRecommend(Ljava/util/List;ZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsTipTv:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 46
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendYoutubeAdapter:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_4

    :cond_2
    if-eqz p3, :cond_5

    .line 47
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLoading:Z

    .line 48
    iget-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendInit:Z

    if-eqz p2, :cond_3

    .line 49
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendInit:Z

    .line 50
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_2

    .line 51
    :cond_3
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 52
    :goto_2
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkRecommendAdapter:Lcom/transsion/onlinevideo/adapter/VkRecommendAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 53
    sget-object p2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecommend recommendInit : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendInit:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",haveRecommend:"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 54
    :cond_5
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_4
    return-void
.end method

.method private updateSeries(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHaveSeries:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSeriesId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSeries(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    new-instance v0, Lt98;

    invoke-direct {v0, p0}, Lt98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->sessionAdapter:Lcom/transsion/onlinevideo/adapter/SessionAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method private updateTrivia()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveTrivia:Z

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaTip:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveTrivia:Z

    if-eqz v2, :cond_2

    move v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveTrivia:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lwz5;->i0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTrivias:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaAdapter:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v1, Loa8;

    invoke-direct {v1, p0}, Loa8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_3
    return-void
.end method

.method private updateVideoDetailUI(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoIntroLogoIv:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isMgTVVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showPromotion(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoIntroLogoIv:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_mg_logo:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showPromotion(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoIntroLogoIv:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_smashi_logo:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isMgTVVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showPromotion(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showPromotion(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTvSmashiUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTvSmashiUpdateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTvSmashiUpdateTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getUpdateTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailMoreLl:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTvSmashiUpdateTime:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateVipGuide()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lv88;

    invoke-direct {v1, p0}, Lv88;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$24(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic v1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$initVishaPlayer$28(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic w1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x0()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$updateRecommend$21()V

    return-void
.end method

.method public static bridge synthetic x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$showPlayList$37(Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic y1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isPlay:Z

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->lambda$parseIntent$0(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic z1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->fitRoot()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, -0x1

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPreviewDuration()V

    goto/16 :goto_3

    :sswitch_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aget-object p0, p2, v3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, v4, v5, v1, p0}, Le06;->b(Ljava/lang/String;JLjava/lang/String;Z)V

    goto/16 :goto_3

    :sswitch_2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    goto/16 :goto_3

    :sswitch_3
    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-wide v4, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPauseTime:J

    sub-long v4, p0, v4

    invoke-static/range {v0 .. v5}, Lwz5;->D(JJJ)V

    goto/16 :goto_3

    :sswitch_4
    sget p1, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->f(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    const-string p0, "ott_subtitle"

    invoke-static {p0}, Lez5;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_5
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mExpanded:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->cancelShowFullScreenGuide()V

    goto/16 :goto_3

    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    goto/16 :goto_3

    :sswitch_7
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->showTextToast(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :sswitch_8
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    aget-object p1, p2, v3

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p1

    :goto_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    goto/16 :goto_3

    :sswitch_9
    const-string p0, "vd_ott_buffering_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_a
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBufferIngTime:J

    :cond_3
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_9

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBufferIngTime:J

    sub-long v4, p1, v4

    invoke-static/range {v0 .. v5}, Lwz5;->e(JJJ)V

    goto/16 :goto_3

    :sswitch_b
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVipGuide()V

    goto/16 :goto_3

    :sswitch_c
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isEnterPip:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :sswitch_d
    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mExpanded:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showFullScreenGuide()V

    goto/16 :goto_3

    :sswitch_e
    sget-wide v4, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    aget-object p1, p2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lwz5;->M(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "playerror"

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {p1, p0}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_f
    sget-wide p1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v1, p1, p2, v2, v3}, Lwz5;->y(Ljava/lang/String;JJ)V

    goto/16 :goto_3

    :sswitch_10
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    goto/16 :goto_3

    :sswitch_11
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    goto/16 :goto_3

    :sswitch_12
    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    const-string p1, "vd_sdk_adendduration"

    invoke-direct {p0, p1, v2, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPlayEventTime(Ljava/lang/String;II)V

    goto/16 :goto_3

    :sswitch_13
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setBottomVisible(Z)V

    iput v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    const-string p1, "vd_sdk_adstartduration"

    invoke-direct {p0, p1, v2, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPlayEventTime(Ljava/lang/String;II)V

    goto/16 :goto_3

    :sswitch_14
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "vd_sdk_playercore"

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPlayEventTimeInit(Ljava/lang/String;II)V

    goto/16 :goto_3

    :sswitch_15
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    goto/16 :goto_3

    :sswitch_16
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Ly98;

    invoke-direct {p2}, Ly98;-><init>()V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x434

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAdBack()V

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHavePrepared:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setBottomVisible(Z)V

    :cond_6
    const-string p1, "vd_sdk_videostartplaying"

    iget p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    invoke-direct {p0, p1, v2, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPlayEventTime(Ljava/lang/String;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPortPlayTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-wide p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayItemTime:J

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    :cond_7
    iput v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showFullScreenGuide()V

    goto/16 :goto_3

    :sswitch_17
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/String;

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {p1, v0, v1, v2, v3}, Lwz5;->e0(Ljava/lang/String;JJ)V

    goto/16 :goto_3

    :sswitch_18
    sget p1, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->f(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    const-string p0, "ott_playshow"

    invoke-static {p0}, Lez5;->b(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_19
    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLandMorePip:Z

    sget-wide p1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-string p0, "pip"

    invoke-static {p0, p1, p2, v0, v1}, Lwz5;->y(Ljava/lang/String;JJ)V

    goto :goto_3

    :sswitch_1a
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFitStatusTitle:[I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mFitType:I

    aget p2, p2, v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->showTextToast(Ljava/lang/CharSequence;)V

    sget-wide p1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    const-string p0, "setAspectRatio"

    invoke-static {p0, p1, p2, v0, v1}, Lwz5;->y(Ljava/lang/String;JJ)V

    goto :goto_3

    :sswitch_1b
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/String;

    sget-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {p1, v0, v1, v3, v4}, Lwz5;->i(Ljava/lang/String;JJ)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    iput-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHistorySeek:Z

    goto :goto_3

    :sswitch_1c
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iput-boolean v3, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->timeCount()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "ott_play_fullscreen_guide"

    invoke-virtual {p1, p2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1c
        0x3f0 -> :sswitch_1b
        0x3f1 -> :sswitch_1a
        0x3f2 -> :sswitch_19
        0x3f3 -> :sswitch_18
        0x3f4 -> :sswitch_17
        0x3f6 -> :sswitch_16
        0x3f7 -> :sswitch_15
        0x3f8 -> :sswitch_1c
        0x3fa -> :sswitch_14
        0x3fd -> :sswitch_13
        0x3fe -> :sswitch_12
        0x3ff -> :sswitch_11
        0x402 -> :sswitch_10
        0x405 -> :sswitch_f
        0x40a -> :sswitch_e
        0x40d -> :sswitch_c
        0x413 -> :sswitch_b
        0x41b -> :sswitch_a
        0x432 -> :sswitch_9
        0x434 -> :sswitch_8
        0x43a -> :sswitch_7
        0x442 -> :sswitch_6
        0x443 -> :sswitch_5
        0x444 -> :sswitch_d
        0x445 -> :sswitch_4
        0x44b -> :sswitch_16
        0x451 -> :sswitch_3
        0x452 -> :sswitch_2
        0x900001 -> :sswitch_1
        0x900002 -> :sswitch_0
    .end sparse-switch
.end method

.method public enterPip()V
    .locals 13

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPipView:Lo18;

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/magicvideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    move v5, v12

    goto :goto_2

    :cond_1
    move v5, v11

    :goto_2
    if-eqz v0, :cond_2

    move v6, v12

    goto :goto_3

    :cond_2
    move v6, v11

    :goto_3
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v7

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v8

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->hasPre(Ljava/util/List;)Z

    move-result v9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->hasNext(Ljava/util/List;)Z

    move-result v10

    const-string v4, ""

    move-object v2, p0

    invoke-virtual/range {v1 .. v10}, Lo18;->w(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V

    const/4 v0, 0x0

    invoke-static {v0}, Lh06;->d(Z)V

    invoke-static {p0, v11}, Lo18;->q(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "enterPip fullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLandMorePip:Z

    :cond_3
    return-void
.end method

.method public flushPip(Z)V
    .locals 11

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPipView:Lo18;

    if-eqz p1, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_pause:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_floating_play:I

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-eqz p1, :cond_2

    move v6, v2

    goto :goto_3

    :cond_2
    move v6, v0

    :goto_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoWidth()I

    move-result v7

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentVideoHeight()I

    move-result v8

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->hasPre(Ljava/util/List;)Z

    move-result v9

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerials:Ljava/util/List;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->hasNext(Ljava/util/List;)Z

    move-result v10

    const-string v4, ""

    move-object v2, p0

    invoke-virtual/range {v1 .. v10}, Lo18;->r(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V

    return-void
.end method

.method public getSerialStr()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public hasLightStatusBarBackground()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initData()V
    .locals 3

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLastNetState:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayerDatailViewModel:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendViewModel:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->bindLoadingPlaceholder()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onObservePlayDetailRequest()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVishaPlayerCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onYoutubePlay()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onVkPlay()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->onNormalPlay()V

    :goto_0
    return-void
.end method

.method public initNotify()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const v1, 0x900001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const v1, 0x900002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x434

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x444

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x3f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x445

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    const/16 v0, 0x44b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initView(Z)V

    return-void
.end method

.method public initView(Z)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->exitOthersPip()V

    .line 3
    sget v0, Lcom/transsion/vishaplayersdk/R$id;->detail_player:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    .line 4
    sget v0, Lcom/transsion/onlinevideo/R$id;->nsv_detail:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailRoot:Landroidx/core/widget/NestedScrollView;

    .line 5
    sget v0, Lcom/transsion/onlinevideo/R$id;->appbar_detail:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    sget v0, Lcom/transsion/onlinevideo/R$id;->root_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    .line 7
    sget v0, Lcom/transsion/onlinevideo/R$id;->detail_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailView:Landroid/widget/FrameLayout;

    .line 8
    sget v0, Lcom/transsion/onlinevideo/R$id;->video_open_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    .line 9
    sget v0, Lcom/transsion/onlinevideo/R$id;->video_vip_tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOpenTipTv:Landroid/widget/TextView;

    .line 10
    sget v0, Lcom/transsion/onlinevideo/R$id;->video_vip_tip_old:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mOldPrice:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_detail_year_duration_logo:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mllDatailYearDurationLogo:Landroid/widget/LinearLayout;

    .line 12
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVipGuide()V

    .line 13
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPortVideoHeight:I

    .line 15
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPortVideoHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v0, -0x1

    .line 17
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x30

    .line 18
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 23
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 24
    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPortVideoHeight:I

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 25
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_0
    sget p1, Lcom/transsion/onlinevideo/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSurfaceContainer:Landroid/view/View;

    .line 27
    sget p1, Lcom/transsion/onlinevideo/R$id;->activity_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBackIv:Landroid/widget/ImageView;

    .line 28
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->fitRoot()V

    .line 29
    sget p1, Lcom/transsion/onlinevideo/R$id;->lock_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLockIv:Landroid/widget/ImageView;

    .line 30
    sget p1, Lcom/transsion/onlinevideo/R$id;->date:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDate:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/transsion/onlinevideo/R$id;->time:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTime:Landroid/widget/TextView;

    .line 32
    sget p1, Lcom/transsion/onlinevideo/R$id;->date_line:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDateLine:Landroid/view/View;

    .line 33
    sget p1, Lcom/transsion/onlinevideo/R$id;->time_line:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTimeLine:Landroid/view/View;

    .line 34
    sget p1, Lcom/transsion/onlinevideo/R$id;->video_name:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTitleTv:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/transsion/onlinevideo/R$id;->iv_add_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAddIcon:Landroid/widget/ImageView;

    .line 36
    sget p1, Lcom/transsion/onlinevideo/R$id;->fl_add_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAddIconParent:Landroid/view/View;

    .line 37
    sget p1, Lcom/transsion/onlinevideo/R$id;->v_red_point:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRedPoint:Landroid/view/View;

    .line 38
    sget p1, Lcom/transsion/onlinevideo/R$id;->tags:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    sget p1, Lcom/transsion/onlinevideo/R$id;->episodetv:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodeTip:Landroid/widget/TextView;

    .line 40
    sget p1, Lcom/transsion/onlinevideo/R$id;->rv_numbers:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    sget p1, Lcom/transsion/onlinevideo/R$id;->rv_serials:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSessionsRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    sget p1, Lcom/transsion/onlinevideo/R$id;->rv_recommends:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    sget p1, Lcom/transsion/onlinevideo/R$id;->nav_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->navBar:Landroid/view/View;

    .line 44
    sget p1, Lcom/transsion/onlinevideo/R$id;->recommend_tip:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecommendsTipTv:Landroid/widget/TextView;

    .line 45
    sget p1, Lcom/transsion/onlinevideo/R$id;->root_trivia:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaContainer:Landroid/view/ViewGroup;

    .line 46
    sget p1, Lcom/transsion/onlinevideo/R$id;->mgLogo:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoIntroLogoIv:Landroid/widget/ImageView;

    .line 47
    sget p1, Lcom/transsion/onlinevideo/R$id;->episodes_tip:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesTip:Landroid/view/View;

    .line 48
    sget p1, Lcom/transsion/onlinevideo/R$id;->rv_trivia:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    sget p1, Lcom/transsion/onlinevideo/R$id;->trivia_tip:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTriviaTip:Landroid/view/ViewGroup;

    .line 50
    sget p1, Lcom/transsion/onlinevideo/R$id;->episode_close:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesClose:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/transsion/onlinevideo/R$id;->root_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailContainer:Landroid/view/ViewGroup;

    .line 52
    sget p1, Lcom/transsion/onlinevideo/R$id;->root_introduce:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroContainer:Landroid/view/ViewGroup;

    .line 53
    sget p1, Lcom/transsion/onlinevideo/R$id;->root_episodes:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesContainer:Landroid/view/ViewGroup;

    .line 54
    sget p1, Lcom/transsion/onlinevideo/R$id;->ll_bottom_content:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBottomController:Landroid/view/ViewGroup;

    .line 55
    sget p1, Lcom/transsion/onlinevideo/R$id;->loading_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    .line 56
    sget p1, Lcom/transsion/onlinevideo/R$id;->tv_network_connection_hint:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingTip:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/transsion/onlinevideo/R$id;->ll_loading_error:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoaddingErrorLayer:Landroid/view/ViewGroup;

    .line 58
    sget p1, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNoNetLayer:Landroid/view/ViewGroup;

    .line 59
    sget p1, Lcom/transsion/onlinevideo/R$id;->empty_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    .line 60
    sget p1, Lcom/transsion/onlinevideo/R$id;->episodes_update:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEpisodesUpdateTv:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/transsion/onlinevideo/R$id;->collect:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCollectIv:Landroid/widget/ImageView;

    .line 62
    new-instance v0, Lo18;

    invoke-direct {v0}, Lo18;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPipView:Lo18;

    .line 63
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceId:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_2
    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-wide v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v2, v3}, Lzg9;->i(J)Ljava/lang/String;

    move-result-object v2

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCollectIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/transsion/onlinevideo/R$drawable;->ic_farvorited_on:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_collect_enter:I

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCollectIv:Landroid/widget/ImageView;

    new-instance v4, Lz98;

    invoke-direct {v4, p0, v0}, Lz98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBackIv:Landroid/widget/ImageView;

    new-instance v3, Lba8;

    invoke-direct {v3, p0}, Lba8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lcom/transsion/onlinevideo/R$id;->detai_top:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailMoreLl:Landroid/view/View;

    .line 73
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_smashi_updatetime:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTvSmashiUpdateTime:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailMoreLl:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 75
    new-instance v3, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$d;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$d;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_4
    sget v0, Lcom/transsion/onlinevideo/R$id;->trivia_more:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lca8;

    invoke-direct {v3, p0}, Lca8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/transsion/onlinevideo/R$id;->episode_more:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lda8;

    invoke-direct {v3, p0}, Lda8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lea8;

    invoke-direct {v0, p0}, Lea8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p0}, Lzg9;->n(Landroid/content/Context;)Z

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAddIconParent:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz p1, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    .line 81
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRedPoint:Landroid/view/View;

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 82
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v4, "is_ott_bubble_showed"

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v3

    .line 83
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAddIcon:Landroid/widget/ImageView;

    new-instance v0, Lfa8;

    invoke-direct {v0, p0, v2}, Lfa8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_8
    sget p1, Lcom/transsion/onlinevideo/R$id;->tv_toview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lga8;

    invoke-direct {v0, p0}, Lga8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget p1, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lha8;

    invoke-direct {v0, p0}, Lha8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    new-instance v0, Lia8;

    invoke-direct {v0, p0}, Lia8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->adaptSystemUiBarColor()V

    .line 89
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->disableNestedScrollForDetailRecyclerViews()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget p2, Lo18;->d:I

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lo18;->d(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->enterPip()V

    goto :goto_0

    :cond_0
    sget p2, Lo18;->c:I

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lo18;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->enterPip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "exit"

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRecentPlayEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lwz5;->T(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isPlay:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isEnterPip:Z

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_window_background:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$color;->black:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v6, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;ZZ)V

    :cond_1
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->fixPipNavBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lft7;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->stop()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    iput-boolean v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLogin:Z

    new-instance p1, Lcom/transsion/utils/NetworkObserver;

    invoke-direct {p1, p0}, Lcom/transsion/utils/NetworkObserver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->networkObserver:Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->networkObserver:Lcom/transsion/utils/NetworkObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->networkObserver:Lcom/transsion/utils/NetworkObserver;

    const-string v0, "ottplayer"

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mNetworkStatusCallback:Lvz6;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/utils/NetworkObserver;->b(Ljava/lang/String;Lvz6;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initThumb()V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_video_detail:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isNewIntentCalled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->parseIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initHistory()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initView()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initData()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    invoke-static {}, Lwz5;->w()V

    invoke-static {}, Lwz5;->x()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x403

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 10

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->release()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markPreviewDuration()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsOver:Z

    iget-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPageDuration:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mChannel:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getSerialStr()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static/range {v1 .. v9}, Lwz5;->C(JJJLjava/lang/String;J)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPipView:Lo18;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p0}, Lo18;->v(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterController error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_3
    invoke-static {p0}, Lo18;->h(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPort:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lwz5;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "guide_back"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->addVolume()V

    return v1

    :cond_2
    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->cutVolume()V

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lft7;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayPostion:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isNewIntentCalled:Z

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->parseIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPlayFrom:I

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbPlayFromHistory:Z

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsHavePrepared:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initHistory()V

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initView(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initData()V

    invoke-static {}, Lwz5;->w()V

    invoke-static {}, Lwz5;->x()V

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPlaying:Z

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPageDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPageTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPageDuration:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v0, v1, v2, v3, v4}, Lxz5;->f(IJJ)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->gotoBackground()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStop()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lu98;

    invoke-direct {v1, p0}, Lu98;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 8

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureInPictureModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isEnterPip:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean p1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsPip:Z

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isEnterPip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mStartBuffering:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showBuffering(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lo18;->q(Landroid/app/Activity;I)V

    invoke-static {}, Lh06;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo18;->f()V

    invoke-static {}, Lh06;->f()V

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsEnterPiped:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipStartTime:J

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayPosition()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-wide v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    invoke-static {v2, v3, v4, v5, v6}, Lxz5;->f(IJJ)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipStartTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->pipInTime:J

    invoke-static {}, Lxz5;->b()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getStartButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->noticePlayViewMode(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setIsPipMode(Z)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->savePlayHistory()V

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p2

    new-instance v2, Lja8;

    invoke-direct {v2, p0, p1}, Lja8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    const-wide/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    :cond_5
    const/4 p2, -0x1

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsNeedFit:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPipView:Lo18;

    new-instance v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$h;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    invoke-virtual {p2, p0, v2}, Lo18;->o(Landroid/app/Activity;Lo18$b;)V

    goto/16 :goto_4

    :cond_7
    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isStopCalled:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->markDuration()V

    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    if-ne v6, v0, :cond_8

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPortVideoHeight:I

    invoke-direct {v2, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsNeedFit:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Le80;->e()I

    move-result v5

    invoke-virtual {v2, v1, v5, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->recommendItemAdapter:Lcom/transsion/onlinevideo/adapter/RecommendTypeBeanAdapter;

    if-eqz p2, :cond_c

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lka8;

    invoke-direct {v2, p0}, Lka8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {p2, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->restoreNormal()V

    :goto_4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lla8;

    invoke-direct {v2, p0, p1}, Lla8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_e

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isFromLeaveHint:Z

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "is_pip_ges_showed"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p0, p2, :cond_e

    sget-boolean p0, Lpp3;->c:Z

    if-eqz p0, :cond_d

    sget p0, Lcom/transsion/onlinevideo/R$string;->ges_pip_notice_pre:I

    goto :goto_5

    :cond_d
    sget p0, Lcom/transsion/onlinevideo/R$string;->ges_pip_notice:I

    :goto_5
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_e
    return-void
.end method

.method public onResume()V
    .locals 11

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mPageTime:J

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isFromLeaveHint:Z

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFirst:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFirst:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isStopCalled:Z

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->tempStopLeaveHint:Z

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbRequestVip:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    const-string v3, "0"

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lkfc;->m(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getPlayerType()Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    move-result-object v2

    sget-object v4, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isSwitchResolutionNeedVip()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;

    invoke-direct {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;-><init>()V

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v3

    invoke-virtual {v3}, Lgec;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setLogin(Z)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;->setPalmToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->setUserAccountInfo(Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VishaAccountInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mango vip login must replay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->replay()V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v4

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v5

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkfc;->m(I)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUserInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    goto/16 :goto_2

    :cond_4
    const-string v2, "vip login visha player must replay"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v4

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v5

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkfc;->m(I)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUserInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->backToFront()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getIsPausedByUser()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isSwitchResolutionNeedVip()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x403

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isInPlayingState()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStart(Z)V

    :cond_7
    :goto_2
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbRequestVip:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsPlaying:Z

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->flushPip(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVipGuide()V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLandMorePip:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->restoreOrientation()V

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsLandMorePip:Z

    :cond_9
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStop()V

    sget-object v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isStopCalled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->gotoBackground()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onActivityStop()V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 6

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->tempStopLeaveHint:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfec;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->getCurPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p0}, Lc07;->a(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    invoke-static {p0}, Lo18;->d(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->orientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->updateLandStatusWhenPip()V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->enterPip()V

    const-string v0, "onlinevide"

    invoke-static {v0}, Lh06;->e(Ljava/lang/String;)V

    const-string v0, "gesture_pip"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->isFromLeaveHint:Z

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateUI(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailRoot:Landroidx/core/widget/NestedScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mEmptyView:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mLoadingLayer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoDatilBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCategory()I

    move-result v2

    iput v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCategory:I

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->isLive()Z

    move-result v2

    iput-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mbLive:Z

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCoverX()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCoverX:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCoverY()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCoverY:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-direct {v0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateIntro(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-direct {v0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synCurrentVideo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPreNextBtnStatus()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initPlayer()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateEpisodes()V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-direct {v0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateSeries(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateTrivia()V

    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsSynEpisode:Z

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->seriesId:J

    invoke-direct {v0, v4, v5}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->synPlayItemBoth(J)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setTime()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getPayType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-wide v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialId:J

    iget-wide v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoId:J

    iget-object v9, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mFromCard:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-nez v2, :cond_3

    :goto_1
    move v10, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getDuration()I

    move-result v3

    goto :goto_1

    :goto_2
    iget-wide v11, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    iget v13, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicSort:I

    iget-object v14, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSeriesName:Ljava/lang/String;

    iget v15, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsMultiSeason:I

    iget v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsMultiSerial:I

    iget v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsRelated:I

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceType()Ljava/lang/String;

    move-result-object v18

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-static/range {v5 .. v19}, Lwz5;->X(JJLjava/lang/String;IJILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSerialSet:Ljava/util/Set;

    sget-wide v3, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateRecommend()V

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->videoInfoBean:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    invoke-direct {v0, v2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->updateVideoDetailUI(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setYoutubeUI()V

    goto :goto_3

    :cond_5
    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->setVkUI()V

    :cond_6
    :goto_3
    iget-boolean v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkFeedStreamBean:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkId:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceImage:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkCoverImage:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkSourceName:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVkVideoName:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/transsion/onlinevideo/mangotv/VkDialog;->O(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/onlinevideo/mangotv/VkDialog;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-static {v1, v2}, Lcom/transsion/onlinevideo/mangotv/IntroDialog;->L(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initScrollListener()V

    return-void
.end method
