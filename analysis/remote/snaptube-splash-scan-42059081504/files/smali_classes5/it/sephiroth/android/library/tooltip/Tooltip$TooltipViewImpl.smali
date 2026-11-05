.class public Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lit/sephiroth/android/library/tooltip/Tooltip$d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/tooltip/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TooltipViewImpl"
.end annotation


# static fields
.field public static final x0:Ljava/util/List;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/CharSequence;

.field public E:Landroid/graphics/Rect;

.field public F:Landroid/view/View;

.field public G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

.field public H:Lcom/airbnb/lottie/LottieAnimationView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/graphics/Typeface;

.field public K:I

.field public L:Landroid/animation/ValueAnimator;

.field public M:Lit/sephiroth/android/library/tooltip/Tooltip$a;

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:Z

.field public R:I

.field public S:Z

.field public T:Z

.field public U:F

.field public V:Ljava/lang/Runnable;

.field public W:Ljava/lang/Runnable;

.field public final a:Ljava/util/List;

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Rect;

.field public final f0:Landroid/view/View$OnAttachStateChangeListener;

.field public final g:J

.field public final h:I

.field public final i:Landroid/graphics/Point;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:Z

.field public final o:J

.field public final p:Landroid/graphics/Rect;

.field public final q:[I

.field public final r:Landroid/os/Handler;

.field public final s:Landroid/graphics/Rect;

.field public final t:F

.field public u:Z

.field public v:Lit/sephiroth/android/library/tooltip/Tooltip$b;

.field public final v0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

.field public final w0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public x:Landroid/animation/Animator;

.field public y:Z

.field public z:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    sget-object v2, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->LEFT:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->RIGHT:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->TOP:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->BOTTOM:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->CENTER:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x0:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)Lit/sephiroth/android/library/tooltip/Tooltip$b;
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v:Lit/sephiroth/android/library/tooltip/Tooltip$b;

    return-object p0
.end method

