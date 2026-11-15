.class public final Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001bR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010\u0013\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001bR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010$\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0014\u0010&\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010!R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010/\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010!\u00a8\u00060"
    }
    d2 = {
        "Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "label",
        "Lzfb;",
        "setCurveLabel",
        "(Ljava/lang/String;)V",
        "",
        "x1",
        "y1",
        "x2",
        "y2",
        "setBezierControls",
        "(FFFF)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "b",
        "F",
        "c",
        "d",
        "e",
        "Landroid/graphics/Paint;",
        "f",
        "Landroid/graphics/Paint;",
        "curvePaint",
        "g",
        "axisPaint",
        "h",
        "gridPaint",
        "Landroid/graphics/Path;",
        "i",
        "Landroid/graphics/Path;",
        "path",
        "j",
        "Ljava/lang/String;",
        "curveLabel",
        "k",
        "labelPaint",
        "widgetsMotionLibrary_release"
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
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Path;

.field public j:Ljava/lang/String;

.field public final k:Landroid/graphics/Paint;


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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->d:F

    .line 6
    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->e:F

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const v0, -0xea9a40

    .line 8
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13
    iput-object p2, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->f:Landroid/graphics/Paint;

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x66000000

    .line 15
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iput-object p2, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->g:Landroid/graphics/Paint;

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, 0x22000000

    .line 20
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iput-object p2, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->h:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->i:Landroid/graphics/Path;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 p2, -0x23000000

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->k:Landroid/graphics/Paint;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->k:Landroid/graphics/Paint;

    const/high16 v4, 0x41300000    # 11.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x41900000    # 18.0f

    mul-float v12, v2, v4

    sub-float/2addr v0, v3

    sub-float/2addr v1, v12

    sub-float v11, v0, v3

    sub-float v13, v1, v12

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v11, v4

    add-float v8, v3, v5

    iget-object v10, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->h:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    move v7, v12

    move v9, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v4, v13

    sub-float v8, v1, v4

    iget-object v9, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->h:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v8

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->g:Landroid/graphics/Paint;

    move v6, v1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->g:Landroid/graphics/Paint;

    move v7, v3

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->i:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->i:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->i:Landroid/graphics/Path;

    iget v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->b:F

    mul-float/2addr v4, v11

    add-float v6, v3, v4

    iget v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->c:F

    mul-float/2addr v4, v13

    sub-float v7, v1, v4

    iget v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->d:F

    mul-float/2addr v4, v11

    add-float v8, v3, v4

    iget v4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->e:F

    mul-float/2addr v4, v13

    sub-float v9, v1, v4

    move v10, v0

    move v11, v12

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    sub-float/2addr v12, v2

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v12, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setBezierControls(FFFF)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->b:F

    iput p2, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->c:F

    iput p3, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->d:F

    iput p4, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurveLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
