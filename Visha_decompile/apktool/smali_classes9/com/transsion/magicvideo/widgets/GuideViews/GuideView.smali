.class public Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;
    }
.end annotation


# static fields
.field public static guideAll:[Ljava/lang/Class;

.field public static guideScale:[Ljava/lang/Class;


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Landroid/view/View;

.field public e:Lcom/airbnb/lottie/LottieAnimationView;

.field public f:Landroid/view/View$OnClickListener;

.field public g:Landroid/view/View$OnClickListener;

.field public h:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public i:Lcom/transsion/WindowInfoViewModel;

.field public j:Z

.field public k:I

.field public final l:Landroidx/lifecycle/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/transsion/magicvideo/widgets/GuideViews/Guide1View;

    const-class v1, Lcom/transsion/magicvideo/widgets/GuideViews/Guide2View;

    const-class v2, Lcom/transsion/magicvideo/widgets/GuideViews/Guide3View;

    const-class v3, Lcom/transsion/magicvideo/widgets/GuideViews/Guide4View;

    const-class v4, Lcom/transsion/magicvideo/widgets/GuideViews/Guide5View;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->guideAll:[Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->guideScale:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    .line 3
    new-instance p1, Lfk4;

    invoke-direct {p1, p0}, Lfk4;-><init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l:Landroidx/lifecycle/Observer;

    .line 4
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    .line 7
    new-instance p1, Lfk4;

    invoke-direct {p1, p0}, Lfk4;-><init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l:Landroidx/lifecycle/Observer;

    .line 8
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    .line 11
    new-instance p1, Lfk4;

    invoke-direct {p1, p0}, Lfk4;-><init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l:Landroidx/lifecycle/Observer;

    .line 12
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->n(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->m(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->o(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->showFragment(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V

    const-string p0, "vd_cp_guide_next"

    const-wide/16 p1, 0x246c

    const/4 p3, 0x0

    invoke-static {p3, p3, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic o(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;->a()V

    :cond_0
    const-string p0, "vd_cp_guide_skip"

    const-wide/16 p1, 0x246c

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static showFragment(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V
    .locals 9

    array-length v0, p2

    if-lt p3, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;->a()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    aget-object v0, p2, p3

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->c:Landroid/widget/Button;

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$string;->got_it:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$string;->video_preview_continue:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Lgk4;

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lgk4;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/Class;ILcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V

    invoke-virtual {v0, p3}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setOnNextClick(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lhk4;

    invoke-direct {p0, p1, p4}, Lhk4;-><init>(Landroid/view/ViewGroup;Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;)V

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->setOnSkipClick(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView$a;->a()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->c:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$drawable;->os_btn_big_white:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->os_btn_color_white:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->H(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    add-int/lit8 v0, v0, 0x1b

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43a50000    # 330.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetPx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GuideView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v2, Lcom/transsion/magicvideo/R$id;->tablet:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget v3, Lcom/transsion/magicvideo/R$id;->bt_next:I

    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v0, -0x2

    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    return-void
.end method

.method public g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->guide_motion:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->bt_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->lottie_layer_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->j:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lik4;

    invoke-direct {v1, p0}, Lik4;-><init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->c:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v1, Ljk4;

    invoke-direct {v1, p0}, Ljk4;-><init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->p(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->i()V

    return-void
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/WindowInfoViewModel;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->i:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lwoc;)Z
    .locals 4

    iget p0, p1, Lwoc;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    iget-boolean v0, p1, Lwoc;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gt p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    iget-boolean v3, p1, Lwoc;->g:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lwoc;->c:Z

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_3

    :cond_3
    move p0, v1

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public final synthetic l(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->g:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final synthetic m(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->f:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->i:Lcom/transsion/WindowInfoViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-nez v0, :cond_0

    iput v1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->q(Lwoc;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->s()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->i:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->l:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public q(Lwoc;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->s()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k(Lwoc;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->s()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v2, p1, Lwoc;->a:I

    const/4 v3, 0x3

    if-gt v2, v1, :cond_3

    if-ne v2, v1, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$id;->eTs:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$id;->sTe:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_4

    sget v2, Lcom/transsion/magicvideo/R$id;->fhoTof:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_4
    sget v2, Lcom/transsion/magicvideo/R$id;->fTofho:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_0
    iget-boolean v0, p1, Lwoc;->g:Z

    iget-boolean v2, p1, Lwoc;->c:Z

    iget-boolean v4, p1, Lwoc;->f:Z

    if-eqz v4, :cond_5

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_split_3In4:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    return-void

    :cond_5
    iget v4, p1, Lwoc;->a:I

    if-eqz v4, :cond_15

    if-eq v4, v1, :cond_10

    const/4 v1, 0x2

    if-eq v4, v1, :cond_b

    if-eq v4, v3, :cond_6

    goto/16 :goto_1

    :cond_6
    if-eqz v0, :cond_9

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/16 :goto_1

    :cond_7
    iget p1, p1, Lwoc;->b:I

    if-ne p1, v1, :cond_8

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat_half_open:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/16 :goto_1

    :cond_8
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat_half_open:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_9
    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_a
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_b
    if-eqz v2, :cond_c

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat_full:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_c
    iget p1, p1, Lwoc;->b:I

    if-ne p1, v3, :cond_e

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/16 :goto_1

    :cond_d
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_e
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->j:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->f()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->tablet:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_f
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto/16 :goto_1

    :cond_10
    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lwoc;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_split_3In4:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_11
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_split:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_12
    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->land:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_13
    iget p1, p1, Lwoc;->b:I

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->end:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_1

    :cond_14
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->end:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_15
    if-eqz v2, :cond_17

    invoke-virtual {p1}, Lwoc;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_split_3In4:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_16
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_split:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_17
    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->land:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    goto :goto_1

    :cond_18
    iget p1, p1, Lwoc;->b:I

    if-ne p1, v1, :cond_19

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_1

    :cond_19
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->h:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p1, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    :goto_1
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->u()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->t()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->t()V

    :goto_0
    return-void
.end method

.method public setAndPlayGuideLottie(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/widgets/LottieUtils;->setAnimationWithPreDecodedImages(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnNextClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSkipClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method
