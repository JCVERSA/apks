.class public Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;
.super Lcom/transsion/magicvideo/widgets/TouchWindowLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;,
        Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;,
        Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$d;
    }
.end annotation


# instance fields
.field public c0:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic E(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->L(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic F(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->K(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic G(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->I(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static H(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$id;->play_ui_panel_runnable:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$PlayUIDisplayImpl;-><init>(Landroid/view/View;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static I(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$id;->play_ui_panel_status:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic K(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic L(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private getPlayUIView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->c0:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/magicvideo/R$id;->play_ui_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->c0:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->c0:Landroid/view/View;

    return-object p0
.end method

.method public static hideDisplayUI(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v2, Lcom/transsion/magicvideo/R$id;->play_ui_panel_animator:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$id;->play_ui_panel_status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v2, 0x0

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lx78;

    invoke-direct {v2, p0}, Lx78;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$b;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->H(Landroid/view/View;)V

    sput-boolean v0, Lk6a;->b:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v1, 0x48e

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v1, 0x490

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static isPlayUIShowing(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->I(Landroid/view/View;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static showDisplayUI(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v3, Lcom/transsion/magicvideo/R$id;->play_ui_panel_animator:I

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v5, v2, [F

    aput v3, v5, v1

    aput v4, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    :goto_0
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Ly78;

    invoke-direct {v4, p0}, Ly78;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$a;

    invoke-direct {v4, p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    instance-of v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;

    iget-object v3, v3, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->hideScaleStateView()V

    :cond_3
    sget v3, Lcom/transsion/magicvideo/R$id;->play_ui_panel_status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->H(Landroid/view/View;)V

    sput-boolean v0, Lk6a;->b:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x48d

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x490

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->T:Z

    if-eqz v0, :cond_0

    const-string p0, "TouchWindowLayout"

    const-string v0, "can\'t showDisplayUI inForceHideUIState"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->getPlayUIView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->showDisplayUI(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->c0:Landroid/view/View;

    instance-of v0, p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView$c;->onPlayUIDisplay()V

    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onScreenClick(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenClick(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lz78;

    invoke-direct {v0, p0}, Lz78;-><init>(Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r(I)V

    return-void
.end method
