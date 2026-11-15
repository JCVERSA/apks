.class public Llna;
.super Lca0;
.source "SourceFile"


# instance fields
.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Lca0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Llna;->i:I

    iput-object p1, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;II)V
    .locals 6

    iget-object v0, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lca0;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lca0;->a()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float p3, p3

    int-to-float v1, v0

    div-float/2addr p3, v1

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float p2, p2

    div-float/2addr p2, p3

    iget p3, p0, Llna;->i:I

    const/4 v1, 0x0

    if-gez p3, :cond_1

    iget-object p3, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    move v2, v1

    :goto_0
    int-to-float v3, v2

    cmpg-float v3, v3, p2

    if-gez v3, :cond_2

    iget-object v3, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    add-int v4, v2, p3

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v4

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    div-float/2addr p2, p3

    move p3, v1

    :goto_1
    iget v2, p0, Llna;->i:I

    if-ge p3, v2, :cond_2

    iget-object v2, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v3, p3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float/2addr v3, p2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    sub-float v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v4, v5, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Llna;->i:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llna;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
