.class public Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;
    }
.end annotation


# static fields
.field private static final SHOW_UI_TIMEOUT:I = 0x12c

.field public static STEP:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "VideoPlayGuideLayout"


# instance fields
.field private mForwardTipButton:Landroid/widget/Button;

.field private final mHideTipsUIRun:Ljava/lang/Runnable;

.field private mInflated:Z

.field private mIsFullyGestural:Z

.field private mIsInMultiWindowMode:Z

.field private mIsLandscape:Z

.field private mIsRetreat:Z

.field private mListener:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;

.field private mPaddingTipEnd:I

.field private mPaddingTipEndLand:I

.field private mPaddingTipEndLandGestural:I

.field private mPaddingTipStart:I

.field private mPaddingTipStartLand:I

.field private mResourcesInitialized:Z

.field private mRetreatTipButton:Landroid/widget/Button;

.field private mTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$1;-><init>(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    return-void
.end method

.method private ensureInflated()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mInflated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mInflated:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$layout;->video_retreat_forward_tip:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->video_play_retreat_tip_bt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mRetreatTipButton:Landroid/widget/Button;

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->video_play_forward_tip_bt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mForwardTipButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->initResources()V

    return-void
.end method

.method private initResources()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mResourcesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mResourcesInitialized:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$dimen;->video_tips_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStart:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$dimen;->video_tips_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEnd:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$dimen;->video_tips_start_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStartLand:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$dimen;->video_tips_end_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEndLand:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$dimen;->video_tips_end_land_gestural:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEndLandGestural:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpp3;->h(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStart:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStart:I

    iget v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEnd:I

    :cond_1
    return-void
.end method

.method private updateRetreatForwardLayout(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStartLand:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipStart:I

    :goto_0
    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsFullyGestural:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEndLandGestural:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEndLand:I

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mPaddingTipEnd:I

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public hideRetreatOrForwardTip()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->STEP:J

    iget v4, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getCurrentPosition()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->STEP:J

    iget v4, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->seekTo(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mRetreatTipButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mForwardTipButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideTipsUI()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    invoke-static {v0, v1}, Lgz5;->b(ZI)V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->hideRetreatOrForwardTip()V

    return-void
.end method

.method public multiWindowModeChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsInMultiWindowMode:Z

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsLandscape:Z

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->updateRetreatForwardLayout(Z)V

    return-void
.end method

.method public requestedOrientation(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsLandscape:Z

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->updateRetreatForwardLayout(Z)V

    return-void
.end method

.method public setIsRetreat(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->showRetreatOrForwardTip()V

    return-void
.end method

.method public setListener(Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mListener:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;

    return-void
.end method

.method public setNavigationMode(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsFullyGestural:Z

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsLandscape:Z

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->updateRetreatForwardLayout(Z)V

    return-void
.end method

.method public showRetreatOrForwardTip()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->ensureInflated()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mRetreatTipButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mForwardTipButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mListener:Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout$RetreatForwardListener;->forward(IZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mIsRetreat:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mRetreatTipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->video_retreat_tip_new:I

    iget v3, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mForwardTipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->video_forward_tip_new:I

    iget v3, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoRetreatForwardLayout;->mHideTipsUIRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
