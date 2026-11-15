.class public Lcom/transsion/widgets/PauseProgresPlayBtnView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;,
        Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;
    }
.end annotation


# instance fields
.field private RectBottom:I

.field private RectLeft:I

.field private RectRight:I

.field private RectTOP:I

.field private color:I

.field private colorCircleLine:I

.field private isMeasured:Z

.field private isPlaying:Z

.field private onStatusChangeListener:Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;

.field private paintA:Landroid/graphics/Paint;

.field private paintB:Landroid/graphics/Paint;

.field private paintC:Landroid/graphics/Paint;

.field private paintD:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointA:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

.field private pointB:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

.field private pointC:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

.field private progress:I

.field private progressWith:I

.field private rectF:Landroid/graphics/RectF;

.field private rectF2:Landroid/graphics/RectF;

.field private viewCenterX:I

.field private viewCenterY:I

.field private viewHalfLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;-><init>(Lcom/transsion/widgets/PauseProgresPlayBtnView;Lry7;)V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointA:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    new-instance p2, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;-><init>(Lcom/transsion/widgets/PauseProgresPlayBtnView;Lry7;)V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointB:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    new-instance p2, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;-><init>(Lcom/transsion/widgets/PauseProgresPlayBtnView;Lry7;)V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointC:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->path:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF2:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->progress:I

    iput-boolean p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isPlaying:Z

    iput-boolean p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isMeasured:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintC:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintD:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/common/R$color;->visha_music_play_progress_line:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->color:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/common/R$color;->visha_music_play_progress_line_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->colorCircleLine:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Loc2;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->progressWith:I

    return-void
.end method

.method private getWidthAndHeight()V
    .locals 15

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterX:I

    div-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterY:I

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewHalfLength:I

    iget v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->progressWith:I

    div-int/lit8 v4, v0, 0x5

    iget-object v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF:Landroid/graphics/RectF;

    div-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v6

    sub-int v7, v2, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->left:F

    sub-int v7, v0, v6

    sub-int v7, v3, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->top:F

    sub-int v7, v0, v6

    add-int/2addr v7, v2

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->right:F

    sub-int v6, v0, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF2:Landroid/graphics/RectF;

    div-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v6

    sub-int v7, v2, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->left:F

    sub-int v7, v0, v6

    sub-int v7, v3, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/graphics/RectF;->top:F

    sub-int v7, v0, v6

    add-int/2addr v2, v7

    int-to-float v2, v2

    iput v2, v5, Landroid/graphics/RectF;->right:F

    sub-int/2addr v0, v6

    add-int/2addr v3, v0

    int-to-float v0, v3

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->colorCircleLine:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->color:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintD:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintD:Landroid/graphics/Paint;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintD:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintD:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintC:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintC:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintC:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintC:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointA:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    iget v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterX:I

    iget v2, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewHalfLength:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->x:F

    iget v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterY:I

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->y:F

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-object v4, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointB:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    iget v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterX:I

    int-to-double v6, v5

    iget v8, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewHalfLength:I

    int-to-double v9, v8

    mul-double/2addr v9, v0

    sub-double/2addr v6, v9

    int-to-double v9, v5

    add-double/2addr v6, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v9

    double-to-float v6, v6

    iput v6, v4, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->x:F

    iget v6, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->viewCenterY:I

    int-to-double v11, v6

    int-to-double v13, v8

    mul-double/2addr v13, v2

    sub-double/2addr v11, v13

    int-to-double v13, v6

    add-double/2addr v11, v13

    div-double/2addr v11, v9

    double-to-float v7, v11

    iput v7, v4, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->y:F

    iget-object v4, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->pointC:Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;

    int-to-double v11, v5

    int-to-double v13, v8

    mul-double/2addr v0, v13

    sub-double/2addr v11, v0

    int-to-double v0, v5

    add-double/2addr v11, v0

    div-double/2addr v11, v9

    double-to-float v0, v11

    iput v0, v4, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->x:F

    int-to-double v0, v6

    int-to-double v11, v8

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    int-to-double v2, v6

    add-double/2addr v0, v2

    div-double/2addr v0, v9

    double-to-float v0, v0

    iput v0, v4, Lcom/transsion/widgets/PauseProgresPlayBtnView$Point;->y:F

    div-int/lit8 v0, v8, 0x4

    sub-int v0, v5, v0

    iput v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->RectLeft:I

    div-int/lit8 v0, v8, 0x3

    sub-int v0, v6, v0

    iput v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->RectTOP:I

    div-int/lit8 v0, v8, 0x4

    add-int/2addr v5, v0

    iput v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->RectRight:I

    div-int/lit8 v8, v8, 0x3

    add-int/2addr v6, v8

    iput v6, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->RectBottom:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintA:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->rectF2:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->progress:I

    int-to-float v0, v0

    const v1, 0x40666666    # 3.6f

    mul-float v9, v0, v1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->paintB:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isMeasured:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/PauseProgresPlayBtnView;->getWidthAndHeight()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isMeasured:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isPlaying:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isPlaying:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->onStatusChangeListener:Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isPlaying:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;->play()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;->pause()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnStatusChangeListener(Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->onStatusChangeListener:Lcom/transsion/widgets/PauseProgresPlayBtnView$OnStatusChangeListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->isPlaying:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/transsion/widgets/PauseProgresPlayBtnView;->progress:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
