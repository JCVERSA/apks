.class public Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->T1(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:[I

.field public final synthetic g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

.field public final synthetic h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;ZIZ[ILcom/transsion/playercommon/widgets/RoundFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    iput-boolean p3, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->c:Z

    iput p4, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->d:I

    iput-boolean p5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->e:Z

    iput-object p6, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    iput-object p7, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->H1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->j0:[F

    :goto_0
    iput-object v0, v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->j0:[F

    if-nez v0, :cond_2

    iget-object p1, v1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->c:Z

    const/16 v2, 0x1f4

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->d:I

    int-to-float v1, v1

    iget-boolean v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->e:Z

    if-eqz v5, :cond_3

    move v2, v4

    :cond_3
    int-to-float v2, v2

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v6, v5, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v2, v6

    iget v5, v5, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    add-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget-object v2, v2, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->j0:[F

    aget v2, v2, v4

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    aget v4, v5, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v2, v2, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-boolean v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->e:Z

    if-eqz v5, :cond_5

    move v2, v4

    :cond_5
    int-to-float v2, v2

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v6, v5, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    mul-float/2addr v2, v6

    iget v6, v5, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->l0:F

    add-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget-object v2, v5, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->j0:[F

    aget v2, v2, v4

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    aget v4, v5, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v2, v2, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v5, v4, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->m0:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    iget-object v4, v4, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->j0:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->g:Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->f:[I

    aget v2, v5, v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    long-to-float v2, v5

    div-float/2addr v2, v3

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget v2, v2, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->n0:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->h:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    iget-object p1, p1, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->Z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$f;->b:Lcom/transsion/magicvideo/widgets/VideoGridDragAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    return-void

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoDragBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
