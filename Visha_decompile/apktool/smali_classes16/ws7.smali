.class public Lws7;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/content/Context;

.field public c:Landroid/graphics/RectF;

.field public d:I

.field public e:F

.field public f:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    const-string v0, "#FE945F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lws7;->d:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lws7;->g:Z

    .line 26
    iput-object p2, p0, Lws7;->c:Landroid/graphics/RectF;

    .line 27
    iput-object p1, p0, Lws7;->b:Landroid/content/Context;

    .line 28
    iput-object p4, p0, Lws7;->a:Landroid/graphics/Paint;

    .line 29
    iput p3, p0, Lws7;->e:F

    .line 30
    invoke-virtual {p0}, Lws7;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;IF)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 13
    const-string v0, "#FE945F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lws7;->d:I

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lws7;->g:Z

    .line 15
    iput-object p2, p0, Lws7;->c:Landroid/graphics/RectF;

    .line 16
    iput-object p1, p0, Lws7;->b:Landroid/content/Context;

    .line 17
    iput p4, p0, Lws7;->e:F

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p0}, Lws7;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;IFZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const-string v0, "#FE945F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lws7;->d:I

    .line 3
    iput-object p2, p0, Lws7;->c:Landroid/graphics/RectF;

    .line 4
    iput-object p1, p0, Lws7;->b:Landroid/content/Context;

    .line 5
    iput p4, p0, Lws7;->e:F

    .line 6
    iput-boolean p5, p0, Lws7;->g:Z

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p1, p0, Lws7;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-virtual {p0}, Lws7;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lws7;->f:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object v0, p0, Lws7;->f:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lws7;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lws7;->b:Landroid/content/Context;

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lws7;->a:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lws7;->c:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lws7;->e:F

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v2, 0x4

    aput v0, v3, v2

    const/4 v2, 0x5

    aput v0, v3, v2

    const/4 v2, 0x6

    aput v0, v3, v2

    const/4 v2, 0x7

    aput v0, v3, v2

    iget-object v0, p0, Lws7;->c:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lws7;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lws7;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lws7;->c:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lws7;->f:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lws7;->f:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    iget-object v0, p0, Lws7;->c:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lws7;->e:F

    iget-object v8, p0, Lws7;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lws7;->c:Landroid/graphics/RectF;

    iget v1, p0, Lws7;->e:F

    iget-object p0, p0, Lws7;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lws7;->d:I

    iget-object v0, p0, Lws7;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lws7;->e:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
