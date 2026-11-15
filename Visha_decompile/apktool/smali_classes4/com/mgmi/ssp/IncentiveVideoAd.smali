.class public Lcom/mgmi/ssp/IncentiveVideoAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ssp/IncentiveVideoAd$a;
    }
.end annotation


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

.field private hasInit:Z

.field private mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

.field private mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

.field private mMediaListener:Lcom/mgmi/ssp/IncentiveVideoListener;

.field private mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

.field private mScreenSize:Landroid/graphics/Point;

.field private mViewParent:Landroid/view/ViewGroup;

.field private setCloseBtnVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mgmi/ssp/IncentiveVideoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->setCloseBtnVisible:Z

    .line 6
    invoke-direct/range {p0 .. p8}, Lcom/mgmi/ssp/IncentiveVideoAd;->init(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mgmi/ssp/IncentiveVideoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    move-object v1, p0

    .line 2
    iput-boolean v0, v1, Lcom/mgmi/ssp/IncentiveVideoAd;->setCloseBtnVisible:Z

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 3
    invoke-direct/range {v1 .. v9}, Lcom/mgmi/ssp/IncentiveVideoAd;->init(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgmi/ssp/IncentiveVideoAd;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mViewParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMediaListener:Lcom/mgmi/ssp/IncentiveVideoListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/mgmi/ssp/IncentiveVideoAd;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/mgmi/ssp/IncentiveVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->resetVideoSize()V

    return-void
.end method

.method public static synthetic access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/hunantv/media/widget/MgtvVideoView;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0
.end method

.method private init(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/IncentiveVideoListener;IZI)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mgmi/ssp/IncentiveVideoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p8, "PreRollVideoAd"

    const-string v0, "mgmiad"

    invoke-static {v0, p8}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p8, Ljava/lang/ref/WeakReference;

    invoke-direct {p8, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p8, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/platform/b;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "ssp error"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x1390

    const-string p2, "\u5a92\u4f53\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mgmi/platform/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "ssp pid error"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138f

    const-string p2, "\u5e7f\u544a\u4f4d\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p1

    iget-object p8, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/content/Context;

    iget-object v1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p8, v1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "package error"

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138e

    const-string p2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dAPP\u5305\u540d\u4e0e\u5b98\u7f51\u6ce8\u518c\u5a92\u4f53\u662f\u586b\u5199\u7684\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u65e0\u6cd5\u4f7f\u7528SDK"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mScreenSize:Landroid/graphics/Point;

    invoke-static {p1}, Lmpd;->c(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoAd;->initPlayer(Landroid/content/Context;)V

    new-instance p1, Lcom/mgmi/ads/api/a/c;

    invoke-direct {p1}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    iput-object p5, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMediaListener:Lcom/mgmi/ssp/IncentiveVideoListener;

    invoke-interface {p1, p6}, Lcom/mgmi/ads/api/a/d;->c(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    new-instance p6, Lcom/mgmi/g/a;

    invoke-direct {p6, p3, p4}, Lcom/mgmi/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p6}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    const/4 p1, 0x1

    if-eqz p7, :cond_6

    iget-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Lcom/mgmi/ads/api/a/d;->a(Z)Lcom/mgmi/ads/api/a/d;

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p3, p1}, Lcom/mgmi/ads/api/a/d;->a(Z)Lcom/mgmi/ads/api/a/d;

    :goto_0
    iget-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const-string p4, "ADS_TYPE_INCENTIVE_VIDEO"

    invoke-interface {p3, p4}, Lcom/mgmi/ads/api/a/d;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    new-instance p3, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    iget-object p4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-direct {p3, p4}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    new-instance p4, Lcom/mgmi/ssp/IncentiveVideoAd$1;

    invoke-direct {p4, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$1;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {p3, p4}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setOnScreenOrientationChangeListener(Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer$c;)V

    const/4 p3, -0x1

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const p4, 0x1020002

    invoke-virtual {p2, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object p4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p6, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    iput-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object p4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p6, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p4, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    new-instance p3, Lcom/mgmi/ssp/IncentiveVideoAd$2;

    invoke-direct {p3, p0, p5}, Lcom/mgmi/ssp/IncentiveVideoAd$2;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;Lcom/mgmi/ssp/IncentiveVideoListener;)V

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;

    iget-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    iget-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mViewParent:Landroid/view/ViewGroup;

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    new-instance p3, Lcom/mgmi/ssp/IncentiveVideoAd$a;

    iget-object p4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p3, p4}, Lcom/mgmi/ssp/IncentiveVideoAd$a;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/d;)V

    iget-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/platform/d;)V

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    iget-object p3, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    iget-object p4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p2, p3, p4}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iput-boolean p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->hasInit:Z

    return-void
.end method

.method private initAdInnerPlayerListener()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$3;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$3;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPreparedListener(Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$4;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$4;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnPauseListener(Lcom/hunantv/media/widget/IVideoView$OnPauseListener;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$5;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$5;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnStartListener(Lcom/hunantv/media/widget/IVideoView$OnStartListener;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$6;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$6;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnErrorListener(Lcom/hunantv/media/widget/IVideoView$OnErrorListener;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$7;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$7;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnCompletionListener(Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/mgmi/ssp/IncentiveVideoAd$8;

    invoke-direct {v1, p0}, Lcom/mgmi/ssp/IncentiveVideoAd$8;-><init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->setOnInfoListener(Lcom/hunantv/media/widget/IVideoView$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method private initPlayer(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {v0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance v1, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {v1}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    invoke-static {p1}, Lcom/hunantv/media/report/ReportParams;->createSessionID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hunantv/media/report/ReportParams;->setVideoSession(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p1, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/widget/MgtvVideoView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setBufferTimeout(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hunantv/media/widget/MgtvVideoView;->setAspectRatio(I)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->initAdInnerPlayerListener()V

    return-void
.end method

.method private resetVideoSize()V
    .locals 8

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v1}, Lcom/hunantv/media/widget/MgtvVideoView;->getVideoHeight()I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-lez v1, :cond_3

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    iget-object v4, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mScreenSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v4

    div-float/2addr v6, v7

    const/16 v7, 0x11

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v0, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    div-float/2addr v0, v1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v5

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mScreenSize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    return-void
.end method


# virtual methods
.method public doAdMute()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b_()V

    :cond_0
    return-void
.end method

.method public doAdunMute()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->c_()V

    :cond_0
    return-void
.end method

.method public doPause()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->c()V

    :cond_0
    return-void
.end method

.method public doResume()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mMgtvInnerVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    :cond_1
    return-void
.end method

.method public getCloseBtnVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->r()Z

    :cond_0
    iget-boolean p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->setCloseBtnVisible:Z

    return p0
.end method

.method public loadAd(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mgmi/ads/api/a/d;->a(Z)Lcom/mgmi/ads/api/a/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/mgmi/ads/api/a/d;->a(Z)Lcom/mgmi/ads/api/a/d;

    :goto_0
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    return-void
.end method

.method public onScreenRotate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b_()V

    :cond_0
    return-void
.end method

.method public setCloseBtnVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->setCloseBtnVisible:Z

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/d;->b(Z)Lcom/mgmi/ads/api/a/d;

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/d;->d(I)V

    :cond_0
    return-void
.end method

.method public setResizeVideo(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/d;->e(Z)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->container:Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ScreenOrientationContainer;->setCurentActivity(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->g()V

    return-void
.end method
