.class public abstract Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final g:I

.field public final h:Landroid/animation/ValueAnimator;

.field public final i:I

.field public j:Z

.field public k:Z

.field public l:F

.field public m:F

.field public n:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->j:Z

    iput-boolean v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->k:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->n:Landroid/view/animation/PathInterpolator;

    iput p3, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->g:I

    iput p2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->i:I

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p4, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->b:F

    iput p5, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->c:F

    iput p6, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->d:F

    iput p7, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->e:F

    sget-object p2, Lcom/transsion/widgetsrecanimation/animators/a;->c:Lcom/transsion/widgetsrecanimation/animators/a$a;

    invoke-virtual {p2}, Lcom/transsion/widgetsrecanimation/animators/a$a;->a()F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->m:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->h:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;

    invoke-direct {p3, p0, p8}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c$a;-><init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v2}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->d(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->e(F)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public final d(F)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->m:F

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->l:F

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->k:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->k:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
