.class public Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:F

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    .line 4
    iput v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    .line 5
    iput v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->g:F

    .line 6
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->osFloatButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/transsion/widgetslib/R$styleable;->osFloatButton_fbshadowRadius:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    .line 8
    sget p2, Lcom/transsion/widgetslib/R$styleable;->osFloatButton_fbshadowColor:I

    const v0, 0x6603a9f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->h:I

    .line 12
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->b:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 16
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :goto_0
    new-instance p1, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton$a;-><init>(Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 19
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->h:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c:I

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->i:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->g:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->h:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c()V

    return-void
.end method

.method public setMultiWindowMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->i:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->setShadowRadius(F)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatButton, setMultiWindowMode() isMultiWin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "os_fb"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->f:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->e:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/actionbar/ShadowButton;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