.method public static synthetic b(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic c(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic d(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)J
    .locals 2

    iget-wide v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->m:J

    return-wide v0
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f0:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TooltipView"

    const/4 v1, 0x6

    const-string v2, "[%d] removeOnAttachStateObserver failed"

    invoke-static {p1, v1, v2, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TooltipView"

    const/4 v1, 0x6

    const-string v2, "[%d] removePreDrawObserver failed"

    invoke-static {p1, v1, v2, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final C(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "TooltipView"

    const/4 v2, 0x4

    const-string v3, "[%d] removeListeners"

    invoke-static {v0, v2, v3, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->B(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A(Landroid/view/View;)V

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    iget v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->t:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public final E()V
    .locals 6

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "TooltipView"

    const/4 v4, 0x4

    const-string v5, "[%d] show"

    invoke-static {v0, v4, v5, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, "[%d] not attached!"

    invoke-static {v0, v2, v3, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->o:J

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->n(J)V

    return-void
.end method

.method public final F()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->M:Lit/sephiroth/android/library/tooltip/Tooltip$a;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    iget v4, v3, Lit/sephiroth/android/library/tooltip/Tooltip$a;->a:I

    int-to-float v4, v4

    iget-wide v5, v3, Lit/sephiroth/android/library/tooltip/Tooltip$a;->c:J

    iget v3, v3, Lit/sephiroth/android/library/tooltip/Tooltip$a;->b:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    sget-object v7, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->TOP:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-eq v3, v7, :cond_2

    sget-object v7, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->BOTTOM:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x2

    :cond_3
    :goto_1
    if-ne v3, v1, :cond_4

    const-string v3, "translationY"

    goto :goto_2

    :cond_4
    const-string v3, "translationX"

    :goto_2
    neg-float v7, v4

    new-array v8, v1, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    aput v4, v8, v0

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final G()V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final e(ZIIII)Z
    .locals 4

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v1, p4

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    add-int/2addr v2, p4

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, p5

    invoke-virtual {v0, v1, v3, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-ge p4, p2, :cond_0

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p4, p5, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->K:I

    invoke-static {p1, p2, p4}, Lo/lm8;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v2, v0, v1

    if-le p2, v2, :cond_1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int v0, p4, v1

    if-ge p2, v0, :cond_2

    add-int/2addr p4, v1

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int/2addr p4, v0

    if-le p2, p4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int p4, p3, v0

    if-ge p2, p4, :cond_4

    add-int/2addr p3, v0

    sub-int/2addr p3, p2

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    return p5
.end method

.method public final f(ZIII)V
    .locals 4

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v1, p3

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v2, p4

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/2addr v3, p3

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->K:I

    invoke-static {p1, p3, p4}, Lo/lm8;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v1, p4, v0

    const/4 v2, 0x0

    if-le p3, v1, :cond_0

    sub-int/2addr p4, v0

    sub-int/2addr p4, p3

    invoke-virtual {p1, v2, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p3, p1, Landroid/graphics/Rect;->top:I

    add-int p4, p2, v0

    if-ge p3, p4, :cond_1

    add-int/2addr p2, v0

    sub-int/2addr p2, p3

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v1, p4, v0

    if-le p2, v1, :cond_2

    sub-int/2addr p4, v0

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int p4, p3, v0

    if-ge p2, p4, :cond_3

    add-int/2addr p3, v0

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final g(ZIIII)Z
    .locals 4

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {v0, v2, p4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-ge p4, p2, :cond_0

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    neg-int p2, p2

    invoke-virtual {p4, p2, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->K:I

    invoke-static {p1, p2, p4}, Lo/lm8;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v1, p4, v0

    if-le p2, v1, :cond_1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    sub-int p4, p3, v0

    if-ge p2, p4, :cond_2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    add-int/2addr p4, v0

    if-ge p2, p4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int p4, p3, v0

    if-le p2, p4, :cond_4

    sub-int/2addr p3, p2

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    return p5
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    return-object v0
.end method

.method public getTooltipId()I
    .locals 1

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    return v0
.end method

.method public final h(ZIIII)Z
    .locals 5

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr v1, p5

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {v0, v2, v1, v4, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-ge p4, p2, :cond_0

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p4, p2, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->K:I

    invoke-static {p1, p2, p4}, Lo/lm8;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v1, p4, v0

    if-le p2, v1, :cond_1

    sub-int/2addr p4, v0

    sub-int/2addr p4, p2

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int p4, p3, v0

    if-ge p2, p4, :cond_2

    add-int/2addr p3, v0

    sub-int/2addr p3, p2

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int/2addr p4, v0

    if-le p2, p4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int p4, p3, v0

    if-ge p2, p4, :cond_4

    add-int/2addr p3, v0

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    return p5
.end method

.method public final i(ZIIII)Z
    .locals 3

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->T:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p5

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->U:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    add-int/2addr p4, v0

    add-int/2addr p5, v1

    invoke-virtual {v2, v0, v1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-ge p4, p2, :cond_1

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    neg-int p2, p2

    invoke-virtual {p4, p5, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    if-eqz p1, :cond_5

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->K:I

    invoke-static {p1, p2, p4}, Lo/lm8;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    sub-int v2, v0, v1

    if-le p2, v2, :cond_2

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v1

    if-ge p2, p4, :cond_3

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1, p5}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->P:I

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, p4

    if-le p2, v0, :cond_5

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    return p5
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->n:Z

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->l(Z)V

    return-void
.end method

.method public final k(Ljava/util/List;Z)V
    .locals 17

    move-object/from16 v6, p0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_2

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v:Lit/sephiroth/android/library/tooltip/Tooltip$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, v6}, Lit/sephiroth/android/library/tooltip/Tooltip$b;->a(Lit/sephiroth/android/library/tooltip/Tooltip$d;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    move-object/from16 v12, p1

    invoke-interface {v12, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    sget-boolean v0, Lit/sephiroth/android/library/tooltip/Tooltip;->a:Z

    const-string v14, "TooltipView"

    if-eqz v0, :cond_3

    iget v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v10

    aput-object v13, v3, v11

    aput-object v1, v3, v9

    aput-object v2, v3, v8

    const-string v0, "[%s] calculatePositions. gravity: %s, GRAVITY_LIST: %d, restrict: %b"

    invoke-static {v14, v8, v0, v3}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget v15, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    if-eqz v0, :cond_4

    sget-object v1, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->CENTER:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-eq v13, v1, :cond_4

    invoke-virtual {v0}, Lit/sephiroth/android/library/tooltip/TooltipOverlay;->getLayoutMargins()I

    move-result v0

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v9

    add-int/2addr v1, v0

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v9

    add-int/2addr v2, v0

    move v3, v1

    goto :goto_0

    :cond_4
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5

    iget-boolean v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->u:Z

    if-eqz v1, :cond_5

    sget-object v1, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->CENTER:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-eq v13, v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v9

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v9

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->i:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int v5, v1, v15

    add-int/2addr v1, v15

    invoke-virtual {v0, v4, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k:I

    add-int v4, v0, v1

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->BOTTOM:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v8, 0x5

    if-ne v13, v0, :cond_7

    move-object/from16 v0, p0

    move v3, v1

    move/from16 v1, p2

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "no enough space for BOTTOM"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v14, v8, v0, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k(Ljava/util/List;Z)V

    return-void

    :cond_7
    move/from16 v16, v1

    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->TOP:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-ne v13, v0, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->i(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "no enough space for TOP"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v14, v8, v0, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k(Ljava/util/List;Z)V

    return-void

    :cond_8
    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->RIGHT:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "no enough space for RIGHT"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v14, v8, v0, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k(Ljava/util/List;Z)V

    return-void

    :cond_9
    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->LEFT:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-ne v13, v0, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->g(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "no enough space for LEFT"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v14, v8, v0, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k(Ljava/util/List;Z)V

    return-void

    :cond_a
    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->CENTER:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-ne v13, v0, :cond_b

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v6, v0, v4, v5, v1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f(ZIII)V

    :cond_b
    sget-boolean v0, Lit/sephiroth/android/library/tooltip/Tooltip;->a:Z

    if-eqz v0, :cond_c

    iget v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    iget v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v1, v4, v11

    aput-object v2, v4, v9

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "[%d] mScreenRect: %s, mTopRule: %d, statusBar: %d"

    invoke-static {v14, v9, v0, v4}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    aput-object v1, v2, v11

    const-string v0, "[%d] mDrawRect: %s"

    invoke-static {v14, v9, v0, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    aput-object v1, v2, v11

    const-string v0, "[%d] mViewRect: %s"

    invoke-static {v14, v9, v0, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    if-eq v13, v0, :cond_e

    const-string v1, "gravity changed from %s to %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    aput-object v13, v2, v11

    const/4 v0, 0x6

    invoke-static {v14, v0, v1, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iput-object v13, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    sget-object v0, Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;->CENTER:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    const/4 v1, 0x0

    if-ne v13, v0, :cond_d

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    if-eqz v2, :cond_d

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    goto :goto_1

    :cond_d
    if-ne v13, v0, :cond_e

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_e

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_e
    :goto_1
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    if-eqz v0, :cond_f

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_f
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_11

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->u:Z

    if-eqz v0, :cond_10

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_10
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    :goto_2
    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    iget-object v1, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->N:Z

    if-nez v0, :cond_12

    iput-boolean v11, v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->N:Z

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F()V

    :cond_12
    :goto_3
    return-void
.end method

.method public final l(Z)V
    .locals 3

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->a:Ljava/util/List;

    sget-object v1, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->a:Ljava/util/List;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->a:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w:Lit/sephiroth/android/library/tooltip/Tooltip$Gravity;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->a:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->k(Ljava/util/List;Z)V

    return-void
.end method

.method public final m(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    return v0
.end method

.method public n(J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "TooltipView"

    const/4 v4, 0x4

    const-string v5, "[%d] fadeIn"

    invoke-static {v2, v4, v5, v3}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y:Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-wide p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->b:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    new-instance p2, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$e;

    invoke-direct {p2, p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$e;-><init>(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->C:Z

    if-nez p1, :cond_4

    iget-wide p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->m:J

    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v(J)V

    :cond_4
    :goto_0
    iget-wide p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->g:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_5

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r:Landroid/os/Handler;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r:Landroid/os/Handler;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->V:Ljava/lang/Runnable;

    iget-wide v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->g:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public o(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v3, "TooltipView"

    const/4 v4, 0x4

    const-string v6, "[%d] fadeOut(%d)"

    invoke-static {v3, v4, v6, v5}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iput-boolean v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y:Z

    const-wide/16 v5, 0x0

    cmp-long v3, p1, v5

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v1, v1, [F

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    new-instance p2, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$a;

    invoke-direct {p2, p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$a;-><init>(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->remove()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "TooltipView"

    const/4 v3, 0x4

    const-string v4, "[%d] onAttachedToWindow"

    invoke-static {v0, v3, v4, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput-boolean v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "TooltipView"

    const/4 v3, 0x4

    const-string v4, "[%d] onDetachedFromWindow"

    invoke-static {v0, v3, v4, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G()V

    iput-boolean v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    if-lez p4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    if-lez p4, :cond_3

    iget-boolean p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->u:Z

    if-nez p4, :cond_2

    const/16 p2, 0x3c

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->m(I)F

    move-result p2

    float-to-int p2, p2

    const/16 p4, 0x44

    invoke-virtual {p0, p4}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->m(I)F

    move-result p4

    float-to-int p4, p4

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p5, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iput p2, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iput p4, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p5, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p4, p5, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_7

    iget p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->R:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eq p2, p1, :cond_7

    :cond_5
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->q:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->p:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->q:[I

    aget p3, p2, p3

    const/4 p4, 0x1

    aget p2, p2, p4

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->E:Landroid/graphics/Rect;

    iget-object p2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->j()V

    :cond_7
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->R:I

    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    const/4 v0, 0x2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    const/4 v4, 0x1

    aput-object v5, v7, v4

    aput-object v6, v7, v0

    const-string v4, "TooltipView"

    const-string v5, "[%d] onMeasure myWidth: %d, myHeight: %d"

    invoke-static {v4, v0, v5, v7}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    const/16 v4, 0x8

    const/high16 v5, -0x80000000

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v6, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    :goto_4
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->y:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iget v6, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->C:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v5

    aput-object v7, v9, v3

    aput-object v8, v9, v2

    const-string v6, "TooltipView"

    const-string v7, "[%d] onTouchEvent: %d, active: %b"

    invoke-static {v6, v0, v7, v9}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v7, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->C:Z

    if-nez v7, :cond_1

    iget-wide v7, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->m:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const/4 p1, 0x5

    const-string v1, "[%d] not yet activated..."

    invoke-static {v6, p1, v1, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    if-nez v4, :cond_9

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v7, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v5

    aput-object v4, v8, v3

    const-string v7, "[%d] text rect: %s"

    invoke-static {v6, v2, v7, v8}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v8, "containsTouch: %b"

    invoke-static {v6, v2, v8, v9}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    const-string v10, "[%d] overlay rect: %s"

    if-eqz v9, :cond_2

    invoke-virtual {v9, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v4, v9, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    or-int/2addr v7, v9

    iget v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v9, v11, v5

    aput-object v4, v11, v3

    invoke-static {v6, v2, v10, v11}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v4, v9, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    or-int/2addr v7, v9

    iget v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v9, v11, v5

    aput-object v4, v11, v3

    invoke-static {v6, v2, v10, v11}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    sget-boolean v9, Lit/sephiroth/android/library/tooltip/Tooltip;->a:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v9, v11, v5

    aput-object v10, v11, v3

    const-string v9, "[%d] containsTouch: %b"

    invoke-static {v6, v2, v9, v11}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget v9, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->f:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v5

    aput-object v10, v0, v3

    aput-object v11, v0, v2

    aput-object v12, v0, v1

    const-string v9, "[%d] mDrawRect: %s, point: %g, %g"

    invoke-static {v6, v2, v9, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v4, v9, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v0, v9, v5

    aput-object v4, v9, v3

    aput-object p1, v9, v2

    const-string p1, "[%d] real drawing rect: %s, contains: %b"

    invoke-static {v6, v2, p1, v9}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-boolean p1, Lit/sephiroth/android/library/tooltip/Tooltip;->a:Z

    if-eqz p1, :cond_5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v6, v1, v8, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->d(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "touchOutside: %b"

    invoke-static {v6, v1, p1, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->b(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "consumeOutside: %b"

    invoke-static {v6, v1, p1, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->c(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "touchInside: %b"

    invoke-static {v6, v1, p1, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->a(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "consumeInside: %b"

    invoke-static {v6, v1, p1, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v7, :cond_7

    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3, v3, v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->t(ZZZ)V

    :cond_6
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->a(I)Z

    move-result p1

    return p1

    :cond_7
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->d(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v3, v5, v5}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->t(ZZZ)V

    :cond_8
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->h:I

    invoke-static {p1}, Lit/sephiroth/android/library/tooltip/Tooltip$c;->b(I)Z

    move-result p1

    return p1

    :cond_9
    :goto_1
    return v5
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->L:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-wide v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->o:J

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->q(J)V

    return-void
.end method

.method public final q(J)V
    .locals 4

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "TooltipView"

    const/4 v1, 0x4

    const-string v3, "[%d] hide(%d)"

    invoke-static {v0, v1, v3, v2}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->o(J)V

    return-void
.end method

.method public final r()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->B:Z

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-boolean v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->B:Z

    iget v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "TooltipView"

    const-string v5, "[%d] initializeView"

    invoke-static {v3, v0, v5, v4}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->j:I

    invoke-virtual {v5, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    iget-object v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    sget v6, Lit/sephiroth/android/library/tooltip/R$id;->close:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$c;

    invoke-direct {v6, p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$c;-><init>(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v6, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->S:Z

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$d;

    invoke-direct {v5, p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$d;-><init>(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    iget-object v5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->D:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->l:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget v4, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v5, v6, v2

    const-string v2, "[%d] maxWidth: %d"

    invoke-static {v3, v0, v2, v6}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->Q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    iget v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->J:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->G:Lit/sephiroth/android/library/tooltip/TooltipOverlay;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->O:Z

    if-nez v0, :cond_8

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->D()V

    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "TooltipView"

    const/4 v2, 0x4

    const-string v3, "[%d] remove()"

    invoke-static {v0, v2, v3, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->x()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->A:Z

    return v0
.end method

.method public setText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->D:Ljava/lang/CharSequence;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final t(ZZZ)V
    .locals 7

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const-string v0, "TooltipView"

    const-string v1, "[%d] onClose. fromUser: %b, containsTouch: %b, immediate: %b"

    invoke-static {v0, v4, v1, v5}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v1

    if-nez v1, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    const/4 p2, 0x5

    const-string p3, "not yet attached!"

    invoke-static {v0, p2, p3, p1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v:Lit/sephiroth/android/library/tooltip/Tooltip$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lit/sephiroth/android/library/tooltip/Tooltip$b;->c(Lit/sephiroth/android/library/tooltip/Tooltip$d;ZZ)V

    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->H:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->l()V

    :cond_2
    if-eqz p3, :cond_3

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->o:J

    :goto_0
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->q(J)V

    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, v0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->t(ZZZ)V

    return-void
.end method

.method public v(J)V
    .locals 5

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "TooltipView"

    const-string v4, "[%d] postActivate: %d"

    invoke-static {v1, v2, v4, v3}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r:Landroid/os/Handler;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->C:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r:Landroid/os/Handler;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->r:Landroid/os/Handler;

    iget-object v1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 4

    iget v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "TooltipView"

    const/4 v2, 0x4

    const-string v3, "[%d] removeFromParent"

    invoke-static {v0, v2, v3, v1}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->w()V

    sget-object v1, Lo/a58;->a:Landroid/os/Handler;

    new-instance v2, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$b;

    invoke-direct {v2, p0, v0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl$b;-><init>(Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;Landroid/view/ViewParent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TooltipView"

    const/4 v1, 0x6

    const-string v2, "[%d] removeGlobalLayoutObserver failed"

    invoke-static {p1, v1, v2, v0}, Lo/lm8;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->v:Lit/sephiroth/android/library/tooltip/Tooltip$b;

    iget-object v0, p0, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/tooltip/Tooltip$TooltipViewImpl;->C(Landroid/view/View;)V

    :cond_0
    return-void
.end method
