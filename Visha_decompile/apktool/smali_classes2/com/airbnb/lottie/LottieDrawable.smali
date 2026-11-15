.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;,
        Lcom/airbnb/lottie/LottieDrawable$a;
    }
.end annotation


# static fields
.field public static final S:Z

.field public static final T:Ljava/util/List;

.field public static final U:Ljava/util/concurrent/Executor;


# instance fields
.field public A:Landroid/graphics/Canvas;

.field public B:Landroid/graphics/Rect;

.field public C:Landroid/graphics/RectF;

.field public D:Landroid/graphics/Paint;

.field public E:Landroid/graphics/Rect;

.field public F:Landroid/graphics/Rect;

.field public G:Landroid/graphics/RectF;

.field public H:Landroid/graphics/RectF;

.field public I:Landroid/graphics/Matrix;

.field public J:Landroid/graphics/Matrix;

.field public K:Z

.field public L:Lcom/airbnb/lottie/AsyncUpdates;

.field public final M:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final N:Ljava/util/concurrent/Semaphore;

.field public O:Landroid/os/Handler;

.field public P:Ljava/lang/Runnable;

.field public final Q:Ljava/lang/Runnable;

.field public R:F

.field public b:Lur5;

.field public final c:Lhu5;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

.field public final h:Ljava/util/ArrayList;

.field public i:Lwx4;

.field public j:Ljava/lang/String;

.field public k:Ls24;

.field public l:Ljava/util/Map;

.field public m:Ljava/lang/String;

.field public final n:Lzs5;

.field public o:Z

.field public p:Z

.field public q:Lcom/airbnb/lottie/model/layer/b;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/airbnb/lottie/RenderMode;

.field public x:Z

.field public final y:Landroid/graphics/Matrix;

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->S:Z

    const-string v0, "reduced-motion"

    const-string v1, "reducedmotion"

    const-string v2, "reduced motion"

    const-string v3, "reduced_motion"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->T:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Llt5;

    invoke-direct {v8}, Llt5;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x23

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->U:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lhu5;

    invoke-direct {v0}, Lhu5;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->d:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z

    sget-object v3, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v3, Lzs5;

    invoke-direct {v3}, Lzs5;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lzs5;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    const/16 v3, 0xff

    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->r:I

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->v:Z

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->w:Lcom/airbnb/lottie/RenderMode;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->x:Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    new-instance v2, Lus5;

    invoke-direct {v2, p0}, Lus5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->M:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    new-instance v1, Lvs5;

    invoke-direct {v1, p0}, Lvs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->Q:Ljava/lang/Runnable;

    const v1, -0x800001

    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->R:F

    invoke-virtual {v0, v2}, Lgb0;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/airbnb/lottie/LottieDrawable;FLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->F0(FLur5;)V

    return-void
.end method

