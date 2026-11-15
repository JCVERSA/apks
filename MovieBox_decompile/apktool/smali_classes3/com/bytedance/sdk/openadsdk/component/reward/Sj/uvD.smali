.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final EjP:I

.field private final HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private Jcg:Landroid/animation/AnimatorSet;

.field Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

.field private final TKC:Landroid/content/Context;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->TKC:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    .line 13
    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->EjP:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public EjP()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->TKC:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->HiB()Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 47
    .line 48
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->EjP:I

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    return-void
.end method

.method public TKC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sP()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x50

    .line 3
    .line 4
    filled-new-array {v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x51

    .line 26
    .line 27
    const/16 v2, 0x63

    .line 28
    .line 29
    filled-new-array {v1, v2}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-wide/16 v2, 0xbb8

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$2;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
