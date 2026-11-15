.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioAnimationView;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/LinearLayout;

.field public final synthetic f:[I

.field public final synthetic g:[I

.field public final synthetic h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Lcom/transsion/audio/widgets/AudioAnimationView;ZLandroid/view/View;Landroid/widget/LinearLayout;[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->b:Lcom/transsion/audio/widgets/AudioAnimationView;

    iput-boolean p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->c:Z

    iput-object p4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->f:[I

    iput-object p7, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->g:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->M1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F

    :goto_0
    iput-object v0, v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDragBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v1, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F

    if-nez v1, :cond_2

    iget-object p1, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->b:Lcom/transsion/audio/widgets/AudioAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->b:Lcom/transsion/audio/widgets/AudioAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->c:Z

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v4, v4, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F

    aget v3, v4, v3

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget v3, v3, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->f:[I

    aget v1, v1, v3

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->g:[I

    aget v4, v4, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v4, v4, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->f:[I

    aget v3, v5, v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    long-to-float v3, v5

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget v3, v3, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->f:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget v5, v4, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    iget-object v4, v4, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h0:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->f:[I

    aget v3, v5, v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    long-to-float v3, v5

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget v2, v2, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->b:Lcom/transsion/audio/widgets/AudioAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->h:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object p1, p1, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;->b:Lcom/transsion/audio/widgets/AudioAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method