.method public static synthetic b(Lcom/airbnb/lottie/LottieDrawable;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->t0(Lur5;)V

    return-void
.end method

.method public static synthetic c(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->y0(Ljava/lang/String;Lur5;)V

    return-void
.end method

.method public static synthetic d(Lcom/airbnb/lottie/LottieDrawable;ILur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->u0(ILur5;)V

    return-void
.end method

.method public static synthetic e(Lcom/airbnb/lottie/LottieDrawable;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->s0(Lur5;)V

    return-void
.end method

.method public static synthetic f(Lcom/airbnb/lottie/LottieDrawable;FFLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->B0(FFLur5;)V

    return-void
.end method

.method public static synthetic g(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->v0(Ljava/lang/String;Lur5;)V

    return-void
.end method

.method public static synthetic h(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->p0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/airbnb/lottie/LottieDrawable;ILur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->C0(ILur5;)V

    return-void
.end method

.method public static synthetic j(Lcom/airbnb/lottie/LottieDrawable;IILur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->A0(IILur5;)V

    return-void
.end method

.method public static synthetic k(Lcom/airbnb/lottie/LottieDrawable;FLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->E0(FLur5;)V

    return-void
.end method

.method public static synthetic l(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->r0()V

    return-void
.end method

.method public static synthetic m(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;ZLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieDrawable;->z0(Ljava/lang/String;Ljava/lang/String;ZLur5;)V

    return-void
.end method

.method public static synthetic n(Lcom/airbnb/lottie/LottieDrawable;Ltf5;Ljava/lang/Object;Liu5;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieDrawable;->o0(Ltf5;Ljava/lang/Object;Liu5;Lur5;)V

    return-void
.end method

.method public static synthetic o(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->D0(Ljava/lang/String;Lur5;)V

    return-void
.end method

.method public static synthetic p(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->q0()V

    return-void
.end method

.method public static synthetic q(Lcom/airbnb/lottie/LottieDrawable;FLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->x0(FLur5;)V

    return-void
.end method

.method public static synthetic r(Lcom/airbnb/lottie/LottieDrawable;ILur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->w0(ILur5;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->w:Lcom/airbnb/lottie/RenderMode;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Lur5;->q()Z

    move-result v3

    invoke-virtual {v0}, Lur5;->m()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/airbnb/lottie/RenderMode;->useSoftwareRendering(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->x:Z

    return-void
.end method

.method public final synthetic A0(IILur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->i1(II)V

    return-void
.end method

.method public A1(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->S()Lwx4;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {p0}, Lmq5;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lwx4;->e(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-object p1
.end method

.method public final B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final synthetic B0(FFLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->l1(FF)V

    return-void
.end method

.method public B1()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {p0}, Lur5;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final C(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 4

    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final synthetic C0(ILur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->m1(I)V

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public final synthetic D0(Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public final E(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable;->r:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic E0(FLur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->o1(F)V

    return-void
.end method

.method public F(Lcom/airbnb/lottie/LottieFeatureFlag;Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lzs5;

    invoke-virtual {v0, p1, p2}, Lzs5;->a(Lcom/airbnb/lottie/LottieFeatureFlag;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->x()V

    :cond_0
    return-void
.end method

.method public final synthetic F0(FLur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->r1(F)V

    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public G0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->r()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public final H(II)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->A:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->A:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public H0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lws5;

    invoke-direct {v1, p0}, Lws5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->A()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->c0()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->s()V

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->W()Lt16;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, v0, Lt16;->b:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->a1(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->e0()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->Y()F

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->X()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->a1(I)V

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_6
    return-void
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->A:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->A:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->J:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->B:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->C:Landroid/graphics/RectF;

    new-instance v0, Lni5;

    invoke-direct {v0}, Lni5;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->D:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->G:Landroid/graphics/RectF;

    return-void
.end method

.method public I0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lgb0;->removeAllListeners()V

    return-void
.end method

.method public J()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->L:Lcom/airbnb/lottie/AsyncUpdates;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lyh5;->d()Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object p0

    return-object p0
.end method

.method public J0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lgb0;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->M:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lgb0;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public K()Z
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->J()Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public K0(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public L(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->S()Lwx4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lwx4;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public L0(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public M()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->v:Z

    return p0
.end method

.method public M0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public N()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    return p0
.end method

.method public final N0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/b;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->I()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->C:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->C:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->B:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->C(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/airbnb/lottie/model/layer/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {p0, v3, v2, v0}, Lcom/airbnb/lottie/LottieDrawable;->R0(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->j0()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->B:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-lez v3, :cond_5

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->H(II)V

    iget-boolean v5, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->A:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->y:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/LottieDrawable;->r:I

    invoke-virtual {p2, v0, v2, v5}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->I:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->J:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->J:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->H:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->G:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->C(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->E:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->z:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->E:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->F:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public O()Lur5;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    return-object p0
.end method

.method public O0(Ltf5;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lmq5;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    new-instance v1, Ltf5;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Ltf5;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/airbnb/lottie/model/layer/a;->c(Ltf5;ILjava/util/List;Ltf5;)V

    return-object v0
.end method

.method public final P()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public P0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lqs5;

    invoke-direct {v1, p0}, Lqs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->A()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->c0()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->w()V

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->e0()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->Y()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->X()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->a1(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_5
    return-void
.end method

.method public final Q()Ls24;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Ls24;

    if-nez v0, :cond_1

    new-instance v0, Ls24;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ls24;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lr24;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Ls24;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ls24;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Ls24;

    return-object p0
.end method

.method public Q0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->x()V

    return-void
.end method

.method public R()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->l()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final R0(Landroid/graphics/RectF;FF)V
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final S()Lwx4;
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lwx4;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    if-nez v0, :cond_1

    new-instance v0, Lwx4;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v4}, Lur5;->j()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lwx4;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ltx4;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    return-object p0
.end method

.method public S0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->j:Ljava/lang/String;

    return-object p0
.end method

.method public T0(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->L:Lcom/airbnb/lottie/AsyncUpdates;

    return-void
.end method

.method public U(Ljava/lang/String;)Lct5;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lur5;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lct5;

    return-object p0
.end method

.method public U0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->v:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->v:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public V()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    return p0
.end method

.method public V0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/b;->S(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public W()Lt16;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v2, v1}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public W0(Lur5;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->z()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->x()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v1, p1}, Lhu5;->y(Lur5;)V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v1}, Lhu5;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->r1(F)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieDrawable$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieDrawable$a;->a(Lur5;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->s:Z

    invoke-virtual {p1, v1}, Lur5;->v(Z)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->A()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public X()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->n()F

    move-result p0

    return p0
.end method

.method public X0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->Q()Ls24;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ls24;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->o()F

    move-result p0

    return p0
.end method

.method public Y0(Lr24;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->k:Ls24;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ls24;->d(Lr24;)V

    :cond_0
    return-void
.end method

.method public Z()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lur5;->n()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Z0(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public a0()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->k()F

    move-result p0

    return p0
.end method

.method public a1(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lis5;

    invoke-direct {v1, p0, p1}, Lis5;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lhu5;->z(F)V

    return-void
.end method

.method public b0()Lcom/airbnb/lottie/RenderMode;
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->x:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    :goto_0
    return-object p0
.end method

.method public b1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    return-void
.end method

.method public c0()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public c1(Ltx4;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lwx4;->d(Ltx4;)V

    :cond_0
    return-void
.end method

.method public d0()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public d1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->j:Ljava/lang/String;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->K()Z

    move-result v1

    const-string v2, "Drawable#draw"

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Lyh5;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lyh5;->b(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->z1()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v3}, Lhu5;->k()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieDrawable;->r1(F)V

    :cond_3
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    :try_start_1
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->x:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->N0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/b;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->E(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v3, "Lottie crashed in draw!"

    invoke-static {v3, p1}, Lmq5;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->x:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->N0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/b;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->E(Landroid/graphics/Canvas;)V

    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lyh5;->h()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v2}, Lyh5;->c(Ljava/lang/String;)F

    :cond_7
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/b;->P()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->k()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    :goto_3
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->U:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->Q:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :goto_4
    invoke-static {}, Lyh5;->h()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lyh5;->c(Ljava/lang/String;)F

    :cond_8
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/b;->P()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v1}, Lhu5;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->U:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->Q:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    throw p1

    :catch_0
    invoke-static {}, Lyh5;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v2}, Lyh5;->c(Ljava/lang/String;)F

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/b;->P()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->k()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    :goto_5
    return-void
.end method

.method public e0()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->p()F

    move-result p0

    return p0
.end method

.method public e1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->o:Z

    return-void
.end method

.method public f0()Lbha;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f1(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lls5;

    invoke-direct {v1, p0, p1}, Lls5;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lhu5;->A(F)V

    return-void
.end method

.method public g0(Lq24;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->l:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lq24;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lq24;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lq24;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq24;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->Q()Ls24;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ls24;->b(Lq24;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public g1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lss5;

    invoke-direct {v1, p0, p1}, Lss5;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lt16;->b:F

    iget v0, v0, Lt16;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->f1(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable;->r:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public h0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/b;->Q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h1(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Los5;

    invoke-direct {v1, p0, p1}, Los5;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lur5;->p()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {p0}, Lur5;->f()F

    move-result p0

    invoke-static {v0, p0, p1}, Lxp6;->i(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lhu5;->A(F)V

    return-void
.end method

.method public i0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/b;->R()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i1(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lks5;

    invoke-direct {v1, p0, p1, p2}, Lks5;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lhu5;->B(FF)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->S:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->k0()Z

    move-result p0

    return p0
.end method

.method public final j0()Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public j1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lhs5;

    invoke-direct {v1, p0, p1}, Lhs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lt16;->b:F

    float-to-int p1, p1

    iget v0, v0, Lt16;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->i1(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lhu5;->isRunning()Z

    move-result p0

    return p0
.end method

.method public k1(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lrs5;

    invoke-direct {v1, p0, p1, p2, p3}, Lrs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    iget p1, v0, Lt16;->b:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v0, p2}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p2, v0, Lt16;->b:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->i1(II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public l1(FF)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Ljs5;

    invoke-direct {v1, p0, p1, p2}, Ljs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lur5;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v1}, Lur5;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lxp6;->i(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v0}, Lur5;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v1}, Lur5;->f()F

    move-result v1

    invoke-static {v0, v1, p2}, Lxp6;->i(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->i1(II)V

    return-void
.end method

.method public m0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->u:Z

    return p0
.end method

.method public m1(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lms5;

    invoke-direct {v1, p0, p1}, Lms5;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lhu5;->C(I)V

    return-void
.end method

.method public n0(Lcom/airbnb/lottie/LottieFeatureFlag;)Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->n:Lzs5;

    invoke-virtual {p0, p1}, Lzs5;->b(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    move-result p0

    return p0
.end method

.method public n1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lts5;

    invoke-direct {v1, p0, p1}, Lts5;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lur5;->l(Ljava/lang/String;)Lt16;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lt16;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->m1(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic o0(Ltf5;Ljava/lang/Object;Liu5;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->v(Ltf5;Ljava/lang/Object;Liu5;)V

    return-void
.end method

.method public o1(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lxs5;

    invoke-direct {v1, p0, p1}, Lxs5;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lur5;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {v1}, Lur5;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lxp6;->i(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->m1(I)V

    return-void
.end method

.method public final synthetic p0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0}, Lhu5;->k()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/b;->M(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->t:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/b;->K(Z)V

    :cond_1
    return-void
.end method

.method public final synthetic q0()V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public q1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->s:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lur5;->v(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic r0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v1}, Lhu5;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/b;->M(F)V

    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->S:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->K:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->O:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->O:Landroid/os/Handler;

    new-instance v0, Lps5;

    invoke-direct {v0, p0}, Lps5;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->P:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->N:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :goto_2
    return-void
.end method

.method public r1(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lys5;

    invoke-direct {v1, p0, p1}, Lys5;-><init>(Lcom/airbnb/lottie/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "Drawable#setProgress"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    invoke-virtual {p0, p1}, Lur5;->h(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lhu5;->z(F)V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_2
    return-void
.end method

.method public s(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final synthetic s0(Lur5;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->H0()V

    return-void
.end method

.method public s1(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->w:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->A()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->r:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lmq5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->H0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p1}, Lhu5;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->G0()V

    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->H0()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->G()V

    return-void
.end method

.method public t(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public final synthetic t0(Lur5;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->P0()V

    return-void
.end method

.method public t1(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public u(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lgb0;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final synthetic u0(ILur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->a1(I)V

    return-void
.end method

.method public u1(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lhu5;->setRepeatMode(I)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Ltf5;Ljava/lang/Object;Liu5;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    new-instance v1, Lns5;

    invoke-direct {v1, p0, p1, p2, p3}, Lns5;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ltf5;Ljava/lang/Object;Liu5;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Ltf5;->c:Ltf5;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/airbnb/lottie/model/layer/b;->h(Ljava/lang/Object;Liu5;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ltf5;->d()Luf5;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ltf5;->d()Luf5;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Luf5;->h(Ljava/lang/Object;Liu5;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->O0(Ltf5;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltf5;

    invoke-virtual {v1}, Ltf5;->d()Luf5;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Luf5;->h(Ljava/lang/Object;Liu5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    sget-object p1, Lit5;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->a0()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->r1(F)V

    :cond_4
    return-void
.end method

.method public final synthetic v0(Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->g1(Ljava/lang/String;)V

    return-void
.end method

.method public v1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->f:Z

    return-void
.end method

.method public w(Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->d:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lyh5;->f()Llp8;

    move-result-object p0

    invoke-interface {p0, p1}, Llp8;->a(Landroid/content/Context;)Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    move-result-object p0

    sget-object p1, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final synthetic w0(ILur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->f1(I)V

    return-void
.end method

.method public w1(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lhu5;->E(F)V

    return-void
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/layer/b;

    invoke-static {v0}, Lvi5;->a(Lur5;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    invoke-virtual {v0}, Lur5;->k()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lur5;)V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->t:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/model/layer/b;->K(Z)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable;->p:Z

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/layer/b;->S(Z)V

    return-void
.end method

.method public final synthetic x0(FLur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->h1(F)V

    return-void
.end method

.method public x1(Lbha;)V
    .locals 0

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    return-void
.end method

.method public final synthetic y0(Ljava/lang/String;Lur5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->j1(Ljava/lang/String;)V

    return-void
.end method

.method public y1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {p0, p1}, Lhu5;->F(Z)V

    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->g:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->q:Lcom/airbnb/lottie/model/layer/b;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->i:Lwx4;

    const v0, -0x800001

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->R:F

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v0}, Lhu5;->i()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final synthetic z0(Ljava/lang/String;Ljava/lang/String;ZLur5;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->k1(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final z1()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->b:Lur5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->R:F

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->c:Lhu5;

    invoke-virtual {v3}, Lhu5;->k()F

    move-result v3

    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->R:F

    invoke-virtual {v0}, Lur5;->d()F

    move-result p0

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x42480000    # 50.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
