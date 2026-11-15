.class public Lcom/transsion/widgets/EpisodeLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# static fields
.field public static mStatus:I = 0x1


# instance fields
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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/EpisodeLottieAnimationView;->updateAnimotion()V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/widgets/EpisodeLottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/EpisodeLottieAnimationView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method private updateAnimotion()V
    .locals 2

    sget v0, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mStatus:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    sput p1, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mStatus:I

    invoke-direct {p0}, Lcom/transsion/widgets/EpisodeLottieAnimationView;->updateAnimotion()V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    sput p1, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mStatus:I

    invoke-direct {p0}, Lcom/transsion/widgets/EpisodeLottieAnimationView;->updateAnimotion()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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

    iput v0, p0, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mPlatformBasicColor:I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    new-instance v0, Lmb3;

    invoke-direct {v0, p0}, Lmb3;-><init>(Lcom/transsion/widgets/EpisodeLottieAnimationView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    iget p1, p0, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mPlatformBasicColor:I

    invoke-static {p0, p1}, Lcom/transsion/widgets/LottieUtils;->dynamicModifyAutoPlayingLottieColor(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f6

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f7

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3f8

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    sget p1, Lcom/transsion/widgets/EpisodeLottieAnimationView;->mStatus:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_0
    return-void
.end method
