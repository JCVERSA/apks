.class public Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$GenericTextWatcher;
    }
.end annotation


# static fields
.field private static final MAX_UPDATE_INTERVAL_MS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AudioPlayerLrcLayout"


# instance fields
.field private mAddLocalLyricIv:Landroid/widget/ImageView;

.field private mArtistEtCount:I

.field private mArtistName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private mCurrentOffset:F

.field protected mDuration:J

.field private mEditLyricIv:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mIsLoadingLyric:Z

.field private mLayoutIsShowing:Z

.field private mLoadingView:Landroid/view/View;

.field private mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mLrcOperateView:Landroid/view/View;

.field private mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

.field private mMarkedLyricsStatue:Z

.field private mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field private mOffsetIv:Landroid/widget/ImageView;

.field private mOffsetTv:Landroid/widget/TextView;

.field private mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

.field private mPlayPause:Landroid/widget/ImageView;

.field private final mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

.field protected mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mRemoteSearchBtn:Landroid/widget/Button;

.field private mSaveTitleArtistCb:Landroid/widget/CheckBox;

.field private mSaveTitleArtistLl:Landroid/widget/LinearLayout;

.field private mTitleEtCount:I

.field private mToastShowing:Z

.field private mTvTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

.field private shouldShowLrcToast:Z

.field private final showHideLoadingLyricViewObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLayoutIsShowing:Z

    .line 3
    iput v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    .line 4
    iput v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    .line 5
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMarkedLyricsStatue:Z

    .line 6
    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    .line 8
    new-instance v1, Lpx;

    invoke-direct {v1, p0}, Lpx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showHideLoadingLyricViewObserver:Landroidx/lifecycle/Observer;

    .line 9
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    .line 10
    new-instance v0, Lqx;

    invoke-direct {v0, p0}, Lqx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLayoutIsShowing:Z

    .line 14
    iput p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    .line 15
    iput p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    .line 16
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMarkedLyricsStatue:Z

    .line 17
    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 18
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    .line 19
    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showHideLoadingLyricViewObserver:Landroidx/lifecycle/Observer;

    .line 20
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    .line 21
    new-instance p2, Lqx;

    invoke-direct {p2, p0}, Lqx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLayoutIsShowing:Z

    .line 25
    iput p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    .line 26
    iput p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    .line 27
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMarkedLyricsStatue:Z

    .line 28
    new-instance p3, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;

    invoke-direct {p3, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 29
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    .line 30
    new-instance p3, Lpx;

    invoke-direct {p3, p0}, Lpx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showHideLoadingLyricViewObserver:Landroidx/lifecycle/Observer;

    .line 31
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    .line 32
    new-instance p2, Lqx;

    invoke-direct {p2, p0}, Lqx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    return-void
.end method

.method public static bridge synthetic B(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMarkedLyricsStatue:Z

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLyricGuide()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->saveTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setupOffsetIv()V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showWhenNotShowingToast(Z)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLrcOffset(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private adaptWindow()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->h()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    new-instance v2, Lfx;

    invoke-direct {v2, p0}, Lfx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updatePlayPauseButton(I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$showWhenNotShowingToast$16()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$showSearchRemoteLrcDialog$11(Landroid/text/Editable;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$setupOffsetIv$15()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$saveTitleAndArtist$13(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$new$18()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcOperate$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/audio/widgets/LrcViewNew;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcView$2(Lcom/transsion/audio/widgets/LrcViewNew;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcOperate$4()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId",
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$layout;->layout_audio_player_lrc:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mView:Landroid/view/View;

    sget p1, Lcom/transsion/audio/R$id;->lyrics_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/widgets/LrcViewNew;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    sget p1, Lcom/transsion/audio/R$id;->iv_offset:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/audio/R$id;->iv_lyric_add_local:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mAddLocalLyricIv:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/audio/R$id;->iv_lyric_edit:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEditLyricIv:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mAddLocalLyricIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEditLyricIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/audio/R$id;->tv_audio_play_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTvTitle:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->tv_audio_artist:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistName:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->iv_audio_play_pause:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLrcView()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLrcOperate()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->adaptWindow()V

    return-void
.end method

.method private initLrcOperate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Lcom/transsion/audio/R$id;->lyrics_operate_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->tv_offset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    new-instance v1, Lkx;

    invoke-direct {v1}, Lkx;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    new-instance v1, Llx;

    invoke-direct {v1, p0}, Llx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->iv_plus_offset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/LongClickImageView;

    new-instance v1, Lmx;

    invoke-direct {v1, p0}, Lmx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$2;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$2;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/LongClickImageView;->setLongClickListener(Lcom/transsion/LongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->iv_minus_offset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/LongClickImageView;

    new-instance v1, Lnx;

    invoke-direct {v1, p0}, Lnx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$3;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$3;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/LongClickImageView;->setLongClickListener(Lcom/transsion/LongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->iv_reset_offset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lox;

    invoke-direct {v1, p0}, Lox;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initLrcView()V
    .locals 3

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "show_hide_loading_lyric_view"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showHideLoadingLyricViewObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setCurrentColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_timeline_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimeTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_second_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setTimelineTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->lyric_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setNormalColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->no_lyrics:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    new-instance v1, Lhx;

    invoke-direct {v1, p0}, Lhx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setDraggable(ZLcom/transsion/audio/widgets/LrcViewNew$OnPlayClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    new-instance v1, Lix;

    invoke-direct {v1, p0}, Lix;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->setOnLayoutChangeListener(Lcom/transsion/audio/widgets/LrcViewNew$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchLyrics()V

    return-void
.end method

.method private initLyricGuide()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "need_lyric_guide"

    invoke-static {v0, v2, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "vd_audio_lyrics_guide_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method private isTouchInsideView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v3, p0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static synthetic j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcOperate$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcOperate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$saveTitleAndArtist$14(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$adaptWindow$1(Lcom/transsion/dbdata/beans/LyricData;)V
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/LyricData;->offset:I

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setCurrentOffset(I)V

    return-void
.end method

.method private static synthetic lambda$initLrcOperate$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initLrcOperate$4()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initLrcOperate$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLrcOffset(Z)V

    return-void
.end method

.method private synthetic lambda$initLrcOperate$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLrcOffset(Z)V

    return-void
.end method

.method private synthetic lambda$initLrcOperate$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setCurrentOffset(I)V

    return-void
.end method

.method private synthetic lambda$initLrcView$2(Lcom/transsion/audio/widgets/LrcViewNew;J)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLoadingView()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$18()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->runVideoProgressUpdate()V

    return-void
.end method

.method private synthetic lambda$saveTitleAndArtist$12(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p3

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p3, v0, p1, v1}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p3, v0, p2, p0}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/transsion/audiotagger/audio/AudioFileIO;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$saveTitleAndArtist$13(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Search Lrc,editAudioFile failed error,title:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " artist:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "audio_edit"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveTitleAndArtist$14(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search Lrc,editAudioFile failed error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio_edit"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setCurrentOffset$8()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentOffset:F

    float-to-int p0, p0

    invoke-virtual {v0, v2, v1, p0}, Lao;->q0(ILjava/lang/String;I)I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setSearchButtonEnable$17(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p1}, Lzdc;->p(Z)V

    return-void
.end method

.method private synthetic lambda$setupOffsetIv$15()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v1}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v1}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->isAllNoTimeLrc()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->enableOffset(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showSearchRemoteLrcDialog$10(Landroid/text/Editable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setSearchButtonEnable()V

    return-void
.end method

.method private synthetic lambda$showSearchRemoteLrcDialog$11(Landroid/text/Editable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setSearchButtonEnable()V

    return-void
.end method

.method private synthetic lambda$showWhenNotShowingToast$16()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    return-void
.end method

.method private synthetic lambda$updateLyricsMenuPosition$9()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v4, v1

    aget v3, v3, v1

    sub-int/2addr v4, v3

    iget-object v3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v4, v3

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    if-gez v2, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    :goto_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/16 v2, 0x53

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static synthetic m(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$saveTitleAndArtist$12(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$setSearchButtonEnable$17(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/dbdata/beans/LyricData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$adaptWindow$1(Lcom/transsion/dbdata/beans/LyricData;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$updateLyricsMenuPosition$9()V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$initLrcOperate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$setCurrentOffset$8()V

    return-void
.end method

.method private restoreLyricsMenuLayout()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateOriginLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->lambda$showSearchRemoteLrcDialog$10(Landroid/text/Editable;)V

    return-void
.end method

.method private saveTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lzdc;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTitleAndArtist: title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLrcLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lax;

    invoke-direct {v1, p0, p2, p1}, Lax;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v1, Lbx;

    invoke-direct {v1, p0, p1, p2}, Lbx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcx;

    invoke-direct {p0}, Lcx;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    :cond_2
    :goto_0
    return-void
.end method

.method private setSearchButtonEnable()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mRemoteSearchBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    iget v3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    add-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lul;->c(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    iget v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    add-int/2addr v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistLl:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistCb:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistCb:Landroid/widget/CheckBox;

    invoke-static {}, Lzdc;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistCb:Landroid/widget/CheckBox;

    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistLl:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistLl:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setupOffsetIv()V
    .locals 1

    new-instance v0, Lgx;

    invoke-direct {v0, p0}, Lgx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLyricSearchDialog(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    const-class v2, Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "audio_item"

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 p1, 0x4e0

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method private showLyricsMenu(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "vd_audio_lyrics_time_adjust_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lav3;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateLyricsMenuPosition()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->restoreLyricsMenuLayout()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->scrollToCurrentLine()V

    return-void
.end method

.method private showWhenNotShowingToast(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLayoutIsShowing:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/audio/R$string;->no_paired_online_lyric:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mToastShowing:Z

    new-instance p1, Lzw;

    invoke-direct {p1, p0}, Lzw;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public static synthetic t(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setupOffsetIv()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateLrcOffset(Z)V
    .locals 1

    iget v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentOffset:F

    float-to-int v0, v0

    if-eqz p1, :cond_0

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, -0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->setCurrentOffset(I)V

    return-void
.end method

.method private updateLyricsMenuPosition()V
    .locals 1

    new-instance v0, Ljx;

    invoke-direct {v0, p0}, Ljx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateProgress(JJJ)V
    .locals 0

    iget-wide p5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mDuration:J

    cmp-long p5, p5, p3

    if-eqz p5, :cond_0

    iput-wide p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mDuration:J

    :cond_0
    iget-wide p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mDuration:J

    cmp-long p5, p1, p3

    if-lez p5, :cond_1

    move-wide p1, p3

    :cond_1
    iget-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p3}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/widgets/LrcViewNew;->updateTime(J)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Lcom/transsion/audio/widgets/LrcViewNew;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMarkedLyricsStatue:Z

    return p0
.end method

.method public static bridge synthetic y(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->isTouchInsideView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableOffset(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetIv:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public getMediaItemString(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$string;->lyrics:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasLrc()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result p0

    return p0
.end method

.method public initAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateTitleTop()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->adaptWindow()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->runVideoProgressUpdate()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->windowOptionsChange(Lwoc;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    return-void
.end method

.method public onAudioLayoutSelected(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLayoutIsShowing:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/audio/R$string;->no_paired_online_lyric:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->shouldShowLrcToast:Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->tv_local_lyric:I

    const-string v2, "from"

    const-string v3, "vd_audio_lyrics_add"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v0, v1, :cond_0

    invoke-static {v3, v2, v5}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showLyricSearchDialog(I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v6, Lcom/transsion/audio/R$id;->tv_remote_lyric:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_2

    const-string p1, "vd_audio_lyrics_google_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lc07;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p0, Lcom/transsion/audio/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/transsion/audio/activities/AudioWebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->getMediaItemString(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://www.google.com/search?q=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "web_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->visha_search_lyric:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x4df

    invoke-static {p1, v1, v0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_9

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    invoke-virtual {p0, p1, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v6, Lcom/transsion/audio/R$id;->iv_offset:I

    const/4 v8, 0x1

    if-ne v0, v6, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcOperateView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    move v7, v8

    :cond_3
    invoke-direct {p0, v7}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showLyricsMenu(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v6, Lcom/transsion/audio/R$id;->iv_lyric_add_local:I

    if-ne v0, v6, :cond_5

    invoke-direct {p0, v8}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showLyricSearchDialog(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v6, Lcom/transsion/audio/R$id;->iv_lyric_edit:I

    if-ne v0, v6, :cond_6

    const-string p1, "vd_audio_lyrics_edit"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->A0(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-static {v3, v2, v5}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->showLyricSearchDialog(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_audio_play_pause:I

    if-ne p1, v0, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerPlayOrPause "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayerLrcLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "audioplaypage"

    invoke-static {p1}, Lry5;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "audio_pause"

    goto :goto_0

    :cond_8
    const-string p1, "audio_play"

    :goto_0
    invoke-static {p1}, Lp06;->h0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->shouldShowPauseButton()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-virtual {p0, v8, p1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->removeProgressUpdate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mMusicModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->h()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    const-string v1, "AudioPlayerLrcLayout"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->removeScreenTypeListener(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "show_hide_loading_lyric_view"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->runVideoProgressUpdate()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->removeProgressUpdate()V

    return-void
.end method

.method public removeProgressUpdate()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runVideoProgressUpdate()V
    .locals 12

    const-wide/16 v0, 0xfa

    const-wide/16 v2, 0x0

    const-wide/16 v9, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v7, v4

    :try_start_1
    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v5, v4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v4

    iget-object v11, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v11, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v7, v2

    if-lez v0, :cond_0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateProgress(JJJ)V

    :cond_0
    return-void

    :catchall_0
    move-exception v4

    :goto_0
    move-object v11, v4

    goto :goto_1

    :catchall_1
    move-exception v4

    move-wide v7, v2

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v7, v2

    if-lez v0, :cond_1

    const-wide/16 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateProgress(JJJ)V

    :cond_1
    throw v11
.end method

.method public searchLyrics()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/lyrics/LrcSearcher;->m()Z

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->searchLyrics(Z)V

    return-void
.end method

.method public searchLyrics(Z)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchLyrics needToast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioPlayerLrcLayout"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    .line 6
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    .line 9
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    .line 10
    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$6;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->C(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    return-void
.end method

.method public searchRemoteLyrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateEmptyView(Z)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v1}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    new-instance v2, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;

    invoke-direct {v2, p0, v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$5;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/transsion/audio/lyrics/LrcSearcher;->x(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentOffset:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lex;

    invoke-direct {v0, p0}, Lex;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_0
    iput p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentOffset:F

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->setDelayMs(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mOffsetTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentOffset:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->runVideoProgressUpdate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->removeProgressUpdate()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSearchRemoteLrcDialog()V
    .locals 8

    sget-boolean v0, Lpp3;->z:Z

    if-nez v0, :cond_0

    const-string p0, "AudioPlayerLrcLayout"

    const-string v0, "[Serve LRC] not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/audio/R$layout;->dialog_lrc_search_remote:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->et_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget v3, Lcom/transsion/audio/R$id;->et_artist:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget v4, Lcom/transsion/audio/R$id;->ll_save_title_artist:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistLl:Landroid/widget/LinearLayout;

    sget v4, Lcom/transsion/audio/R$id;->cb_save:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mSaveTitleArtistCb:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, ""

    move-object v4, v5

    :goto_0
    invoke-static {v5}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTitleEtCount:I

    :cond_3
    invoke-static {v4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistEtCount:I

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v4

    new-instance v5, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$GenericTextWatcher;

    new-instance v6, Lrx;

    invoke-direct {v6, p0}, Lrx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-direct {v5, v6}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$GenericTextWatcher;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v4, v5}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v4

    new-instance v5, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$GenericTextWatcher;

    new-instance v6, Lsx;

    invoke-direct {v6, p0}, Lsx;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V

    invoke-direct {v5, v6}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$GenericTextWatcher;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v4, v5}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v5, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v4, Lcom/transsion/audio/R$string;->lyric_search_online:I

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v4, Lcom/transsion/audio/R$string;->cancel:I

    invoke-virtual {v0, v4, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$string;->lyric_search_positive:I

    new-instance v4, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;

    invoke-direct {v4, p0, v1, v3}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$4;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v0, v2, v4}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mRemoteSearchBtn:Landroid/widget/Button;

    return-void
.end method

.method public updateEmptyView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/audio/R$id;->lyrics_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->tv_local_lyric:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->tv_remote_lyric:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-boolean v0, Lpp3;->z:Z

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public updateLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/audio/R$id;->lyrics_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLoadingView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mIsLoadingLyric:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updatePlayPauseButton(I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayPause:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayPause:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/audio/R$drawable;->icon_video_play_pause_new:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/audio/R$drawable;->icon_video_play_play_new:I

    :goto_0
    invoke-static {v0, v1}, Lcd;->f(Landroid/widget/ImageView;I)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mPlayPause:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->talkback_play:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->talkback_pause:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "AudioPlayerLrcLayout"

    const-string v0, "updatePlayPauseButton contentDescription failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public updateTitleTop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mArtistName:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateUI()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLrcView()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLrcOperate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const-string p0, "AudioPlayerLrcLayout"

    const-string v0, "updateUI"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public windowOptionsChange(Lwoc;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iget-boolean v2, p1, Lwoc;->f:Z

    iget-boolean v3, p1, Lwoc;->c:Z

    iget-boolean v4, p1, Lwoc;->d:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "windowState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isLandScape: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSmallWindow: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSplitWindow: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSmallSplitWindow: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayerLrcLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mLrcView:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->iv_empty_data:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p1, Lwoc;->d:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->mEmptyView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->text_no_files:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-boolean p1, p1, Lwoc;->d:Z

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
