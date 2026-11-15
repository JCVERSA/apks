.class public Lcom/transsion/widgets/MusicLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# static fields
.field private static final AUDIO_PLAYING_ASSET:Ljava/lang/String; = "audio_playing.json"

.field public static mIsPlaying:Z = false


# instance fields
.field private mCompositionRequested:Z

.field mPlatformBasicColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->initLazyLoad()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->initLazyLoad()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->initLazyLoad()V

    return-void
.end method

.method public static bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void

    :cond_2
    iput p1, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mPlatformBasicColor:I

    invoke-virtual {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->ensureCompositionLoaded()V

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->dynamicModifyAutoPlayingLottieColor(Lcom/airbnb/lottie/LottieAnimationView;I)V

    sget-boolean p1, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_1
    return-void
.end method

.method private initLazyLoad()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lur5;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mCompositionRequested:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$ensureCompositionLoaded$0(Lur5;)V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lur5;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lur5;)V

    :cond_0
    iget p1, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mPlatformBasicColor:I

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->dynamicModifyAutoPlayingLottieColor(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->updateAnimotion()V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/widgets/MusicLottieAnimationView;Lur5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/MusicLottieAnimationView;->lambda$ensureCompositionLoaded$0(Lur5;)V

    return-void
.end method

.method public static synthetic o(Lcom/transsion/widgets/MusicLottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->updateAnimotion()V

    return-void
.end method

.method private updateAnimotion()V
    .locals 1

    sget-boolean v0, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x402

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x406

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v1, p2

    :cond_1
    sput-boolean v1, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->updateAnimotion()V

    goto :goto_0

    :cond_2
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->updateAnimotion()V

    :goto_0
    return-void
.end method

.method public ensureCompositionLoaded()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mCompositionRequested:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lur5;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mCompositionRequested:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_playing.json"

    invoke-static {v0, v1}, Lfs5;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Leu6;

    invoke-direct {v1, p0}, Leu6;-><init>(Lcom/transsion/widgets/MusicLottieAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->d(Ldt5;)Lcom/airbnb/lottie/LottieTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onAttachedToWindow()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mPlatformBasicColor:I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x402

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    new-instance v0, Lfu6;

    invoke-direct {v0, p0}, Lfu6;-><init>(Lcom/transsion/widgets/MusicLottieAnimationView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x402

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-boolean p1, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->ensureCompositionLoaded()V

    iget p1, p0, Lcom/transsion/widgets/MusicLottieAnimationView;->mPlatformBasicColor:I

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->dynamicModifyAutoPlayingLottieColor(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x402

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x406

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    sget-boolean p1, Lcom/transsion/widgets/MusicLottieAnimationView;->mIsPlaying:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
