.class public Lcom/transsion/widgetslistitemlayout/b;
.super Lmb7;
.source "SourceFile"


# instance fields
.field public m:Landroid/graphics/Path;

.field public n:Landroid/graphics/RectF;

.field public o:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb7;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public h(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lmb7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_corners_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslistitemlayout/b;->i(Landroid/graphics/Canvas;Landroid/view/View;IF)V

    return-void
.end method

.method public i(Landroid/graphics/Canvas;Landroid/view/View;IF)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/b;->m:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/b;->m:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/b;->n:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    invoke-static {p3, v2, v3, p4}, Ljava/util/Arrays;->fill([FIIF)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    array-length p4, p3

    invoke-static {p3, v3, p4, v1}, Ljava/util/Arrays;->fill([FIIF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    invoke-static {p3, v2, v3, v1}, Ljava/util/Arrays;->fill([FIIF)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    array-length v0, p3

    invoke-static {p3, v3, v0, p4}, Ljava/util/Arrays;->fill([FIIF)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    invoke-static {p3, v1}, Ljava/util/Arrays;->fill([FF)V

    :goto_0
    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->m:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->n:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, v1, v1, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/b;->m:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/b;->n:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/transsion/widgetslistitemlayout/b;->o:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/b;->m:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public j(IIZLandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lmb7;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslistitemlayout/R$attr;->os_list_press_color_attr:I

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_press_primary_color:I

    invoke-static {v2, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    if-eqz p3, :cond_7

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v5, p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-ne p2, v0, :cond_1

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_3

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p5, :cond_2

    iget-object p3, p0, Lmb7;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_bottom_divide_height:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    move v9, p3

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_3
    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_4
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p5, :cond_5

    iget-object p3, p0, Lmb7;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_bottom_divide_height:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    move v9, p3

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_2
    iget-object p3, p0, Lmb7;->a:Landroid/content/Context;

    sget p5, Lcom/transsion/widgetslistitemlayout/R$drawable;->os_list_item_view_bg_rectangle_normal:I

    invoke-static {p3, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move-object p4, p3

    :goto_3
    invoke-virtual {p0, p4}, Lmb7;->setDrawableNormal(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lmb7;->setDrawablePress(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object p3, p0, Lmb7;->a:Landroid/content/Context;

    sget p5, Lcom/transsion/widgetslistitemlayout/R$attr;->os_bg_secondary:I

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_bg_secondary_hios:I

    invoke-static {p3, p5, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move-object p4, p2

    :goto_4
    invoke-virtual {p0, p4}, Lmb7;->setDrawableNormal(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object p3, p0, Lmb7;->a:Landroid/content/Context;

    invoke-static {p3}, Lolb;->y(Landroid/content/Context;)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p5, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v2, v3

    aput-object p3, v2, v0

    invoke-direct {p5, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p5}, Lmb7;->setDrawablePress(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    if-ne p1, v1, :cond_9

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const p2, 0x10100a1

    filled-new-array {p2}, [I

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lmb7;->a:Landroid/content/Context;

    sget p5, Lcom/transsion/widgetslistitemlayout/R$color;->os_liv_selected:I

    invoke-static {p0, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p3, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v3, [I

    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_9
    invoke-virtual {p0}, Lmb7;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
