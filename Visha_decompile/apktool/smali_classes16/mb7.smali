.class public abstract Lmb7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroid/graphics/drawable/LayerDrawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public final g:I

.field public h:I

.field public final i:Landroid/graphics/Rect;

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lmb7;->g:I

    const/16 v0, 0x64

    iput v0, p0, Lmb7;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmb7;->i:Landroid/graphics/Rect;

    iput-object p1, p0, Lmb7;->a:Landroid/content/Context;

    iput-object p2, p0, Lmb7;->b:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lmb7;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 0

    iget-object p0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lmb7;->k:Z

    return p0
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmb7;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmb7;->b:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lmb7;->j:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lmb7;->i:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lmb7;->j:Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lmb7;->k:Z

    if-eqz p1, :cond_4

    if-ne v0, v1, :cond_4

    iget-boolean p1, p0, Lmb7;->j:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lmb7;->l:Z

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lmb7;->e(J)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmb7;->b()V

    iget-object p1, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-boolean v1, p0, Lmb7;->j:Z

    iget-object p1, p0, Lmb7;->b:Landroid/view/View;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lmb7;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public e(J)V
    .locals 3

    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    filled-new-array {v1, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lmb7$a;

    invoke-direct {v2, p0}, Lmb7$a;-><init>(Lmb7;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lmb7$b;

    invoke-direct {v2, p0}, Lmb7$b;-><init>(Lmb7;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    iget p2, p0, Lmb7;->h:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmb7;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-boolean v1, p0, Lmb7;->l:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lmb7;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmb7;->l:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lmb7;->e(J)V

    :cond_0
    return-void
.end method

.method public getAnimDuration()I
    .locals 0

    iget p0, p0, Lmb7;->h:I

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnimDuration(I)V
    .locals 0

    iput p1, p0, Lmb7;->h:I

    return-void
.end method

.method public setDrawableNormal(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lmb7;->setDrawableNormal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableNormal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmb7;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lmb7;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDrawablePress(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lmb7;->setDrawablePress(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablePress(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lmb7;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lmb7;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmb7;->e:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmb7;->d:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOpenNewPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lmb7;->k:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmb7;->b:Landroid/view/View;

    return-void
.end method
