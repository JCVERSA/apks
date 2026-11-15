.class public final Lcom/transsion/widgetslib/widget/OSMaskImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\n0\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u0010R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001b\u0010,\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/OSMaskImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "getMaskAnimator",
        "()Landroid/animation/ValueAnimator;",
        "Lzfb;",
        "getSourceImage",
        "()V",
        "",
        "isVisible",
        "onVisibilityAggregated",
        "(Z)V",
        "onDetachedFromWindow",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "animSelected",
        "Landroid/graphics/RectF;",
        "b",
        "Landroid/graphics/RectF;",
        "mRectF",
        "Landroid/graphics/Path;",
        "c",
        "Landroid/graphics/Path;",
        "mPath",
        "Landroid/graphics/Bitmap;",
        "d",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Landroid/graphics/Paint;",
        "e",
        "Lyi5;",
        "getMPaint",
        "()Landroid/graphics/Paint;",
        "mPaint",
        "Lg24;",
        "f",
        "Lg24;",
        "maskDelegate",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Landroid/graphics/RectF;

.field public c:Landroid/graphics/Path;

.field public d:Landroid/graphics/Bitmap;

.field public final e:Lyi5;

.field public f:Lg24;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lcom/transsion/widgetslib/widget/OSMaskImageView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/widget/OSMaskImageView$mPaint$2;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->e:Lyi5;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPath$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    return-object p0
.end method

.method public static final synthetic access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lg24;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    return-object p0
.end method

.method public static final b(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    const-string v2, "mPath"

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    const-string v3, "mRectF"

    if-nez v2, :cond_3

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    if-nez v4, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMaskAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lz87;

    invoke-direct {v1, p0}, Lz87;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$a;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private final getSourceImage()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lolb;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    new-instance v0, Lg24;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMaskAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v2, "this.getMaskAnimator()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg24;-><init>(Landroid/animation/ValueAnimator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final animSelected()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getSourceImage()V

    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    const-string v4, "maskDelegate"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-virtual {v3}, Lg24;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez p0, :cond_3

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, p0

    :goto_0
    invoke-virtual {v5}, Lg24;->d()V

    goto/16 :goto_3

    :cond_4
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    const-string v6, "mRectF"

    if-nez v3, :cond_5

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v3, v5

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    if-nez v7, :cond_6

    invoke-static {v6}, Ly45;->B(Ljava/lang/String;)V

    move-object v7, v5

    :cond_6
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v3, v6}, Lwn8;->c(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez v6, :cond_7

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_7
    invoke-virtual {v6}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3dcccccd    # 0.1f

    invoke-direct {v9, v10, v8, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez v6, :cond_8

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_8
    invoke-virtual {v6}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v2, v2, [F

    aput v3, v2, v1

    aput v8, v2, v0

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez v6, :cond_a

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_a
    invoke-virtual {v6}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const v11, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v10, v8, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez v6, :cond_b

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v6, v5

    :cond_b
    invoke-virtual {v6}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v2, v2, [F

    aput v8, v2, v1

    aput v3, v2, v0

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez p0, :cond_c

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v5, p0

    :goto_2
    invoke-virtual {v5}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    if-nez p0, :cond_2

    const-string p0, "maskDelegate"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    invoke-virtual {p0}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "maskDelegate"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lg24;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v3, "mPath"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    if-nez v1, :cond_2

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->c:Landroid/graphics/Path;

    if-nez v1, :cond_4

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->b:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    const-string v1, "mRectF"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->f:Lg24;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "maskDelegate"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lg24;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void
.end method
