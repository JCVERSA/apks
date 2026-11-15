.class public Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ljxb$a;
.implements Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;,
        Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;,
        Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;,
        Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;
    }
.end annotation


# static fields
.field public static final MAX_SCALE:F = 6.0f

.field public static final MIN_SCALE:F = 0.25f


# instance fields
.field public A:I

.field public B:Z

.field public C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

.field public D:I

.field public E:Z

.field public F:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Landroid/view/SurfaceView;

.field public K:Landroid/view/SurfaceView;

.field public L:Landroid/widget/ImageView;

.field public final M:Landroid/view/SurfaceHolder$Callback;

.field public final N:Landroid/view/View$OnLayoutChangeListener;

.field public final O:[F

.field public final P:Ljava/lang/Runnable;

.field public Q:Lcom/transsion/WindowInfoViewModel;

.field public R:Landroidx/lifecycle/Observer;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:[I

.field public g:I

.field public h:I

.field public i:I

.field public isDragMode:Z

.field public isDragged:Z

.field public isOrigValue:Z

.field public isScaleMode:Z

.field public j:I

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Matrix;

.field public final o:Landroid/graphics/Matrix;

.field public final p:Landroid/graphics/Matrix;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Ljxb;

.field public u:Landroid/view/SurfaceHolder;

.field public v:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

.field public w:Landroid/widget/FrameLayout;

.field public final x:Lcom/transsion/magicvideo/data/VideoDuration;

.field public y:Landroid/net/Uri;

.field public z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3f8ccccd    # 1.1f

    .line 4
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->b:F

    const p1, 0x3f666666    # 0.9f

    .line 5
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->c:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->d:F

    const p1, 0x3ba3d70a    # 0.005f

    .line 7
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->e:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    .line 9
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragMode:Z

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    .line 11
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragged:Z

    const/4 p3, 0x2

    .line 12
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->f:[I

    const/16 p3, 0x438

    .line 13
    iput p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    const/16 v0, 0x780

    .line 14
    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    .line 15
    iput p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    .line 16
    new-instance p3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    .line 17
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    .line 18
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    .line 19
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->o:Landroid/graphics/Matrix;

    .line 21
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    .line 22
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s:I

    .line 23
    new-instance p3, Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-direct {p3}, Lcom/transsion/magicvideo/data/VideoDuration;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x:Lcom/transsion/magicvideo/data/VideoDuration;

    .line 24
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->A:I

    .line 25
    iput p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->D:I

    .line 26
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->G:Z

    .line 27
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->M:Landroid/view/SurfaceHolder$Callback;

    .line 28
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$b;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->N:Landroid/view/View$OnLayoutChangeListener;

    const/16 p1, 0x9

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->O:[F

    .line 30
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$3;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$3;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->P:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->R:Landroidx/lifecycle/Observer;

    .line 32
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->v()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->w(Lwoc;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->v:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Lcom/transsion/magicvideo/widgets/ScaleStatusView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->o:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->G:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->B:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z()V

    return-void
.end method


# virtual methods
.method public checkBorder()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    sub-float/2addr v2, v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    return-void
.end method

.method public controlVideoRect([F)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p0, v3, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(ZZ)V

    return-void
.end method

.method public findMatchSubtitleSurfaceView(Landroid/view/SurfaceHolder;)Landroid/view/SurfaceView;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public fixVideoSize(IIIIII)V
    .locals 8

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p3

    mul-float/2addr v0, p2

    int-to-float v1, p4

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->A:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ne v0, v4, :cond_0

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p2, p4

    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    move p4, p1

    move p1, p2

    move p2, v6

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p2, p3

    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    move p3, p1

    move p1, v6

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, v5, v5, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->f:[I

    add-int/2addr p2, p5

    aput p2, p3, v6

    add-int/2addr p1, p6

    aput p1, p3, v4

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    :cond_1
    const/4 v7, 0x4

    if-ne v7, v2, :cond_3

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ne v0, v4, :cond_2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    move p3, p1

    move p1, v6

    goto :goto_1

    :cond_2
    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p2, p4

    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    move p4, p1

    move p1, p2

    move p2, v6

    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, v5, v5, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->f:[I

    add-int/2addr p2, p5

    aput p2, p3, v6

    add-int/2addr p1, p6

    aput p1, p3, v4

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v5, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->f:[I

    aput v6, p1, v6

    aput v6, p1, v4

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getFixDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getFixDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFixDuration(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/VideoDuration;->checkLoadDuration()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/data/VideoDuration;->getDuration()J

    move-result-wide p0

    return-wide p0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public getPlayer()Ljxb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->t:Ljxb;

    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->A:I

    return p0
.end method

.method public getScale(Landroid/graphics/Matrix;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getScaleMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScaleX(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result p0

    return p0
.end method

.method public getScaleY(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result p0

    return p0
.end method

.method public getSubtitleSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getTranslate(Landroid/graphics/Matrix;)[F
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u(Landroid/graphics/Matrix;I)F

    move-result p0

    new-array p1, v0, [F

    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    return-object p1
.end method

.method public getVideoCoverView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->L:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    return p0
.end method

.method public hideScaleStateView()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isInScaleMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTouchDrag(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->isTouchDrag(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isValueRestored()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

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

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->Q:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lp4c;

    invoke-direct {v2, p0}, Lp4c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->R:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->Q:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->R:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g2(Landroid/view/SurfaceView;Z)V

    return-void
.end method

.method public onDragStatusChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragMode:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragged:Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Ljxb$a;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onMediaPlayerStateChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;->onVideoPlayerStateChange(I)V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->E:Z

    return-void
.end method

.method public onPointerCount(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    :cond_0
    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->t()V

    :cond_1
    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragged:Z

    if-eqz p1, :cond_2

    const-string p1, "vd_video_playshow_zoomdrag"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragged:Z

    :cond_2
    return-void
.end method

.method public onRestoreClick()Z
    .locals 3

    new-instance v0, Lhb0$a;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rotate_status"

    invoke-direct {v0, v2, v1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lhb0$a;

    move-result-object v0

    const-string v1, "vd_video_playshow_zoom_recover"

    invoke-static {v1, v0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z()V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v3

    iget-boolean v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->I:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr p1, v4

    :cond_0
    iget-boolean v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->r:Z

    const v5, 0x3f666666    # 0.9f

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, -0x1

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q:Z

    if-nez v4, :cond_1

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q:Z

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setRecoverValue(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q:Z

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ne p1, v7, :cond_8

    :cond_2
    iput-boolean v8, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->r:Z

    if-eqz v4, :cond_5

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eq v4, v0, :cond_4

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v7, :cond_5

    :cond_4
    iput-boolean v8, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->r:Z

    :cond_5
    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v0, :cond_6

    div-float/2addr v1, v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_6
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ne v4, v7, :cond_7

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_7
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    :cond_8
    :goto_0
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->p:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->q:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->r:Z

    iget-boolean v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->H:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->I:Z

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    new-instance p1, Lhb0$a;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/VideoDuration;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "org_duration"

    invoke-direct {p1, v1, v0}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lhb0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asp_ratio"

    invoke-direct {v0, v2, v1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lhb0$a;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rotate_status"

    invoke-direct {v1, v3, v2}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lhb0$a;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v3, "scal_ratio"

    invoke-direct {v2, v3, p0}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p1, v0, v1, v2}, [Lhb0$a;

    move-result-object p0

    const-string p1, "vd_video_playshow_zoom"

    invoke-static {p1, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    return-void
.end method

.method public onScaleStateChange(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ba3d70a    # 0.005f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragMode:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->P:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->P:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->F:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    invoke-interface {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;->b(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setRecoverValue(Z)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->s:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    neg-float p3, p3

    neg-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    return p2
.end method

.method public bridge synthetic onShowError(Landroid/net/Uri;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljxb$a;->onShowError(Landroid/net/Uri;I)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->B:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->B:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mVideoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mVideoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceHolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayerMediaView"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    iput p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->G:Z

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->u:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    iget v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    iget v5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->fixVideoSize(IIIIII)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->setVideoSize(FFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragMode:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setRecoverValue(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->P:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public playUri(Lcom/transsion/magicvideo/widgets/PlayerViewController;Landroid/net/Uri;J)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lrtb;->l(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V

    sget p1, Lcom/transsion/magicvideo/R$id;->play_media_source_error:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->x:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/transsion/magicvideo/data/VideoDuration;->setUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/transsion/magicvideo/data/VideoDuration;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->y:Landroid/net/Uri;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->t:Ljxb;

    invoke-interface {p1, p2}, Ljxb;->g(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->y(Landroid/net/Uri;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    invoke-static {p0, p3, p4}, Lrtb;->o(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;J)V

    :cond_1
    return-void
.end method

.method public reLayout(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(ZZ)V

    return-void
.end method

.method public reLayout(ZZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->w:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7
    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->G:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->w:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_3

    .line 12
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    if-eqz p1, :cond_3

    .line 13
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->setRectAndDraw(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public resetScaleForNewVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z()V

    return-void
.end method

.method public setDisplaySurfaceView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplaySurfaceView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    new-instance v0, Lq4c;

    invoke-direct {v0, p0, p1}, Lq4c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setHalfOpenMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->H:Z

    return-void
.end method

.method public setOnScaleStatesChangeListener(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->F:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;

    return-void
.end method

.method public setRecoverValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->F:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$c;->a(Z)V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResizeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerMediaView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->A:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->A:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z()V

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    iget v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    iget v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    iget v5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->fixVideoSize(IIIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    :cond_0
    return-void
.end method

.method public setSubtitleEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setSurfaceListener(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->v:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    return-void
.end method

.method public setVideoPlayerListener(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$e;

    return-void
.end method

.method public setVideoViewSize(II)V
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    iput p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public showVideoCover(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->L:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_1

    sub-float v0, v4, v2

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    sub-float v0, v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_4

    sub-float v1, v5, v3

    goto :goto_1

    :cond_4
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_5

    sub-float v1, v3, v2

    :cond_5
    :goto_1
    float-to-int v7, v0

    float-to-int v8, v1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->m:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v5, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v6, v0

    if-nez v7, :cond_6

    if-nez v8, :cond_6

    return-void

    :cond_6
    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$OverScrollRunnable;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Landroid/content/Context;IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final u(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->O:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->O:[F

    aget p0, p0, p2

    return p0
.end method

.method public updateDisplaySurfaceViewVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->lan_surface_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->lan_display_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    sget v0, Lcom/transsion/magicvideo/R$id;->state_scale_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->setOnScaleSurfaceListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->fl_player:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->w:Landroid/widget/FrameLayout;

    invoke-static {}, Lpp3;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->lan_subtitle_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->K:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->M:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->D:I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->N:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_cover:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final synthetic w(Lwoc;)V
    .locals 2

    iget p1, p1, Lwoc;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setHalfOpenMode(Z)V

    return-void
.end method

.method public final synthetic x(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->J:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public final y(Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->t:Ljxb;

    invoke-interface {p1, p0}, Ljxb;->d(Ljxb$a;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->t:Ljxb;

    invoke-interface {p0}, Ljxb;->i()V

    return-void
.end method

.method public final z()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isOrigValue:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isDragMode:Z

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->isScaleMode:Z

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->g:I

    iget v5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->h:I

    iget v6, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->i:I

    iget v7, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->j:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->fixVideoSize(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->reLayout(Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->onScaleStateChange(Z)Z

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setRecoverValue(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->C:Lcom/transsion/magicvideo/widgets/ScaleStatusView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
