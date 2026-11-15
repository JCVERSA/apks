.class public Lcom/transsion/playercommon/widgets/OSMaskImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/Path;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/animation/AnimatorSet;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Bitmap;

.field public i:Landroid/graphics/Bitmap;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c:Landroid/graphics/Path;

    .line 4
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c:Landroid/graphics/Path;

    .line 8
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c:Landroid/graphics/Path;

    .line 12
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->m:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->k:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c:Landroid/graphics/Path;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/OSMaskImageView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->l:I

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->k:Z

    return-void
.end method

.method private getSourceImage()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lolb;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const v4, 0x10100a1

    filled-new-array {v4}, [I

    move-result-object v4

    const v6, -0xff0100

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v8, v4

    mul-double/2addr v8, v2

    div-double/2addr v8, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v5, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j:Z

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->k()V

    return-void
.end method


# virtual methods
.method public cancelSelectedAnimRunning()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 6

    const/16 v0, 0xff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x82

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Ls53;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Ls53;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;-><init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/playercommon/widgets/OSMaskImageView$c;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView$c;-><init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public isSelectedAnimRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v5, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;-><init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final k()V
    .locals 8

    new-instance v0, Lcom/transsion/playercommon/widgets/OSMaskImageView$d;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView$d;-><init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Ls53;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3c23d70a    # 0.01f

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x23a

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Ls53;

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v4, v5, v7, v7, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView$e;-><init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->l:I

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->b:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j:Z

    return-void
.end method

.method public setSelectedAnim(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->getSourceImage()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->m:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->j()V

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 9
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->k()V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    .line 13
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->i()V

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 19
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method
