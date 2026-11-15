.class public final Lhw8;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhw8$a;
    }
.end annotation


# instance fields
.field public final a:Lhw8$a;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lhw8$a;)V
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lhw8;->a:Lhw8$a;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lhw8$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lhw8;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lhw8$a;->c()F

    move-result v0

    invoke-virtual {p1}, Lhw8$a;->b()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lhw8;->a(FF)F

    move-result v0

    iput v0, p0, Lhw8;->f:F

    invoke-virtual {p1}, Lhw8$a;->c()F

    move-result v0

    invoke-virtual {p1}, Lhw8$a;->f()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lhw8;->a(FF)F

    move-result v0

    iput v0, p0, Lhw8;->g:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lhw8$a;->f()F

    move-result v2

    invoke-virtual {p1}, Lhw8$a;->b()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lhw8;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lhw8$a;->d()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lhw8$a;->e()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lhw8$a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lhw8$a;->e()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v2, p0, Lhw8;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lhw8$a;->e()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, p0, Lhw8;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lhw8;->e:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lhw8;->c:Landroid/graphics/Paint;

    iput v4, p0, Lhw8;->d:F

    iput v4, p0, Lhw8;->e:F

    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a(FF)F
    .locals 1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p0, p0, Lhw8;->d:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-float/2addr p1, p0

    return p1
.end method

.method public final b(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lhw8;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lhw8;->e:F

    invoke-virtual {p0, v0}, Lhw8;->b(F)V

    iget-object v0, p0, Lhw8;->h:Landroid/graphics/RectF;

    iget v1, p0, Lhw8;->f:F

    iget v2, p0, Lhw8;->g:F

    iget-object v3, p0, Lhw8;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lhw8;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v1, p0, Lhw8;->d:F

    invoke-virtual {p0, v1}, Lhw8;->b(F)V

    iget-object v1, p0, Lhw8;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lhw8;->a:Lhw8$a;

    invoke-virtual {v2}, Lhw8$a;->c()F

    move-result v2

    iget-object p0, p0, Lhw8;->a:Lhw8$a;

    invoke-virtual {p0}, Lhw8$a;->c()F

    move-result p0

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lhw8;->a:Lhw8$a;

    invoke-virtual {p0}, Lhw8$a;->b()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lhw8;->a:Lhw8$a;

    invoke-virtual {p0}, Lhw8$a;->f()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    const-string p0, "Setting alpha is not implemented"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Setting color filter is not implemented"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return-void
.end method
