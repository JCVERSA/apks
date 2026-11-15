.class public Lcom/transsion/widgetslistitemlayout/OSRoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:[F

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->c:Landroid/graphics/RectF;

    const/16 v0, 0x8

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->c:Landroid/graphics/RectF;

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    .line 13
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->c:Landroid/graphics/RectF;

    const/16 p3, 0x8

    .line 14
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget-object v2, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSRoundImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSRoundImageView_os_riv_radius:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->e:F

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->e:F

    cmpl-float p2, p1, v0

    if-lez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->f:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([FF)V

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->f:Z

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->e:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;->d:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
