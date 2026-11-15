.class public Lcom/transsion/playercommon/widgets/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/CircleImageView$a;
    }
.end annotation


# static fields
.field public static final x:Landroid/graphics/Bitmap$Config;


# instance fields
.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Matrix;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Bitmap;

.field public o:Landroid/graphics/Canvas;

.field public p:F

.field public q:F

.field public r:Landroid/graphics/ColorFilter;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/playercommon/widgets/CircleImageView;->x:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 9
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    .line 11
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    .line 12
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->l:I

    const/16 p1, 0xff

    .line 13
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    .line 14
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 24
    iput v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    .line 26
    iput v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    .line 27
    iput v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->l:I

    const/16 v2, 0xff

    .line 28
    iput v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    .line 29
    sget-object v2, Lcom/transsion/playercommon/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lcom/transsion/playercommon/R$styleable;->CircleImageView_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    .line 31
    sget p2, Lcom/transsion/playercommon/R$styleable;->CircleImageView_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    .line 32
    sget p2, Lcom/transsion/playercommon/R$styleable;->CircleImageView_border_overlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->v:Z

    .line 33
    sget p2, Lcom/transsion/playercommon/R$styleable;->CircleImageView_circle_background_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    .line 34
    sget p2, Lcom/transsion/playercommon/R$styleable;->CircleImageView_circle_foreground_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->l:I

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->d()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/CircleImageView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/CircleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->w:Z

    return p0
.end method


# virtual methods
.method public final c()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    div-float/2addr v0, v4

    add-float/2addr p0, v0

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v2

    add-float v2, v3, v1

    add-float/2addr v1, p0

    invoke-direct {v0, v3, p0, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->s:Z

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->r:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/transsion/playercommon/widgets/CircleImageView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/playercommon/widgets/CircleImageView$a;-><init>(Lcom/transsion/playercommon/widgets/CircleImageView;Lgw0;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->s:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->g()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->c()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->q:F

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->v:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    int-to-float v4, v0

    sub-float/2addr v4, v2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->p:F

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->g()V

    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v0, v0

    mul-float/2addr v3, v0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    move v1, v3

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v4

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    add-float/2addr v3, v4

    float-to-int v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->t:Z

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/playercommon/widgets/CircleImageView;->x:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lcom/transsion/playercommon/widgets/CircleImageView;->x:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public getBorderColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    return p0
.end method

.method public getBorderWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    return p0
.end method

.method public getCircleBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->r:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getImageAlpha()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->u:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->w:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->p:F

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->u:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->o:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->t:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->t:Z

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->n:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->p:F

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->q:F

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->l:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->p:F

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->i:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->j:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->f:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->k:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->r:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->r:Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setImageAlpha(I)V
    .locals 1

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->m:I

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
