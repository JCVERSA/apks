.class public Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;
.super Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VishaShortVideoPlayer"


# instance fields
.field private mLlPlayProgress:Landroid/widget/LinearLayout;

.field private mProgressChangeListener:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->lambda$initShortVideoControlViewListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->lambda$initShortVideoControlViewListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->lambda$initShortVideoControlViewListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->lambda$expandTouchArea$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mProgressChangeListener:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPlay:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekProgress:I

    return p0
.end method

.method public static synthetic access$1402(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTimeDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return p1
.end method

.method public static synthetic access$1802(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mSeekProgress:I

    return p1
.end method

.method public static synthetic access$1900(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mProgressDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isCurrentMediaListener()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mOriginUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method private expandTouchArea()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mLlPlayProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Luec;

    invoke-direct {v1, p0, v0}, Luec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expandTouchArea$3(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mLlPlayProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mLlPlayProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mLlPlayProgress:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initShortVideoControlViewListeners$0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lwz5;->g()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    move-result-object p1

    new-instance v0, Ltec;

    invoke-direct {v0, p0}, Ltec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog$ClarityCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clarity"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initShortVideoControlViewListeners$1(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {p1}, Lwz5;->f0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mCureentSubTitle:Ljava/lang/String;

    invoke-static {p1}, Lwz5;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->newInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    move-result-object p1

    new-instance v0, Lsec;

    invoke-direct {v0, p0}, Lsec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->setCallback(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog$SubtitleCallback;)Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "subtitle"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/BaseVideoControllerDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$initShortVideoControlViewListeners$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeUiToNormal()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public changeUiToPauseShow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public changeUiToPlayingBufferingClear()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingClear()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public changeUiToPlayingShow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public changeUiToPreparingShow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public getBottomGradientBg()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomGradientBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getBottomTitleLeftTag()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomTitleLeftTag:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getBottomTitleRightArrow()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomTitleRightArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getClarityImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvClarity:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLanguageImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvLanguage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/R$layout;->layout_video_contoller_vertical:I

    return p0
.end method

.method public getLlBottomTitleLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlBottomTitle:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public hadPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mHadPrepared:Z

    return p0
.end method

.method public hideAllWidget()V
    .locals 1

    const-string p0, "hideAllWidget:false"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VishaShortVideoPlayer"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initShortVideoControlViewListeners()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->initListener()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvClarity:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvClarity:Landroid/widget/ImageView;

    new-instance v1, Lpec;

    invoke-direct {v1, p0}, Lpec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvLanguage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvLanguage:Landroid/widget/ImageView;

    new-instance v1, Lqec;

    invoke-direct {v1, p0}, Lqec;-><init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlBottomTitle:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_2

    new-instance v0, Lrec;

    invoke-direct {v0}, Lrec;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public initShortVideoControlViews()V
    .locals 1

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->play_progress_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mLlPlayProgress:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->iv_clarity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvClarity:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->iv_language:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvLanguage:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->os_seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->ll_bottom_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLlBottomTitle:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->tv_bottom_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvBottomTitle:Landroid/widget/TextView;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->iv_bottom_title_left_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomTitleLeftTag:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->iv_bottom_title_right_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomTitleRightArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->expandTouchArea()V

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->iv_bottom_gradient_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomGradientBg:Landroid/widget/ImageView;

    return-void
.end method

.method public isErrorShow()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mErrorlayersMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isNetworkBlockErrorShow()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->isNetworkBlockErrorShowing()Z

    move-result p0

    return p0
.end method

.method public isVipShow()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLoginOpenVipContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBottomGradientBgVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mIvBottomGradientBg:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mTvBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgressAndTime(IIIIZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->setProgressAndTime(IIIIZ)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mOsSeekbar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_1
    return-void
.end method

.method public setProgressChangeListener(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->mProgressChangeListener:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;

    return-void
.end method

.method public touchDoubleUp()V
    .locals 1

    const-string p0, "touchDoubleUp"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VishaShortVideoPlayer"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
