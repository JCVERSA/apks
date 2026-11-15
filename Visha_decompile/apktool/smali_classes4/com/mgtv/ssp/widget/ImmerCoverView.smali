.class public Lcom/mgtv/ssp/widget/ImmerCoverView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/control/b;


# instance fields
.field public a:Lcom/mgtv/ssp/bean/VideoInfoBean;

.field protected b:Landroid/widget/ProgressBar;

.field public c:Landroid/widget/LinearLayout;

.field d:Landroid/animation/ValueAnimator;

.field e:Z

.field f:Z

.field private g:Lcom/mgtv/ssp/adapter/listener/a;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/mgtv/ssp/control/a;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/FrameLayout;

.field private p:Lcom/mgtv/ssp/immersion/a/a;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/mgtv/ssp/widget/ImmerCoverView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/mgtv/ssp/widget/ImmerCoverView$1;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    .line 3
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->c()V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/mgtv/ssp/widget/ImmerCoverView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mgtv/ssp/widget/ImmerCoverView$1;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    .line 6
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->c()V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/mgtv/ssp/widget/ImmerCoverView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mgtv/ssp/widget/ImmerCoverView$1;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    .line 9
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/widget/ImmerCoverView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/control/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->j:Lcom/mgtv/ssp/control/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/widget/ImmerCoverView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$layout;->layout_cover_control_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    sget v0, Lcom/mgtv/ssp/R$id;->iv_thumb:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/mgtv/ssp/R$id;->play_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    .line 5
    new-instance v1, Lcom/mgtv/ssp/widget/ImmerCoverView$2;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/widget/ImmerCoverView$2;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lcom/mgtv/ssp/R$id;->loading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    .line 7
    sget v0, Lcom/mgtv/ssp/R$id;->ll_bottom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    sget v0, Lcom/mgtv/ssp/R$id;->net_warning_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    .line 12
    sget v0, Lcom/mgtv/ssp/R$id;->status_btn:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->l:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/mgtv/ssp/widget/ImmerCoverView$3;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/widget/ImmerCoverView$3;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget v0, Lcom/mgtv/ssp/R$id;->view_immer_topositive:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->m:Landroid/view/View;

    .line 15
    sget v0, Lcom/mgtv/ssp/R$id;->tv_immer_topositive:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->n:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->m:Landroid/view/View;

    new-instance v1, Lcom/mgtv/ssp/widget/ImmerCoverView$4;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/widget/ImmerCoverView$4;-><init>(Lcom/mgtv/ssp/widget/ImmerCoverView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lcom/mgtv/ssp/R$id;->layout_error:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->o:Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/immersion/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->p:Lcom/mgtv/ssp/immersion/a/a;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "#10FF4500"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->n:Landroid/view/View;

    const v1, -0x1900bb00

    const v2, -0xbb00

    const v3, 0x10ff4500

    const v4, -0x7f00bb00

    const v5, -0x3300bb00

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 9
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/mgtv/ssp/widget/ImmerCoverView;)Lcom/mgtv/ssp/adapter/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->g:Lcom/mgtv/ssp/adapter/listener/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public attach(Lcom/mgtv/ssp/control/a;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->j:Lcom/mgtv/ssp/control/a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "#191A1B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->q:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getThumb()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onLockStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/mgtv/ssp/R$string;->mgplayer_error_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPlayerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/animation/Animation;)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->i:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->f:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->b()V

    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->e:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->e:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->e:Z

    invoke-virtual {p0}, Lcom/mgtv/ssp/widget/ImmerCoverView;->b()V

    :goto_0
    return-void
.end method

.method public setAutoPlayClickListener(Lcom/mgtv/ssp/immersion/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->p:Lcom/mgtv/ssp/immersion/a/a;

    return-void
.end method

.method public setOnItemClickListener(Lcom/mgtv/ssp/adapter/listener/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->g:Lcom/mgtv/ssp/adapter/listener/a;

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    return-void
.end method

.method public setVideoInfo(Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 1

    iput-object p1, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->a:Lcom/mgtv/ssp/bean/VideoInfoBean;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactSchema()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactVcode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->m:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mgtv/ssp/widget/ImmerCoverView;->m:Landroid/view/View;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    :goto_1
    return-void
.end method
