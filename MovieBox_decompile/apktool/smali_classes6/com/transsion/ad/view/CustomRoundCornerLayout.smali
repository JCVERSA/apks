.class public final Lcom/transsion/ad/view/CustomRoundCornerLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010\u001bR*\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0019\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010\u001bR*\u0010)\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0019\u001a\u0004\u0008\'\u0010\u001f\"\u0004\u0008(\u0010\u001bR*\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0019\u001a\u0004\u0008+\u0010\u001f\"\u0004\u0008,\u0010\u001bR\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/ad/view/CustomRoundCornerLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "a",
        "()V",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "value",
        "F",
        "setAllCornerRadius",
        "(F)V",
        "allCornerRadius",
        "b",
        "getTopLeftRadius",
        "()F",
        "setTopLeftRadius",
        "topLeftRadius",
        "c",
        "getTopRightRadius",
        "setTopRightRadius",
        "topRightRadius",
        "d",
        "getBottomLeftRadius",
        "setBottomLeftRadius",
        "bottomLeftRadius",
        "e",
        "getBottomRightRadius",
        "setBottomRightRadius",
        "bottomRightRadius",
        "Landroid/graphics/Path;",
        "f",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/RectF;",
        "g",
        "Landroid/graphics/RectF;",
        "rect",
        "",
        "[F",
        "radii",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/RectF;

.field private final h:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    const/16 p3, 0x8

    .line 7
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    .line 8
    sget-object p3, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout:[I

    const-string v0, "CustomRoundCornerLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_allCornerRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setAllCornerRadius(F)V

    .line 11
    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_topLeftRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setTopLeftRadius(F)V

    .line 13
    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_topRightRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 14
    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setTopRightRadius(F)V

    .line 15
    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_bottomLeftRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setBottomLeftRadius(F)V

    .line 17
    sget p2, Lcom/transsion/ad/R$styleable;->CustomRoundCornerLayout_bottomRightRadius:I

    iget p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->setBottomRightRadius(F)V

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/CustomRoundCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v3, v1, v2

    .line 7
    .line 8
    if-lez v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    .line 12
    .line 13
    :goto_0
    const/4 v3, 0x0

    .line 14
    aput v1, v0, v3

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aput v1, v0, v3

    .line 18
    .line 19
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    .line 20
    .line 21
    cmpl-float v3, v1, v2

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    .line 27
    .line 28
    :goto_1
    const/4 v3, 0x2

    .line 29
    aput v1, v0, v3

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    aput v1, v0, v3

    .line 33
    .line 34
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    .line 35
    .line 36
    cmpl-float v3, v1, v2

    .line 37
    .line 38
    if-lez v3, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    .line 42
    .line 43
    :goto_2
    const/4 v3, 0x4

    .line 44
    aput v1, v0, v3

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    aput v1, v0, v3

    .line 48
    .line 49
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    .line 50
    .line 51
    cmpl-float v2, v1, v2

    .line 52
    .line 53
    if-lez v2, :cond_3

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    iget v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    .line 57
    .line 58
    :goto_3
    const/4 v2, 0x6

    .line 59
    aput v1, v0, v2

    .line 60
    .line 61
    const/4 v2, 0x7

    .line 62
    aput v1, v0, v2

    .line 63
    .line 64
    return-void
.end method

.method private final setAllCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getBottomLeftRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public final getBottomRightRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTopLeftRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTopRightRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    .line 2
    .line 3
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->g:Landroid/graphics/RectF;

    .line 20
    .line 21
    iget-object p3, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->h:[F

    .line 22
    .line 23
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->f:Landroid/graphics/Path;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setBottomLeftRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->d:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setBottomRightRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->e:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTopLeftRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->b:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTopRightRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/view/CustomRoundCornerLayout;->c:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/view/CustomRoundCornerLayout;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
