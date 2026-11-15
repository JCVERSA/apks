.class public Lcom/bytedance/sdk/openadsdk/common/TzV;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Landroid/widget/ImageView;

.field final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final HiB:Landroid/widget/RelativeLayout;

.field private final Jcg:Landroid/content/Context;

.field Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

.field final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Ym:I

.field private aa:Z

.field sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field private uA:Landroid/widget/TextView;

.field private final vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 24
    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/high16 p2, 0x42300000    # 44.0f

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private HiB()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->kb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Dq:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Uc:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->uA:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->xu:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->gR:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->uA:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    .line 64
    .line 65
    const-string v3, "tt_web_title_default"

    .line 66
    .line 67
    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TzV$1;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private Jcg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/TzV;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/TzV;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    return p1
.end method

.method private vS()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 15
    .line 16
    const-string v1, "landing_page"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setDislikeSource(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 22
    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TzV$6;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setCallback(Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x1020002

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :goto_1
    const-string v1, "initDislike error"

    .line 72
    .line 73
    const-string v2, "TTTitleNewStyleManager"

    .line 74
    .line 75
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj()V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public Sj()V
    .locals 4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    neg-int v3, v2

    if-ne v1, v3, :cond_0

    neg-int v1, v2

    const/4 v2, 0x0

    .line 8
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/TzV$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TzV$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setProgress(I)V

    return-void
.end method

.method public TKC()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Dq:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    .line 18
    .line 19
    neg-int v1, v1

    .line 20
    const/4 v2, 0x0

    .line 21
    filled-new-array {v2, v1}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-wide/16 v2, 0x12c

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/TzV$4;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TzV$5;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_0
    return-void
.end method
